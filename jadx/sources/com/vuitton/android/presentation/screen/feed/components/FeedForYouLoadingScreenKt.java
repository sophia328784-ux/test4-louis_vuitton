package com.vuitton.android.presentation.screen.feed.components;

import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.components.components.LVFreeCarouselWithHintKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVSkeletonKt;
import com.vuitton.android.presentation.screen.feed.components.subcomponents.FeedWelcomeKt;
import defpackage.g2;
import defpackage.tr;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class FeedForYouLoadingScreenKt {
    public static final void a(String str, String str2, Composer composer, int i2) {
        int i3;
        int i4;
        String str3 = str2;
        str3.getClass();
        GapComposer gapComposerH = composer.h(-657096641);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(str) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(str3) ? 32 : 16;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierD = ScrollKt.d(new DTFunctionNameModifier("FeedForYouLoadingScreen").o(SizeKt.f5052c), ScrollKt.b(gapComposerH), false, 14);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
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
            Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            SpacerKt.a(gapComposerH, SizeKt.o(tr.e(gapComposerH, modifierC, ComposeUiNode.Companion.d, "FeedForYouLoadingScreen"), LVAppDesignKitTheme.l(gapComposerH).f48417f));
            FeedWelcomeKt.a(PaddingKt.m(PaddingKt.k(new DTFunctionNameModifier("FeedForYouLoadingScreen"), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48418h, 7), str, str3, null, gapComposerH, (i3 << 3) & 1008, 8);
            Modifier modifierM = PaddingKt.m(new DTFunctionNameModifier("FeedForYouLoadingScreen"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
            LazyListState lazyListState = new LazyListState(0, 0, 3, null);
            List listP = CollectionsKt.P("first", "second", "third");
            float f2 = LVAppDesignKitTheme.l(gapComposerH).f48416e;
            float f3 = LVAppDesignKitTheme.l(gapComposerH).f48415c;
            ComposableSingletons$FeedForYouLoadingScreenKt.f57762a.getClass();
            LVFreeCarouselWithHintKt.a(modifierM, lazyListState, listP, 1, 0.33f, f2, f3, ComposableSingletons$FeedForYouLoadingScreenKt.f57763b, gapComposerH, 12610944, 0);
            SpacerKt.a(gapComposerH, SizeKt.o(new DTFunctionNameModifier("FeedForYouLoadingScreen"), LVAppDesignKitTheme.l(gapComposerH).f48418h));
            Modifier modifierM2 = PaddingKt.m(new DTFunctionNameModifier("FeedForYouLoadingScreen"), LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14);
            Dp.Companion companion = Dp.f11004c;
            LVSkeletonKt.e(SizeKt.s(modifierM2, 209.0f), null, null, gapComposerH, 0, 6);
            i4 = 14;
            str3 = str2;
            LVFreeCarouselWithHintKt.a(PaddingKt.m(new DTFunctionNameModifier("FeedForYouLoadingScreen"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), new LazyListState(0, 0, 3, null), CollectionsKt.P("first", "second", "third"), 2, 0.33f, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.d(gapComposerH).f48388h, ComposableSingletons$FeedForYouLoadingScreenKt.f57764c, gapComposerH, 12610944, 0);
            gapComposerH = gapComposerH;
            gapComposerH.Z(true);
        } else {
            i4 = 14;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new g2(str3, i2, i4, str);
        }
    }
}
