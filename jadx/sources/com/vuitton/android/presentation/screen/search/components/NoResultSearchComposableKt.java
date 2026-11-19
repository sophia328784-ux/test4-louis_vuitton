package com.vuitton.android.presentation.screen.search.components;

import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
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
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.input.nestedscroll.NestedScrollModifierKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVSkeletonKt;
import com.vuitton.android.presentation.compose.NestedScroll;
import com.vuitton.android.presentation.screen.search.models.SearchListState;
import com.vuitton.android.presentation.screen.search.models.TrendingItemUiModel;
import defpackage.ag0;
import defpackage.cj;
import defpackage.hb;
import defpackage.l10;
import defpackage.n00;
import defpackage.n50;
import defpackage.ng0;
import defpackage.og0;
import defpackage.pq0;
import defpackage.rv;
import defpackage.tr;
import defpackage.u1;
import defpackage.v1;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class NoResultSearchComposableKt {
    public static final void a(SearchListState searchListState, SearchListState searchListState2, NestedScroll nestedScroll, Function2 function2, Function1 function1, Function0 function0, Composer composer, int i2) {
        SearchListState searchListState3;
        Function1 function3 = function1;
        searchListState.getClass();
        searchListState2.getClass();
        nestedScroll.getClass();
        function2.getClass();
        function3.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(238912092);
        Applier applier = gapComposerH.f7976a;
        int i3 = i2 | (gapComposerH.K(searchListState) ? 4 : 2) | (gapComposerH.K(searchListState2) ? 32 : 16) | (gapComposerH.y(nestedScroll) ? 256 : 128) | (gapComposerH.y(function2) ? 2048 : 1024) | (gapComposerH.y(function3) ? 16384 : 8192) | (gapComposerH.y(function0) ? 131072 : 65536);
        if (gapComposerH.p(i3 & 1, (74899 & i3) != 74898)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Brush.Companion companion = Brush.f8862a;
            Float fValueOf = Float.valueOf(Call.Parameters.DEFAULT_CAMERA_ZOOM);
            Color.f8866b.getClass();
            LinearGradient linearGradientC = Brush.Companion.c(companion, new Pair[]{new Pair(fValueOf, new Color(Color.f8870h)), new Pair(Float.valueOf(0.03f), new Color(Color.f8867c))});
            Modifier modifierD = tr.d("NoResultSearchComposable", 1.0f);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            BiasAlignment.Horizontal horizontal = Alignment.Companion.n;
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierD);
            ComposeUiNode.b0.getClass();
            Function0 function4 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function4);
            } else {
                gapComposerH.o();
            }
            Function2 function5 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, columnMeasurePolicyA, function5);
            Function2 function6 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function6);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function7 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function7);
            Function1 function8 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function8);
            Function2 function9 = ComposeUiNode.Companion.d;
            TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.search_no_result_phrase), PaddingKt.m(PaddingKt.k(tr.e(gapComposerH, modifierC, function9, "NoResultSearchComposable"), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, 5), LVAppDesignKitTheme.c(gapComposerH).f48361b.m, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).l, gapComposerH, 0, 0, 131064);
            gapComposerH = gapComposerH;
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("NoResultSearchComposable");
            CompositingStrategy.f8875a.getClass();
            Modifier modifierC2 = GraphicsLayerModifierKt.c(dTFunctionNameModifier, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0L, null, CompositingStrategy.f8876b, 458751);
            Object objX = gapComposerH.x();
            if (objX == Composer.Companion.f7939a) {
                objX = new l10(linearGradientC, 1);
                gapComposerH.q(objX);
            }
            Modifier modifierD2 = ScrollKt.d(NestedScrollModifierKt.a(DrawModifierKt.d(modifierC2, (Function1) objX), nestedScroll, null), ScrollKt.b(gapComposerH), false, 14);
            ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC3 = ComposedModifierKt.c(gapComposerH, modifierD2);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function4);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA2, function5);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function6);
            cj.t(iHashCode2, gapComposerH, function7, gapComposerH, function8);
            Updater.c(gapComposerH, modifierC3, function9);
            if (b(searchListState2)) {
                gapComposerH.L(-1861471467);
                searchListState3 = searchListState2;
                function3 = function1;
                d(null, searchListState3, function3, gapComposerH, (i3 & 112) | ((i3 >> 6) & 896));
                gapComposerH.Z(false);
            } else {
                searchListState3 = searchListState2;
                function3 = function1;
                gapComposerH.L(-1861189894);
                gapComposerH.Z(false);
            }
            if (b(searchListState)) {
                gapComposerH.L(-1861130343);
                SuggestionCarouselComposableKt.a(StringResources_androidKt.c(gapComposerH, R.string.search_suggestion_no_result), searchListState, function2, function0, gapComposerH, ((i3 << 3) & 112) | ((i3 >> 3) & 896) | ((i3 >> 6) & 7168));
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-1860791110);
                gapComposerH.Z(false);
            }
            gapComposerH.Z(true);
            gapComposerH.Z(true);
        } else {
            searchListState3 = searchListState2;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new u1(searchListState, searchListState3, nestedScroll, function2, function3, function0, i2, 17);
        }
    }

    public static final boolean b(SearchListState searchListState) {
        List list;
        SearchListState.Result result = searchListState instanceof SearchListState.Result ? (SearchListState.Result) searchListState : null;
        return !(result == null || (list = result.f64254b) == null || !(list.isEmpty() ^ true)) || (searchListState instanceof SearchListState.Loading);
    }

    public static final void c(Modifier modifier, TrendingItemUiModel trendingItemUiModel, Function1 function1, Composer composer, int i2) {
        int i3;
        if (modifier != null) {
            modifier = defpackage.a.e(modifier, "NoResultTrendingItemComposable");
        }
        Object obj = modifier;
        GapComposer gapComposerH = composer.h(1019965300);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(obj) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(trendingItemUiModel) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(function1) ? 256 : 128;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            CompositionLocalKt.a(RippleKt.f7164a.c(SearchScreenComposableKt.b(gapComposerH)), ComposableLambdaKt.b(-13663180, new rv(obj, function1, trendingItemUiModel, 27), gapComposerH), gapComposerH, 56);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new og0(obj, trendingItemUiModel, function1, i2, 0);
        }
    }

    public static final void d(Modifier modifier, SearchListState searchListState, Function1 function1, Composer composer, int i2) {
        GapComposer gapComposer;
        Modifier modifier2;
        boolean z;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "NoResultTrendingListComposable");
        }
        GapComposer gapComposerH = composer.h(-1947044969);
        Applier applier = gapComposerH.f7976a;
        int i3 = i2 | 6 | (gapComposerH.K(searchListState) ? 32 : 16);
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(function1) ? 256 : 128;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("NoResultTrendingListComposable");
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierM = PaddingKt.m(dTFunctionNameModifier, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, 5);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            BiasAlignment.Horizontal horizontal = Alignment.Companion.n;
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierM);
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
            Updater.c(gapComposerH, modifierC, function6);
            String strC = StringResources_androidKt.c(gapComposerH, R.string.search_trending);
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).f48425e;
            long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.m;
            Modifier modifierM2 = PaddingKt.m(PaddingKt.k(new DTFunctionNameModifier("NoResultTrendingListComposable"), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, 7);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = new ag0(19);
                gapComposerH.q(objX);
            }
            int i4 = i3;
            TextKt.c(strC, SemanticsModifierKt.b(modifierM2, false, (Function1) objX), j2, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle, gapComposerH, 0, 0, 131064);
            gapComposer = gapComposerH;
            if (searchListState instanceof SearchListState.Loading) {
                gapComposer.L(-57981678);
                for (int i5 = 0; i5 < 6; i5++) {
                    e(gapComposer, 0);
                }
                gapComposer.Z(false);
                z = true;
            } else if (searchListState instanceof SearchListState.Result) {
                DTFunctionNameModifier dTFunctionNameModifierI = n00.i(gapComposer, -57791307, "NoResultTrendingListComposable");
                boolean z2 = (i4 & 112) == 32;
                Object objX2 = gapComposer.x();
                if (z2 || objX2 == composer$Companion$Empty$1) {
                    objX2 = new ng0(searchListState, 0);
                    gapComposer.q(objX2);
                }
                Modifier modifierB = SemanticsModifierKt.b(dTFunctionNameModifierI, false, (Function1) objX2);
                ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(arrangement$Top$1, horizontal, gapComposer, 0);
                int iHashCode2 = Long.hashCode(gapComposer.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposer.U();
                Modifier modifierC2 = ComposedModifierKt.c(gapComposer, modifierB);
                if (applier == null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposer.B();
                if (gapComposer.S) {
                    gapComposer.C(function0);
                } else {
                    gapComposer.o();
                }
                Updater.c(gapComposer, columnMeasurePolicyA2, function2);
                Updater.c(gapComposer, persistentCompositionLocalMapU2, function3);
                cj.t(iHashCode2, gapComposer, function4, gapComposer, function5);
                Updater.c(gapComposer, modifierC2, function6);
                gapComposer.L(1093225490);
                int i6 = 0;
                for (Object obj : ((SearchListState.Result) searchListState).f64254b) {
                    int i7 = i6 + 1;
                    if (i6 < 0) {
                        CollectionsKt.t0();
                        throw null;
                    }
                    TrendingItemUiModel trendingItemUiModel = (TrendingItemUiModel) obj;
                    DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("NoResultTrendingListComposable");
                    boolean zD = gapComposer.d(i6);
                    Object objX3 = gapComposer.x();
                    if (zD || objX3 == composer$Companion$Empty$1) {
                        objX3 = new hb(i6, 20);
                        gapComposer.q(objX3);
                    }
                    c(SemanticsModifierKt.b(dTFunctionNameModifier2, false, (Function1) objX3), trendingItemUiModel, function1, gapComposer, i4 & 896);
                    i6 = i7;
                }
                z = true;
                pq0.x(gapComposer, false, true, false);
            } else {
                z = true;
                gapComposer.L(-57092877);
                gapComposer.Z(false);
            }
            gapComposer.Z(z);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            modifier2 = dTFunctionNameModifier;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
            modifier2 = modifierE;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new v1(i2, 29, modifier2, searchListState, function1);
        }
    }

    public static final void e(Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(1152229125);
        if (gapComposerH.p(i2 & 1, i2 != 0)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Alignment.f8582a.getClass();
            BiasAlignment.Vertical vertical = Alignment.Companion.l;
            Modifier modifierK = PaddingKt.k(PaddingKt.k(tr.d("NoResultTrendingSkeletonComposable", 1.0f), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, 1);
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, vertical, gapComposerH, 48);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierK);
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
            Updater.c(gapComposerH, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            Painter painterA = PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).m, gapComposerH, 0);
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("NoResultTrendingSkeletonComposable");
            Dp.Companion companion = Dp.f11004c;
            IconKt.a(painterA, null, SizeKt.o(dTFunctionNameModifier, 24.0f), LVAppDesignKitTheme.c(gapComposerH).f48361b.m, gapComposerH, 440, 0);
            LVSkeletonKt.a(PaddingKt.m(tr.d("NoResultTrendingSkeletonComposable", 0.6666667f), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), null, null, gapComposerH, 0);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new n50(i2, 23);
        }
    }
}
