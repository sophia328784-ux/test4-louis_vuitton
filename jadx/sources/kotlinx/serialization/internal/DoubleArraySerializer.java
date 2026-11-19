package kotlinx.serialization.internal;

import kotlin.Metadata;
import kotlin.jvm.internal.DoubleCompanionObject;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0013\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0002\u0018\u0002\n\u0000\bÁ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u0014\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00050\u0003¨\u0006\u0006"}, d2 = {"Lkotlinx/serialization/internal/DoubleArraySerializer;", "Lkotlinx/serialization/KSerializer;", "", "Lkotlinx/serialization/internal/PrimitiveArraySerializer;", "", "Lkotlinx/serialization/internal/DoubleArrayBuilder;", "kotlinx-serialization-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class DoubleArraySerializer extends PrimitiveArraySerializer<Double, double[], DoubleArrayBuilder> implements KSerializer<double[]> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final DoubleArraySerializer f75601c;

    static {
        DoubleCompanionObject.f71910a.getClass();
        f75601c = new DoubleArraySerializer(DoubleSerializer.f75602a);
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final int i(Object obj) {
        double[] dArr = (double[]) obj;
        dArr.getClass();
        return dArr.length;
    }

    @Override // kotlinx.serialization.internal.CollectionLikeSerializer, kotlinx.serialization.internal.AbstractCollectionSerializer
    public final void k(CompositeDecoder compositeDecoder, int i2, Object obj) {
        DoubleArrayBuilder doubleArrayBuilder = (DoubleArrayBuilder) obj;
        doubleArrayBuilder.getClass();
        double dC = compositeDecoder.C(this.f75670b, i2);
        doubleArrayBuilder.b(doubleArrayBuilder.getF75614b() + 1);
        double[] dArr = doubleArrayBuilder.f75599a;
        int i3 = doubleArrayBuilder.f75600b;
        doubleArrayBuilder.f75600b = i3 + 1;
        dArr[i3] = dC;
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final Object l(Object obj) {
        double[] dArr = (double[]) obj;
        dArr.getClass();
        return new DoubleArrayBuilder(dArr);
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public final Object o() {
        return new double[0];
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public final void p(CompositeEncoder compositeEncoder, Object obj, int i2) {
        double[] dArr = (double[]) obj;
        compositeEncoder.getClass();
        dArr.getClass();
        for (int i3 = 0; i3 < i2; i3++) {
            compositeEncoder.C(this.f75670b, i3, dArr[i3]);
        }
    }
}
