package com.vuitton.android.presentation.screen.feed.components;

import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.BlendModeColorFilter;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.components.LVFreeCarouselWithHintKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVSkeletonKt;
import defpackage.cj;
import defpackage.o60;
import defpackage.rq;
import defpackage.tr;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class FeedDiscoverLoadingScreenKt {
    public static final void a(Composer composer, int i2) {
        GapComposer gapComposer;
        GapComposer gapComposerH = composer.h(1730744679);
        Applier applier = gapComposerH.f7976a;
        if (gapComposerH.p(i2 & 1, i2 != 0)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierD = ScrollKt.d(new DTFunctionNameModifier("FeedDiscoverLoadingScreen"), ScrollKt.b(gapComposerH), false, 14);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            BiasAlignment.Horizontal horizontal = Alignment.Companion.n;
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
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
            Function1 function1 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function1);
            Function2 function5 = ComposeUiNode.Companion.d;
            SpacerKt.a(gapComposerH, SizeKt.o(tr.e(gapComposerH, modifierC, function5, "FeedDiscoverLoadingScreen"), LVAppDesignKitTheme.l(gapComposerH).f48418h));
            Modifier modifierK = PaddingKt.k(SizeKt.d(new DTFunctionNameModifier("FeedDiscoverLoadingScreen"), 1.0f), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
            Painter painterA = PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).l, gapComposerH, 0);
            BlendModeColorFilter blendModeColorFilterA = ColorFilter.Companion.a(ColorFilter.f8873b, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k);
            String strC = StringResources_androidKt.c(gapComposerH, R.string.louis_vuitton);
            ContentScale.f9447a.getClass();
            ImageKt.a(painterA, strC, modifierK, null, ContentScale.Companion.f9451e, Call.Parameters.DEFAULT_CAMERA_ZOOM, blendModeColorFilterA, gapComposerH, 24584, 40);
            SpacerKt.a(gapComposerH, SizeKt.o(new DTFunctionNameModifier("FeedDiscoverLoadingScreen"), LVAppDesignKitTheme.l(gapComposerH).g));
            Modifier modifierK2 = PaddingKt.k(new DTFunctionNameModifier("FeedDiscoverLoadingScreen"), LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
            ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierK2);
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
            Updater.c(gapComposerH, columnMeasurePolicyA2, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
            cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function1);
            Updater.c(gapComposerH, modifierC2, function5);
            LVSkeletonKt.c(null, 0.6666667f, null, null, gapComposerH, 48, 13);
            Modifier modifierM = PaddingKt.m(new DTFunctionNameModifier("FeedDiscoverLoadingScreen"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
            Dp.Companion companion = Dp.f11004c;
            LVSkeletonKt.e(SizeKt.s(modifierM, 83.0f), null, null, gapComposerH, 0, 6);
            LVSkeletonKt.a(SizeKt.d(PaddingKt.m(new DTFunctionNameModifier("FeedDiscoverLoadingScreen"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48414b, LVAppDesignKitTheme.l(gapComposerH).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, 9), 1.0f), null, null, gapComposerH, 0);
            Modifier modifierM2 = PaddingKt.m(o60.f(gapComposerH, true, "FeedDiscoverLoadingScreen"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
            LazyListState lazyListState = new LazyListState(0, 0, 3, null);
            List listP = CollectionsKt.P("first", "second", "third");
            float f2 = LVAppDesignKitTheme.l(gapComposerH).f48416e;
            float f3 = LVAppDesignKitTheme.d(gapComposerH).d;
            ComposableSingletons$FeedDiscoverLoadingScreenKt.f57751a.getClass();
            LVFreeCarouselWithHintKt.a(modifierM2, lazyListState, listP, 1, 0.33f, f2, f3, ComposableSingletons$FeedDiscoverLoadingScreenKt.f57752b, gapComposerH, 12610944, 0);
            gapComposer = gapComposerH;
            gapComposer.Z(true);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new rq(i2, 19);
        }
    }
}
