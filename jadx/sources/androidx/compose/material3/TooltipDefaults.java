package androidx.compose.material3;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.DpKt;
import androidx.compose.ui.window.PopupPositionProvider;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/material3/TooltipDefaults;", "", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
public abstract class TooltipDefaults {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final long f7399a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final float f7400b;

    static {
        Dp.Companion companion = Dp.f11004c;
        long jA = DpKt.a(16.0f, 8.0f);
        f7399a = jA;
        f7400b = 200.0f;
        new DefaultTooltipCaretShape(jA, null);
    }

    public static PopupPositionProvider a(Composer composer, int i2) {
        float f2 = TooltipKt.f7402a;
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        int iB0 = ((Density) composer.k(CompositionLocalsKt.f10031h)).B0(f2);
        boolean zD = composer.d(iB0);
        Object objX = composer.x();
        if (zD || objX == Composer.Companion.f7939a) {
            objX = new TooltipPositionProviderImpl(i2, iB0, null);
            composer.q(objX);
        }
        return (TooltipPositionProviderImpl) objX;
    }
}
