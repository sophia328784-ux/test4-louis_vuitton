package kotlinx.serialization.internal;

import kotlin.Metadata;
import kotlin.jvm.internal.FloatCompanionObject;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0000\bÁ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u0014\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00050\u0003¨\u0006\u0006"}, d2 = {"Lkotlinx/serialization/internal/FloatArraySerializer;", "Lkotlinx/serialization/KSerializer;", "", "Lkotlinx/serialization/internal/PrimitiveArraySerializer;", "", "Lkotlinx/serialization/internal/FloatArrayBuilder;", "kotlinx-serialization-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class FloatArraySerializer extends PrimitiveArraySerializer<Float, float[], FloatArrayBuilder> implements KSerializer<float[]> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final FloatArraySerializer f75615c;

    static {
        FloatCompanionObject.f71911a.getClass();
        f75615c = new FloatArraySerializer(FloatSerializer.f75616a);
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final int i(Object obj) {
        float[] fArr = (float[]) obj;
        fArr.getClass();
        return fArr.length;
    }

    @Override // kotlinx.serialization.internal.CollectionLikeSerializer, kotlinx.serialization.internal.AbstractCollectionSerializer
    public final void k(CompositeDecoder compositeDecoder, int i2, Object obj) {
        FloatArrayBuilder floatArrayBuilder = (FloatArrayBuilder) obj;
        floatArrayBuilder.getClass();
        float fR = compositeDecoder.r(this.f75670b, i2);
        floatArrayBuilder.b(floatArrayBuilder.getF75614b() + 1);
        float[] fArr = floatArrayBuilder.f75613a;
        int i3 = floatArrayBuilder.f75614b;
        floatArrayBuilder.f75614b = i3 + 1;
        fArr[i3] = fR;
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final Object l(Object obj) {
        float[] fArr = (float[]) obj;
        fArr.getClass();
        return new FloatArrayBuilder(fArr);
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public final Object o() {
        return new float[0];
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public final void p(CompositeEncoder compositeEncoder, Object obj, int i2) {
        float[] fArr = (float[]) obj;
        compositeEncoder.getClass();
        fArr.getClass();
        for (int i3 = 0; i3 < i2; i3++) {
            compositeEncoder.t(this.f75670b, i3, fArr[i3]);
        }
    }
}
