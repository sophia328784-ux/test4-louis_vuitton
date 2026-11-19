package kotlinx.serialization.encoding;

import kotlin.Metadata;
import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.internal.PrimitiveArrayDescriptor;
import kotlinx.serialization.modules.SerializersModule;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lkotlinx/serialization/encoding/CompositeDecoder;", "", "kotlinx-serialization-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface CompositeDecoder {
    Decoder B(PrimitiveArrayDescriptor primitiveArrayDescriptor, int i2);

    double C(SerialDescriptor serialDescriptor, int i2);

    SerializersModule a();

    void c(SerialDescriptor serialDescriptor);

    char d(PrimitiveArrayDescriptor primitiveArrayDescriptor, int i2);

    long f(SerialDescriptor serialDescriptor, int i2);

    byte g(PrimitiveArrayDescriptor primitiveArrayDescriptor, int i2);

    int j(SerialDescriptor serialDescriptor, int i2);

    String l(SerialDescriptor serialDescriptor, int i2);

    Object m(SerialDescriptor serialDescriptor, int i2, DeserializationStrategy deserializationStrategy, Object obj);

    int n(SerialDescriptor serialDescriptor);

    float r(SerialDescriptor serialDescriptor, int i2);

    short t(PrimitiveArrayDescriptor primitiveArrayDescriptor, int i2);

    Object w(SerialDescriptor serialDescriptor, int i2, DeserializationStrategy deserializationStrategy, Object obj);

    boolean y(SerialDescriptor serialDescriptor, int i2);
}
