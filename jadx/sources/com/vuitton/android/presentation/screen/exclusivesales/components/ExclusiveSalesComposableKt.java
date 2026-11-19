package com.vuitton.android.presentation.screen.exclusivesales.components;

import android.content.Context;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import com.vuitton.android.presentation.extensions.WindowInsetsExtKt;
import com.vuitton.android.presentation.screen.exclusivesales.ExclusiveSalesViewModel;
import com.vuitton.android.presentation.screen.exclusivesales.models.ExclusiveSalesViewState;
import defpackage.f1;
import defpackage.g0;
import defpackage.i1;
import defpackage.kw;
import defpackage.n00;
import defpackage.rv;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/exclusivesales/models/ExclusiveSalesViewState;", "viewState", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ExclusiveSalesComposableKt {
    public static final void a(ExclusiveSalesViewModel exclusiveSalesViewModel, Function0 function0, Function1 function1, Composer composer, int i2) {
        exclusiveSalesViewModel.getClass();
        function0.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(-1192187114);
        int i3 = i2 | (gapComposerH.K(exclusiveSalesViewModel) ? 4 : 2) | (gapComposerH.y(function0) ? 32 : 16) | (gapComposerH.y(function1) ? 256 : 128);
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            MutableState mutableStateB = SnapshotStateKt.b(exclusiveSalesViewModel.getF57537i(), gapComposerH);
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = n00.b(gapComposerH);
            }
            SnackbarHostState snackbarHostState = (SnackbarHostState) objX;
            Unit unit = Unit.f71739a;
            boolean zY = gapComposerH.y(context) | ((i3 & 14) == 4);
            Object objX2 = gapComposerH.x();
            if (zY || objX2 == composer$Companion$Empty$1) {
                objX2 = new ExclusiveSalesComposableKt$ExclusiveSalesComposable$1$1(exclusiveSalesViewModel, snackbarHostState, context, null);
                gapComposerH.q(objX2);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX2);
            int i4 = i3 << 3;
            b((ExclusiveSalesViewState) mutableStateB.getF10755b(), snackbarHostState, function0, function1, gapComposerH, (i4 & 896) | 48 | (i4 & 7168));
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new rv(i2, 3, exclusiveSalesViewModel, function0, function1);
        }
    }

    public static final void b(ExclusiveSalesViewState exclusiveSalesViewState, SnackbarHostState snackbarHostState, Function0 function0, Function1 function1, Composer composer, int i2) {
        int i3;
        GapComposer gapComposer;
        exclusiveSalesViewState.getClass();
        snackbarHostState.getClass();
        function0.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(209402581);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.y(exclusiveSalesViewState) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(snackbarHostState) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(function0) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(function1) ? 2048 : 1024;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            gapComposer = gapComposerH;
            ScaffoldKt.a(null, ComposableLambdaKt.b(664772241, new kw(function0, 0), gapComposerH), null, ComposableLambdaKt.b(-1409248561, new g0(snackbarHostState, 26), gapComposerH), null, 0, 0L, 0L, WindowInsetsExtKt.a(), ComposableLambdaKt.b(1880191270, new f1(exclusiveSalesViewState, function1, 22), gapComposerH), gapComposer, 805309488, 245);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new i1((Object) exclusiveSalesViewState, (Object) snackbarHostState, function0, (Function) function1, i2, 16);
        }
    }
}
