package kotlin.reflect.jvm.internal.impl.renderer;

import defpackage.md;
import kotlin.properties.ObservableProperty;
import kotlin.reflect.KProperty;

/* JADX INFO: loaded from: classes4.dex */
public final class DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 extends ObservableProperty<Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ DescriptorRendererOptionsImpl f73820b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(Object obj, DescriptorRendererOptionsImpl descriptorRendererOptionsImpl) {
        super(obj);
        this.f73820b = descriptorRendererOptionsImpl;
    }

    @Override // kotlin.properties.ObservableProperty
    public final void d(KProperty kProperty) {
        kProperty.getClass();
        if (this.f73820b.f73809a) {
            md.k("Cannot modify readonly DescriptorRendererOptions");
        }
    }
}
