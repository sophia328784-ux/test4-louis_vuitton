package com.vuitton.android.presentation.screen.spotlight.components;

import android.content.res.Configuration;
import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.pager.PagerKt;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import defpackage.bi;
import defpackage.kz0;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0004²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\f\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002"}, d2 = {"", "screenWidthPx", "Landroidx/compose/ui/unit/Dp;", "itemSpacing", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class SpotlightSkuPagerKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final float f64617a;

    static {
        Dp.Companion companion = Dp.f11004c;
        f64617a = 124.0f;
    }

    public static final void a(Modifier modifier, PagerState pagerState, List list, boolean z, boolean z2, Function1 function1, Function1 function2, Composer composer, int i2) {
        float f2;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "SpotlightSkuPager");
        }
        Modifier modifier2 = modifierE;
        pagerState.getClass();
        list.getClass();
        function1.getClass();
        function2.getClass();
        GapComposer gapComposerH = composer.h(-1930713690);
        int i3 = i2 | (gapComposerH.K(modifier2) ? 4 : 2) | (gapComposerH.K(pagerState) ? 32 : 16) | (gapComposerH.y(list) ? 256 : 128) | (gapComposerH.b(z) ? 2048 : 1024) | (gapComposerH.b(z2) ? 16384 : 8192) | (gapComposerH.y(function1) ? 131072 : 65536) | (gapComposerH.y(function2) ? 1048576 : 524288);
        if (gapComposerH.p(i3 & 1, (i3 & 599187) != 599186)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Density density = (Density) gapComposerH.k(CompositionLocalsKt.f10031h);
            Configuration configuration = (Configuration) gapComposerH.k(AndroidCompositionLocals_androidKt.f9935a);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = SnapshotStateKt.g(0);
                gapComposerH.q(objX);
            }
            MutableState mutableState = (MutableState) objX;
            boolean zK = gapComposerH.K(density) | gapComposerH.y(configuration);
            Object objX2 = gapComposerH.x();
            if (zK || objX2 == composer$Companion$Empty$1) {
                objX2 = new SpotlightSkuPagerKt$SpotlightSkuPager$1$1(density, configuration, mutableState, null);
                gapComposerH.q(objX2);
            }
            EffectsKt.g(configuration, density, (Function2) objX2, gapComposerH);
            if (z) {
                gapComposerH.L(311194463);
                f2 = LVAppDesignKitTheme.l(gapComposerH).f48415c;
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(311260958);
                f2 = LVAppDesignKitTheme.l(gapComposerH).g;
                gapComposerH.Z(false);
            }
            PagerKt.a(pagerState, PaddingKt.k(modifier2, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3), PaddingKt.c(26.0f, 2), null, 0, ((Dp) AnimateAsStateKt.a(f2, AnimationSpecKt.c(900, 300, null, 4), null, null, gapComposerH, 0, 12).getF10755b()).f11006b, null, null, false, false, null, null, null, ComposableLambdaKt.b(-970656187, new kz0(z, list, mutableState, z2, function1, function2), gapComposerH), gapComposerH, ((i3 >> 3) & 14) | KyberEngine.KyberPolyBytes, 24576, 16344);
            gapComposerH = gapComposerH;
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new bi(modifier2, pagerState, list, z, z2, function1, function2, i2);
        }
    }
}
