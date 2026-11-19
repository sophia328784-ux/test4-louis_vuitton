package com.vuitton.android.designkit.components;

import android.content.res.Configuration;
import android.os.Build;
import androidx.compose.foundation.layout.WindowInsetsKt;
import androidx.compose.foundation.layout.WindowInsets_androidKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"components"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ScreenDimensionsKt {
    public static final float a(Composer composer, int i2) {
        boolean z = (i2 & 1) != 0;
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        float f2 = ((Configuration) composer.k(AndroidCompositionLocals_androidKt.f9935a)).screenHeightDp;
        Dp.Companion companion = Dp.f11004c;
        float d = WindowInsetsKt.e(WindowInsets_androidKt.c(composer), composer).getD();
        float f5031b = WindowInsetsKt.e(WindowInsets_androidKt.c(composer), composer).getF5031b();
        if (Build.VERSION.SDK_INT > 34) {
            return z ? f2 : (f2 - d) - f5031b;
        }
        return z ? f2 + d + f5031b : f2;
    }
}
