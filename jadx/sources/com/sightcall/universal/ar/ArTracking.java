package com.sightcall.universal.ar;

import com.squareup.moshi.Json;

/* JADX INFO: loaded from: classes3.dex */
public class ArTracking {

    @Json(name = "reason")
    public final Reason reason;

    @Json(name = "tracking")
    public final boolean tracking;

    public enum Reason {
        INSUFFICIENT_LIGHT,
        INSUFFICIENT_FEATURES,
        EXCESSIVE_MOTION
    }

    public ArTracking(boolean z, Reason reason) {
        this.tracking = z;
        this.reason = reason;
    }
}
