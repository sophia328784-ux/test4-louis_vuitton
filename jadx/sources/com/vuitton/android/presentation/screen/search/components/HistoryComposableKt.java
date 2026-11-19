package com.vuitton.android.presentation.screen.search.components;

import android.content.Context;
import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.BorderKt;
import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.AspectRatioKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
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
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.draw.PainterModifierKt;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.compose.NestedScroll;
import com.vuitton.android.presentation.extensions.ContextExtKt;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.screen.search.models.HistoryItemUiModel;
import com.vuitton.android.presentation.screen.search.models.HistoryUiModel;
import com.vuitton.android.presentation.utils.ImageConfiguration;
import com.vuitton.android.presentation.utils.UrlFactory;
import defpackage.cj;
import defpackage.dt;
import defpackage.h;
import defpackage.hg;
import defpackage.o60;
import defpackage.p0;
import defpackage.tr;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class HistoryComposableKt {
    public static final void a(HistoryUiModel historyUiModel, boolean z, NestedScroll nestedScroll, Function0 function0, Function2 function2, Function1 function1, Composer composer, int i2) {
        historyUiModel.getClass();
        nestedScroll.getClass();
        function0.getClass();
        function2.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(-791673491);
        int i3 = i2 | (gapComposerH.y(historyUiModel) ? 4 : 2) | (gapComposerH.b(z) ? 32 : 16) | (gapComposerH.y(nestedScroll) ? 256 : 128) | (gapComposerH.y(function0) ? 2048 : 1024) | (gapComposerH.y(function2) ? 16384 : 8192) | (gapComposerH.y(function1) ? 131072 : 65536);
        if (gapComposerH.p(i3 & 1, (74899 & i3) != 74898)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Brush.Companion companion = Brush.f8862a;
            Float fValueOf = Float.valueOf(Call.Parameters.DEFAULT_CAMERA_ZOOM);
            Color.f8866b.getClass();
            AnimatedVisibilityKt.e(!z, null, EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3), EnterExitTransitionKt.h(null, 3), null, ComposableLambdaKt.b(162177429, new p0((Object) nestedScroll, (Object) historyUiModel, (Object) function2, function1, (Function) function0, (Object) Brush.Companion.c(companion, new Pair[]{new Pair(fValueOf, new Color(Color.f8870h)), new Pair(Float.valueOf(0.03f), new Color(Color.f8867c))}), 12), gapComposerH), gapComposerH, 200064, 18);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new hg(historyUiModel, z, nestedScroll, function0, function2, function1, i2, 5);
        }
    }

    public static final void b(Modifier modifier, HistoryItemUiModel.HistoryProductUiModel historyProductUiModel, Function1 function1, Composer composer, int i2, int i3) {
        int i4;
        Modifier modifier2;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = defpackage.a.e(dTFunctionNameModifier, "HistoryProductComposable");
        }
        historyProductUiModel.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(-689238418);
        Applier applier = gapComposerH.f7976a;
        int i5 = i3 & 1;
        if (i5 != 0) {
            i4 = i2 | 6;
        } else {
            i4 = (gapComposerH.K(dTFunctionNameModifier) ? 4 : 2) | i2;
        }
        int i6 = i4 | (gapComposerH.y(historyProductUiModel) ? 32 : 16);
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i6 |= gapComposerH.y(function1) ? 256 : 128;
        }
        if (gapComposerH.p(i6 & 1, (i6 & 147) != 146)) {
            if (i5 != 0) {
                dTFunctionNameModifier = new DTFunctionNameModifier("HistoryProductComposable");
            }
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierD = SizeKt.d(dTFunctionNameModifier, 1.0f);
            boolean zY = ((i6 & 896) == 256) | gapComposerH.y(historyProductUiModel);
            Object objX = gapComposerH.x();
            if (zY || objX == Composer.Companion.f7939a) {
                objX = new dt(function1, historyProductUiModel, 21);
                gapComposerH.q(objX);
            }
            Modifier modifierE = ModifierExtKt.e(PaddingKt.k(PaddingKt.k(ClickableKt.d(modifierD, false, null, null, (Function0) objX, 15), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, 1), "searchHistory_item_view");
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierE);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Function2 function2 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, rowMeasurePolicyA, function2);
            Function2 function3 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function4 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function4);
            Function1 function5 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function5);
            Function2 function6 = ComposeUiNode.Companion.d;
            DTFunctionNameModifier dTFunctionNameModifierE = tr.e(gapComposerH, modifierC, function6, "HistoryProductComposable");
            Dp.Companion companion = Dp.f11004c;
            Modifier modifier3 = dTFunctionNameModifier;
            Modifier modifierA = ClipKt.a(AspectRatioKt.a(SizeKt.f(dTFunctionNameModifierE, 54.0f), 1.0f, false), LVAppDesignKitTheme.j(gapComposerH).f48410b);
            Painter painterA = PainterResources_androidKt.a(historyProductUiModel.f64244e, gapComposerH, 0);
            ContentScale.f9447a.getClass();
            Modifier modifierA2 = PainterModifierKt.a(modifierA, painterA, null, ContentScale.Companion.f9453h, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 54);
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierA2);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, measurePolicyD, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
            cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function5);
            Modifier modifierE2 = ModifierExtKt.e(ClipKt.a(AspectRatioKt.a(tr.e(gapComposerH, modifierC2, function6, "HistoryProductComposable"), 1.0f, false), LVAppDesignKitTheme.j(gapComposerH).f48410b), "searchHistory_item_image");
            new UrlFactory(ContextExtKt.f((Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b)));
            String strD = UrlFactory.d(historyProductUiModel.f64243c, 54, ImageConfiguration.Background.Transparent.f65853a);
            strD.getClass();
            ImageLoaderKt.b(modifierE2, strD, null, null, null, 0, false, null, null, null, gapComposerH, 0, 2044);
            Modifier modifierE3 = ModifierExtKt.e(PaddingKt.m(o60.f(gapComposerH, true, "HistoryProductComposable"), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), "searchHistory_itemTitle_text");
            String str = historyProductUiModel.f64242b;
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).g;
            long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.m;
            TextOverflow.f10989a.getClass();
            TextKt.c(str, modifierE3, j2, 0L, null, 0L, null, null, 0L, TextOverflow.f10991c, false, 1, 0, null, textStyle, gapComposerH, 0, 24960, 110584);
            gapComposerH.Z(true);
            modifier2 = modifier3;
        } else {
            gapComposerH.D();
            modifier2 = dTFunctionNameModifier;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new h(modifier2, historyProductUiModel, function1, i2, i3, 2);
        }
    }

    public static final void c(Modifier modifier, HistoryItemUiModel.HistoryResearchUiModel historyResearchUiModel, Function1 function1, Composer composer, int i2, int i3) {
        int i4;
        Modifier modifier2;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = defpackage.a.e(dTFunctionNameModifier, "HistorySearchComposable");
        }
        historyResearchUiModel.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(-1740275273);
        Applier applier = gapComposerH.f7976a;
        int i5 = i3 & 1;
        if (i5 != 0) {
            i4 = i2 | 6;
        } else {
            i4 = (gapComposerH.K(dTFunctionNameModifier) ? 4 : 2) | i2;
        }
        int i6 = i4 | (gapComposerH.y(historyResearchUiModel) ? 32 : 16);
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i6 |= gapComposerH.y(function1) ? 256 : 128;
        }
        if (gapComposerH.p(i6 & 1, (i6 & 147) != 146)) {
            if (i5 != 0) {
                dTFunctionNameModifier = new DTFunctionNameModifier("HistorySearchComposable");
            }
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Alignment.f8582a.getClass();
            BiasAlignment.Vertical vertical = Alignment.Companion.l;
            Modifier modifierD = SizeKt.d(dTFunctionNameModifier, 1.0f);
            boolean zY = ((i6 & 896) == 256) | gapComposerH.y(historyResearchUiModel);
            Object objX = gapComposerH.x();
            if (zY || objX == Composer.Companion.f7939a) {
                objX = new dt(function1, historyResearchUiModel, 22);
                gapComposerH.q(objX);
            }
            Modifier modifierK = PaddingKt.k(PaddingKt.k(ClickableKt.d(modifierD, false, null, null, (Function0) objX, 15), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, 1);
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, vertical, gapComposerH, 48);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierK);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Function2 function2 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, rowMeasurePolicyA, function2);
            Function2 function3 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function4 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function4);
            Function1 function5 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function5);
            Function2 function6 = ComposeUiNode.Companion.d;
            DTFunctionNameModifier dTFunctionNameModifierE = tr.e(gapComposerH, modifierC, function6, "HistorySearchComposable");
            Dp.Companion companion = Dp.f11004c;
            Modifier modifier3 = dTFunctionNameModifier;
            Modifier modifierA = BorderKt.a(AspectRatioKt.a(SizeKt.f(dTFunctionNameModifierE, 54.0f), 1.0f, false), LVAppDesignKitTheme.d(gapComposerH).f48385c, LVAppDesignKitTheme.c(gapComposerH).f48361b.t, RoundedCornerShapeKt.f5846a);
            Color.f8866b.getClass();
            Modifier modifierB = BackgroundKt.b(modifierA, Color.f8870h, RectangleShapeKt.f8913a);
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierB);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, measurePolicyD, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
            cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function5);
            Updater.c(gapComposerH, modifierC2, function6);
            IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).m, gapComposerH, 0), null, BoxScopeInstance.f4938a.g(SizeKt.o(new DTFunctionNameModifier("HistorySearchComposable"), 24.0f), Alignment.Companion.f8587f), LVAppDesignKitTheme.c(gapComposerH).f48361b.m, gapComposerH, 56, 0);
            gapComposerH.Z(true);
            String str = historyResearchUiModel.f64246a;
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).g;
            long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.m;
            Modifier modifierM = PaddingKt.m(new DTFunctionNameModifier("HistorySearchComposable"), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14);
            TextOverflow.f10989a.getClass();
            TextKt.c(str, modifierM, j2, 0L, null, 0L, null, null, 0L, TextOverflow.f10991c, false, 1, 0, null, textStyle, gapComposerH, 0, 24960, 110584);
            gapComposerH = gapComposerH;
            gapComposerH.Z(true);
            modifier2 = modifier3;
        } else {
            gapComposerH.D();
            modifier2 = dTFunctionNameModifier;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new h(modifier2, historyResearchUiModel, function1, i2, i3, 3);
        }
    }
}
