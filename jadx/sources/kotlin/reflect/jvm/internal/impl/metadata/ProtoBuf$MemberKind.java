package kotlin.reflect.jvm.internal.impl.metadata;

import kotlin.reflect.jvm.internal.impl.protobuf.Internal;

/* JADX INFO: loaded from: classes4.dex */
public enum ProtoBuf$MemberKind implements Internal.EnumLite {
    DECLARATION(0),
    FAKE_OVERRIDE(1),
    DELEGATION(2),
    SYNTHESIZED(3);

    private static Internal.EnumLiteMap<ProtoBuf$MemberKind> internalValueMap = new AnonymousClass1();
    private final int value;

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$MemberKind$1, reason: invalid class name */
    public static class AnonymousClass1 implements Internal.EnumLiteMap<ProtoBuf$MemberKind> {
    }

    ProtoBuf$MemberKind(int i2) {
        this.value = i2;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.Internal.EnumLite
    public final int m() {
        return this.value;
    }
}
