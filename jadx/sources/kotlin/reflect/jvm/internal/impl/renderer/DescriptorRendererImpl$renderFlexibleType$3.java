package kotlin.reflect.jvm.internal.impl.renderer;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
final /* synthetic */ class DescriptorRendererImpl$renderFlexibleType$3 extends FunctionReferenceImpl implements Function1<String, String> {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        String str = (String) obj;
        str.getClass();
        DescriptorRendererImpl descriptorRendererImpl = (DescriptorRendererImpl) this.receiver;
        int i2 = DescriptorRendererImpl.g;
        return descriptorRendererImpl.q(str);
    }
}
