package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.TypeTable;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedSimpleFunctionDescriptor;

/* JADX INFO: loaded from: classes4.dex */
public interface ContractDeserializer {

    public static final class Companion {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ContractDeserializer$Companion$DEFAULT$1 f73987a = new ContractDeserializer$Companion$DEFAULT$1();
    }

    void a(ProtoBuf$Function protoBuf$Function, DeserializedSimpleFunctionDescriptor deserializedSimpleFunctionDescriptor, TypeTable typeTable, TypeDeserializer typeDeserializer);
}
