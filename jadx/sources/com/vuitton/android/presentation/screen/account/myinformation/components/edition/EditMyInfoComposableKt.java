package com.vuitton.android.presentation.screen.account.myinformation.components.edition;

import android.content.Context;
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
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.focus.FocusManager;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.LVStandardTopBarKt;
import com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModel;
import com.vuitton.android.presentation.screen.account.myinformation.models.MyInfoUiModel;
import com.vuitton.android.presentation.screen.account.myinformation.models.MyInformationViewState;
import defpackage.n00;
import defpackage.pp;
import defpackage.qd;
import defpackage.u;
import defpackage.w;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.reflect.KFunction;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInformationViewState;", "viewState", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class EditMyInfoComposableKt {
    public static final void a(MyInformationViewModel myInformationViewModel, String str, Function0 function0, Function0 function1, Function0 function2, Composer composer, int i2) {
        GapComposer gapComposer;
        Object editMyInfoComposableKt$EditMyInfoComposable$8$1;
        MutableState mutableState;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        MyInformationViewModel myInformationViewModel2 = myInformationViewModel;
        myInformationViewModel2.getClass();
        str.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        GapComposer gapComposerH = composer.h(2034361209);
        int i3 = i2 | (gapComposerH.K(myInformationViewModel2) ? 4 : 2) | (gapComposerH.K(str) ? 32 : 16) | (gapComposerH.y(function0) ? 256 : 128) | (gapComposerH.y(function1) ? 2048 : 1024) | (gapComposerH.y(function2) ? 16384 : 8192);
        if (gapComposerH.p(i3 & 1, (i3 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            MutableState mutableStateB = SnapshotStateKt.b(myInformationViewModel2.getI(), gapComposerH);
            FocusManager focusManager = (FocusManager) gapComposerH.k(CompositionLocalsKt.f10032i);
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            Unit unit = Unit.f71739a;
            int i4 = i3 & 14;
            boolean zK = ((i3 & 896) == 256) | gapComposerH.K(mutableStateB) | (i4 == 4);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
            if (zK || objX == composer$Companion$Empty$2) {
                objX = new EditMyInfoComposableKt$EditMyInfoComposable$1$1(function0, myInformationViewModel2, mutableStateB, null);
                gapComposerH.q(objX);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX);
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$2) {
                objX2 = n00.b(gapComposerH);
            }
            SnackbarHostState snackbarHostState = (SnackbarHostState) objX2;
            boolean zY = (i4 == 4) | gapComposerH.y(context);
            Object objX3 = gapComposerH.x();
            if (zY || objX3 == composer$Companion$Empty$2) {
                objX3 = new EditMyInfoComposableKt$EditMyInfoComposable$2$1(myInformationViewModel2, snackbarHostState, context, null);
                gapComposerH.q(objX3);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX3);
            boolean z = (i4 == 4) | ((i3 & 7168) == 2048);
            Object objX4 = gapComposerH.x();
            if (z || objX4 == composer$Companion$Empty$2) {
                objX4 = new EditMyInfoComposableKt$EditMyInfoComposable$3$1(myInformationViewModel2, function1, null);
                gapComposerH.q(objX4);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX4);
            if (((MyInformationViewState) mutableStateB.getF10755b()).f52666b) {
                gapComposerH.L(-627505835);
                EditMyInfoLoadingScreenKt.a((MyInformationViewState) mutableStateB.getF10755b(), ComposableLambdaKt.b(1100173673, new qd(9, str, function1), gapComposerH), snackbarHostState, gapComposerH, 432);
                gapComposerH.Z(false);
            } else if (((MyInformationViewState) mutableStateB.getF10755b()).f52668e.equals(MyInfoUiModel.f52657k)) {
                gapComposerH.L(811053031);
                ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(1273417246, new qd(10, str, function1), gapComposerH);
                boolean z2 = i4 == 4;
                Object objX5 = gapComposerH.x();
                if (z2 || objX5 == composer$Companion$Empty$2) {
                    objX5 = new EditMyInfoComposableKt$EditMyInfoComposable$6$1(0, myInformationViewModel2, MyInformationViewModel.class, "loadMyInfoEditForm", "loadMyInfoEditForm()V", 0);
                    gapComposerH.q(objX5);
                }
                EditMyInfoErrorScreenKt.a(snackbarHostState, composableLambdaImplB, (Function0) ((KFunction) objX5), gapComposerH, 54);
                gapComposerH.Z(false);
                myInformationViewModel2 = myInformationViewModel;
            } else {
                gapComposerH.L(811064713);
                MyInformationViewState myInformationViewState = (MyInformationViewState) mutableStateB.getF10755b();
                ComposableLambdaImpl composableLambdaImplB2 = ComposableLambdaKt.b(-2125146183, new u(str, function1, focusManager, 29), gapComposerH);
                boolean z3 = i4 == 4;
                Object objX6 = gapComposerH.x();
                if (z3 || objX6 == composer$Companion$Empty$2) {
                    mutableState = mutableStateB;
                    composer$Companion$Empty$1 = composer$Companion$Empty$2;
                    myInformationViewModel2 = myInformationViewModel;
                    editMyInfoComposableKt$EditMyInfoComposable$8$1 = new EditMyInfoComposableKt$EditMyInfoComposable$8$1(2, myInformationViewModel2, MyInformationViewModel.class, "onFieldUpdated", "onFieldUpdated(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/Object;)V", 0);
                    gapComposerH.q(editMyInfoComposableKt$EditMyInfoComposable$8$1);
                } else {
                    mutableState = mutableStateB;
                    editMyInfoComposableKt$EditMyInfoComposable$8$1 = objX6;
                    composer$Companion$Empty$1 = composer$Companion$Empty$2;
                    myInformationViewModel2 = myInformationViewModel;
                }
                Function2 function3 = (Function2) ((KFunction) editMyInfoComposableKt$EditMyInfoComposable$8$1);
                boolean zK2 = ((57344 & i3) == 16384) | gapComposerH.K(mutableState) | (i4 == 4);
                Object objX7 = gapComposerH.x();
                if (zK2 || objX7 == composer$Companion$Empty$1) {
                    objX7 = new pp(function2, myInformationViewModel2, mutableState, 6);
                    gapComposerH.q(objX7);
                }
                EditMyInfoScreenKt.b(myInformationViewState, snackbarHostState, composableLambdaImplB2, function3, (Function0) objX7, ((MyInformationViewState) mutableState.getF10755b()).g, gapComposerH, 432);
                gapComposer = gapComposerH;
                gapComposer.Z(false);
            }
            gapComposer = gapComposerH;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new w(myInformationViewModel2, str, function0, function1, function2, i2, 16);
        }
    }

    public static final void b(String str, Function0 function0, Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(1798121880);
        int i3 = (gapComposerH.K(str) ? 4 : 2) | i2 | (gapComposerH.y(function0) ? 32 : 16);
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            LVStandardTopBarKt.a(n00.g("EditMyInfoTopBar", "editProfile_title_text"), null, false, str, null, null, function0, null, null, null, null, gapComposerH, ((i3 << 9) & 7168) | ((i3 << 15) & 3670016), 0, 4022);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new qd(str, function0, i2, 11);
        }
    }
}
