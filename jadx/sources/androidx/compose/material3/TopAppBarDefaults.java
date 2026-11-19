package androidx.compose.material3;

import androidx.compose.animation.SplineBasedFloatDecayAnimationSpec_androidKt;
import androidx.compose.animation.core.DecayAnimationSpec;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.foundation.layout.AndroidWindowInsets;
import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.foundation.layout.WindowInsetsHolder;
import androidx.compose.foundation.layout.WindowInsetsKt;
import androidx.compose.foundation.layout.WindowInsetsSides;
import androidx.compose.foundation.layout.WindowInsets_androidKt;
import androidx.compose.material3.tokens.AppBarLargeFlexibleTokens;
import androidx.compose.material3.tokens.AppBarLargeTokens;
import androidx.compose.material3.tokens.AppBarMediumFlexibleTokens;
import androidx.compose.material3.tokens.AppBarMediumTokens;
import androidx.compose.material3.tokens.AppBarSmallTokens;
import androidx.compose.material3.tokens.AppBarTokens;
import androidx.compose.material3.tokens.MotionSchemeKeyTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.runtime.saveable.SaverKt$Saver$1;
import androidx.compose.ui.graphics.Color;
import defpackage.g5;
import defpackage.l31;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/material3/TopAppBarDefaults;", "", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
public abstract class TopAppBarDefaults {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final float f7433a = AppBarSmallTokens.f7735a;

    static {
        int i2 = AppBarMediumTokens.f7734a;
        int i3 = AppBarMediumFlexibleTokens.f7733a;
        int i4 = AppBarLargeTokens.f7732a;
        int i5 = AppBarLargeFlexibleTokens.f7731a;
    }

    public static TopAppBarScrollBehavior a(Composer composer) {
        DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = AppBarKt.f6561a;
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        Object[] objArr = new Object[0];
        TopAppBarState.d.getClass();
        SaverKt$Saver$1 saverKt$Saver$1 = TopAppBarState.f7438e;
        boolean zC = composer.c(-3.4028235E38f) | composer.c(Call.Parameters.DEFAULT_CAMERA_ZOOM) | composer.c(Call.Parameters.DEFAULT_CAMERA_ZOOM);
        Object objX = composer.x();
        Object obj = Composer.Companion.f7939a;
        if (zC || objX == obj) {
            objX = new g5(4);
            composer.q(objX);
        }
        TopAppBarState topAppBarState = (TopAppBarState) RememberSaveableKt.b(objArr, saverKt$Saver$1, (Function0) objX, composer, 0);
        Object objX2 = composer.x();
        if (objX2 == obj) {
            objX2 = new l31(13);
            composer.q(objX2);
        }
        Function0 function0 = (Function0) objX2;
        FiniteAnimationSpec finiteAnimationSpecA = MotionSchemeKt.a(MotionSchemeKeyTokens.DefaultEffects, composer);
        DecayAnimationSpec decayAnimationSpecA = SplineBasedFloatDecayAnimationSpec_androidKt.a(composer);
        boolean zK = composer.K(topAppBarState) | composer.K(function0) | composer.K(finiteAnimationSpecA) | composer.K(decayAnimationSpecA);
        Object objX3 = composer.x();
        if (zK || objX3 == obj) {
            objX3 = new ExitUntilCollapsedScrollBehavior(topAppBarState, finiteAnimationSpecA, decayAnimationSpecA, function0);
            composer.q(objX3);
        }
        return (ExitUntilCollapsedScrollBehavior) objX3;
    }

    public static TopAppBarColors b(ColorScheme colorScheme) {
        TopAppBarColors topAppBarColors = colorScheme.Z;
        if (topAppBarColors != null) {
            return topAppBarColors;
        }
        TopAppBarColors topAppBarColors2 = new TopAppBarColors(ColorSchemeKt.c(colorScheme, AppBarTokens.f7737a), ColorSchemeKt.c(colorScheme, AppBarTokens.f7739c), ColorSchemeKt.c(colorScheme, AppBarTokens.f7738b), ColorSchemeKt.c(colorScheme, AppBarTokens.f7740e), ColorSchemeKt.c(colorScheme, AppBarTokens.f7741f), ColorSchemeKt.c(colorScheme, AppBarTokens.d), null);
        colorScheme.Z = topAppBarColors2;
        return topAppBarColors2;
    }

    public static WindowInsets c(Composer composer) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        AndroidWindowInsets androidWindowInsetsC = WindowInsets_androidKt.c(composer);
        WindowInsetsHolder.y.getClass();
        WindowInsets windowInsetsI = WindowInsetsKt.i(androidWindowInsetsC, WindowInsetsHolder.Companion.c(composer).f5075b);
        WindowInsetsSides.f5130a.getClass();
        return WindowInsetsKt.h(windowInsetsI, WindowInsetsSides.l | WindowInsetsSides.f5135h);
    }

    public static TopAppBarColors d(long j2, long j3, Composer composer, int i2) {
        long j4;
        if ((i2 & 2) != 0) {
            Color.f8866b.getClass();
            j4 = Color.f8871i;
        } else {
            j4 = j3;
        }
        Color.Companion companion = Color.f8866b;
        companion.getClass();
        long j5 = Color.f8871i;
        companion.getClass();
        companion.getClass();
        companion.getClass();
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        return b(MaterialTheme.a(composer)).a(j2, j4, j5, j5, j5, j5);
    }
}
