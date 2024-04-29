uniform float uSliceStart;
uniform float uSliceArc;

varying vec3 vPosition;

void main()
{    

    // calculate the slice angle
    float angle = atan(vPosition.y, vPosition.x);
    // rotate angle to slice start
    angle -= uSliceStart;
    angle = mod(angle, PI * 2.0);

    // discard the fragment if it is outside the slice
    if(angle > uSliceStart && angle < uSliceArc)
        discard;

    // higlight cutaway
    float csm_Slice;
}