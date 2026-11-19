package kotlin.reflect.jvm.internal.impl.renderer;

import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;

/* JADX INFO: loaded from: classes4.dex */
class DescriptorRendererImpl$$Lambda$7 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final DescriptorRendererImpl$$Lambda$7 f73804b = new DescriptorRendererImpl$$Lambda$7();

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        DescriptorRendererOptions descriptorRendererOptions = (DescriptorRendererOptions) obj;
        int i2 = DescriptorRendererImpl.g;
        descriptorRendererOptions.getClass();
        descriptorRendererOptions.k(SetsKt.f(descriptorRendererOptions.g(), CollectionsKt.P(StandardNames.FqNames.p, StandardNames.FqNames.q)));
        return Unit.f71739a;
    }
}
