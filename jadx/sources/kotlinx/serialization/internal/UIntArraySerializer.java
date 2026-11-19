package kotlinx.serialization.internal;

import kotlin.Metadata;
import kotlin.UInt;
import kotlin.UIntArray;
import kotlinx.serialization.ExperimentalSerializationApi;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Encoder;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÁ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u0014\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00050\u0003¨\u0006\u0006"}, d2 = {"Lkotlinx/serialization/internal/UIntArraySerializer;", "Lkotlinx/serialization/KSerializer;", "Lkotlin/UIntArray;", "Lkotlinx/serialization/internal/PrimitiveArraySerializer;", "Lkotlin/UInt;", "Lkotlinx/serialization/internal/UIntArrayBuilder;", "kotlinx-serialization-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
@ExperimentalSerializationApi
public final class UIntArraySerializer extends PrimitiveArraySerializer<UInt, UIntArray, UIntArrayBuilder> implements KSerializer<UIntArray> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final UIntArraySerializer f75699c;

    static {
        UInt.INSTANCE.getClass();
        f75699c = new UIntArraySerializer(UIntSerializer.f75700a);
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final int i(Object obj) {
        return ((UIntArray) obj).f71725b.length;
    }

    @Override // kotlinx.serialization.internal.CollectionLikeSerializer, kotlinx.serialization.internal.AbstractCollectionSerializer
    public final void k(CompositeDecoder compositeDecoder, int i2, Object obj) {
        UIntArrayBuilder uIntArrayBuilder = (UIntArrayBuilder) obj;
        uIntArrayBuilder.getClass();
        int i3 = compositeDecoder.B(this.f75670b, i2).i();
        UInt.Companion companion = UInt.INSTANCE;
        uIntArrayBuilder.b(uIntArrayBuilder.getF75698b() + 1);
        int[] iArr = uIntArrayBuilder.f75697a;
        int i4 = uIntArrayBuilder.f75698b;
        uIntArrayBuilder.f75698b = i4 + 1;
        iArr[i4] = i3;
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final Object l(Object obj) {
        return new UIntArrayBuilder(((UIntArray) obj).f71725b, null);
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public final Object o() {
        return new UIntArray(new int[0]);
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public final void p(CompositeEncoder compositeEncoder, Object obj, int i2) {
        int[] iArr = ((UIntArray) obj).f71725b;
        compositeEncoder.getClass();
        for (int i3 = 0; i3 < i2; i3++) {
            Encoder encoderK = compositeEncoder.k(this.f75670b, i3);
            int i4 = iArr[i3];
            UInt.Companion companion = UInt.INSTANCE;
            encoderK.z(i4);
        }
    }
}
