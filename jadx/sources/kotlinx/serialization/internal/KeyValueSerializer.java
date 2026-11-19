package kotlinx.serialization.internal;

import defpackage.pq0;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b1\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u0002*\u0004\b\u0002\u0010\u00032\b\u0012\u0004\u0012\u00028\u00020\u0004\u0082\u0001\u0002\u0005\u0006¨\u0006\u0007"}, d2 = {"Lkotlinx/serialization/internal/KeyValueSerializer;", "K", "V", "R", "Lkotlinx/serialization/KSerializer;", "Lkotlinx/serialization/internal/MapEntrySerializer;", "Lkotlinx/serialization/internal/PairSerializer;", "kotlinx-serialization-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class KeyValueSerializer<K, V, R> implements KSerializer<R> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final KSerializer f75627a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final KSerializer f75628b;

    public KeyValueSerializer(KSerializer kSerializer, KSerializer kSerializer2, DefaultConstructorMarker defaultConstructorMarker) {
        this.f75627a = kSerializer;
        this.f75628b = kSerializer2;
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public final Object b(Decoder decoder) {
        decoder.getClass();
        SerialDescriptor f19850b = getF19850b();
        CompositeDecoder compositeDecoderB = decoder.b(f19850b);
        Object obj = TuplesKt.f75691a;
        Object objW = obj;
        Object objW2 = objW;
        while (true) {
            int iN = compositeDecoderB.n(getF19850b());
            if (iN == -1) {
                if (objW == obj) {
                    throw new SerializationException("Element 'key' is missing");
                }
                if (objW2 == obj) {
                    throw new SerializationException("Element 'value' is missing");
                }
                Object objH = h(objW, objW2);
                compositeDecoderB.c(f19850b);
                return objH;
            }
            if (iN == 0) {
                objW = compositeDecoderB.w(getF19850b(), 0, this.f75627a, null);
            } else {
                if (iN != 1) {
                    throw new SerializationException(pq0.k(iN, "Invalid index: "));
                }
                objW2 = compositeDecoderB.w(getF19850b(), 1, this.f75628b, null);
            }
        }
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        CompositeEncoder compositeEncoderB = encoder.b(getF19850b());
        compositeEncoderB.A(getF19850b(), 0, this.f75627a, f(obj));
        compositeEncoderB.A(getF19850b(), 1, this.f75628b, g(obj));
        compositeEncoderB.c(getF19850b());
    }

    public abstract Object f(Object obj);

    public abstract Object g(Object obj);

    public abstract Object h(Object obj, Object obj2);
}
