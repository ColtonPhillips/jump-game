collider_id = noone;

//Add to the counters, then get the h and v (pixels to move this step) from them.
h_counter += hspd;
v_counter += vspd;
h = round( h_counter );
v = round( v_counter );
h_counter -= h;
v_counter -= v;

//This loop will move the object based on hspd.  The object will never
//actually collide with a floor object, because this loop (and the next one for vspd) 
//will always position it right next to them without overlapping.  If the
//object collides with a wall, it will call one of two events:
// User Event 0 - if the collision is horizontal
// User Event 1 - if the collision is vertical
collide = false;
slope = false;

sign_h = sign(h);
sign_v = sign(v);

// probably could re-write with place_meeting_left, etc.
repeat (abs(h))
{
    if (place_meeting(x + sign_h, y, collider))
    {
        if (!place_meeting(x + sign_h, y - 1, collider))
        {
            //Running up slopes
            y -= 1;
            x += sign_h;
            slope = true;
        }
        else
        {
            //Hit a wall
            collide = true;
            collider_id = instance_place(x + sign_h, y - 1, collider);
            break;
        }
    }
    else
    {
        if (on_ground)
        {
           if (!place_meeting(x + sign_h, y + 1, collider) && place_meeting(x + sign_h, y + 2, collider))
                y += 1;
        }
        x += sign_h;  
    }
}

if (collide)
    event_perform(ev_other, ev_user0);
    
if (slope)
    hspd = approach(hspd, 0, S_SLOPE_SLOW);
    
collide = false;
repeat (abs(v))
{
    if (vspd <= 0)
    {
        if (place_meeting( x, y + sign_v, collider))
        {
            collider_id = instance_place(x, y + sign_v, collider);
            collide = true;
            break;
        }
        else {
            y += sign_v;
        }
    }
    else if (check_below())
    {
        // doesnt catch oneway plats...
        collider_id = instance_place(x,y+1,collider);
        collide = true;
        break;
    }
    else {
        y += sign_v;
    }
}

if (collide)
    event_perform( ev_other, ev_user1 );
