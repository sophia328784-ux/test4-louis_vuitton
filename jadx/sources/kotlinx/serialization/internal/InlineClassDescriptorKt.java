package kotlinx.serialization.internal;

import kotlin.Metadata;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlinx-serialization-core"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class InlineClassDescriptorKt {
    public static final InlineClassDescriptor a(String str, final KSerializer kSerializer) {
        return new InlineClassDescriptor(str, new GeneratedSerializer<Object>() { // from class: kotlinx.serialization.internal.InlineClassDescriptorKt$InlinePrimitiveDescriptor$1
            @Override // kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
            public final SerialDescriptor a() {
                throw new IllegalStateException("unsupported");
            }

            @Override // kotlinx.serialization.DeserializationStrategy
            public final Object b(Decoder decoder) {
                decoder.getClass();
                throw new IllegalStateException("unsupported");
            }

            @Override // kotlinx.serialization.SerializationStrategy
            public final void c(Encoder encoder, Object obj) {
                throw new IllegalStateException("unsupported");
            }

            @Override // kotlinx.serialization.internal.GeneratedSerializer
            public final KSerializer[] e() {
                return new KSerializer[]{kSerializer};
            }
        });
    }
}
