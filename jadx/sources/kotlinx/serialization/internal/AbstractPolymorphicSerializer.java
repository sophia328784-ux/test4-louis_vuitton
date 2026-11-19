package kotlinx.serialization.internal;

import defpackage.md;
import defpackage.tg0;
import kotlin.Metadata;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.reflect.KClass;
import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.InternalSerializationApi;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.PolymorphicSerializerKt;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.SerializationStrategy;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b'\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00000\u0003B\t\b\u0000¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lkotlinx/serialization/internal/AbstractPolymorphicSerializer;", "", "T", "Lkotlinx/serialization/KSerializer;", "<init>", "()V", "kotlinx-serialization-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
@InternalSerializationApi
public abstract class AbstractPolymorphicSerializer<T> implements KSerializer<T> {
    @Override // kotlinx.serialization.DeserializationStrategy
    public final Object b(Decoder decoder) {
        decoder.getClass();
        SerialDescriptor f19838b = getF19838b();
        CompositeDecoder compositeDecoderB = decoder.b(f19838b);
        Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        Object objW = null;
        while (true) {
            int iN = compositeDecoderB.n(getF19838b());
            if (iN == -1) {
                if (objW != null) {
                    compositeDecoderB.c(f19838b);
                    return objW;
                }
                tg0.n((String) ref$ObjectRef.f71921b, "Polymorphic value has not been read for class ");
                return null;
            }
            if (iN != 0) {
                Object obj = ref$ObjectRef.f71921b;
                if (iN != 1) {
                    StringBuilder sb = new StringBuilder("Invalid index in polymorphic deserialization of ");
                    String str = (String) obj;
                    if (str == null) {
                        str = "unknown class";
                    }
                    sb.append(str);
                    sb.append("\n Expected 0, 1 or DECODE_DONE(-1), but found ");
                    sb.append(iN);
                    throw new SerializationException(sb.toString());
                }
                if (obj == null) {
                    md.n("Cannot read polymorphic value before its type token");
                    return null;
                }
                ref$ObjectRef.f71921b = obj;
                objW = compositeDecoderB.w(getF19838b(), iN, PolymorphicSerializerKt.a(this, compositeDecoderB, (String) obj), null);
            } else {
                ref$ObjectRef.f71921b = compositeDecoderB.l(getF19838b(), iN);
            }
        }
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        obj.getClass();
        SerializationStrategy serializationStrategyB = PolymorphicSerializerKt.b(this, encoder, obj);
        SerialDescriptor f19838b = getF19838b();
        CompositeEncoder compositeEncoderB = encoder.b(f19838b);
        compositeEncoderB.y(getF19838b(), 0, serializationStrategyB.getF19838b().getF75659a());
        compositeEncoderB.A(getF19838b(), 1, serializationStrategyB, obj);
        compositeEncoderB.c(f19838b);
    }

    public DeserializationStrategy f(CompositeDecoder compositeDecoder, String str) {
        return compositeDecoder.getD().d(str, getF75517a());
    }

    public SerializationStrategy g(Encoder encoder, Object obj) {
        obj.getClass();
        return encoder.getF75826e().e(getF75517a(), obj);
    }

    /* JADX INFO: renamed from: h */
    public abstract KClass getF75517a();
}
