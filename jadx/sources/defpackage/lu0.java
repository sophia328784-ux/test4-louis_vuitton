package defpackage;

import java.util.List;
import java.util.Map;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.StringCompanionObject;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SealedClassSerializer;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.descriptors.ClassSerialDescriptorBuilder;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.descriptors.SerialKind;
import kotlinx.serialization.internal.PrimitiveSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class lu0 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76092b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SealedClassSerializer f76093c;

    public /* synthetic */ lu0(SealedClassSerializer sealedClassSerializer, int i2) {
        this.f76092b = i2;
        this.f76093c = sealedClassSerializer;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f76092b;
        SealedClassSerializer sealedClassSerializer = this.f76093c;
        ClassSerialDescriptorBuilder classSerialDescriptorBuilder = (ClassSerialDescriptorBuilder) obj;
        switch (i2) {
            case 0:
                classSerialDescriptorBuilder.getClass();
                BuiltinSerializersKt.e(StringCompanionObject.f71926a);
                PrimitiveSerialDescriptor primitiveSerialDescriptor = StringSerializer.f75685b;
                EmptyList emptyList = EmptyList.f71768b;
                classSerialDescriptorBuilder.a("type", primitiveSerialDescriptor, emptyList, false);
                classSerialDescriptorBuilder.a("value", SerialDescriptorsKt.e("kotlinx.serialization.Sealed<" + sealedClassSerializer.f75520a.B() + '>', SerialKind.CONTEXTUAL.f75562a, new SerialDescriptor[0], new lu0(sealedClassSerializer, 1)), emptyList, false);
                List list = sealedClassSerializer.f75521b;
                list.getClass();
                classSerialDescriptorBuilder.f75529b = list;
                break;
            default:
                classSerialDescriptorBuilder.getClass();
                for (Map.Entry entry : sealedClassSerializer.f75523e.entrySet()) {
                    classSerialDescriptorBuilder.a((String) entry.getKey(), ((KSerializer) entry.getValue()).getF19838b(), EmptyList.f71768b, false);
                }
                break;
        }
        return Unit.f71739a;
    }
}
