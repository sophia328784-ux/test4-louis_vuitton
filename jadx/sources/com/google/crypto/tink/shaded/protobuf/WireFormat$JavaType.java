package com.google.crypto.tink.shaded.protobuf;

import java.io.Serializable;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public enum WireFormat$JavaType {
    INT(0),
    LONG(0L),
    FLOAT(Float.valueOf(Call.Parameters.DEFAULT_CAMERA_ZOOM)),
    DOUBLE(Double.valueOf(0.0d)),
    BOOLEAN(Boolean.FALSE),
    STRING(""),
    BYTE_STRING(ByteString.f34141c),
    ENUM(null),
    MESSAGE(null);

    private final Object defaultDefault;

    WireFormat$JavaType(Serializable serializable) {
        this.defaultDefault = serializable;
    }
}
