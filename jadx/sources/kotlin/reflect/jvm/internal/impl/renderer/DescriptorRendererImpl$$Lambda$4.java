package kotlin.reflect.jvm.internal.impl.renderer;

import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import org.teleal.cling.support.contentdirectory.callback.Browse;

/* JADX INFO: loaded from: classes4.dex */
class DescriptorRendererImpl$$Lambda$4 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final DescriptorRendererImpl f73801b;

    public DescriptorRendererImpl$$Lambda$4(DescriptorRendererImpl descriptorRendererImpl) {
        this.f73801b = descriptorRendererImpl;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        TypeProjection typeProjection = (TypeProjection) obj;
        int i2 = DescriptorRendererImpl.g;
        typeProjection.getClass();
        if (typeProjection.a()) {
            return Browse.CAPS_WILDCARD;
        }
        KotlinType type = typeProjection.getType();
        type.getClass();
        String strY = this.f73801b.Y(type);
        if (typeProjection.b() == Variance.INVARIANT) {
            return strY;
        }
        return typeProjection.b() + ' ' + strY;
    }
}
