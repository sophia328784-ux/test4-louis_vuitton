package kotlinx.serialization.internal;

import kotlin.Metadata;
import kotlin.UByte;
import kotlin.UByteArray;
import kotlinx.serialization.ExperimentalSerializationApi;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Encoder;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÁ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u0014\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00050\u0003¨\u0006\u0006"}, d2 = {"Lkotlinx/serialization/internal/UByteArraySerializer;", "Lkotlinx/serialization/KSerializer;", "Lkotlin/UByteArray;", "Lkotlinx/serialization/internal/PrimitiveArraySerializer;", "Lkotlin/UByte;", "Lkotlinx/serialization/internal/UByteArrayBuilder;", "kotlinx-serialization-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
@ExperimentalSerializationApi
public final class UByteArraySerializer extends PrimitiveArraySerializer<UByte, UByteArray, UByteArrayBuilder> implements KSerializer<UByteArray> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final UByteArraySerializer f75694c;

    static {
        UByte.INSTANCE.getClass();
        f75694c = new UByteArraySerializer(UByteSerializer.f75695a);
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final int i(Object obj) {
        return ((UByteArray) obj).f71720b.length;
    }

    @Override // kotlinx.serialization.internal.CollectionLikeSerializer, kotlinx.serialization.internal.AbstractCollectionSerializer
    public final void k(CompositeDecoder compositeDecoder, int i2, Object obj) {
        UByteArrayBuilder uByteArrayBuilder = (UByteArrayBuilder) obj;
        uByteArrayBuilder.getClass();
        byte bE = compositeDecoder.B(this.f75670b, i2).E();
        UByte.Companion companion = UByte.INSTANCE;
        uByteArrayBuilder.b(uByteArrayBuilder.getF75708b() + 1);
        byte[] bArr = uByteArrayBuilder.f75692a;
        int i3 = uByteArrayBuilder.f75693b;
        uByteArrayBuilder.f75693b = i3 + 1;
        bArr[i3] = bE;
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final Object l(Object obj) {
        return new UByteArrayBuilder(((UByteArray) obj).f71720b, null);
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public final Object o() {
        return new UByteArray(new byte[0]);
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public final void p(CompositeEncoder compositeEncoder, Object obj, int i2) {
        byte[] bArr = ((UByteArray) obj).f71720b;
        compositeEncoder.getClass();
        for (int i3 = 0; i3 < i2; i3++) {
            Encoder encoderK = compositeEncoder.k(this.f75670b, i3);
            byte b2 = bArr[i3];
            UByte.Companion companion = UByte.INSTANCE;
            encoderK.g(b2);
        }
    }
}
