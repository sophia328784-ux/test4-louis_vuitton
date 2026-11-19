package defpackage;

import androidx.compose.animation.core.Animatable;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimation;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class f90 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69084b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ GraphicsLayer f69085c;
    public final /* synthetic */ LazyLayoutItemAnimation d;

    public /* synthetic */ f90(GraphicsLayer graphicsLayer, LazyLayoutItemAnimation lazyLayoutItemAnimation, int i2) {
        this.f69084b = i2;
        this.f69085c = graphicsLayer;
        this.d = lazyLayoutItemAnimation;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f69084b;
        LazyLayoutItemAnimation lazyLayoutItemAnimation = this.d;
        GraphicsLayer graphicsLayer = this.f69085c;
        Animatable animatable = (Animatable) obj;
        switch (i2) {
            case 0:
                graphicsLayer.g(((Number) animatable.d()).floatValue());
                lazyLayoutItemAnimation.f5425c.mo47invoke();
                break;
            default:
                graphicsLayer.g(((Number) animatable.d()).floatValue());
                lazyLayoutItemAnimation.f5425c.mo47invoke();
                break;
        }
        return Unit.f71739a;
    }
}
