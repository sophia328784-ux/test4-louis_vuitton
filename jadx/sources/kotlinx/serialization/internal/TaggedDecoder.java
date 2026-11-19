package kotlinx.serialization.internal;

import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Reflection;
import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.InternalSerializationApi;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.modules.SerializersModule;
import kotlinx.serialization.modules.SerializersModuleKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b'\u0018\u0000*\n\b\u0000\u0010\u0002*\u0004\u0018\u00010\u00012\u00020\u00032\u00020\u0004B\u0007¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lkotlinx/serialization/internal/TaggedDecoder;", "", "Tag", "Lkotlinx/serialization/encoding/Decoder;", "Lkotlinx/serialization/encoding/CompositeDecoder;", "<init>", "()V", "kotlinx-serialization-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
@InternalSerializationApi
public abstract class TaggedDecoder<Tag> implements Decoder, CompositeDecoder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f75686a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f75687b;

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final Decoder B(PrimitiveArrayDescriptor primitiveArrayDescriptor, int i2) {
        primitiveArrayDescriptor.getClass();
        return L(S(primitiveArrayDescriptor, i2), primitiveArrayDescriptor.h(i2));
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final double C(SerialDescriptor serialDescriptor, int i2) {
        serialDescriptor.getClass();
        return I(S(serialDescriptor, i2));
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public final byte E() {
        return G(T());
    }

    public boolean F(Object obj) {
        R();
        throw null;
    }

    public byte G(Object obj) {
        R();
        throw null;
    }

    public char H(Object obj) {
        R();
        throw null;
    }

    public double I(Object obj) {
        R();
        throw null;
    }

    public int J(Object obj, SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        R();
        throw null;
    }

    public float K(Object obj) {
        R();
        throw null;
    }

    public Decoder L(Object obj, SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        this.f75686a.add(obj);
        return this;
    }

    public int M(Object obj) {
        R();
        throw null;
    }

    public long N(Object obj) {
        R();
        throw null;
    }

    public boolean O(Object obj) {
        return true;
    }

    public short P(Object obj) {
        R();
        throw null;
    }

    public String Q(Object obj) {
        R();
        throw null;
    }

    public final void R() {
        throw new SerializationException(Reflection.f71922a.b(getClass()) + " can't retrieve untyped values");
    }

    public abstract String S(SerialDescriptor serialDescriptor, int i2);

    public final Object T() {
        ArrayList arrayList = this.f75686a;
        Object objRemove = arrayList.remove(CollectionsKt.F(arrayList));
        this.f75687b = true;
        return objRemove;
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    /* JADX INFO: renamed from: a */
    public SerializersModule getD() {
        return SerializersModuleKt.f75847a;
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public CompositeDecoder b(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        return this;
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public void c(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final char d(PrimitiveArrayDescriptor primitiveArrayDescriptor, int i2) {
        primitiveArrayDescriptor.getClass();
        return H(S(primitiveArrayDescriptor, i2));
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public final int e(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        return J(T(), serialDescriptor);
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final long f(SerialDescriptor serialDescriptor, int i2) {
        serialDescriptor.getClass();
        return N(S(serialDescriptor, i2));
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final byte g(PrimitiveArrayDescriptor primitiveArrayDescriptor, int i2) {
        primitiveArrayDescriptor.getClass();
        return G(S(primitiveArrayDescriptor, i2));
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public final int i() {
        return M(T());
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final int j(SerialDescriptor serialDescriptor, int i2) {
        serialDescriptor.getClass();
        return M(S(serialDescriptor, i2));
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public final long k() {
        return N(T());
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final String l(SerialDescriptor serialDescriptor, int i2) {
        serialDescriptor.getClass();
        return Q(S(serialDescriptor, i2));
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final Object m(SerialDescriptor serialDescriptor, int i2, DeserializationStrategy deserializationStrategy, Object obj) {
        serialDescriptor.getClass();
        deserializationStrategy.getClass();
        this.f75686a.add(S(serialDescriptor, i2));
        Object objD = (deserializationStrategy.getF19838b().b() || z()) ? D(deserializationStrategy) : null;
        if (!this.f75687b) {
            T();
        }
        this.f75687b = false;
        return objD;
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public Decoder o(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        return L(T(), serialDescriptor);
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public final short p() {
        return P(T());
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public final float q() {
        return K(T());
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final float r(SerialDescriptor serialDescriptor, int i2) {
        serialDescriptor.getClass();
        return K(S(serialDescriptor, i2));
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public final double s() {
        return I(T());
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final short t(PrimitiveArrayDescriptor primitiveArrayDescriptor, int i2) {
        primitiveArrayDescriptor.getClass();
        return P(S(primitiveArrayDescriptor, i2));
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public final boolean u() {
        return F(T());
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public final char v() {
        return H(T());
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final Object w(SerialDescriptor serialDescriptor, int i2, DeserializationStrategy deserializationStrategy, Object obj) {
        serialDescriptor.getClass();
        deserializationStrategy.getClass();
        this.f75686a.add(S(serialDescriptor, i2));
        deserializationStrategy.getClass();
        Object objD = D(deserializationStrategy);
        if (!this.f75687b) {
            T();
        }
        this.f75687b = false;
        return objD;
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public final String x() {
        return Q(T());
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final boolean y(SerialDescriptor serialDescriptor, int i2) {
        serialDescriptor.getClass();
        return F(S(serialDescriptor, i2));
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public boolean z() {
        Object objN = CollectionsKt.N(this.f75686a);
        if (objN == null) {
            return false;
        }
        return O(objN);
    }
}
