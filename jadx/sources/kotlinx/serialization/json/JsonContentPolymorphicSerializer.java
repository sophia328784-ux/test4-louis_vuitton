package kotlinx.serialization.json;

import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KClass;
import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.SerializersKt;
import kotlinx.serialization.descriptors.PolymorphicKind;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorImpl;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.json.internal.TreeJsonDecoderKt;
import kotlinx.serialization.modules.SerializersModule;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b&\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00000\u0003B\u0015\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lkotlinx/serialization/json/JsonContentPolymorphicSerializer;", "", "T", "Lkotlinx/serialization/KSerializer;", "Lkotlin/reflect/KClass;", "baseClass", "<init>", "(Lkotlin/reflect/KClass;)V", "kotlinx-serialization-json"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class JsonContentPolymorphicSerializer<T> implements KSerializer<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final KClass f75743a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SerialDescriptorImpl f75744b;

    public JsonContentPolymorphicSerializer(KClass<T> kClass) {
        kClass.getClass();
        this.f75743a = kClass;
        this.f75744b = SerialDescriptorsKt.f("JsonContentPolymorphicSerializer<" + kClass.B() + '>', PolymorphicKind.SEALED.f75537a, new SerialDescriptor[0]);
    }

    @Override // kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    /* JADX INFO: renamed from: a */
    public final SerialDescriptor getF19838b() {
        return this.f75744b;
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public final Object b(Decoder decoder) {
        decoder.getClass();
        JsonDecoder jsonDecoderB = JsonElementSerializersKt.b(decoder);
        JsonElement jsonElementH = jsonDecoderB.h();
        DeserializationStrategy deserializationStrategyF = f(jsonElementH);
        deserializationStrategyF.getClass();
        Json jsonA = jsonDecoderB.getF75768c();
        jsonA.getClass();
        return TreeJsonDecoderKt.a(jsonA, jsonElementH, (KSerializer) deserializationStrategyF);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        obj.getClass();
        SerializersModule serializersModuleA = encoder.getF75826e();
        KClass kClass = this.f75743a;
        KSerializer kSerializerE = serializersModuleA.e(kClass, obj);
        if (kSerializerE == null) {
            Class<?> cls = obj.getClass();
            ReflectionFactory reflectionFactory = Reflection.f71922a;
            KSerializer kSerializerD = SerializersKt.d(reflectionFactory.b(cls));
            if (kSerializerD == null) {
                KClass kClassB = reflectionFactory.b(obj.getClass());
                String strB = kClassB.B();
                if (strB == null) {
                    strB = String.valueOf(kClassB);
                }
                throw new SerializationException(d21.l("Class '", strB, "' is not registered for polymorphic serialization ", "in the scope of '" + kClass.B() + '\'', ".\nMark the base class as 'sealed' or register the serializer explicitly."));
            }
            kSerializerE = kSerializerD;
        }
        ((KSerializer) kSerializerE).c(encoder, obj);
    }

    public abstract DeserializationStrategy f(JsonElement jsonElement);
}
