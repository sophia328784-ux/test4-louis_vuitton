package kotlinx.serialization.internal;

import kotlin.Metadata;
import kotlin.UShort;
import kotlin.UShortArray;
import kotlinx.serialization.ExperimentalSerializationApi;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Encoder;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÁ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u0014\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00050\u0003¨\u0006\u0006"}, d2 = {"Lkotlinx/serialization/internal/UShortArraySerializer;", "Lkotlinx/serialization/KSerializer;", "Lkotlin/UShortArray;", "Lkotlinx/serialization/internal/PrimitiveArraySerializer;", "Lkotlin/UShort;", "Lkotlinx/serialization/internal/UShortArrayBuilder;", "kotlinx-serialization-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
@ExperimentalSerializationApi
public final class UShortArraySerializer extends PrimitiveArraySerializer<UShort, UShortArray, UShortArrayBuilder> implements KSerializer<UShortArray> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final UShortArraySerializer f75709c;

    static {
        UShort.INSTANCE.getClass();
        f75709c = new UShortArraySerializer(UShortSerializer.f75710a);
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final int i(Object obj) {
        return ((UShortArray) obj).f71736b.length;
    }

    @Override // kotlinx.serialization.internal.CollectionLikeSerializer, kotlinx.serialization.internal.AbstractCollectionSerializer
    public final void k(CompositeDecoder compositeDecoder, int i2, Object obj) {
        UShortArrayBuilder uShortArrayBuilder = (UShortArrayBuilder) obj;
        uShortArrayBuilder.getClass();
        short sP = compositeDecoder.B(this.f75670b, i2).p();
        UShort.Companion companion = UShort.INSTANCE;
        uShortArrayBuilder.b(uShortArrayBuilder.getF75708b() + 1);
        short[] sArr = uShortArrayBuilder.f75707a;
        int i3 = uShortArrayBuilder.f75708b;
        uShortArrayBuilder.f75708b = i3 + 1;
        sArr[i3] = sP;
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final Object l(Object obj) {
        return new UShortArrayBuilder(((UShortArray) obj).f71736b, null);
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public final Object o() {
        return new UShortArray(new short[0]);
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public final void p(CompositeEncoder compositeEncoder, Object obj, int i2) {
        short[] sArr = ((UShortArray) obj).f71736b;
        compositeEncoder.getClass();
        for (int i3 = 0; i3 < i2; i3++) {
            Encoder encoderK = compositeEncoder.k(this.f75670b, i3);
            short s = sArr[i3];
            UShort.Companion companion = UShort.INSTANCE;
            encoderK.q(s);
        }
    }
}
