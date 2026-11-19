package com.vuitton.android.presentation.screen.authentication.register.components;

import android.content.Context;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.foundation.pager.PagerStateKt;
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
import androidx.navigation.NavHostController;
import androidx.navigation.Navigator;
import androidx.navigation.compose.NavHostControllerKt;
import androidx.navigation.compose.NavHostKt;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.screen.account.addressautocomplete.AddressAutocompleteViewModel;
import com.vuitton.android.presentation.screen.authentication.accountmanager.AccountManager;
import com.vuitton.android.presentation.screen.authentication.accountmanager.AccountManagerKt;
import com.vuitton.android.presentation.screen.authentication.register.NativeRegisterViewModel;
import com.vuitton.android.presentation.screen.authentication.register.models.NativeRegisterViewState;
import defpackage.e90;
import defpackage.m8;
import defpackage.n00;
import defpackage.n8;
import defpackage.o;
import defpackage.s9;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0004²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002²\u0006\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u00028\n@\nX\u008a\u008e\u0002²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;", "viewState", "Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterBottomSheetScreen;", "currentBottomSheet", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class NativeRegisterComposableKt {
    public static final void a(NativeRegisterViewModel nativeRegisterViewModel, AddressAutocompleteViewModel addressAutocompleteViewModel, Function0 function0, Function1 function1, Function0 function2, Function0 function3, Function0 function4, Composer composer, int i2) {
        GapComposer gapComposer;
        Context context;
        MutableState mutableState;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        Object nativeRegisterComposableKt$NativeRegisterComposable$5$1;
        NativeRegisterViewModel nativeRegisterViewModel2;
        SnackbarHostState snackbarHostState;
        AddressAutocompleteViewModel addressAutocompleteViewModel2;
        nativeRegisterViewModel.getClass();
        addressAutocompleteViewModel.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        GapComposer gapComposerC = defpackage.a.c(function3, function4, composer, 1966235207);
        int i3 = i2 | (gapComposerC.K(nativeRegisterViewModel) ? 4 : 2) | (gapComposerC.K(addressAutocompleteViewModel) ? 32 : 16) | (gapComposerC.y(function0) ? 256 : 128) | (gapComposerC.y(function1) ? 2048 : 1024) | (gapComposerC.y(function2) ? 16384 : 8192) | (gapComposerC.y(function3) ? 131072 : 65536) | (gapComposerC.y(function4) ? 1048576 : 524288);
        if (gapComposerC.p(i3 & 1, (599187 & i3) != 599186)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            MutableState mutableStateB = SnapshotStateKt.b(nativeRegisterViewModel.getX(), gapComposerC);
            Context context2 = (Context) gapComposerC.k(AndroidCompositionLocals_androidKt.f9936b);
            Object objX = gapComposerC.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$2) {
                objX = EffectsKt.j(EmptyCoroutineContext.f71840b, gapComposerC);
                gapComposerC.q(objX);
            }
            CoroutineScope coroutineScope = (CoroutineScope) objX;
            NavHostController navHostControllerA = NavHostControllerKt.a(new Navigator[0], gapComposerC);
            int i4 = ((NativeRegisterViewState) mutableStateB.getF10755b()).a() ? 5 : 4;
            boolean zD = gapComposerC.d(i4);
            Object objX2 = gapComposerC.x();
            if (zD || objX2 == composer$Companion$Empty$2) {
                objX2 = new e90(i4, 2);
                gapComposerC.q(objX2);
            }
            PagerState pagerStateB = PagerStateKt.b(0, (Function0) objX2, gapComposerC, 0, 3);
            Object objX3 = gapComposerC.x();
            if (objX3 == composer$Companion$Empty$2) {
                objX3 = n00.b(gapComposerC);
            }
            SnackbarHostState snackbarHostState2 = (SnackbarHostState) objX3;
            LVModalBottomSheetState lVModalBottomSheetStateF = LVModalBottomSheetKt.f(0, 7, gapComposerC, null);
            Object objX4 = gapComposerC.x();
            if (objX4 == composer$Companion$Empty$2) {
                objX4 = SnapshotStateKt.g(null);
                gapComposerC.q(objX4);
            }
            MutableState mutableState2 = (MutableState) objX4;
            AccountManager accountManagerA = AccountManagerKt.a(context2, gapComposerC);
            Unit unit = Unit.f71739a;
            int i5 = i3 & 14;
            boolean zY = (i5 == 4) | gapComposerC.y(context2);
            Object objX5 = gapComposerC.x();
            if (zY || objX5 == composer$Companion$Empty$2) {
                objX5 = new NativeRegisterComposableKt$NativeRegisterComposable$1$1(nativeRegisterViewModel, snackbarHostState2, context2, null);
                gapComposerC.q(objX5);
            }
            EffectsKt.e(gapComposerC, unit, (Function2) objX5);
            boolean zK = (i5 == 4) | gapComposerC.K(mutableStateB) | gapComposerC.K(pagerStateB);
            Object objX6 = gapComposerC.x();
            if (zK || objX6 == composer$Companion$Empty$2) {
                objX6 = new NativeRegisterComposableKt$NativeRegisterComposable$2$1(nativeRegisterViewModel, mutableStateB, pagerStateB, null);
                gapComposerC.q(objX6);
            }
            EffectsKt.e(gapComposerC, unit, (Function2) objX6);
            boolean zY2 = (i5 == 4) | gapComposerC.y(lVModalBottomSheetStateF);
            Object objX7 = gapComposerC.x();
            if (zY2 || objX7 == composer$Companion$Empty$2) {
                objX7 = new NativeRegisterComposableKt$NativeRegisterComposable$3$1(nativeRegisterViewModel, lVModalBottomSheetStateF, mutableState2, null);
                gapComposerC.q(objX7);
            }
            EffectsKt.e(gapComposerC, unit, (Function2) objX7);
            boolean zY3 = ((i3 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072) | (i5 == 4) | gapComposerC.y(accountManagerA) | gapComposerC.y(coroutineScope) | gapComposerC.y(context2) | gapComposerC.K(mutableStateB);
            Object objX8 = gapComposerC.x();
            if (zY3 || objX8 == composer$Companion$Empty$2) {
                context = context2;
                mutableState = mutableStateB;
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                NativeRegisterComposableKt$NativeRegisterComposable$4$1 nativeRegisterComposableKt$NativeRegisterComposable$4$1 = new NativeRegisterComposableKt$NativeRegisterComposable$4$1(nativeRegisterViewModel, accountManagerA, coroutineScope, function3, context, mutableState, null);
                gapComposerC.q(nativeRegisterComposableKt$NativeRegisterComposable$4$1);
                objX8 = nativeRegisterComposableKt$NativeRegisterComposable$4$1;
            } else {
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                context = context2;
                mutableState = mutableStateB;
            }
            EffectsKt.e(gapComposerC, unit, (Function2) objX8);
            int i6 = i3 & 3670016;
            boolean zY4 = (i5 == 4) | gapComposerC.y(context) | (i6 == 1048576);
            Object objX9 = gapComposerC.x();
            if (zY4 || objX9 == composer$Companion$Empty$1) {
                nativeRegisterViewModel2 = nativeRegisterViewModel;
                snackbarHostState = snackbarHostState2;
                nativeRegisterComposableKt$NativeRegisterComposable$5$1 = new NativeRegisterComposableKt$NativeRegisterComposable$5$1(nativeRegisterViewModel2, snackbarHostState, context, function4, null);
                gapComposerC.q(nativeRegisterComposableKt$NativeRegisterComposable$5$1);
            } else {
                snackbarHostState = snackbarHostState2;
                nativeRegisterComposableKt$NativeRegisterComposable$5$1 = objX9;
                nativeRegisterViewModel2 = nativeRegisterViewModel;
            }
            EffectsKt.e(gapComposerC, unit, (Function2) nativeRegisterComposableKt$NativeRegisterComposable$5$1);
            int i7 = i3 & 112;
            boolean zY5 = (i7 == 32) | (i5 == 4) | gapComposerC.y(navHostControllerA);
            Object objX10 = gapComposerC.x();
            if (zY5 || objX10 == composer$Companion$Empty$1) {
                addressAutocompleteViewModel2 = addressAutocompleteViewModel;
                objX10 = new NativeRegisterComposableKt$NativeRegisterComposable$6$1(navHostControllerA, addressAutocompleteViewModel2, nativeRegisterViewModel2, null);
                gapComposerC.q(objX10);
            } else {
                addressAutocompleteViewModel2 = addressAutocompleteViewModel;
            }
            EffectsKt.e(gapComposerC, unit, (Function2) objX10);
            boolean zY6 = gapComposerC.y(lVModalBottomSheetStateF);
            Object objX11 = gapComposerC.x();
            if (zY6 || objX11 == composer$Companion$Empty$1) {
                objX11 = new n8(lVModalBottomSheetStateF, mutableState2, 4);
                gapComposerC.q(objX11);
            }
            Function1 function5 = (Function1) objX11;
            boolean zY7 = gapComposerC.y(lVModalBottomSheetStateF);
            Object objX12 = gapComposerC.x();
            if (zY7 || objX12 == composer$Companion$Empty$1) {
                objX12 = new m8(lVModalBottomSheetStateF, mutableState2, 5);
                gapComposerC.q(objX12);
            }
            Function0 function6 = (Function0) objX12;
            NativeRegisterRoutes.Register register = NativeRegisterRoutes.Register.INSTANCE;
            boolean zK2 = (i5 == 4) | gapComposerC.K(mutableState) | gapComposerC.K(function5) | gapComposerC.K(function6) | gapComposerC.K(r20) | gapComposerC.y(lVModalBottomSheetStateF) | gapComposerC.y(navHostControllerA) | ((i3 & 896) == 256) | ((i3 & 7168) == 2048) | ((i3 & 57344) == 16384) | (i6 == 1048576) | (i7 == 32);
            Object objX13 = gapComposerC.x();
            if (zK2 || objX13 == composer$Companion$Empty$1) {
                s9 s9Var = new s9(nativeRegisterViewModel, snackbarHostState, function5, function6, pagerStateB, lVModalBottomSheetStateF, mutableState, navHostControllerA, function0, function1, function2, function4, mutableState2, addressAutocompleteViewModel2);
                gapComposerC.q(s9Var);
                objX13 = s9Var;
            }
            gapComposer = gapComposerC;
            NavHostKt.b(navHostControllerA, register, null, null, null, null, null, null, null, (Function1) objX13, gapComposer, 48, 2044);
        } else {
            gapComposer = gapComposerC;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new o(nativeRegisterViewModel, addressAutocompleteViewModel, function0, function1, function2, function3, function4, i2);
        }
    }
}
