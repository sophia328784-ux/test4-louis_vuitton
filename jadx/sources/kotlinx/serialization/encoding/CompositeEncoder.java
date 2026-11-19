package kotlinx.serialization.encoding;

import kotlin.Metadata;
import kotlinx.serialization.SerializationStrategy;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.internal.PrimitiveArrayDescriptor;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lkotlinx/serialization/encoding/CompositeEncoder;", "", "kotlinx-serialization-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface CompositeEncoder {
    void A(SerialDescriptor serialDescriptor, int i2, SerializationStrategy serializationStrategy, Object obj);

    void C(SerialDescriptor serialDescriptor, int i2, double d);

    void D(SerialDescriptor serialDescriptor, int i2, long j2);

    void c(SerialDescriptor serialDescriptor);

    void f(PrimitiveArrayDescriptor primitiveArrayDescriptor, int i2, char c2);

    void h(SerialDescriptor serialDescriptor, int i2, SerializationStrategy serializationStrategy, Object obj);

    void i(PrimitiveArrayDescriptor primitiveArrayDescriptor, int i2, byte b2);

    Encoder k(PrimitiveArrayDescriptor primitiveArrayDescriptor, int i2);

    default boolean o(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        return true;
    }

    void r(PrimitiveArrayDescriptor primitiveArrayDescriptor, int i2, short s);

    void t(SerialDescriptor serialDescriptor, int i2, float f2);

    void u(int i2, int i3, SerialDescriptor serialDescriptor);

    void x(SerialDescriptor serialDescriptor, int i2, boolean z);

    void y(SerialDescriptor serialDescriptor, int i2, String str);
}
