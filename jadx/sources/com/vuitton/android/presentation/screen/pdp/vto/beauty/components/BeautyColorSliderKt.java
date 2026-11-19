package com.vuitton.android.presentation.screen.pdp.vto.beauty.components;

import android.content.res.Configuration;
import androidx.compose.animation.AnimationModifierKt;
import androidx.compose.foundation.BorderKt;
import androidx.compose.foundation.gestures.ScrollableState;
import androidx.compose.foundation.gestures.TargetedFlingBehavior;
import androidx.compose.foundation.gestures.snapping.LazyListSnapLayoutInfoProviderKt;
import androidx.compose.foundation.layout.AspectRatioKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.LazyDslKt;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.shape.RoundedCornerShape;
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
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.ColorUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.TryOnProductUiModel;
import defpackage.a1;
import defpackage.h;
import defpackage.h1;
import defpackage.h5;
import defpackage.i4;
import defpackage.tr;
import defpackage.ud;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002¨\u0006\u0004²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002²\u0006\u000e\u0010\u0003\u001a\u00020\u00028\n@\nX\u008a\u008e\u0002"}, d2 = {"", "centeredItemIndex", "", "isScrollByClick", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class BeautyColorSliderKt {
    public static final void a(List list, int i2, LazyListState lazyListState, Function1 function1, Composer composer, int i3) {
        int i4;
        int i5;
        float f2;
        MutableState mutableState;
        LazyListState lazyListState2;
        boolean z;
        List list2 = list;
        list2.getClass();
        lazyListState.getClass();
        ScrollableState scrollableState = lazyListState.f5239j;
        function1.getClass();
        GapComposer gapComposerH = composer.h(597921977);
        if ((i3 & 6) == 0) {
            i4 = (gapComposerH.y(list2) ? 4 : 2) | i3;
        } else {
            i4 = i3;
        }
        if ((i3 & 48) == 0) {
            i4 |= gapComposerH.d(i2) ? 32 : 16;
        }
        if ((i3 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= gapComposerH.K(lazyListState) ? 256 : 128;
        }
        if ((i3 & 3072) == 0) {
            i4 |= gapComposerH.y(function1) ? 2048 : 1024;
        }
        int i6 = i4;
        if (gapComposerH.p(i6 & 1, (i6 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Configuration configuration = (Configuration) gapComposerH.k(AndroidCompositionLocals_androidKt.f9935a);
            float f3 = LVAppDesignKitTheme.d(gapComposerH).t;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = new Dp((configuration.screenWidthDp - f3) / 2.0f);
                gapComposerH.q(objX);
            }
            float f4 = ((Dp) objX).f11006b;
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = SnapshotStateKt.e(new a1(lazyListState, 1));
                gapComposerH.q(objX2);
            }
            State state = (State) objX2;
            Object objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = SnapshotStateKt.g(Boolean.TRUE);
                gapComposerH.q(objX3);
            }
            MutableState mutableState2 = (MutableState) objX3;
            Integer numValueOf = Integer.valueOf(((Number) state.getF10755b()).intValue());
            Boolean boolValueOf = Boolean.valueOf(scrollableState.a());
            int i7 = i6 & 896;
            int i8 = i6 & 7168;
            boolean zY = (i7 == 256) | gapComposerH.y(list2) | (i8 == 2048);
            Object objX4 = gapComposerH.x();
            if (zY || objX4 == composer$Companion$Empty$1) {
                i5 = i7;
                f2 = f4;
                mutableState = mutableState2;
                BeautyColorSliderKt$BeautyColorSlider$1$1 beautyColorSliderKt$BeautyColorSlider$1$1 = new BeautyColorSliderKt$BeautyColorSlider$1$1(lazyListState, list2, mutableState, state, function1, null);
                lazyListState2 = lazyListState;
                list2 = list2;
                gapComposerH.q(beautyColorSliderKt$BeautyColorSlider$1$1);
                objX4 = beautyColorSliderKt$BeautyColorSlider$1$1;
            } else {
                f2 = f4;
                i5 = i7;
                lazyListState2 = lazyListState;
                mutableState = mutableState2;
            }
            EffectsKt.g(numValueOf, boolValueOf, (Function2) objX4, gapComposerH);
            Boolean boolValueOf2 = Boolean.valueOf(scrollableState.a());
            boolean z2 = i5 == 256;
            Object objX5 = gapComposerH.x();
            if (z2 || objX5 == composer$Companion$Empty$1) {
                objX5 = new BeautyColorSliderKt$BeautyColorSlider$2$1(lazyListState2, mutableState, null);
                gapComposerH.q(objX5);
            }
            EffectsKt.e(gapComposerH, boolValueOf2, (Function2) objX5);
            Modifier modifierD = SizeKt.d(new DTFunctionNameModifier("BeautyColorSlider"), 1.0f);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            MutableState mutableState3 = mutableState;
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierD);
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
            TargetedFlingBehavior targetedFlingBehaviorC = LazyListSnapLayoutInfoProviderKt.c(lazyListState2, gapComposerH, (i6 >> 6) & 14);
            Modifier modifierF = SizeKt.f(tr.d("BeautyColorSlider", 1.0f), LVAppDesignKitTheme.d(gapComposerH).t);
            BiasAlignment biasAlignment = Alignment.Companion.f8587f;
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.f4938a;
            Modifier modifierG = boxScopeInstance.g(modifierF, biasAlignment);
            boolean zY2 = gapComposerH.y(list2);
            Object objX6 = gapComposerH.x();
            if (zY2 || objX6 == composer$Companion$Empty$1) {
                z = false;
                objX6 = new ud(list2, 0);
                gapComposerH.q(objX6);
            } else {
                z = false;
            }
            Modifier modifierB = SemanticsModifierKt.b(modifierG, z, (Function1) objX6);
            BiasAlignment.Vertical vertical = Alignment.Companion.l;
            boolean zY3 = gapComposerH.y(list2) | ((i6 & 112) == 32) | (i8 == 2048);
            Object objX7 = gapComposerH.x();
            if (zY3 || objX7 == composer$Companion$Empty$1) {
                h5 h5Var = new h5(list2, f2, i2, function1, mutableState3);
                gapComposerH.q(h5Var);
                objX7 = h5Var;
            }
            LazyDslKt.b(modifierB, lazyListState, null, null, vertical, targetedFlingBehaviorC, false, null, (Function1) objX7, gapComposerH, ((i6 >> 3) & 112) | ImageMetadata.EDGE_MODE, 412);
            Modifier modifierO = SizeKt.o(boxScopeInstance.g(new DTFunctionNameModifier("BeautyColorSlider"), biasAlignment), LVAppDesignKitTheme.d(gapComposerH).t);
            RoundedCornerShape roundedCornerShape = RoundedCornerShapeKt.f5846a;
            BoxKt.a(BorderKt.a(ClipKt.a(modifierO, roundedCornerShape), LVAppDesignKitTheme.d(gapComposerH).f48385c, LVAppDesignKitTheme.c(gapComposerH).f48361b.y, roundedCornerShape), gapComposerH, 0);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new h(list, i2, lazyListState, function1, i3, 1);
        }
    }

    public static final void b(Modifier modifier, TryOnProductUiModel tryOnProductUiModel, boolean z, Function0 function0, Composer composer, int i2) {
        float f2;
        Object obj;
        AssetImageUiModel assetImageUiModel;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "BeautyColorSliderItem");
        }
        Modifier modifier2 = modifierE;
        tryOnProductUiModel.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(-2023564774);
        int i3 = i2 | (gapComposerH.K(modifier2) ? 4 : 2) | (gapComposerH.y(tryOnProductUiModel) ? 32 : 16) | (gapComposerH.b(z) ? 256 : 128) | (gapComposerH.y(function0) ? 2048 : 1024);
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierA = ClipKt.a(PaddingKt.k(modifier2, LVAppDesignKitTheme.l(gapComposerH).d, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), RoundedCornerShapeKt.f5846a);
            if (z) {
                gapComposerH.L(143139901);
                f2 = LVAppDesignKitTheme.d(gapComposerH).t;
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(143220253);
                f2 = LVAppDesignKitTheme.d(gapComposerH).o;
                gapComposerH.Z(false);
            }
            Modifier modifierB = AnimationModifierKt.b(SizeKt.o(modifierA, f2), null, 3);
            boolean z2 = (i3 & 7168) == 2048;
            Object objX = gapComposerH.x();
            if (z2 || objX == Composer.Companion.f7939a) {
                objX = new h1(function0, 12);
                gapComposerH.q(objX);
            }
            Modifier modifierA2 = AspectRatioKt.a(ModifierExtKt.c(modifierB, false, null, null, (Function0) objX, 31), 1.0f, true);
            ColorUiModel colorUiModel = tryOnProductUiModel.g;
            if ((colorUiModel == null || (assetImageUiModel = colorUiModel.f62160b) == null || (obj = assetImageUiModel.f51778b) == null) && (obj = tryOnProductUiModel.f62191k) == null) {
                obj = "";
            }
            ImageLoaderKt.b(modifierA2, obj, null, null, null, 0, false, null, null, null, gapComposerH, 0, 2044);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new i4(modifier2, tryOnProductUiModel, z, function0, i2, 6);
        }
    }
}
