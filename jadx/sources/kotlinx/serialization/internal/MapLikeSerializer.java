package kotlinx.serialization.internal;

import defpackage.b21;
import defpackage.o60;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.InternalSerializationApi;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.PrimitiveKind;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Encoder;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u0002*\u0004\b\u0002\u0010\u0003*\u0014\b\u0003\u0010\u0005*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00042 \u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0007\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0006\u0082\u0001\u0002\b\t¨\u0006\n"}, d2 = {"Lkotlinx/serialization/internal/MapLikeSerializer;", "Key", "Value", "Collection", "", "Builder", "Lkotlinx/serialization/internal/AbstractCollectionSerializer;", "", "Lkotlinx/serialization/internal/HashMapSerializer;", "Lkotlinx/serialization/internal/LinkedHashMapSerializer;", "kotlinx-serialization-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
@InternalSerializationApi
public abstract class MapLikeSerializer<Key, Value, Collection, Builder extends Map<Key, Value>> extends AbstractCollectionSerializer<Map.Entry<? extends Key, ? extends Value>, Collection, Builder> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final KSerializer f75643a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final KSerializer f75644b;

    public MapLikeSerializer(KSerializer kSerializer, KSerializer kSerializer2, DefaultConstructorMarker defaultConstructorMarker) {
        super(null);
        this.f75643a = kSerializer;
        this.f75644b = kSerializer2;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        i(obj);
        SerialDescriptor serialDescriptorA = a();
        CompositeEncoder compositeEncoderB = encoder.B(serialDescriptorA);
        Iterator itH = h(obj);
        int i2 = 0;
        while (itH.hasNext()) {
            Map.Entry entry = (Map.Entry) itH.next();
            Object key = entry.getKey();
            Object value = entry.getValue();
            int i3 = i2 + 1;
            compositeEncoderB.A(a(), i2, this.f75643a, key);
            i2 += 2;
            compositeEncoderB.A(a(), i3, this.f75644b, value);
        }
        compositeEncoderB.c(serialDescriptorA);
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final void k(CompositeDecoder compositeDecoder, int i2, Object obj) {
        Map map = (Map) obj;
        map.getClass();
        Object objW = compositeDecoder.w(a(), i2, this.f75643a, null);
        int iN = compositeDecoder.n(a());
        if (iN != i2 + 1) {
            b21.n(o60.h(i2, iN, "Value must follow key in a map, index for key: ", ", returned index for value: "));
            return;
        }
        boolean zContainsKey = map.containsKey(objW);
        KSerializer kSerializer = this.f75644b;
        map.put(objW, (!zContainsKey || (kSerializer.a().getF75548b() instanceof PrimitiveKind)) ? compositeDecoder.w(a(), iN, kSerializer, null) : compositeDecoder.w(a(), iN, kSerializer, MapsKt.d(map, objW)));
    }
}
