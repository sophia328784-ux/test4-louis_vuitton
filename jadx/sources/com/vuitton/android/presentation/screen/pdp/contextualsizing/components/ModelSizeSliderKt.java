package com.vuitton.android.presentation.screen.pdp.contextualsizing.components;

import android.content.Context;
import android.content.res.Configuration;
import androidx.compose.foundation.BorderKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.pager.PageSize;
import androidx.compose.foundation.pager.PagerKt;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.screen.pdp.contextualsizing.models.ContextualSizingTracker;
import com.vuitton.android.presentation.screen.pdp.contextualsizing.models.ContextualSizingTrackerKt;
import defpackage.b30;
import defpackage.i1;
import defpackage.ud;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002¨\u0006\u0005²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0002\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0004\u001a\u00020\u00038\n@\nX\u008a\u008e\u0002"}, d2 = {"", "isScrollByClick", "isFirstLaunch", "", "lastCenteredPage", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ModelSizeSliderKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final float f61508a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final float f61509b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final float f61510c;
    public static final float d;

    static {
        Dp.Companion companion = Dp.f11004c;
        f61508a = 72.0f;
        f61509b = 2.0f;
        f61510c = 8.0f;
        d = 12.0f;
    }

    public static final void a(int i2, PagerState pagerState, Composer composer, Modifier modifier, List list, CoroutineScope coroutineScope) {
        int i3;
        Modifier modifier2;
        GapComposer gapComposer;
        boolean z;
        Modifier modifierE = modifier;
        List list2 = list;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "ModelSizeSlider");
        }
        pagerState.getClass();
        list2.getClass();
        coroutineScope.getClass();
        GapComposer gapComposerH = composer.h(-853024505);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(pagerState) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(modifierE) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(list2) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(coroutineScope) ? 2048 : 1024;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            float f2 = ((Configuration) gapComposerH.k(AndroidCompositionLocals_androidKt.f9935a)).screenWidthDp;
            Dp.Companion companion = Dp.f11004c;
            float f3 = ModelSizeItemKt.f61506a;
            float f4 = (f2 - f3) / 2.0f;
            HapticFeedback hapticFeedback = (HapticFeedback) gapComposerH.k(CompositionLocalsKt.l);
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = SnapshotStateKt.g(Boolean.FALSE);
                gapComposerH.q(objX);
            }
            MutableState mutableState = (MutableState) objX;
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = SnapshotStateKt.g(Boolean.TRUE);
                gapComposerH.q(objX2);
            }
            MutableState mutableState2 = (MutableState) objX2;
            int i4 = i3;
            float fU1 = ((Density) gapComposerH.k(CompositionLocalsKt.f10031h)).u1(d - ((f3 - ModelSizeItemKt.f61507b) / 2.0f));
            boolean z2 = gapComposerH.k(CompositionLocalsKt.n) == LayoutDirection.Rtl;
            ContextualSizingTracker contextualSizingTracker = (ContextualSizingTracker) gapComposerH.k(ContextualSizingTrackerKt.f61527a);
            boolean z3 = z2;
            String strC = StringResources_androidKt.c(gapComposerH, R.string.alt_selected);
            String strC2 = StringResources_androidKt.c(gapComposerH, R.string.context_size_modal_accessibility);
            Object objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = SnapshotStateKt.g(Integer.valueOf(pagerState.k()));
                gapComposerH.q(objX3);
            }
            MutableState mutableState3 = (MutableState) objX3;
            Integer numValueOf = Integer.valueOf(pagerState.k());
            int i5 = i4 & 14;
            boolean zY = (i5 == 4) | gapComposerH.y(hapticFeedback);
            Object objX4 = gapComposerH.x();
            Modifier modifier3 = modifierE;
            if (zY || objX4 == composer$Companion$Empty$1) {
                objX4 = new ModelSizeSliderKt$ModelSizeSlider$1$1(pagerState, hapticFeedback, mutableState3, null);
                gapComposerH.q(objX4);
            }
            EffectsKt.e(gapComposerH, numValueOf, (Function2) objX4);
            Integer numValueOf2 = Integer.valueOf(pagerState.k());
            boolean zY2 = gapComposerH.y(list2) | (i5 == 4) | gapComposerH.y(contextualSizingTracker) | gapComposerH.K(strC2) | gapComposerH.y(context);
            Object objX5 = gapComposerH.x();
            if (zY2 || objX5 == composer$Companion$Empty$1) {
                z = false;
                ModelSizeSliderKt$ModelSizeSlider$2$1 modelSizeSliderKt$ModelSizeSlider$2$1 = new ModelSizeSliderKt$ModelSizeSlider$2$1(list, pagerState, strC2, context, mutableState2, mutableState, contextualSizingTracker, null);
                list2 = list;
                gapComposerH.q(modelSizeSliderKt$ModelSizeSlider$2$1);
                objX5 = modelSizeSliderKt$ModelSizeSlider$2$1;
            } else {
                z = false;
            }
            EffectsKt.e(gapComposerH, numValueOf2, (Function2) objX5);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, z);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifier3);
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
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("ModelSizeSlider");
            BiasAlignment biasAlignment = Alignment.Companion.f8587f;
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.f4938a;
            Modifier modifierG = boxScopeInstance.g(dTFunctionNameModifier, biasAlignment);
            float f5 = f61508a;
            Modifier modifierO = SizeKt.o(modifierG, f5);
            float f6 = f61510c;
            BoxKt.a(BorderKt.a(ClipKt.a(modifierO, RoundedCornerShapeKt.a(f6)), f61509b, LVAppDesignKitTheme.c(gapComposerH).f48361b.y, RoundedCornerShapeKt.a(f6)), gapComposerH, 0);
            Modifier modifierG2 = boxScopeInstance.g(SizeKt.f(SizeKt.d(new DTFunctionNameModifier("ModelSizeSlider"), 1.0f), f5), biasAlignment);
            boolean zY3 = gapComposerH.y(list2);
            Object objX6 = gapComposerH.x();
            if (zY3 || objX6 == composer$Companion$Empty$1) {
                objX6 = new ud(list2, 12);
                gapComposerH.q(objX6);
            }
            int i6 = i5 | 1572864;
            modifier2 = modifier3;
            PagerKt.a(pagerState, SemanticsModifierKt.b(modifierG2, false, (Function1) objX6), PaddingKt.c(f4, 2), new PageSize.Fixed(f3, null), 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, Alignment.Companion.l, null, false, false, null, null, null, ComposableLambdaKt.b(-357340960, new b30(pagerState, fU1, z3, list2, strC, coroutineScope, mutableState), gapComposerH), gapComposerH, i6, 24576, 16304);
            gapComposer = gapComposerH;
            gapComposer.Z(true);
        } else {
            modifier2 = modifierE;
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new i1(pagerState, modifier2, list, coroutineScope, i2, 25);
        }
    }
}
