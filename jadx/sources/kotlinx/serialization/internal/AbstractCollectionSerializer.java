package kotlinx.serialization.internal;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.InternalSerializationApi;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u0002*\u0004\b\u0002\u0010\u00032\b\u0012\u0004\u0012\u00028\u00010\u0004\u0082\u0001\u0002\u0005\u0006¨\u0006\u0007"}, d2 = {"Lkotlinx/serialization/internal/AbstractCollectionSerializer;", "Element", "Collection", "Builder", "Lkotlinx/serialization/KSerializer;", "Lkotlinx/serialization/internal/CollectionLikeSerializer;", "Lkotlinx/serialization/internal/MapLikeSerializer;", "kotlinx-serialization-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
@InternalSerializationApi
public abstract class AbstractCollectionSerializer<Element, Collection, Builder> implements KSerializer<Collection> {
    public AbstractCollectionSerializer(DefaultConstructorMarker defaultConstructorMarker) {
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public Object b(Decoder decoder) {
        decoder.getClass();
        return j(decoder);
    }

    public abstract Object f();

    public abstract int g(Object obj);

    public abstract Iterator h(Object obj);

    public abstract int i(Object obj);

    public final Object j(Decoder decoder) {
        decoder.getClass();
        Object objF = f();
        int iG = g(objF);
        CompositeDecoder compositeDecoderB = decoder.b(a());
        while (true) {
            int iN = compositeDecoderB.n(a());
            if (iN == -1) {
                compositeDecoderB.c(a());
                return m(objF);
            }
            k(compositeDecoderB, iN + iG, objF);
        }
    }

    public abstract void k(CompositeDecoder compositeDecoder, int i2, Object obj);

    public abstract Object l(Object obj);

    public abstract Object m(Object obj);
}
