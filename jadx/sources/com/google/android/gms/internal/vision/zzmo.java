package com.google.android.gms.internal.vision;

import java.io.Serializable;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public enum zzmo {
    INT(0),
    LONG(0L),
    FLOAT(Float.valueOf(Call.Parameters.DEFAULT_CAMERA_ZOOM)),
    DOUBLE(Double.valueOf(0.0d)),
    BOOLEAN(Boolean.FALSE),
    STRING(""),
    BYTE_STRING(zzht.f31188c),
    ENUM(null),
    MESSAGE(null);

    private final Object zzj;

    zzmo(Serializable serializable) {
        this.zzj = serializable;
    }
}
