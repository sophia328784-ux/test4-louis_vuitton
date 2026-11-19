package com.vuitton.android.presentation.screen.pdp.vto.beauty.components.tutorial;

import android.content.Context;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.foundation.pager.PagerStateKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.molecules.LVCapsulePageControlKt;
import com.vuitton.android.presentation.compose.components.LVSlideShowKt;
import com.vuitton.android.presentation.compose.components.PagerParallaxFactor;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.TutorialSectionDataUiModel;
import defpackage.a;
import defpackage.hv0;
import defpackage.n00;
import defpackage.pi0;
import defpackage.rd;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class TutorialAssetListKt {
    public static final void a(Modifier modifier, TutorialSectionDataUiModel.AssetListSectionUiModel assetListSectionUiModel, boolean z, boolean z2, Composer composer, int i2) {
        GapComposer gapComposer;
        Modifier modifierE = modifier;
        TutorialSectionDataUiModel.AssetListSectionUiModel assetListSectionUiModel2 = assetListSectionUiModel;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "TutorialAssetList");
        }
        Modifier modifier2 = modifierE;
        assetListSectionUiModel2.getClass();
        GapComposer gapComposerH = composer.h(1938272325);
        int i3 = i2 | (gapComposerH.K(modifier2) ? 4 : 2) | (gapComposerH.y(assetListSectionUiModel2) ? 32 : 16) | (gapComposerH.b(z) ? 256 : 128) | (gapComposerH.b(z2) ? 2048 : 1024);
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            boolean zY = gapComposerH.y(assetListSectionUiModel2);
            Object objX = gapComposerH.x();
            if (zY || objX == Composer.Companion.f7939a) {
                objX = new hv0(assetListSectionUiModel2, 22);
                gapComposerH.q(objX);
            }
            PagerState pagerStateB = PagerStateKt.b(0, (Function0) objX, gapComposerH, 0, 3);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifier2);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            PagerParallaxFactor pagerParallaxFactor = PagerParallaxFactor.LightParallax;
            rd rdVar = new rd(context, pagerStateB, assetListSectionUiModel2, z2, 3);
            assetListSectionUiModel2 = assetListSectionUiModel2;
            gapComposer = gapComposerH;
            LVSlideShowKt.a(pagerStateB, null, false, pagerParallaxFactor, false, z, ComposableLambdaKt.b(1368966389, rdVar, gapComposerH), gapComposer, ((i3 << 12) & 3670016) | 12586368, 50);
            if (assetListSectionUiModel2.f62193a.size() > 1) {
                LVCapsulePageControlKt.a(PaddingKt.m(BoxScopeInstance.f4938a.g(n00.i(gapComposer, -2077374082, "TutorialAssetList"), Alignment.Companion.f8589i), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer).f48415c, 7), pagerStateB, LVColorScheme.INVERT, false, gapComposer, KyberEngine.KyberPolyBytes, 8);
                gapComposer.Z(false);
            } else {
                gapComposer.L(-2077082589);
                gapComposer.Z(false);
            }
            gapComposer.Z(true);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new pi0(modifier2, assetListSectionUiModel2, z, z2, i2);
        }
    }
}
