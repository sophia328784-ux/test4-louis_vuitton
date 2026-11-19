package com.vuitton.android.presentation.screen.search.components;

import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.material3.RippleKt;
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
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.screen.search.models.SearchHintUiModel;
import com.vuitton.android.presentation.screen.search.models.SearchListState;
import defpackage.hb;
import defpackage.m1;
import defpackage.n00;
import defpackage.o;
import defpackage.o60;
import defpackage.og0;
import defpackage.tr;
import defpackage.ud;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class SuccessSearchComposableKt {
    public static final void a(Modifier modifier, List list, Function2 function2, Composer composer, int i2) {
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "AutocompleteHintComposable");
        }
        Modifier modifier2 = modifierE;
        GapComposer gapComposerH = composer.h(1336430424);
        int i3 = (gapComposerH.y(list) ? 32 : 16) | i2;
        Function2 function3 = function2;
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(function3) ? 256 : 128;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierM = PaddingKt.m(modifier2, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48418h, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8);
            boolean zY = gapComposerH.y(list);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zY || objX == composer$Companion$Empty$1) {
                objX = new ud(list, 16);
                gapComposerH.q(objX);
            }
            Modifier modifierB = SemanticsModifierKt.b(modifierM, false, (Function1) objX);
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48415c);
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(spacedAlignedF, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierB);
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
            Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            gapComposerH.L(887632855);
            int i4 = 0;
            for (Object obj : list) {
                int i5 = i4 + 1;
                if (i4 < 0) {
                    CollectionsKt.t0();
                    throw null;
                }
                SearchHintUiModel searchHintUiModel = (SearchHintUiModel) obj;
                DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("AutocompleteHintComposable");
                boolean zD = gapComposerH.d(i4);
                Object objX2 = gapComposerH.x();
                if (zD || objX2 == composer$Companion$Empty$1) {
                    objX2 = new hb(i4, 23);
                    gapComposerH.q(objX2);
                }
                SearchHintCardComposableKt.a(SemanticsModifierKt.b(dTFunctionNameModifier, false, (Function1) objX2), searchHintUiModel.f64250a, searchHintUiModel.f64251b, searchHintUiModel.f64252c, searchHintUiModel.d, function3, gapComposerH, (i3 << 9) & ImageMetadata.JPEG_GPS_COORDINATES);
                function3 = function2;
                i4 = i5;
                composer$Companion$Empty$1 = composer$Companion$Empty$1;
            }
            gapComposerH.Z(false);
            gapComposerH.Z(true);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new og0(modifier2, list, function2, i2, 7);
        }
    }

    public static final void b(Modifier modifier, List list, Function1 function1, Composer composer, int i2) {
        int i3;
        if (modifier != null) {
            modifier = defpackage.a.e(modifier, "AutocompleteMatchComposable");
        }
        Modifier modifier2 = modifier;
        GapComposer gapComposerH = composer.h(1895357863);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(modifier2) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(list) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(function1) ? 256 : 128;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            CompositionLocalKt.a(RippleKt.f7164a.c(SearchScreenComposableKt.b(gapComposerH)), ComposableLambdaKt.b(-662077209, new m1(modifier2, list, function1), gapComposerH), gapComposerH, 56);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new og0(modifier2, list, function1, i2, 8);
        }
    }

    public static final void c(List list, List list2, SearchListState searchListState, Function2 function2, Function1 function1, Function2 function3, Function0 function0, Composer composer, int i2) {
        List list3;
        list.getClass();
        list2.getClass();
        searchListState.getClass();
        function2.getClass();
        function1.getClass();
        function3.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(-1377099623);
        int i3 = i2 | (gapComposerH.y(list) ? 4 : 2) | (gapComposerH.y(list2) ? 32 : 16) | (gapComposerH.K(searchListState) ? 256 : 128) | (gapComposerH.y(function2) ? 2048 : 1024) | (gapComposerH.y(function1) ? 16384 : 8192) | (gapComposerH.y(function3) ? 131072 : 65536) | (gapComposerH.y(function0) ? 1048576 : 524288);
        if (gapComposerH.p(i3 & 1, (599187 & i3) != 599186)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierD = ScrollKt.d(tr.d("SuccessSearchComposable", 1.0f), ScrollKt.b(gapComposerH), false, 14);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierD);
            ComposeUiNode.b0.getClass();
            Function0 function4 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function4);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            b(PaddingKt.m(n00.e(gapComposerH, modifierC, ComposeUiNode.Companion.d, "SuccessSearchComposable", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), list, function1, gapComposerH, ((i3 << 3) & 112) | ((i3 >> 6) & 896));
            if (list2.isEmpty()) {
                gapComposerH.L(83923039);
                gapComposerH.Z(false);
            } else {
                a(o60.c(gapComposerH, 83658764, "SuccessSearchComposable", 1.0f), list2, function3, gapComposerH, (i3 & 112) | 6 | ((i3 >> 9) & 896));
                gapComposerH.Z(false);
            }
            SearchListState.Result result = searchListState instanceof SearchListState.Result ? (SearchListState.Result) searchListState : null;
            if ((result == null || (list3 = result.f64254b) == null || !(!list3.isEmpty())) && !(searchListState instanceof SearchListState.Loading)) {
                gapComposerH.L(84425983);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(84122307);
                SuggestionCarouselComposableKt.a(StringResources_androidKt.c(gapComposerH, R.string.search_live_suggestion), searchListState, function2, function0, gapComposerH, ((i3 >> 9) & 7168) | ((i3 >> 3) & 1008));
                gapComposerH.Z(false);
            }
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new o(list, list2, searchListState, function2, function1, function3, function0, i2, 23);
        }
    }
}
