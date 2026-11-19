package androidx.compose.ui.graphics.layer;

import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "", "Landroidx/compose/ui/graphics/drawscope/DrawScope;", "invoke"}, k = 3, mv = {2, 1, 0}, xi = 48)
public final class GraphicsLayerImpl$Companion$DefaultDrawBlock$1 extends Lambda implements Function1<DrawScope, Unit> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ int f9036c = 0;

    static {
        new GraphicsLayerImpl$Companion$DefaultDrawBlock$1(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        Color.f8866b.getClass();
        DrawScope.k0((DrawScope) obj, Color.f8870h, 0L, 0L, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 126);
        return Unit.f71739a;
    }
}
