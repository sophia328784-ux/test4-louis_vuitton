package com.vuitton.android.presentation.screen.cart.components;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVSkeletonKt;
import com.vuitton.android.presentation.extensions.WindowInsetsExtKt;
import defpackage.ae0;
import defpackage.ff0;
import defpackage.n50;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class NativeCartLoadingScreenKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final float f55047a;

    static {
        Dp.Companion companion = Dp.f11004c;
        f55047a = 112.0f;
    }

    public static final void a(SnackbarHostState snackbarHostState, Function2 function2, Composer composer, int i2) {
        snackbarHostState.getClass();
        function2.getClass();
        GapComposer gapComposerH = composer.h(1719851980);
        if (gapComposerH.p(i2 & 1, (i2 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            WindowInsets windowInsetsA = WindowInsetsExtKt.a();
            ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(941005766, new ae0(snackbarHostState, 3), gapComposerH);
            ComposableSingletons$NativeCartLoadingScreenKt.f54995a.getClass();
            ScaffoldKt.a(null, function2, null, composableLambdaImplB, null, 0, 0L, 0L, windowInsetsA, ComposableSingletons$NativeCartLoadingScreenKt.f54996b, gapComposerH, 805309488, 245);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new ff0(snackbarHostState, function2, i2, 0);
        }
    }

    public static final void b(Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(2134344836);
        if (gapComposerH.p(i2 & 1, i2 != 0)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierI = PaddingKt.i(BackgroundKt.b(SizeKt.d(ClipKt.a(new DTFunctionNameModifier("NativeCartSkeletonCard"), LVAppDesignKitTheme.j(gapComposerH).f48410b), 1.0f), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, RectangleShapeKt.f8913a), LVAppDesignKitTheme.l(gapComposerH).f48416e);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierI);
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
            LVSkeletonKt.c(SizeKt.o(tr.e(gapComposerH, modifierC, ComposeUiNode.Companion.d, "NativeCartSkeletonCard"), f55047a), Call.Parameters.DEFAULT_CAMERA_ZOOM, null, null, gapComposerH, 6, 14);
            SpacerKt.a(gapComposerH, SizeKt.f(new DTFunctionNameModifier("NativeCartSkeletonCard"), LVAppDesignKitTheme.l(gapComposerH).g));
            gapComposerH.L(444649809);
            for (int i3 = 0; i3 < 2; i3++) {
                LVSkeletonKt.a(tr.d("NativeCartSkeletonCard", 1.0f), null, null, gapComposerH, 6);
                SpacerKt.a(gapComposerH, SizeKt.f(new DTFunctionNameModifier("NativeCartSkeletonCard"), LVAppDesignKitTheme.l(gapComposerH).f48416e));
            }
            gapComposerH.Z(false);
            gapComposerH.Z(true);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new n50(i2, 19);
        }
    }
}
