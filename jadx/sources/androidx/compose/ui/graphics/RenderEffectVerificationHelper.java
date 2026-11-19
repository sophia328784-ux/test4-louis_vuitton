package androidx.compose.ui.graphics;

import kotlin.Metadata;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÃ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/graphics/RenderEffectVerificationHelper;", "", "ui-graphics"}, k = 1, mv = {2, 1, 0}, xi = 48)
abstract class RenderEffectVerificationHelper {
    public static android.graphics.RenderEffect a(RenderEffect renderEffect, float f2, float f3, int i2) {
        if (f2 == Call.Parameters.DEFAULT_CAMERA_ZOOM && f3 == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            return android.graphics.RenderEffect.createOffsetEffect(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        }
        return renderEffect == null ? android.graphics.RenderEffect.createBlurEffect(f2, f3, AndroidTileMode_androidKt.a(i2)) : android.graphics.RenderEffect.createBlurEffect(f2, f3, renderEffect.a(), AndroidTileMode_androidKt.a(i2));
    }
}
