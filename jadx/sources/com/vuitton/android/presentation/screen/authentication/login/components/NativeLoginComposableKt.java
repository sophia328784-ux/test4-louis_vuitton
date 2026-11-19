package com.vuitton.android.presentation.screen.authentication.login.components;

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
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.SoftwareKeyboardController;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.presentation.screen.authentication.accountmanager.AccountManager;
import com.vuitton.android.presentation.screen.authentication.accountmanager.AccountManagerKt;
import com.vuitton.android.presentation.screen.authentication.login.NativeLoginViewModel;
import com.vuitton.android.presentation.screen.authentication.login.models.NativeLoginViewState;
import defpackage.k60;
import defpackage.n00;
import defpackage.pp;
import defpackage.uv;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.reflect.KFunction;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginViewState;", "viewState", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class NativeLoginComposableKt {
    public static final void a(NativeLoginViewModel nativeLoginViewModel, Function1 function1, Function0 function0, Function0 function2, Composer composer, int i2) {
        Object nativeLoginComposableKt$NativeLoginComposable$4$1;
        AccountManager accountManager;
        int i3;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        boolean z;
        NativeLoginViewModel nativeLoginViewModel2 = nativeLoginViewModel;
        nativeLoginViewModel2.getClass();
        function1.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(2113835771);
        int i4 = i2 | (gapComposerH.K(nativeLoginViewModel2) ? 4 : 2) | (gapComposerH.y(function1) ? 32 : 16) | (gapComposerH.y(function0) ? 256 : 128) | (gapComposerH.y(function2) ? 2048 : 1024);
        if (gapComposerH.p(i4 & 1, (i4 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            MutableState mutableStateB = SnapshotStateKt.b(nativeLoginViewModel2.getA(), gapComposerH);
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            SoftwareKeyboardController softwareKeyboardController = (SoftwareKeyboardController) gapComposerH.k(CompositionLocalsKt.r);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$2) {
                objX = EffectsKt.j(EmptyCoroutineContext.f71840b, gapComposerH);
                gapComposerH.q(objX);
            }
            CoroutineScope coroutineScope = (CoroutineScope) objX;
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$2) {
                objX2 = n00.b(gapComposerH);
            }
            SnackbarHostState snackbarHostState = (SnackbarHostState) objX2;
            AccountManager accountManagerA = AccountManagerKt.a(context, gapComposerH);
            Unit unit = Unit.f71739a;
            int i5 = i4 & 14;
            boolean z2 = i5 == 4;
            Object objX3 = gapComposerH.x();
            if (z2 || objX3 == composer$Companion$Empty$2) {
                objX3 = new NativeLoginComposableKt$NativeLoginComposable$2$1(nativeLoginViewModel2, null);
                gapComposerH.q(objX3);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX3);
            boolean zY = (i5 == 4) | gapComposerH.y(context);
            Object objX4 = gapComposerH.x();
            if (zY || objX4 == composer$Companion$Empty$2) {
                objX4 = new NativeLoginComposableKt$NativeLoginComposable$3$1(nativeLoginViewModel2, snackbarHostState, context, null);
                gapComposerH.q(objX4);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX4);
            boolean zY2 = ((i4 & 7168) == 2048) | (i5 == 4) | gapComposerH.y(accountManagerA) | gapComposerH.K(mutableStateB) | gapComposerH.y(coroutineScope) | gapComposerH.y(context);
            Object objX5 = gapComposerH.x();
            if (zY2 || objX5 == composer$Companion$Empty$2) {
                accountManager = accountManagerA;
                i3 = i5;
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                nativeLoginComposableKt$NativeLoginComposable$4$1 = new NativeLoginComposableKt$NativeLoginComposable$4$1(nativeLoginViewModel2, accountManager, function2, coroutineScope, mutableStateB, context, null);
                gapComposerH.q(nativeLoginComposableKt$NativeLoginComposable$4$1);
            } else {
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                nativeLoginComposableKt$NativeLoginComposable$4$1 = objX5;
                accountManager = accountManagerA;
                i3 = i5;
            }
            EffectsKt.e(gapComposerH, unit, (Function2) nativeLoginComposableKt$NativeLoginComposable$4$1);
            if (accountManager != null) {
                gapComposerH.L(472500456);
                boolean zY3 = gapComposerH.y(accountManager) | gapComposerH.y(context) | (i3 == 4);
                Object objX6 = gapComposerH.x();
                if (zY3 || objX6 == composer$Companion$Empty$1) {
                    objX6 = new NativeLoginComposableKt$NativeLoginComposable$5$1(accountManager, context, nativeLoginViewModel2, null);
                    gapComposerH.q(objX6);
                }
                EffectsKt.e(gapComposerH, unit, (Function2) objX6);
                z = false;
                gapComposerH.Z(false);
            } else {
                z = false;
                gapComposerH.L(472776263);
                gapComposerH.Z(false);
            }
            NativeLoginViewState nativeLoginViewState = (NativeLoginViewState) mutableStateB.getF10755b();
            boolean z3 = i3 != 4 ? z : true;
            Object objX7 = gapComposerH.x();
            if (z3 || objX7 == composer$Companion$Empty$1) {
                NativeLoginComposableKt$NativeLoginComposable$6$1 nativeLoginComposableKt$NativeLoginComposable$6$1 = new NativeLoginComposableKt$NativeLoginComposable$6$1(2, nativeLoginViewModel, NativeLoginViewModel.class, "onFieldUpdated", "onFieldUpdated(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/Object;)V", 0);
                nativeLoginViewModel2 = nativeLoginViewModel;
                gapComposerH.q(nativeLoginComposableKt$NativeLoginComposable$6$1);
                objX7 = nativeLoginComposableKt$NativeLoginComposable$6$1;
            }
            Function2 function3 = (Function2) ((KFunction) objX7);
            boolean zK = gapComposerH.K(r19) | gapComposerH.K(mutableStateB) | (i3 != 4 ? z : true);
            Object objX8 = gapComposerH.x();
            if (zK || objX8 == composer$Companion$Empty$1) {
                objX8 = new pp(softwareKeyboardController, nativeLoginViewModel2, mutableStateB, 28);
                gapComposerH.q(objX8);
            }
            Function0 function4 = (Function0) objX8;
            boolean z4 = i3 != 4 ? z : true;
            if ((i4 & 112) == 32) {
                z = true;
            }
            boolean z5 = z4 | z;
            Object objX9 = gapComposerH.x();
            if (z5 || objX9 == composer$Companion$Empty$1) {
                objX9 = new k60(nativeLoginViewModel2, function1, 22);
                gapComposerH.q(objX9);
            }
            NativeLoginScreenKt.a(nativeLoginViewState, snackbarHostState, function3, function4, (Function1) objX9, function0, gapComposerH, ((i4 << 9) & ImageMetadata.JPEG_GPS_COORDINATES) | 48);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new uv(nativeLoginViewModel2, function1, function0, function2, i2);
        }
    }
}
