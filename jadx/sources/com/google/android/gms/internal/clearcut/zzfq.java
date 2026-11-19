package com.google.android.gms.internal.clearcut;

import java.io.Serializable;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public enum zzfq {
    INT(0),
    LONG(0L),
    FLOAT(Float.valueOf(Call.Parameters.DEFAULT_CAMERA_ZOOM)),
    DOUBLE(Double.valueOf(0.0d)),
    BOOLEAN(Boolean.FALSE),
    STRING(""),
    BYTE_STRING(zzbb.f29654c),
    ENUM(null),
    MESSAGE(null);

    private final Object zzlj;

    zzfq(Serializable serializable) {
        this.zzlj = serializable;
    }
}
