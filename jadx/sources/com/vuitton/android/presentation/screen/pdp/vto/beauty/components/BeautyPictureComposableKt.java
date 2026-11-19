package com.vuitton.android.presentation.screen.pdp.vto.beauty.components;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Center$1;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVIconButtonKt;
import com.vuitton.android.presentation.extensions.WindowInsetsExtKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.BeautyVtoViewState;
import defpackage.d3;
import defpackage.o0;
import defpackage.tr;
import defpackage.x2;
import defpackage.z;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;", "viewState", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class BeautyPictureComposableKt {
    public static final void a(Function0 function0, Function0 function1, Composer composer, int i2) {
        Function0 function2;
        Function0 function3;
        GapComposer gapComposerH = composer.h(-102647695);
        int i3 = i2 | (gapComposerH.y(function0) ? 4 : 2) | (gapComposerH.y(function1) ? 32 : 16);
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierK = PaddingKt.k(WindowInsetsPadding_androidKt.b(BackgroundKt.b(ClipKt.a(tr.d("BeautyPictureBottomBar", 1.0f), RoundedCornerShapeKt.c(LVAppDesignKitTheme.d(gapComposerH).m, LVAppDesignKitTheme.d(gapComposerH).m, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 12)), LVAppDesignKitTheme.c(gapComposerH).f48361b.u, RectangleShapeKt.f8913a)), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).g, 1);
            Arrangement$Center$1 arrangement$Center$1 = Arrangement.f4921e;
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(arrangement$Center$1, Alignment.Companion.l, gapComposerH, 54);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierK);
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
            Updater.c(gapComposerH, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            LVIconButtonKt.b(SizeKt.o(tr.e(gapComposerH, modifierC, ComposeUiNode.Companion.d, "BeautyPictureBottomBar"), LVAppDesignKitTheme.d(gapComposerH).v), LVAppDesignKitTheme.f(gapComposerH).d, LVAppDesignKitTheme.g(gapComposerH).n0, null, StringResources_androidKt.c(gapComposerH, R.string.alt_photo_again), false, 0, false, false, function0, gapComposerH, 0, i3 & 14, 1000);
            function2 = function0;
            function3 = function1;
            LVIconButtonKt.b(SizeKt.o(PaddingKt.m(new DTFunctionNameModifier("BeautyPictureBottomBar"), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), LVAppDesignKitTheme.d(gapComposerH).v), LVAppDesignKitTheme.f(gapComposerH).d, LVAppDesignKitTheme.g(gapComposerH).u, null, StringResources_androidKt.c(gapComposerH, R.string.alt_share_product), false, 0, false, false, function3, gapComposerH, 0, (i3 >> 3) & 14, 1000);
            gapComposerH.Z(true);
        } else {
            function2 = function0;
            function3 = function1;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new x2(function2, function3, i2, 5);
        }
    }

    public static final void b(BeautyVtoViewModel beautyVtoViewModel, Function0 function0, Function0 function1, Function0 function2, Composer composer, int i2) {
        beautyVtoViewModel.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        GapComposer gapComposerH = composer.h(-616866105);
        int i3 = i2 | (gapComposerH.K(beautyVtoViewModel) ? 4 : 2) | (gapComposerH.y(function0) ? 32 : 16) | (gapComposerH.y(function1) ? 256 : 128) | (gapComposerH.y(function2) ? 2048 : 1024);
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            c((BeautyVtoViewState) SnapshotStateKt.b(beautyVtoViewModel.getK0(), gapComposerH).getF10755b(), function0, function1, function2, gapComposerH, i3 & 8176);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new z((Object) beautyVtoViewModel, (Object) function0, (Object) function1, (Object) function2, i2, 12);
        }
    }

    public static final void c(BeautyVtoViewState beautyVtoViewState, Function0 function0, Function0 function1, Function0 function2, Composer composer, int i2) {
        GapComposer gapComposer;
        beautyVtoViewState.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        GapComposer gapComposerH = composer.h(229144382);
        int i3 = i2 | (gapComposerH.y(beautyVtoViewState) ? 4 : 2) | (gapComposerH.y(function0) ? 32 : 16) | (gapComposerH.y(function1) ? 256 : 128) | (gapComposerH.y(function2) ? 2048 : 1024);
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(-1969712382, new o0(function1, 14), gapComposerH);
            ComposableLambdaImpl composableLambdaImplB2 = ComposableLambdaKt.b(-962789693, new x2(function0, function2, 4), gapComposerH);
            Color.f8866b.getClass();
            gapComposer = gapComposerH;
            ScaffoldKt.a(null, composableLambdaImplB, composableLambdaImplB2, null, null, 0, Color.f8870h, 0L, WindowInsetsExtKt.a(), ComposableLambdaKt.b(-876574451, new d3(beautyVtoViewState, 6), gapComposerH), gapComposer, 806879664, ModuleDescriptor.MODULE_VERSION);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new z((Object) beautyVtoViewState, (Object) function0, (Object) function1, (Object) function2, i2, 13);
        }
    }
}
