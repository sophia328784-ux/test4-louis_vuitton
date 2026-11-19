package com.vuitton.android.designkit.ui.common;

import android.util.DisplayMetrics;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Density;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"system"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class DensityUtilsKt {
    public static final boolean a(Composer composer) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        StaticProvidableCompositionLocal staticProvidableCompositionLocal = CompositionLocalsKt.f10031h;
        float f11003c = ((Density) composer.k(staticProvidableCompositionLocal)).getF11003c();
        boolean zC = composer.c(f11003c);
        Object objX = composer.x();
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        if (zC || objX == composer$Companion$Empty$1) {
            objX = Boolean.valueOf(f11003c > 1.0f);
            composer.q(objX);
        }
        if (((Boolean) objX).booleanValue()) {
            composer.L(651251100);
            composer.F();
            return true;
        }
        composer.L(-1364463783);
        float f11002b = (((Density) composer.k(staticProvidableCompositionLocal)).getF11002b() * 160.0f) / DisplayMetrics.DENSITY_DEVICE_STABLE;
        boolean zC2 = composer.c(f11002b);
        Object objX2 = composer.x();
        if (zC2 || objX2 == composer$Companion$Empty$1) {
            objX2 = Boolean.valueOf(f11002b > 1.0f);
            composer.q(objX2);
        }
        boolean zBooleanValue = ((Boolean) objX2).booleanValue();
        composer.F();
        return zBooleanValue;
    }
}
