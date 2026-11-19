package com.vuitton.android.presentation.screen.catalog.thematicplp.helper;

import android.graphics.Color;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.ui.graphics.ColorKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ColorHelperKt {
    public static final long a(String str, Composer composer) {
        str.getClass();
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        double dB = b(Color.parseColor(str));
        double dB2 = b(ColorKt.i(LVAppDesignKitTheme.c(composer).f48361b.f48382k));
        double dB3 = b(ColorKt.i(LVAppDesignKitTheme.c(composer).f48361b.m));
        if ((Math.max(dB, dB2) + 0.05d) / (Math.min(dB, dB2) + 0.05d) > (Math.max(dB, dB3) + 0.05d) / (Math.min(dB, dB3) + 0.05d)) {
            composer.L(568488643);
            long j2 = LVAppDesignKitTheme.c(composer).f48361b.f48382k;
            composer.F();
            return j2;
        }
        composer.L(568555293);
        long j3 = LVAppDesignKitTheme.c(composer).f48361b.m;
        composer.F();
        return j3;
    }

    public static final double b(int i2) {
        double dC = c(Color.red(i2));
        double dC2 = c(Color.green(i2)) * 0.7152d;
        return (c(Color.blue(i2)) * 0.0722d) + dC2 + (dC * 0.2126d);
    }

    public static final double c(int i2) {
        double d = ((double) i2) / 255.0d;
        return d <= 0.03928d ? d / 12.92d : Math.pow((d + 0.055d) / 1.055d, 2.4d);
    }
}
