package kotlinx.serialization.internal;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Encoder;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b1\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u0002*\u0004\b\u0002\u0010\u00032\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u0004\u0082\u0001\u0003\u0005\u0006\u0007¨\u0006\b"}, d2 = {"Lkotlinx/serialization/internal/CollectionLikeSerializer;", "Element", "Collection", "Builder", "Lkotlinx/serialization/internal/AbstractCollectionSerializer;", "Lkotlinx/serialization/internal/CollectionSerializer;", "Lkotlinx/serialization/internal/PrimitiveArraySerializer;", "Lkotlinx/serialization/internal/ReferenceArraySerializer;", "kotlinx-serialization-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class CollectionLikeSerializer<Element, Collection, Builder> extends AbstractCollectionSerializer<Element, Collection, Builder> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final KSerializer f75594a;

    public CollectionLikeSerializer(KSerializer kSerializer, DefaultConstructorMarker defaultConstructorMarker) {
        super(null);
        this.f75594a = kSerializer;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void c(Encoder encoder, Object obj) {
        int i2 = i(obj);
        SerialDescriptor serialDescriptorA = a();
        CompositeEncoder compositeEncoderB = encoder.B(serialDescriptorA);
        Iterator itH = h(obj);
        for (int i3 = 0; i3 < i2; i3++) {
            compositeEncoderB.A(a(), i3, this.f75594a, itH.next());
        }
        compositeEncoderB.c(serialDescriptorA);
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public void k(CompositeDecoder compositeDecoder, int i2, Object obj) {
        n(obj, compositeDecoder.w(a(), i2, this.f75594a, null), i2);
    }

    public abstract void n(Object obj, Object obj2, int i2);
}
