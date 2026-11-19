package com.sightcall.universal.ar;

import com.squareup.moshi.Json;

/* JADX INFO: loaded from: classes3.dex */
public final class ArPosition {

    @Json(name = "x")
    public final float x;

    @Json(name = "y")
    public final float y;

    @Json(name = "z")
    public final float z;

    public ArPosition(float f2, float f3, float f4) {
        this.x = f2;
        this.y = f3;
        this.z = f4;
    }
}
