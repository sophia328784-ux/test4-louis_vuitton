package com.vuitton.android.presentation.screen.search.components;

import android.content.Context;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.AspectRatioKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.lazy.LazyListStateKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
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
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.draw.PainterModifierKt;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.style.TextOverflow;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.components.LVFreeCarouselWithHintKt;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVSkeletonKt;
import com.vuitton.android.presentation.extensions.ContextExtKt;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.screen.search.models.SearchListState;
import com.vuitton.android.presentation.screen.search.models.SuggestionItemUiModel;
import com.vuitton.android.presentation.utils.ImageConfiguration;
import com.vuitton.android.presentation.utils.UrlFactory;
import defpackage.cj;
import defpackage.e1;
import defpackage.l01;
import defpackage.ll0;
import defpackage.o60;
import defpackage.og0;
import defpackage.oi0;
import defpackage.p01;
import defpackage.tr;
import defpackage.zt0;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000b\n\u0002\b\u0002¨\u0006\u0002²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"", "shouldTrackResultCarouselSwipe", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class SuggestionCarouselComposableKt {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v3, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r4v4 */
    public static final void a(String str, SearchListState searchListState, Function2 function2, Function0 function0, Composer composer, int i2) {
        int i3;
        GapComposer gapComposer;
        boolean z;
        ?? r4;
        LazyListState lazyListState;
        GapComposer gapComposer2;
        str.getClass();
        searchListState.getClass();
        function2.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(-808650691);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(str) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(searchListState) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(function2) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(function0) ? 2048 : 1024;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            LazyListState lazyListStateA = LazyListStateKt.a(0, gapComposerH, 3);
            Object objX = gapComposerH.x();
            Object obj = Composer.Companion.f7939a;
            if (objX == obj) {
                objX = SnapshotStateKt.g(Boolean.TRUE);
                gapComposerH.q(objX);
            }
            MutableState mutableState = (MutableState) objX;
            Boolean bool = (Boolean) mutableState.getF10755b();
            bool.booleanValue();
            boolean zK = ((i3 & 7168) == 2048) | gapComposerH.K(lazyListStateA);
            Object objX2 = gapComposerH.x();
            if (zK || objX2 == obj) {
                objX2 = new SuggestionCarouselComposableKt$SuggestionCarouselComposable$1$1(lazyListStateA, mutableState, function0, null);
                gapComposerH.q(objX2);
            }
            EffectsKt.e(gapComposerH, bool, (Function2) objX2);
            Modifier modifierM = PaddingKt.m(new DTFunctionNameModifier("SuggestionCarouselComposable"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48418h, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierM);
            ComposeUiNode.b0.getClass();
            Function0 function1 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function1);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            boolean z2 = searchListState instanceof SearchListState.Loading;
            Modifier.Companion companion = Modifier.Companion.f8607b;
            if (z2) {
                gapComposerH.L(-537420189);
                LVSkeletonKt.e(SizeKt.s(PaddingKt.l(companion, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48415c), LVAppDesignKitTheme.d(gapComposerH).E), null, null, gapComposerH, 0, 6);
                gapComposerH.Z(false);
                z = z2;
                r4 = 0;
                lazyListState = lazyListStateA;
            } else {
                gapComposerH.L(-536904814);
                Modifier modifierL = PaddingKt.l(companion, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48415c);
                Object objX3 = gapComposerH.x();
                if (objX3 == obj) {
                    objX3 = new l01(18);
                    gapComposerH.q(objX3);
                }
                z = z2;
                r4 = 0;
                lazyListState = lazyListStateA;
                TextKt.c(str, ModifierExtKt.e(SemanticsModifierKt.b(modifierL, false, (Function1) objX3), "searchSuggestions_title_text"), LVAppDesignKitTheme.c(gapComposerH).f48361b.m, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48426f, gapComposerH, i3 & 14, 0, 131064);
                GapComposer gapComposer3 = gapComposerH;
                gapComposer3.Z(false);
                gapComposer2 = gapComposer3;
            }
            if (z) {
                gapComposer2 = gapComposerH;
                gapComposer2.L(-536120793);
                b(lazyListState, gapComposer2, r4);
                gapComposer2.Z(r4);
            } else if (searchListState instanceof SearchListState.Result) {
                gapComposer2 = gapComposerH;
                gapComposer2.L(-536001691);
                c(lazyListState, (SearchListState.Result) searchListState, function2, gapComposer2, i3 & 1008);
                gapComposer2.Z(r4);
            } else {
                gapComposer2 = gapComposerH;
                gapComposer2.L(-535754931);
                gapComposer2.Z(r4);
            }
            gapComposer2.Z(true);
            gapComposer = gapComposer2;
        } else {
            gapComposerH.D();
            gapComposer = gapComposerH;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new oi0(str, searchListState, function2, function0, i2, 11);
        }
    }

    public static final void b(LazyListState lazyListState, Composer composer, int i2) {
        LazyListState lazyListState2;
        GapComposer gapComposerH = composer.h(-1549322261);
        int i3 = (gapComposerH.K(lazyListState) ? 4 : 2) | i2;
        if (gapComposerH.p(i3 & 1, (i3 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            List listW = ArraysKt.W(new Object[5]);
            float f2 = LVAppDesignKitTheme.l(gapComposerH).f48416e;
            float f3 = LVAppDesignKitTheme.l(gapComposerH).f48416e;
            ComposableSingletons$SuggestionCarouselComposableKt.f64164a.getClass();
            lazyListState2 = lazyListState;
            LVFreeCarouselWithHintKt.a(null, lazyListState2, listW, 2, 0.2f, f2, f3, ComposableSingletons$SuggestionCarouselComposableKt.f64165b, gapComposerH, ((i3 << 3) & 112) | 12610560, 1);
        } else {
            lazyListState2 = lazyListState;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new ll0(lazyListState2, i2, 23);
        }
    }

    public static final void c(LazyListState lazyListState, SearchListState.Result result, Function2 function2, Composer composer, int i2) {
        int i3;
        GapComposer gapComposerH = composer.h(539528475);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(lazyListState) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(result) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(function2) ? 256 : 128;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            LVFreeCarouselWithHintKt.a(null, lazyListState, result.f64254b, 2, 0.2f, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48416e, ComposableLambdaKt.b(902723879, new e1(function2, 5), gapComposerH), gapComposerH, ((i3 << 3) & 112) | 12610560, 1);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new og0(lazyListState, result, function2, i2, 9);
        }
    }

    public static final void d(Modifier modifier, SuggestionItemUiModel suggestionItemUiModel, Function1 function1, Composer composer, int i2) {
        int i3;
        GapComposer gapComposer;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "SuggestionItemComposable");
        }
        Modifier modifier2 = modifierE;
        suggestionItemUiModel.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(871011350);
        Applier applier = gapComposerH.f7976a;
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(modifier2) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(suggestionItemUiModel) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(function1) ? 256 : 128;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            boolean z = ((i3 & 112) == 32) | ((i3 & 896) == 256);
            Object objX = gapComposerH.x();
            if (z || objX == Composer.Companion.f7939a) {
                objX = new p01(function1, suggestionItemUiModel, 9);
                gapComposerH.q(objX);
            }
            Modifier modifierE2 = ModifierExtKt.e(ModifierExtKt.c(modifier2, false, null, null, (Function0) objX, 31), "search_suggestion_view");
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierE2);
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
            Modifier modifierA = ClipKt.a(AspectRatioKt.a(tr.e(gapComposerH, modifierC, function6, "SuggestionItemComposable"), 1.0f, false), LVAppDesignKitTheme.j(gapComposerH).f48410b);
            Painter painterA = PainterResources_androidKt.a(R.drawable.background_product_default, gapComposerH, 0);
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
            Modifier modifierE3 = ModifierExtKt.e(ClipKt.a(AspectRatioKt.a(tr.e(gapComposerH, modifierC2, function6, "SuggestionItemComposable"), 1.0f, false), LVAppDesignKitTheme.j(gapComposerH).f48410b), "search_suggestion_image");
            String strB = new UrlFactory(ContextExtKt.f((Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b))).b(suggestionItemUiModel.f64286c, ImageConfiguration.Background.Transparent.f65853a);
            strB.getClass();
            ImageLoaderKt.b(modifierE3, strB, ContentScale.Companion.f9449b, null, null, 0, false, null, null, null, gapComposerH, KyberEngine.KyberPolyBytes, 2040);
            Modifier modifierE4 = ModifierExtKt.e(PaddingKt.k(o60.f(gapComposerH, true, "SuggestionItemComposable"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, 1), "search_suggestion_text");
            String str = suggestionItemUiModel.f64285b;
            TextOverflow.f10989a.getClass();
            TextKt.c(str, modifierE4, LVAppDesignKitTheme.c(gapComposerH).f48361b.m, 0L, null, 0L, null, null, 0L, TextOverflow.f10991c, false, 1, 0, null, LVAppDesignKitTheme.n(gapComposerH).l, gapComposerH, 0, 24960, 110584);
            gapComposer = gapComposerH;
            gapComposer.Z(true);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new og0(modifier2, suggestionItemUiModel, function1, i2, 10);
        }
    }

    public static final void e(Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(1420986278);
        if (gapComposerH.p(i2 & 1, i2 != 0)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("SuggestionSkeletonComposable");
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
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
            LVSkeletonKt.c(AspectRatioKt.a(SizeKt.f(tr.e(gapComposerH, modifierC, ComposeUiNode.Companion.d, "SuggestionSkeletonComposable"), LVAppDesignKitTheme.d(gapComposerH).F), 1.0f, false), Call.Parameters.DEFAULT_CAMERA_ZOOM, null, null, gapComposerH, 0, 14);
            LVSkeletonKt.a(SizeKt.s(PaddingKt.k(new DTFunctionNameModifier("SuggestionSkeletonComposable"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).d, 1), LVAppDesignKitTheme.d(gapComposerH).C), null, null, gapComposerH, 0);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new zt0(i2, 23);
        }
    }
}
