package androidx.compose.ui.draw;

import androidx.compose.ui.graphics.GraphicsLayerScope;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "", "Landroidx/compose/ui/graphics/GraphicsLayerScope;", "invoke"}, k = 3, mv = {2, 1, 0}, xi = 48)
final class ShadowGraphicsLayerElement$createBlock$1 extends Lambda implements Function1<GraphicsLayerScope, Unit> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ShadowGraphicsLayerElement f8727c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShadowGraphicsLayerElement$createBlock$1(ShadowGraphicsLayerElement shadowGraphicsLayerElement) {
        super(1);
        this.f8727c = shadowGraphicsLayerElement;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        GraphicsLayerScope graphicsLayerScope = (GraphicsLayerScope) obj;
        ShadowGraphicsLayerElement shadowGraphicsLayerElement = this.f8727c;
        graphicsLayerScope.t(graphicsLayerScope.u1(shadowGraphicsLayerElement.f8723b));
        graphicsLayerScope.r1(shadowGraphicsLayerElement.f8724c);
        graphicsLayerScope.o(shadowGraphicsLayerElement.d);
        graphicsLayerScope.k(shadowGraphicsLayerElement.f8725e);
        graphicsLayerScope.p(shadowGraphicsLayerElement.f8726f);
        return Unit.f71739a;
    }
}
