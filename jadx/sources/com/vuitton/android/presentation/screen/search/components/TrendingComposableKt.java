package com.vuitton.android.presentation.screen.search.components;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.BorderKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.AspectRatioKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.LazyDslKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.RippleKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
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
import androidx.compose.ui.draw.DrawModifierKt;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.CompositingStrategy;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import androidx.compose.ui.graphics.LinearGradient;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.input.nestedscroll.NestedScrollModifierKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.compose.NestedScroll;
import com.vuitton.android.presentation.screen.search.models.SearchListState;
import com.vuitton.android.presentation.screen.search.models.TrendingItemUiModel;
import defpackage.cj;
import defpackage.e31;
import defpackage.es0;
import defpackage.i31;
import defpackage.l10;
import defpackage.m21;
import defpackage.n00;
import defpackage.ng0;
import defpackage.o60;
import defpackage.r31;
import defpackage.tr;
import defpackage.y41;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class TrendingComposableKt {
    public static final void a(SearchListState searchListState, NestedScroll nestedScroll, Function1 function1, Composer composer, int i2) {
        SearchListState searchListState2;
        boolean z;
        boolean z2;
        Modifier modifierJ;
        searchListState.getClass();
        nestedScroll.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(-2060873757);
        Applier applier = gapComposerH.f7976a;
        int i3 = i2 | (gapComposerH.K(searchListState) ? 4 : 2) | (gapComposerH.y(nestedScroll) ? 32 : 16) | (gapComposerH.y(function1) ? 256 : 128);
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Brush.Companion companion = Brush.f8862a;
            Float fValueOf = Float.valueOf(Call.Parameters.DEFAULT_CAMERA_ZOOM);
            Color.f8866b.getClass();
            LinearGradient linearGradientC = Brush.Companion.c(companion, new Pair[]{new Pair(fValueOf, new Color(Color.f8870h)), new Pair(Float.valueOf(0.03f), new Color(Color.f8867c))});
            Modifier modifierD = tr.d("TrendingComposable", 1.0f);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierD);
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
            Updater.c(gapComposerH, columnMeasurePolicyA, function2);
            Function2 function3 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function4 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function4);
            Function1 function5 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function5);
            Function2 function6 = ComposeUiNode.Companion.d;
            Modifier modifierM = PaddingKt.m(PaddingKt.k(n00.e(gapComposerH, modifierC, function6, "TrendingComposable", 1.0f), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.g, Alignment.Companion.l, gapComposerH, 54);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierM);
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
            Updater.c(gapComposerH, rowMeasurePolicyA, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
            cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function5);
            DTFunctionNameModifier dTFunctionNameModifierE = tr.e(gapComposerH, modifierC2, function6, "TrendingComposable");
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                z = false;
                objX = new y41(0);
                gapComposerH.q(objX);
            } else {
                z = false;
            }
            TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.search_trending), ModifierExtKt.e(SemanticsModifierKt.b(dTFunctionNameModifierE, z, (Function1) objX), "searchTrending_title_text"), LVAppDesignKitTheme.c(gapComposerH).f48361b.m, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48425e, gapComposerH, 0, 0, 131064);
            gapComposerH = gapComposerH;
            Modifier modifierA = NestedScrollModifierKt.a(o60.d(gapComposerH, true, "TrendingComposable", 1.0f), nestedScroll, null);
            CompositingStrategy.f8875a.getClass();
            Modifier modifierC3 = GraphicsLayerModifierKt.c(modifierA, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0L, null, CompositingStrategy.f8876b, 458751);
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = new l10(linearGradientC, 2);
                gapComposerH.q(objX2);
            }
            Modifier modifierD2 = DrawModifierKt.d(modifierC3, (Function1) objX2);
            searchListState2 = searchListState;
            if (searchListState2 instanceof SearchListState.Result) {
                DTFunctionNameModifier dTFunctionNameModifierI = n00.i(gapComposerH, 2013706729, "TrendingComposable");
                boolean z3 = (i3 & 14) == 4;
                Object objX3 = gapComposerH.x();
                if (z3 || objX3 == composer$Companion$Empty$1) {
                    objX3 = new ng0(searchListState2, 1);
                    gapComposerH.q(objX3);
                }
                z2 = false;
                modifierJ = SemanticsModifierKt.b(dTFunctionNameModifierI, false, (Function1) objX3);
                gapComposerH.Z(false);
            } else {
                z2 = false;
                modifierJ = n00.j(gapComposerH, 2013898929, false, "TrendingComposable");
            }
            Modifier modifierO = modifierD2.o(modifierJ);
            boolean z4 = (i3 & 14) == 4 ? true : z2;
            if ((i3 & 896) == 256) {
                z2 = true;
            }
            boolean z5 = z4 | z2;
            Object objX4 = gapComposerH.x();
            if (z5 || objX4 == composer$Companion$Empty$1) {
                objX4 = new m21(searchListState2, function1, 22);
                gapComposerH.q(objX4);
            }
            LazyDslKt.a(modifierO, null, null, null, null, null, false, null, (Function1) objX4, gapComposerH, 0, 510);
            gapComposerH.Z(true);
        } else {
            searchListState2 = searchListState;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new r31(i2, 6, searchListState2, nestedScroll, function1);
        }
    }

    public static final void b(Modifier modifier, TrendingItemUiModel trendingItemUiModel, Composer composer, int i2, int i3) {
        int i4;
        if (modifier != null) {
            modifier = defpackage.a.e(modifier, "TrendingItemComposable");
        }
        GapComposer gapComposerH = composer.h(428178374);
        int i5 = i3 & 1;
        if (i5 != 0) {
            i4 = i2 | 6;
        } else {
            i4 = (gapComposerH.K(modifier) ? 4 : 2) | i2;
        }
        int i6 = i4 | (gapComposerH.K(trendingItemUiModel) ? 32 : 16);
        if (gapComposerH.p(i6 & 1, (i6 & 19) != 18)) {
            if (i5 != 0) {
                modifier = new DTFunctionNameModifier("TrendingItemComposable");
            }
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            CompositionLocalKt.a(RippleKt.f7164a.c(SearchScreenComposableKt.b(gapComposerH)), ComposableLambdaKt.b(-1335111546, new es0(modifier, trendingItemUiModel, 19), gapComposerH), gapComposerH, 56);
        } else {
            gapComposerH.D();
        }
        Modifier modifier2 = modifier;
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new i31(modifier2, trendingItemUiModel, i2, i3, 3);
        }
    }

    public static final void c(Modifier modifier, Function2 function2, Composer composer, int i2) {
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "TrendingLineComposable");
        }
        GapComposer gapComposerH = composer.h(2010830803);
        Applier applier = gapComposerH.f7976a;
        int i3 = (gapComposerH.K(modifierE) ? 4 : 2) | i2;
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Alignment.f8582a.getClass();
            BiasAlignment.Vertical vertical = Alignment.Companion.l;
            Modifier modifierK = PaddingKt.k(SizeKt.d(modifierE, 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, 1);
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
            Function2 function3 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, rowMeasurePolicyA, function3);
            Function2 function4 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function4);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function5 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function5);
            Function1 function1 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function1);
            Function2 function6 = ComposeUiNode.Companion.d;
            DTFunctionNameModifier dTFunctionNameModifierE = tr.e(gapComposerH, modifierC, function6, "TrendingLineComposable");
            Dp.Companion companion = Dp.f11004c;
            Modifier modifierA = BorderKt.a(AspectRatioKt.a(SizeKt.f(dTFunctionNameModifierE, 54.0f), 1.0f, false), LVAppDesignKitTheme.d(gapComposerH).f48385c, LVAppDesignKitTheme.c(gapComposerH).f48361b.t, RoundedCornerShapeKt.f5846a);
            Color.f8866b.getClass();
            Modifier modifierE2 = ModifierExtKt.e(BackgroundKt.b(modifierA, Color.f8870h, RectangleShapeKt.f8913a), "search_TrendingItem_view");
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierE2);
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
            Updater.c(gapComposerH, measurePolicyD, function3);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function4);
            cj.t(iHashCode2, gapComposerH, function5, gapComposerH, function1);
            Updater.c(gapComposerH, modifierC2, function6);
            IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).m, gapComposerH, 0), null, BoxScopeInstance.f4938a.g(SizeKt.o(new DTFunctionNameModifier("TrendingLineComposable"), 24.0f), Alignment.Companion.f8587f), LVAppDesignKitTheme.c(gapComposerH).f48361b.m, gapComposerH, 56, 0);
            gapComposerH.Z(true);
            function2.invoke(gapComposerH, 6);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new es0(modifierE, function2, i2, 20);
        }
    }

    public static final void d(Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(-511965871);
        if (gapComposerH.p(i2 & 1, i2 != 0)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierK = PaddingKt.k(new DTFunctionNameModifier("TrendingSkeletonItemComposable"), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
            ComposableSingletons$TrendingComposableKt.f64166a.getClass();
            c(modifierK, ComposableSingletons$TrendingComposableKt.d, gapComposerH, 48);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new e31(i2, 10);
        }
    }
}
