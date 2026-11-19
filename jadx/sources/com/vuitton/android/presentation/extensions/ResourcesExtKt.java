package com.vuitton.android.presentation.extensions;

import android.content.res.Resources;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"Landroidx/compose/ui/unit/IntSize;", "size", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ResourcesExtKt {
    public static final int a(int i2) {
        return (int) (i2 * Resources.getSystem().getDisplayMetrics().density);
    }

    public static final float b(float f2) {
        float f3 = f2 * Resources.getSystem().getDisplayMetrics().density;
        Dp.Companion companion = Dp.f11004c;
        return f3;
    }

    public static final float c(Composer composer, int i2) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        return ((Density) composer.k(CompositionLocalsKt.f10031h)).k1(i2);
    }
}
