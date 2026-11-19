package kotlinx.serialization.encoding;

import kotlin.Metadata;
import kotlin.jvm.internal.Reflection;
import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.ExperimentalSerializationApi;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.internal.PrimitiveArrayDescriptor;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b'\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lkotlinx/serialization/encoding/AbstractDecoder;", "Lkotlinx/serialization/encoding/Decoder;", "Lkotlinx/serialization/encoding/CompositeDecoder;", "<init>", "()V", "kotlinx-serialization-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
@ExperimentalSerializationApi
public abstract class AbstractDecoder implements Decoder, CompositeDecoder {
    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final Decoder B(PrimitiveArrayDescriptor primitiveArrayDescriptor, int i2) {
        primitiveArrayDescriptor.getClass();
        return o(primitiveArrayDescriptor.h(i2));
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final double C(SerialDescriptor serialDescriptor, int i2) {
        serialDescriptor.getClass();
        return s();
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public byte E() {
        Object objF = F();
        objF.getClass();
        return ((Byte) objF).byteValue();
    }

    public Object F() {
        throw new SerializationException(Reflection.f71922a.b(getClass()) + " can't retrieve untyped values");
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
        return v();
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public int e(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        Object objF = F();
        objF.getClass();
        return ((Integer) objF).intValue();
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final long f(SerialDescriptor serialDescriptor, int i2) {
        serialDescriptor.getClass();
        return k();
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final byte g(PrimitiveArrayDescriptor primitiveArrayDescriptor, int i2) {
        primitiveArrayDescriptor.getClass();
        return E();
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public int i() {
        Object objF = F();
        objF.getClass();
        return ((Integer) objF).intValue();
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final int j(SerialDescriptor serialDescriptor, int i2) {
        serialDescriptor.getClass();
        return i();
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public long k() {
        Object objF = F();
        objF.getClass();
        return ((Long) objF).longValue();
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final String l(SerialDescriptor serialDescriptor, int i2) {
        serialDescriptor.getClass();
        return x();
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final Object m(SerialDescriptor serialDescriptor, int i2, DeserializationStrategy deserializationStrategy, Object obj) {
        serialDescriptor.getClass();
        deserializationStrategy.getClass();
        if (deserializationStrategy.getF19850b().b() || z()) {
            return D(deserializationStrategy);
        }
        return null;
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public Decoder o(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        return this;
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public short p() {
        Object objF = F();
        objF.getClass();
        return ((Short) objF).shortValue();
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public float q() {
        Object objF = F();
        objF.getClass();
        return ((Float) objF).floatValue();
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final float r(SerialDescriptor serialDescriptor, int i2) {
        serialDescriptor.getClass();
        return q();
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public double s() {
        Object objF = F();
        objF.getClass();
        return ((Double) objF).doubleValue();
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final short t(PrimitiveArrayDescriptor primitiveArrayDescriptor, int i2) {
        primitiveArrayDescriptor.getClass();
        return p();
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public boolean u() {
        Object objF = F();
        objF.getClass();
        return ((Boolean) objF).booleanValue();
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public char v() {
        Object objF = F();
        objF.getClass();
        return ((Character) objF).charValue();
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public Object w(SerialDescriptor serialDescriptor, int i2, DeserializationStrategy deserializationStrategy, Object obj) {
        serialDescriptor.getClass();
        deserializationStrategy.getClass();
        return D(deserializationStrategy);
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public String x() {
        Object objF = F();
        objF.getClass();
        return (String) objF;
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final boolean y(SerialDescriptor serialDescriptor, int i2) {
        serialDescriptor.getClass();
        return u();
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public boolean z() {
        return true;
    }
}
