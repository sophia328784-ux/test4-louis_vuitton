package kotlinx.serialization.encoding;

import kotlin.Metadata;
import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.descriptors.SerialDescriptor;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lkotlinx/serialization/encoding/Decoder;", "", "kotlinx-serialization-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface Decoder {
    default Object D(DeserializationStrategy deserializationStrategy) {
        deserializationStrategy.getClass();
        return deserializationStrategy.b(this);
    }

    byte E();

    CompositeDecoder b(SerialDescriptor serialDescriptor);

    int e(SerialDescriptor serialDescriptor);

    int i();

    long k();

    Decoder o(SerialDescriptor serialDescriptor);

    short p();

    float q();

    double s();

    boolean u();

    char v();

    String x();

    boolean z();
}
