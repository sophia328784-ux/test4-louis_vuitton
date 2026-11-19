package kotlin.reflect.jvm.internal.impl.metadata;

import kotlin.reflect.jvm.internal.impl.protobuf.Internal;

/* JADX INFO: loaded from: classes4.dex */
public enum ProtoBuf$Visibility implements Internal.EnumLite {
    INTERNAL(0),
    PRIVATE(1),
    PROTECTED(2),
    PUBLIC(3),
    PRIVATE_TO_THIS(4),
    LOCAL(5);

    private static Internal.EnumLiteMap<ProtoBuf$Visibility> internalValueMap = new AnonymousClass1();
    private final int value;

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Visibility$1, reason: invalid class name */
    public static class AnonymousClass1 implements Internal.EnumLiteMap<ProtoBuf$Visibility> {
    }

    ProtoBuf$Visibility(int i2) {
        this.value = i2;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.Internal.EnumLite
    public final int m() {
        return this.value;
    }
}
