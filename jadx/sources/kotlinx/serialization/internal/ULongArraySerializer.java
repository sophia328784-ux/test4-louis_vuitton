package kotlinx.serialization.internal;

import kotlin.Metadata;
import kotlin.ULong;
import kotlin.ULongArray;
import kotlinx.serialization.ExperimentalSerializationApi;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Encoder;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÁ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u0014\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00050\u0003¨\u0006\u0006"}, d2 = {"Lkotlinx/serialization/internal/ULongArraySerializer;", "Lkotlinx/serialization/KSerializer;", "Lkotlin/ULongArray;", "Lkotlinx/serialization/internal/PrimitiveArraySerializer;", "Lkotlin/ULong;", "Lkotlinx/serialization/internal/ULongArrayBuilder;", "kotlinx-serialization-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
@ExperimentalSerializationApi
public final class ULongArraySerializer extends PrimitiveArraySerializer<ULong, ULongArray, ULongArrayBuilder> implements KSerializer<ULongArray> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ULongArraySerializer f75704c;

    static {
        ULong.INSTANCE.getClass();
        f75704c = new ULongArraySerializer(ULongSerializer.f75705a);
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final int i(Object obj) {
        return ((ULongArray) obj).f71730b.length;
    }

    @Override // kotlinx.serialization.internal.CollectionLikeSerializer, kotlinx.serialization.internal.AbstractCollectionSerializer
    public final void k(CompositeDecoder compositeDecoder, int i2, Object obj) {
        ULongArrayBuilder uLongArrayBuilder = (ULongArrayBuilder) obj;
        uLongArrayBuilder.getClass();
        long jK = compositeDecoder.B(this.f75670b, i2).k();
        ULong.Companion companion = ULong.INSTANCE;
        uLongArrayBuilder.b(uLongArrayBuilder.getF75703b() + 1);
        long[] jArr = uLongArrayBuilder.f75702a;
        int i3 = uLongArrayBuilder.f75703b;
        uLongArrayBuilder.f75703b = i3 + 1;
        jArr[i3] = jK;
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final Object l(Object obj) {
        return new ULongArrayBuilder(((ULongArray) obj).f71730b, null);
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public final Object o() {
        return new ULongArray(new long[0]);
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public final void p(CompositeEncoder compositeEncoder, Object obj, int i2) {
        long[] jArr = ((ULongArray) obj).f71730b;
        compositeEncoder.getClass();
        for (int i3 = 0; i3 < i2; i3++) {
            Encoder encoderK = compositeEncoder.k(this.f75670b, i3);
            long j2 = jArr[i3];
            ULong.Companion companion = ULong.INSTANCE;
            encoderK.n(j2);
        }
    }
}
