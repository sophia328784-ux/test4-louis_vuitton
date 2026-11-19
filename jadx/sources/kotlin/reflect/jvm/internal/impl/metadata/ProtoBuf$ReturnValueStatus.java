package kotlin.reflect.jvm.internal.impl.metadata;

import kotlin.reflect.jvm.internal.impl.protobuf.Internal;

/* JADX INFO: loaded from: classes4.dex */
public enum ProtoBuf$ReturnValueStatus implements Internal.EnumLite {
    UNSPECIFIED(0),
    MUST_USE(1),
    EXPLICITLY_IGNORABLE(2);

    private static Internal.EnumLiteMap<ProtoBuf$ReturnValueStatus> internalValueMap = new AnonymousClass1();
    private final int value;

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$ReturnValueStatus$1, reason: invalid class name */
    public static class AnonymousClass1 implements Internal.EnumLiteMap<ProtoBuf$ReturnValueStatus> {
    }

    ProtoBuf$ReturnValueStatus(int i2) {
        this.value = i2;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.Internal.EnumLite
    public final int m() {
        return this.value;
    }
}
