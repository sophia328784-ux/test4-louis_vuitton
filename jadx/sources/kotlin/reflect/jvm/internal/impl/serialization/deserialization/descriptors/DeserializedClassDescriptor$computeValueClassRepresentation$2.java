package kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;

/* JADX INFO: loaded from: classes4.dex */
final /* synthetic */ class DeserializedClassDescriptor$computeValueClassRepresentation$2 extends FunctionReferenceImpl implements Function1<Name, SimpleType> {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        Name name = (Name) obj;
        name.getClass();
        DeserializedClassDescriptor deserializedClassDescriptor = (DeserializedClassDescriptor) this.receiver;
        int i2 = DeserializedClassDescriptor.A;
        return deserializedClassDescriptor.G0(name);
    }
}
