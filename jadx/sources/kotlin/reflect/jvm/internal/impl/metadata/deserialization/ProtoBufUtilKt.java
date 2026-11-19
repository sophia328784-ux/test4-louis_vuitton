package kotlin.reflect.jvm.internal.impl.metadata.deserialization;

import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ProtoBufUtilKt {
    public static final Object a(GeneratedMessageLite.ExtendableMessage extendableMessage, GeneratedMessageLite.GeneratedExtension generatedExtension) {
        extendableMessage.getClass();
        generatedExtension.getClass();
        if (extendableMessage.o(generatedExtension)) {
            return extendableMessage.k(generatedExtension);
        }
        return null;
    }
}
