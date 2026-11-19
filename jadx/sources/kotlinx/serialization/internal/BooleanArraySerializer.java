package kotlinx.serialization.internal;

import kotlin.Metadata;
import kotlin.jvm.internal.BooleanCompanionObject;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\bÁ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u0014\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00050\u0003¨\u0006\u0006"}, d2 = {"Lkotlinx/serialization/internal/BooleanArraySerializer;", "Lkotlinx/serialization/KSerializer;", "", "Lkotlinx/serialization/internal/PrimitiveArraySerializer;", "", "Lkotlinx/serialization/internal/BooleanArrayBuilder;", "kotlinx-serialization-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class BooleanArraySerializer extends PrimitiveArraySerializer<Boolean, boolean[], BooleanArrayBuilder> implements KSerializer<boolean[]> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final BooleanArraySerializer f75573c;

    static {
        BooleanCompanionObject.f71903a.getClass();
        f75573c = new BooleanArraySerializer(BooleanSerializer.f75574a);
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final int i(Object obj) {
        boolean[] zArr = (boolean[]) obj;
        zArr.getClass();
        return zArr.length;
    }

    @Override // kotlinx.serialization.internal.CollectionLikeSerializer, kotlinx.serialization.internal.AbstractCollectionSerializer
    public final void k(CompositeDecoder compositeDecoder, int i2, Object obj) {
        BooleanArrayBuilder booleanArrayBuilder = (BooleanArrayBuilder) obj;
        booleanArrayBuilder.getClass();
        boolean zY = compositeDecoder.y(this.f75670b, i2);
        booleanArrayBuilder.b(booleanArrayBuilder.getF75614b() + 1);
        boolean[] zArr = booleanArrayBuilder.f75571a;
        int i3 = booleanArrayBuilder.f75572b;
        booleanArrayBuilder.f75572b = i3 + 1;
        zArr[i3] = zY;
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final Object l(Object obj) {
        boolean[] zArr = (boolean[]) obj;
        zArr.getClass();
        return new BooleanArrayBuilder(zArr);
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public final Object o() {
        return new boolean[0];
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public final void p(CompositeEncoder compositeEncoder, Object obj, int i2) {
        boolean[] zArr = (boolean[]) obj;
        compositeEncoder.getClass();
        zArr.getClass();
        for (int i3 = 0; i3 < i2; i3++) {
            compositeEncoder.x(this.f75670b, i3, zArr[i3]);
        }
    }
}
