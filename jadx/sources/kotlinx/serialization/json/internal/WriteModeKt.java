package kotlinx.serialization.json.internal;

import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.ContextAwareKt;
import kotlinx.serialization.descriptors.PolymorphicKind;
import kotlinx.serialization.descriptors.PrimitiveKind;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialKind;
import kotlinx.serialization.descriptors.StructureKind;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.modules.SerializersModule;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlinx-serialization-json"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class WriteModeKt {
    public static final SerialDescriptor a(SerialDescriptor serialDescriptor, SerializersModule serializersModule) {
        SerialDescriptor serialDescriptorA;
        KSerializer kSerializerB;
        serialDescriptor.getClass();
        serializersModule.getClass();
        if (!Intrinsics.c(serialDescriptor.getF75548b(), SerialKind.CONTEXTUAL.f75562a)) {
            return serialDescriptor.getL() ? a(serialDescriptor.h(0), serializersModule) : serialDescriptor;
        }
        KClass kClassA = ContextAwareKt.a(serialDescriptor);
        SerialDescriptor f19838b = null;
        if (kClassA != null && (kSerializerB = serializersModule.b(kClassA, EmptyList.f71768b)) != null) {
            f19838b = kSerializerB.getF19838b();
        }
        return (f19838b == null || (serialDescriptorA = a(f19838b, serializersModule)) == null) ? serialDescriptor : serialDescriptorA;
    }

    public static final WriteMode b(SerialDescriptor serialDescriptor, Json json) {
        json.getClass();
        serialDescriptor.getClass();
        SerialKind f75548b = serialDescriptor.getF75548b();
        if (f75548b instanceof PolymorphicKind) {
            return WriteMode.POLY_OBJ;
        }
        if (Intrinsics.c(f75548b, StructureKind.LIST.f75565a)) {
            return WriteMode.LIST;
        }
        if (!Intrinsics.c(f75548b, StructureKind.MAP.f75566a)) {
            return WriteMode.OBJ;
        }
        SerialDescriptor serialDescriptorA = a(serialDescriptor.h(0), json.f75717b);
        SerialKind f75548b2 = serialDescriptorA.getF75548b();
        if ((f75548b2 instanceof PrimitiveKind) || Intrinsics.c(f75548b2, SerialKind.ENUM.f75563a)) {
            return WriteMode.MAP;
        }
        if (json.f75716a.d) {
            return WriteMode.LIST;
        }
        throw JsonExceptionsKt.c(serialDescriptorA);
    }
}
