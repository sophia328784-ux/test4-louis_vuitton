package kotlinx.serialization.encoding;

import kotlin.Metadata;
import kotlinx.serialization.SerializationStrategy;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.modules.SerializersModule;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lkotlinx/serialization/encoding/Encoder;", "", "kotlinx-serialization-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface Encoder {
    default CompositeEncoder B(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        return b(serialDescriptor);
    }

    void E(String str);

    SerializersModule a();

    CompositeEncoder b(SerialDescriptor serialDescriptor);

    default void d(SerializationStrategy serializationStrategy, Object obj) {
        serializationStrategy.getClass();
        serializationStrategy.c(this, obj);
    }

    void e(double d);

    void g(byte b2);

    void l(SerialDescriptor serialDescriptor, int i2);

    Encoder m(SerialDescriptor serialDescriptor);

    void n(long j2);

    void p();

    void q(short s);

    void s(boolean z);

    void v(float f2);

    void w(char c2);

    void z(int i2);
}
