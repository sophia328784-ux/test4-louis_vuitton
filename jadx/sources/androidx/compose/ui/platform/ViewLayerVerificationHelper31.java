package androidx.compose.ui.platform;

import androidx.compose.ui.graphics.RenderEffect;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÃ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/platform/ViewLayerVerificationHelper31;", "", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
abstract class ViewLayerVerificationHelper31 {
    public static void a(ViewLayer viewLayer, RenderEffect renderEffect) {
        viewLayer.setRenderEffect(renderEffect != null ? renderEffect.a() : null);
    }
}
