package kotlinx.serialization.encoding;

import kotlin.Metadata;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlinx.serialization.ExperimentalSerializationApi;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.SerializationStrategy;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.internal.PrimitiveArrayDescriptor;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b'\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lkotlinx/serialization/encoding/AbstractEncoder;", "Lkotlinx/serialization/encoding/Encoder;", "Lkotlinx/serialization/encoding/CompositeEncoder;", "<init>", "()V", "kotlinx-serialization-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
@ExperimentalSerializationApi
public abstract class AbstractEncoder implements Encoder, CompositeEncoder {
    @Override // kotlinx.serialization.encoding.CompositeEncoder
    public final void A(SerialDescriptor serialDescriptor, int i2, SerializationStrategy serializationStrategy, Object obj) {
        serialDescriptor.getClass();
        serializationStrategy.getClass();
        F(serialDescriptor, i2);
        d(serializationStrategy, obj);
    }

    @Override // kotlinx.serialization.encoding.CompositeEncoder
    public final void C(SerialDescriptor serialDescriptor, int i2, double d) {
        serialDescriptor.getClass();
        F(serialDescriptor, i2);
        e(d);
    }

    @Override // kotlinx.serialization.encoding.CompositeEncoder
    public final void D(SerialDescriptor serialDescriptor, int i2, long j2) {
        serialDescriptor.getClass();
        F(serialDescriptor, i2);
        n(j2);
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public void E(String str) {
        str.getClass();
        G(str);
    }

    public void F(SerialDescriptor serialDescriptor, int i2) {
        serialDescriptor.getClass();
    }

    public void G(Object obj) {
        obj.getClass();
        StringBuilder sb = new StringBuilder("Non-serializable ");
        Class<?> cls = obj.getClass();
        ReflectionFactory reflectionFactory = Reflection.f71922a;
        sb.append(reflectionFactory.b(cls));
        sb.append(" is not supported by ");
        sb.append(reflectionFactory.b(getClass()));
        sb.append(" encoder");
        throw new SerializationException(sb.toString());
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public CompositeEncoder b(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        return this;
    }

    @Override // kotlinx.serialization.encoding.CompositeEncoder
    public void c(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public void e(double d) {
        G(Double.valueOf(d));
    }

    @Override // kotlinx.serialization.encoding.CompositeEncoder
    public final void f(PrimitiveArrayDescriptor primitiveArrayDescriptor, int i2, char c2) {
        primitiveArrayDescriptor.getClass();
        F(primitiveArrayDescriptor, i2);
        w(c2);
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public void g(byte b2) {
        G(Byte.valueOf(b2));
    }

    @Override // kotlinx.serialization.encoding.CompositeEncoder
    public void h(SerialDescriptor serialDescriptor, int i2, SerializationStrategy serializationStrategy, Object obj) {
        serialDescriptor.getClass();
        serializationStrategy.getClass();
        F(serialDescriptor, i2);
        if (serializationStrategy.getF19838b().b()) {
            d(serializationStrategy, obj);
        } else if (obj == null) {
            p();
        } else {
            d(serializationStrategy, obj);
        }
    }

    @Override // kotlinx.serialization.encoding.CompositeEncoder
    public final void i(PrimitiveArrayDescriptor primitiveArrayDescriptor, int i2, byte b2) {
        primitiveArrayDescriptor.getClass();
        F(primitiveArrayDescriptor, i2);
        g(b2);
    }

    @Override // kotlinx.serialization.encoding.CompositeEncoder
    public final Encoder k(PrimitiveArrayDescriptor primitiveArrayDescriptor, int i2) {
        primitiveArrayDescriptor.getClass();
        F(primitiveArrayDescriptor, i2);
        return m(primitiveArrayDescriptor.h(i2));
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public void l(SerialDescriptor serialDescriptor, int i2) {
        serialDescriptor.getClass();
        G(Integer.valueOf(i2));
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public Encoder m(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        return this;
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public void n(long j2) {
        G(Long.valueOf(j2));
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public void p() {
        throw new SerializationException("'null' is not supported by default");
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public void q(short s) {
        G(Short.valueOf(s));
    }

    @Override // kotlinx.serialization.encoding.CompositeEncoder
    public final void r(PrimitiveArrayDescriptor primitiveArrayDescriptor, int i2, short s) {
        primitiveArrayDescriptor.getClass();
        F(primitiveArrayDescriptor, i2);
        q(s);
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public void s(boolean z) {
        G(Boolean.valueOf(z));
    }

    @Override // kotlinx.serialization.encoding.CompositeEncoder
    public final void t(SerialDescriptor serialDescriptor, int i2, float f2) {
        serialDescriptor.getClass();
        F(serialDescriptor, i2);
        v(f2);
    }

    @Override // kotlinx.serialization.encoding.CompositeEncoder
    public final void u(int i2, int i3, SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        F(serialDescriptor, i2);
        z(i3);
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public void v(float f2) {
        G(Float.valueOf(f2));
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public void w(char c2) {
        G(Character.valueOf(c2));
    }

    @Override // kotlinx.serialization.encoding.CompositeEncoder
    public final void x(SerialDescriptor serialDescriptor, int i2, boolean z) {
        serialDescriptor.getClass();
        F(serialDescriptor, i2);
        s(z);
    }

    @Override // kotlinx.serialization.encoding.CompositeEncoder
    public final void y(SerialDescriptor serialDescriptor, int i2, String str) {
        serialDescriptor.getClass();
        str.getClass();
        F(serialDescriptor, i2);
        E(str);
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public void z(int i2) {
        G(Integer.valueOf(i2));
    }
}
