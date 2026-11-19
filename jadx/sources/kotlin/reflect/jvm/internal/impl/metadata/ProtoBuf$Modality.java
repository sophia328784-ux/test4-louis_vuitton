package kotlin.reflect.jvm.internal.impl.metadata;

import kotlin.reflect.jvm.internal.impl.protobuf.Internal;

/* JADX INFO: loaded from: classes4.dex */
public enum ProtoBuf$Modality implements Internal.EnumLite {
    FINAL(0),
    OPEN(1),
    ABSTRACT(2),
    SEALED(3);

    private static Internal.EnumLiteMap<ProtoBuf$Modality> internalValueMap = new AnonymousClass1();
    private final int value;

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Modality$1, reason: invalid class name */
    public static class AnonymousClass1 implements Internal.EnumLiteMap<ProtoBuf$Modality> {
    }

    ProtoBuf$Modality(int i2) {
        this.value = i2;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.Internal.EnumLite
    public final int m() {
        return this.value;
    }
}
