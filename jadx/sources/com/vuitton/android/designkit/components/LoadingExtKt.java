package com.vuitton.android.designkit.components;

import android.graphics.ColorFilter;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.ui.graphics.ColorKt;
import com.airbnb.lottie.LottieProperty;
import com.airbnb.lottie.compose.LottieDynamicProperties;
import com.airbnb.lottie.compose.LottieDynamicPropertiesKt;
import com.airbnb.lottie.compose.LottieDynamicProperty;
import com.vuitton.android.designkit.components.components.LVFlowerLoaderStyle;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import defpackage.hb;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"components"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LoadingExtKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f48229a;

        static {
            int[] iArr = new int[LVFlowerLoaderStyle.values().length];
            try {
                iArr[LVFlowerLoaderStyle.LIGHT_BACKGROUND.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LVFlowerLoaderStyle.DARK_BACKGROUND.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[LVFlowerLoaderStyle.BRAND.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f48229a = iArr;
        }
    }

    public static final LottieDynamicProperties a(LVFlowerLoaderStyle lVFlowerLoaderStyle, Composer composer) {
        Pair pair;
        lVFlowerLoaderStyle.getClass();
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        int i2 = WhenMappings.f48229a[lVFlowerLoaderStyle.ordinal()];
        if (i2 == 1) {
            composer.L(1471357739);
            pair = new Pair(Integer.valueOf(ColorKt.i(LVAppDesignKitTheme.c(composer).f48361b.f48378f)), Integer.valueOf(ColorKt.i(LVAppDesignKitTheme.c(composer).f48361b.m)));
            composer.F();
        } else if (i2 == 2) {
            composer.L(1471570647);
            pair = new Pair(Integer.valueOf(ColorKt.i(LVAppDesignKitTheme.c(composer).f48361b.f48374a)), Integer.valueOf(ColorKt.i(LVAppDesignKitTheme.c(composer).f48361b.f48382k)));
            composer.F();
        } else {
            if (i2 != 3) {
                throw o60.v(composer, -1892201239);
            }
            composer.L(1471761948);
            pair = new Pair(Integer.valueOf(ColorKt.i(LVAppDesignKitTheme.c(composer).f48361b.v)), Integer.valueOf(ColorKt.i(LVAppDesignKitTheme.c(composer).f48361b.f48374a)));
            composer.F();
        }
        int iIntValue = ((Number) pair.f71705b).intValue();
        int iIntValue2 = ((Number) pair.f71706c).intValue();
        String[] strArr = {"background", "**"};
        ColorFilter colorFilter = LottieProperty.I;
        boolean zD = composer.d(iIntValue);
        Object objX = composer.x();
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        if (zD || objX == composer$Companion$Empty$1) {
            objX = new hb(iIntValue, 18);
            composer.q(objX);
        }
        LottieDynamicProperty lottieDynamicPropertyC = LottieDynamicPropertiesKt.c(colorFilter, strArr, (Function1) objX, composer);
        String[] strArr2 = {"**", "flower", "**"};
        boolean zD2 = composer.d(iIntValue2);
        Object objX2 = composer.x();
        if (zD2 || objX2 == composer$Companion$Empty$1) {
            objX2 = new hb(iIntValue2, 19);
            composer.q(objX2);
        }
        return LottieDynamicPropertiesKt.a(new LottieDynamicProperty[]{lottieDynamicPropertyC, LottieDynamicPropertiesKt.c(colorFilter, strArr2, (Function1) objX2, composer)}, composer);
    }

    public static final LottieDynamicProperties b(boolean z, Composer composer) {
        long j2;
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        if (z) {
            composer.L(-971568998);
            j2 = LVAppDesignKitTheme.c(composer).f48361b.m;
            composer.F();
        } else {
            composer.L(-971496768);
            j2 = LVAppDesignKitTheme.c(composer).f48361b.f48382k;
            composer.F();
        }
        int i2 = ColorKt.i(j2);
        String[] strArr = {"circle", "**"};
        ColorFilter colorFilter = LottieProperty.I;
        boolean zD = composer.d(i2);
        Object objX = composer.x();
        if (zD || objX == Composer.Companion.f7939a) {
            objX = new hb(i2, 17);
            composer.q(objX);
        }
        return LottieDynamicPropertiesKt.a(new LottieDynamicProperty[]{LottieDynamicPropertiesKt.c(colorFilter, strArr, (Function1) objX, composer)}, composer);
    }
}
