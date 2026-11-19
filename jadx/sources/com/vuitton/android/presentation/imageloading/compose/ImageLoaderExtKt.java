package com.vuitton.android.presentation.imageloading.compose;

import android.content.Context;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import com.vuitton.android.presentation.utils.UrlFactory;
import defpackage.rv;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002¨\u0006\u000f²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\f\u0010\u0002\u001a\u00020\u00008\nX\u008a\u0084\u0002²\u0006\u000e\u0010\u0004\u001a\u00020\u00038\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0006\u001a\u00020\u00058\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0007\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\f\u0010\b\u001a\u00020\u00008\nX\u008a\u0084\u0002²\u0006\u000e\u0010\t\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\f\u0010\n\u001a\u00020\u00008\nX\u008a\u0084\u0002²\u0006\u000e\u0010\u000b\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\f\u0010\f\u001a\u00020\u00008\nX\u008a\u0084\u0002²\u0006\u000e\u0010\u000e\u001a\u00020\r8\n@\nX\u008a\u008e\u0002"}, d2 = {"", "alpha", "animatingAlpha", "Landroidx/compose/ui/unit/IntSize;", "sizeState", "Landroidx/compose/ui/geometry/Offset;", "position", "scale", "animatingScale", "offsetX", "animatingOffsetX", "offsetY", "animatingOffsetY", "", "isPitchDetected", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ImageLoaderExtKt {
    public static final void a(Context context, String str, UrlFactory urlFactory, Composer composer, int i2) {
        context.getClass();
        urlFactory.getClass();
        GapComposer gapComposerH = composer.h(-1427829778);
        int i3 = (gapComposerH.y(context) ? 4 : 2) | i2 | (gapComposerH.K(str) ? 32 : 16);
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            boolean zY = gapComposerH.y(context) | ((i3 & 112) == 32);
            Object objX = gapComposerH.x();
            if (zY || objX == Composer.Companion.f7939a) {
                objX = new ImageLoaderExtKt$PreloadImage$1$1(str, urlFactory, context, null);
                gapComposerH.q(objX);
            }
            EffectsKt.e(gapComposerH, str, (Function2) objX);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new rv(i2, 9, context, str, urlFactory);
        }
    }
}
