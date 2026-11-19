package com.sightcall.universal.ar;

import com.sightcall.universal.model.Moshi;
import com.squareup.moshi.Json;

/* JADX INFO: loaded from: classes3.dex */
public final class ArIgnored {

    @Json(name = "reason")
    private final Reason reason;
    public static final ArIgnored UNKNOWN = new ArIgnored(Reason.UNKNOWN);
    public static final ArIgnored UNSUPPORTED = new ArIgnored(Reason.UNSUPPORTED);
    public static final ArIgnored CAMERA_OFF = new ArIgnored(Reason.CAMERA_OFF);
    public static final ArIgnored CAMERA_SOURCE = new ArIgnored(Reason.CAMERA_SOURCE);
    public static final ArIgnored BACKGROUND = new ArIgnored(Reason.BACKGROUND);

    public enum Reason {
        UNKNOWN,
        UNSUPPORTED,
        CAMERA_OFF,
        CAMERA_SOURCE,
        BACKGROUND
    }

    private ArIgnored(Reason reason) {
        this.reason = reason;
    }

    public String toJson() {
        return Moshi.toJson(ArIgnored.class, this);
    }
}
