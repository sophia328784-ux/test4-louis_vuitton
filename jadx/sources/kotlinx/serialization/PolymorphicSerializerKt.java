package kotlinx.serialization;

import kotlin.Metadata;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.AbstractPolymorphicSerializer;
import kotlinx.serialization.internal.AbstractPolymorphicSerializerKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlinx-serialization-core"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class PolymorphicSerializerKt {
    public static final DeserializationStrategy a(AbstractPolymorphicSerializer abstractPolymorphicSerializer, CompositeDecoder compositeDecoder, String str) {
        abstractPolymorphicSerializer.getClass();
        DeserializationStrategy deserializationStrategyF = abstractPolymorphicSerializer.f(compositeDecoder, str);
        if (deserializationStrategyF != null) {
            return deserializationStrategyF;
        }
        AbstractPolymorphicSerializerKt.a(str, abstractPolymorphicSerializer.getF75517a());
        throw null;
    }

    public static final SerializationStrategy b(AbstractPolymorphicSerializer abstractPolymorphicSerializer, Encoder encoder, Object obj) {
        abstractPolymorphicSerializer.getClass();
        obj.getClass();
        SerializationStrategy serializationStrategyG = abstractPolymorphicSerializer.g(encoder, obj);
        if (serializationStrategyG != null) {
            return serializationStrategyG;
        }
        KClass kClassB = Reflection.f71922a.b(obj.getClass());
        KClass f75517a = abstractPolymorphicSerializer.getF75517a();
        f75517a.getClass();
        String strB = kClassB.B();
        if (strB == null) {
            strB = String.valueOf(kClassB);
        }
        AbstractPolymorphicSerializerKt.a(strB, f75517a);
        throw null;
    }
}
