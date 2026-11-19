package kotlin.reflect.jvm.internal.impl.load.kotlin;

import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.ProtoBufUtilKt;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.TypeTable;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmMemberSignature;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmProtoBufUtil;
import kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;

/* JADX INFO: loaded from: classes4.dex */
public abstract class AbstractBinaryClassAnnotationLoaderKt {
    public static final MemberSignature a(ProtoBuf$Property protoBuf$Property, NameResolver nameResolver, TypeTable typeTable, boolean z, boolean z2, boolean z3) {
        protoBuf$Property.getClass();
        nameResolver.getClass();
        typeTable.getClass();
        GeneratedMessageLite.GeneratedExtension generatedExtension = JvmProtoBuf.d;
        generatedExtension.getClass();
        JvmProtoBuf.JvmPropertySignature jvmPropertySignature = (JvmProtoBuf.JvmPropertySignature) ProtoBufUtilKt.a(protoBuf$Property, generatedExtension);
        if (jvmPropertySignature != null) {
            if (z) {
                ExtensionRegistryLite extensionRegistryLite = JvmProtoBufUtil.f73672a;
                JvmMemberSignature.Field fieldB = JvmProtoBufUtil.b(protoBuf$Property, nameResolver, typeTable, z3);
                if (fieldB != null) {
                    MemberSignature.f73259b.getClass();
                    return MemberSignature.Companion.b(fieldB);
                }
            } else if (z2 && (jvmPropertySignature.f73630c & 2) == 2) {
                MemberSignature.Companion companion = MemberSignature.f73259b;
                JvmProtoBuf.JvmMethodSignature jvmMethodSignature = jvmPropertySignature.f73631e;
                jvmMethodSignature.getClass();
                companion.getClass();
                return MemberSignature.Companion.c(nameResolver, jvmMethodSignature);
            }
        }
        return null;
    }
}
