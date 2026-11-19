package com.vuitton.android.presentation.screen.osa.form.contactinformation.components;

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
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.designkit.components.components.LVLoadingOverlayKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModel;
import com.vuitton.android.presentation.screen.osa.form.contactinformation.models.OsaContactFormViewState;
import com.vuitton.android.presentation.screen.osa.reasons.models.OsaReasonsFormViewState;
import defpackage.al;
import defpackage.fj0;
import defpackage.n00;
import defpackage.r0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.reflect.KFunction;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0004²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002²\u0006\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u00028\n@\nX\u008a\u008e\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;", "viewState", "Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/OsaContactFormBottomSheetScreen;", "currentBottomSheet", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class OsaContactFormComposableKt {
    public static final void a(OsaContactFormViewModel osaContactFormViewModel, OsaReasonsFormViewState osaReasonsFormViewState, Function0 function0, Function0 function1, Function0 function2, Function0 function3, Function0 function4, Function0 function5, Function2 function6, Function0 function7, Function0 function8, Function0 function9, Function0 function10, Function1 function11, Composer composer, int i2) {
        GapComposer gapComposer;
        final MutableState mutableState;
        final CoroutineScope coroutineScope;
        boolean z;
        final LVModalBottomSheetState lVModalBottomSheetState;
        int i3;
        OsaContactFormViewModel osaContactFormViewModel2 = osaContactFormViewModel;
        osaContactFormViewModel2.getClass();
        osaReasonsFormViewState.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        function3.getClass();
        function4.getClass();
        function5.getClass();
        function6.getClass();
        function7.getClass();
        function8.getClass();
        function9.getClass();
        function10.getClass();
        function11.getClass();
        GapComposer gapComposerH = composer.h(-112135060);
        int i4 = i2 | (gapComposerH.K(osaContactFormViewModel2) ? 4 : 2) | (gapComposerH.y(osaReasonsFormViewState) ? 32 : 16) | (gapComposerH.y(function0) ? 256 : 128) | (gapComposerH.y(function1) ? 2048 : 1024) | (gapComposerH.y(function2) ? 16384 : 8192) | (gapComposerH.y(function3) ? 131072 : 65536) | (gapComposerH.y(function4) ? 1048576 : 524288) | (gapComposerH.y(function5) ? 8388608 : 4194304) | (gapComposerH.y(function6) ? 67108864 : 33554432) | (gapComposerH.y(function7) ? PKIFailureInfo.duplicateCertReq : 268435456);
        int i5 = (gapComposerH.y(function8) ? 4 : 2) | (gapComposerH.y(function9) ? 32 : 16) | (gapComposerH.y(function10) ? 256 : 128) | (gapComposerH.y(function11) ? 2048 : 1024);
        if (gapComposerH.p(i4 & 1, ((i4 & 306783379) == 306783378 && (i5 & 1171) == 1170) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            MutableState mutableStateB = SnapshotStateKt.b(osaContactFormViewModel2.getU(), gapComposerH);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = EffectsKt.j(EmptyCoroutineContext.f71840b, gapComposerH);
                gapComposerH.q(objX);
            }
            CoroutineScope coroutineScope2 = (CoroutineScope) objX;
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = new fj0(0);
                gapComposerH.q(objX2);
            }
            LVModalBottomSheetState lVModalBottomSheetStateF = LVModalBottomSheetKt.f(48, 5, gapComposerH, (Function1) objX2);
            Object objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = SnapshotStateKt.g(null);
                gapComposerH.q(objX3);
            }
            MutableState mutableState2 = (MutableState) objX3;
            int i6 = i4 & 14;
            boolean zY = gapComposerH.y(lVModalBottomSheetStateF) | ((i4 & 29360128) == 8388608) | (i6 == 4);
            Object objX4 = gapComposerH.x();
            if (zY || objX4 == composer$Companion$Empty$1) {
                mutableState = mutableState2;
                coroutineScope = coroutineScope2;
                z = false;
                lVModalBottomSheetState = lVModalBottomSheetStateF;
                objX4 = new r0(lVModalBottomSheetState, function5, osaContactFormViewModel2, mutableState, 17);
                osaContactFormViewModel2 = osaContactFormViewModel2;
                gapComposerH.q(objX4);
            } else {
                coroutineScope = coroutineScope2;
                mutableState = mutableState2;
                lVModalBottomSheetState = lVModalBottomSheetStateF;
                z = false;
            }
            Function0 function12 = (Function0) objX4;
            boolean zY2 = gapComposerH.y(coroutineScope) | gapComposerH.y(lVModalBottomSheetState);
            Object objX5 = gapComposerH.x();
            if (zY2 || objX5 == composer$Companion$Empty$1) {
                objX5 = new Function1() { // from class: com.vuitton.android.presentation.screen.osa.form.contactinformation.components.a
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        OsaContactFormBottomSheetScreen osaContactFormBottomSheetScreen = (OsaContactFormBottomSheetScreen) obj;
                        osaContactFormBottomSheetScreen.getClass();
                        mutableState.setValue(osaContactFormBottomSheetScreen);
                        BuildersKt.c(coroutineScope, null, null, new OsaContactFormComposableKt$OsaContactFormComposable$openSheet$1$1$1(lVModalBottomSheetState, null), 3);
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(objX5);
            }
            Function1 function13 = (Function1) objX5;
            OsaContactFormBottomSheetScreen osaContactFormBottomSheetScreen = (OsaContactFormBottomSheetScreen) mutableState.getF10755b();
            boolean zY3 = gapComposerH.y(lVModalBottomSheetState);
            Object objX6 = gapComposerH.x();
            if (zY3 || objX6 == composer$Companion$Empty$1) {
                objX6 = new OsaContactFormComposableKt$OsaContactFormComposable$1$1(mutableState, lVModalBottomSheetState, null);
                gapComposerH.q(objX6);
            }
            EffectsKt.e(gapComposerH, osaContactFormBottomSheetScreen, (Function2) objX6);
            Unit unit = Unit.f71739a;
            boolean z2 = i6 != 4 ? z : true;
            Object objX7 = gapComposerH.x();
            if (z2 || objX7 == composer$Companion$Empty$1) {
                objX7 = new OsaContactFormComposableKt$OsaContactFormComposable$2$1(osaContactFormViewModel2, null);
                gapComposerH.q(objX7);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX7);
            boolean zK = (i6 != 4 ? z : true) | gapComposerH.K(function13) | gapComposerH.y(lVModalBottomSheetState);
            Object objX8 = gapComposerH.x();
            if (zK || objX8 == composer$Companion$Empty$1) {
                objX8 = new OsaContactFormComposableKt$OsaContactFormComposable$3$1(osaContactFormViewModel2, function13, lVModalBottomSheetState, null);
                gapComposerH.q(objX8);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX8);
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            Object objX9 = gapComposerH.x();
            if (objX9 == composer$Companion$Empty$1) {
                objX9 = n00.b(gapComposerH);
            }
            SnackbarHostState snackbarHostState = (SnackbarHostState) objX9;
            boolean zY4 = (i6 != 4 ? z : true) | gapComposerH.y(context);
            LVModalBottomSheetState lVModalBottomSheetState2 = lVModalBottomSheetState;
            Object objX10 = gapComposerH.x();
            if (zY4 || objX10 == composer$Companion$Empty$1) {
                objX10 = new OsaContactFormComposableKt$OsaContactFormComposable$4$1(osaContactFormViewModel2, snackbarHostState, context, null);
                gapComposerH.q(objX10);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX10);
            OsaContactFormViewState osaContactFormViewState = (OsaContactFormViewState) mutableStateB.getF10755b();
            OsaContactFormBottomSheetScreen osaContactFormBottomSheetScreen2 = (OsaContactFormBottomSheetScreen) mutableState.getF10755b();
            boolean z3 = i6 != 4 ? z : true;
            Object objX11 = gapComposerH.x();
            if (z3 || objX11 == composer$Companion$Empty$1) {
                i3 = i6;
                objX11 = new OsaContactFormComposableKt$OsaContactFormComposable$5$1(3, osaContactFormViewModel2, OsaContactFormViewModel.class, "onFieldUpdated", "onFieldUpdated(Lcom/vuitton/android/presentation/screen/osa/models/FormTypeUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/Object;)V", 0);
                gapComposerH.q(objX11);
            } else {
                i3 = i6;
            }
            Function3 function14 = (Function3) ((KFunction) objX11);
            boolean z4 = i3 == 4;
            Object objX12 = gapComposerH.x();
            if (z4 || objX12 == composer$Companion$Empty$1) {
                objX12 = new OsaContactFormComposableKt$OsaContactFormComposable$6$1(1, osaContactFormViewModel, OsaContactFormViewModel.class, "checkAccountStatus", "checkAccountStatus(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;)V", 0);
                gapComposerH.q(objX12);
            }
            Function1 function15 = (Function1) ((KFunction) objX12);
            boolean z5 = i3 == 4;
            Object objX13 = gapComposerH.x();
            if (z5 || objX13 == composer$Companion$Empty$1) {
                objX13 = new OsaContactFormComposableKt$OsaContactFormComposable$7$1(0, osaContactFormViewModel, OsaContactFormViewModel.class, "resetAccountStatus", "resetAccountStatus()V", 0);
                gapComposerH.q(objX13);
            }
            Function0 function16 = (Function0) ((KFunction) objX13);
            boolean z6 = i3 == 4;
            Object objX14 = gapComposerH.x();
            if (z6 || objX14 == composer$Companion$Empty$1) {
                objX14 = new OsaContactFormComposableKt$OsaContactFormComposable$8$1(1, osaContactFormViewModel, OsaContactFormViewModel.class, "onConfirmAppointment", "onConfirmAppointment(Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;)V", 0);
                gapComposerH.q(objX14);
            }
            Function1 function17 = (Function1) ((KFunction) objX14);
            boolean z7 = i3 == 4;
            Object objX15 = gapComposerH.x();
            if (z7 || objX15 == composer$Companion$Empty$1) {
                objX15 = new OsaContactFormComposableKt$OsaContactFormComposable$9$1(1, osaContactFormViewModel, OsaContactFormViewModel.class, "sendTrackingHit", "sendTrackingHit(Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel;)V", 0);
                gapComposerH.q(objX15);
            }
            int i7 = i4 << 9;
            int i8 = (i4 & 112) | KyberEngine.KyberPolyBytes | (LVModalBottomSheetState.f48797e << 9) | (i7 & ImageMetadata.JPEG_GPS_COORDINATES) | (3670016 & i7) | (i7 & 29360128) | (234881024 & i7) | (i7 & 1879048192);
            int i9 = i4 >> 18;
            int i10 = ((i5 >> 6) & 126) | (i9 & 896) | (i9 & 7168);
            int i11 = i5 << 12;
            OsaContactFormScreenKt.b(osaContactFormViewState, osaReasonsFormViewState, snackbarHostState, lVModalBottomSheetState2, osaContactFormBottomSheetScreen2, function0, function1, function2, function3, function4, function10, function11, function6, function7, function8, function9, function12, function14, function15, function16, function17, (Function1) ((KFunction) objX15), gapComposerH, i8, i10 | (57344 & i11) | (458752 & i11));
            gapComposer = gapComposerH;
            if (((OsaContactFormViewState) mutableStateB.getF10755b()).f60737b) {
                gapComposer.L(873013396);
                LVLoadingOverlayKt.a(false, gapComposer, 0, 1);
                gapComposer.Z(false);
            } else {
                gapComposer.L(873046070);
                gapComposer.Z(false);
            }
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new al(osaContactFormViewModel, osaReasonsFormViewState, function0, function1, function2, function3, function4, function5, function6, function7, function8, function9, function10, function11, i2);
        }
    }
}
