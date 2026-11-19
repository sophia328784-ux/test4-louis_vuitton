package com.vuitton.android.presentation.screen.account.myinformation.components;

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
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModel;
import defpackage.a;
import defpackage.f9;
import defpackage.fs0;
import defpackage.ju;
import defpackage.kn0;
import defpackage.n00;
import defpackage.n8;
import defpackage.o;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0004²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002²\u0006\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u00028\n@\nX\u008a\u008e\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInformationViewState;", "viewState", "Lcom/vuitton/android/presentation/screen/account/myinformation/components/MyInformationBottomSheetScreen;", "currentBottomSheet", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class SeeMyInfoComposableKt {
    public static final void a(MyInformationViewModel myInformationViewModel, Function0 function0, Function0 function1, Function0 function2, Function0 function3, Function0 function4, Function0 function5, Composer composer, int i2) {
        GapComposer gapComposer;
        Function1 function6;
        myInformationViewModel.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        function3.getClass();
        GapComposer gapComposerC = a.c(function4, function5, composer, -490950994);
        int i3 = i2 | (gapComposerC.K(myInformationViewModel) ? 4 : 2) | (gapComposerC.y(function0) ? 32 : 16) | (gapComposerC.y(function1) ? 256 : 128) | (gapComposerC.y(function2) ? 2048 : 1024) | (gapComposerC.y(function3) ? 16384 : 8192) | (gapComposerC.y(function4) ? 131072 : 65536) | (gapComposerC.y(function5) ? 1048576 : 524288);
        if (gapComposerC.p(i3 & 1, (599187 & i3) != 599186)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            MutableState mutableStateB = SnapshotStateKt.b(myInformationViewModel.getI(), gapComposerC);
            Context context = (Context) gapComposerC.k(AndroidCompositionLocals_androidKt.f9936b);
            Unit unit = Unit.f71739a;
            int i4 = i3 & 14;
            boolean z = i4 == 4;
            Object objX = gapComposerC.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (z || objX == composer$Companion$Empty$1) {
                objX = new SeeMyInfoComposableKt$SeeMyInfoComposable$1$1(myInformationViewModel, null);
                gapComposerC.q(objX);
            }
            EffectsKt.e(gapComposerC, unit, (Function2) objX);
            Object objX2 = gapComposerC.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = n00.b(gapComposerC);
            }
            SnackbarHostState snackbarHostState = (SnackbarHostState) objX2;
            boolean zY = (i4 == 4) | gapComposerC.y(context);
            Object objX3 = gapComposerC.x();
            if (zY || objX3 == composer$Companion$Empty$1) {
                function6 = null;
                objX3 = new SeeMyInfoComposableKt$SeeMyInfoComposable$2$1(myInformationViewModel, snackbarHostState, context, null);
                gapComposerC.q(objX3);
            } else {
                function6 = null;
            }
            EffectsKt.e(gapComposerC, unit, (Function2) objX3);
            LVModalBottomSheetState lVModalBottomSheetStateF = LVModalBottomSheetKt.f(0, 7, gapComposerC, function6);
            Function1 function7 = function6;
            Object objX4 = gapComposerC.x();
            if (objX4 == composer$Companion$Empty$1) {
                objX4 = SnapshotStateKt.g(function7);
                gapComposerC.q(objX4);
            }
            MutableState mutableState = (MutableState) objX4;
            boolean zY2 = gapComposerC.y(lVModalBottomSheetStateF);
            Object objX5 = gapComposerC.x();
            if (zY2 || objX5 == composer$Companion$Empty$1) {
                objX5 = new n8(lVModalBottomSheetStateF, mutableState, 8);
                gapComposerC.q(objX5);
            }
            Function1 function8 = (Function1) objX5;
            boolean zY3 = gapComposerC.y(lVModalBottomSheetStateF) | ((i3 & 896) == 256);
            Object objX6 = gapComposerC.x();
            if (zY3 || objX6 == composer$Companion$Empty$1) {
                objX6 = new ju(lVModalBottomSheetStateF, function1, mutableState, 2);
                gapComposerC.q(objX6);
            }
            Function0 function9 = (Function0) objX6;
            boolean zK = (i4 == 4) | gapComposerC.K(function8);
            Object objX7 = gapComposerC.x();
            if (zK || objX7 == composer$Companion$Empty$1) {
                objX7 = new SeeMyInfoComposableKt$SeeMyInfoComposable$3$1(myInformationViewModel, function8, null);
                gapComposerC.q(objX7);
            }
            EffectsKt.e(gapComposerC, unit, (Function2) objX7);
            gapComposer = gapComposerC;
            ScaffoldKt.a(null, ComposableLambdaKt.b(-175022742, new kn0(function0, 18), gapComposerC), null, ComposableLambdaKt.b(805728040, new fs0(snackbarHostState, 3), gapComposerC), null, 0, 0L, 0L, null, ComposableLambdaKt.b(-1042816449, new f9(function2, function3, function4, function5, function8, lVModalBottomSheetStateF, function9, mutableStateB, mutableState, myInformationViewModel), gapComposerC), gapComposer, 805309488, 501);
        } else {
            gapComposer = gapComposerC;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new o(myInformationViewModel, function0, function1, function2, function3, function4, function5, i2, 18);
        }
    }
}
