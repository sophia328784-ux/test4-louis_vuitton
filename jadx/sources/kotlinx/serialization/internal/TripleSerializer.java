package kotlinx.serialization.internal;

import com.networkbench.agent.impl.NBSSpanMetricUnit;
import defpackage.p11;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.Triple;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorImpl;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0001\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u0002*\u0004\b\u0002\u0010\u00032\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u00050\u0004B1\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00010\u0004\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00020\u0004¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lkotlinx/serialization/internal/TripleSerializer;", "A", NBSSpanMetricUnit.Byte, "C", "Lkotlinx/serialization/KSerializer;", "Lkotlin/Triple;", "aSerializer", "bSerializer", "cSerializer", "<init>", "(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V", "kotlinx-serialization-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class TripleSerializer<A, B, C> implements KSerializer<Triple<? extends A, ? extends B, ? extends C>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final KSerializer f75688a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final KSerializer f75689b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final KSerializer f75690c;
    public final SerialDescriptorImpl d;

    public TripleSerializer(KSerializer<A> kSerializer, KSerializer<B> kSerializer2, KSerializer<C> kSerializer3) {
        kSerializer.getClass();
        kSerializer2.getClass();
        kSerializer3.getClass();
        this.f75688a = kSerializer;
        this.f75689b = kSerializer2;
        this.f75690c = kSerializer3;
        this.d = SerialDescriptorsKt.c("kotlin.Triple", new SerialDescriptor[0], new p11(this, 10));
    }

    @Override // kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    /* JADX INFO: renamed from: a */
    public final SerialDescriptor getF19838b() {
        return this.d;
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public final Object b(Decoder decoder) {
        decoder.getClass();
        SerialDescriptorImpl serialDescriptorImpl = this.d;
        CompositeDecoder compositeDecoderB = decoder.b(serialDescriptorImpl);
        Object obj = TuplesKt.f75691a;
        Object objW = obj;
        Object objW2 = objW;
        Object objW3 = objW2;
        while (true) {
            int iN = compositeDecoderB.n(serialDescriptorImpl);
            if (iN == -1) {
                compositeDecoderB.c(serialDescriptorImpl);
                if (objW == obj) {
                    throw new SerializationException("Element 'first' is missing");
                }
                if (objW2 == obj) {
                    throw new SerializationException("Element 'second' is missing");
                }
                if (objW3 != obj) {
                    return new Triple(objW, objW2, objW3);
                }
                throw new SerializationException("Element 'third' is missing");
            }
            if (iN == 0) {
                objW = compositeDecoderB.w(serialDescriptorImpl, 0, this.f75688a, null);
            } else if (iN == 1) {
                objW2 = compositeDecoderB.w(serialDescriptorImpl, 1, this.f75689b, null);
            } else {
                if (iN != 2) {
                    throw new SerializationException(pq0.k(iN, "Unexpected index "));
                }
                objW3 = compositeDecoderB.w(serialDescriptorImpl, 2, this.f75690c, null);
            }
        }
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        Triple triple = (Triple) obj;
        triple.getClass();
        SerialDescriptorImpl serialDescriptorImpl = this.d;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptorImpl);
        compositeEncoderB.A(serialDescriptorImpl, 0, this.f75688a, triple.f71716b);
        compositeEncoderB.A(serialDescriptorImpl, 1, this.f75689b, triple.f71717c);
        compositeEncoderB.A(serialDescriptorImpl, 2, this.f75690c, triple.d);
        compositeEncoderB.c(serialDescriptorImpl);
    }
}
