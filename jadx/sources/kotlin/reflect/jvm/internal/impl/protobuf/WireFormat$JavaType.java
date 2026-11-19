package kotlin.reflect.jvm.internal.impl.protobuf;

import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public enum WireFormat$JavaType {
    INT(0),
    LONG(0L),
    FLOAT(Float.valueOf(Call.Parameters.DEFAULT_CAMERA_ZOOM)),
    DOUBLE(Double.valueOf(0.0d)),
    BOOLEAN(Boolean.FALSE),
    STRING(""),
    BYTE_STRING(ByteString.f73706b),
    ENUM(null),
    MESSAGE(null);

    private final Object defaultDefault;

    WireFormat$JavaType(Object obj) {
        this.defaultDefault = obj;
    }
}
