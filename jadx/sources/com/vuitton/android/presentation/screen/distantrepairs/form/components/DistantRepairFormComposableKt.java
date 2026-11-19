package com.vuitton.android.presentation.screen.distantrepairs.form.components;

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
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.navigation.NavHostController;
import androidx.navigation.Navigator;
import androidx.navigation.compose.NavHostControllerKt;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.components.LVLoadingOverlayKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.contact.compose.ContactUsBottomSheetKt;
import com.vuitton.android.presentation.contact.models.ContactUsUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormViewModel;
import com.vuitton.android.presentation.screen.distantrepairs.form.datepicker.DatePickerViewModel;
import com.vuitton.android.presentation.screen.distantrepairs.models.DistantRepairCalendarViewState;
import com.vuitton.android.presentation.screen.distantrepairs.models.DistantRepairFormViewState;
import defpackage.dt;
import defpackage.j6;
import defpackage.ju;
import defpackage.k0;
import defpackage.ku;
import defpackage.n00;
import defpackage.n8;
import defpackage.q8;
import defpackage.rq;
import defpackage.su;
import defpackage.u8;
import defpackage.vg;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.reflect.KFunction;
import kotlinx.coroutines.CoroutineScope;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\b²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002²\u0006\f\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002²\u0006\f\u0010\u0005\u001a\u00020\u00048\nX\u008a\u0084\u0002²\u0006\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u00068\n@\nX\u008a\u008e\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;", "viewState", "Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairCalendarViewState;", "datePickerViewState", "Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;", "contactUsUiModel", "Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormBottomSheetScreen;", "currentBottomSheet", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class DistantRepairFormComposableKt {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v7 */
    /* JADX WARN: Type inference failed for: r10v8 */
    /* JADX WARN: Type inference failed for: r10v9 */
    /* JADX WARN: Type inference failed for: r14v11 */
    /* JADX WARN: Type inference failed for: r14v12 */
    /* JADX WARN: Type inference failed for: r14v8, types: [int] */
    public static final void a(DistantRepairFormViewModel distantRepairFormViewModel, DatePickerViewModel datePickerViewModel, Function0 function0, Function0 function1, Function0 function2, Function1 function3, Function1 function4, Function1 function5, Composer composer, int i2) {
        GapComposer gapComposer;
        Object obj;
        Object obj2;
        Object obj3;
        Object obj4;
        int i3;
        Function1 function6;
        int i4;
        boolean z;
        Object obj5;
        DistantRepairFormViewModel distantRepairFormViewModel2;
        Object obj6;
        char c2;
        Object obj7;
        boolean z2;
        Object obj8;
        boolean z3;
        Object obj9;
        DistantRepairFormViewModel distantRepairFormViewModel3;
        ?? r14;
        Object obj10;
        distantRepairFormViewModel.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        function3.getClass();
        function4.getClass();
        function5.getClass();
        GapComposer gapComposerH = composer.h(323527811);
        int i5 = i2 | (gapComposerH.K(distantRepairFormViewModel) ? 4 : 2) | (gapComposerH.K(datePickerViewModel) ? 32 : 16) | (gapComposerH.y(function0) ? 256 : 128) | (gapComposerH.y(function1) ? 2048 : 1024) | (gapComposerH.y(function2) ? 16384 : 8192) | (gapComposerH.y(function3) ? 131072 : 65536) | (gapComposerH.y(function4) ? 1048576 : 524288) | (gapComposerH.y(function5) ? 8388608 : 4194304);
        if (gapComposerH.p(i5 & 1, (4793491 & i5) != 4793490)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Unit unit = Unit.f71739a;
            int i6 = i5 & 14;
            boolean z4 = i6 == 4;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            Object obj11 = objX;
            if (z4 || objX == composer$Companion$Empty$1) {
                DistantRepairFormComposableKt$DistantRepairFormComposable$1$1 distantRepairFormComposableKt$DistantRepairFormComposable$1$1 = new DistantRepairFormComposableKt$DistantRepairFormComposable$1$1(distantRepairFormViewModel, null);
                gapComposerH.q(distantRepairFormComposableKt$DistantRepairFormComposable$1$1);
                obj11 = distantRepairFormComposableKt$DistantRepairFormComposable$1$1;
            }
            EffectsKt.e(gapComposerH, unit, (Function2) obj11);
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            Object objX2 = gapComposerH.x();
            Object obj12 = objX2;
            if (objX2 == composer$Companion$Empty$1) {
                CoroutineScope coroutineScopeJ = EffectsKt.j(EmptyCoroutineContext.f71840b, gapComposerH);
                gapComposerH.q(coroutineScopeJ);
                obj12 = coroutineScopeJ;
            }
            CoroutineScope coroutineScope = (CoroutineScope) obj12;
            NavHostController navHostControllerA = NavHostControllerKt.a(new Navigator[0], gapComposerH);
            MutableState mutableStateB = SnapshotStateKt.b(distantRepairFormViewModel.getC(), gapComposerH);
            MutableState mutableStateB2 = SnapshotStateKt.b(datePickerViewModel.getP(), gapComposerH);
            MutableState mutableStateA = SnapshotStateKt.a(distantRepairFormViewModel.i(), new ContactUsUiModel(false, null, null, null, null, null, null, null, false, false, false, null, 4095, null), null, gapComposerH, 0, 2);
            Object objX3 = gapComposerH.x();
            Object obj13 = objX3;
            if (objX3 == composer$Companion$Empty$1) {
                MutableState mutableStateG = SnapshotStateKt.g(null);
                gapComposerH.q(mutableStateG);
                obj13 = mutableStateG;
            }
            MutableState mutableState = (MutableState) obj13;
            LVModalBottomSheetState lVModalBottomSheetStateF = LVModalBottomSheetKt.f(0, 7, gapComposerH, null);
            Object objX4 = gapComposerH.x();
            Object obj14 = objX4;
            if (objX4 == composer$Companion$Empty$1) {
                j6 j6Var = new j6(24, mutableState);
                gapComposerH.q(j6Var);
                obj14 = j6Var;
            }
            LVModalBottomSheetState lVModalBottomSheetStateF2 = LVModalBottomSheetKt.f(48, 5, gapComposerH, (Function1) obj14);
            boolean zY = ((i5 & 896) == 256) | gapComposerH.y(lVModalBottomSheetStateF2);
            Object objX5 = gapComposerH.x();
            Object obj15 = objX5;
            if (zY || objX5 == composer$Companion$Empty$1) {
                ju juVar = new ju(lVModalBottomSheetStateF2, function0, mutableState, 1);
                gapComposerH.q(juVar);
                obj15 = juVar;
            }
            Function0 function7 = (Function0) obj15;
            boolean zY2 = gapComposerH.y(lVModalBottomSheetStateF2);
            Object objX6 = gapComposerH.x();
            Object obj16 = objX6;
            if (zY2 || objX6 == composer$Companion$Empty$1) {
                n8 n8Var = new n8(lVModalBottomSheetStateF2, mutableState, 3);
                gapComposerH.q(n8Var);
                obj16 = n8Var;
            }
            Function1 function8 = (Function1) obj16;
            int i7 = i5 & 112;
            boolean zK = (i7 == 32) | (i6 == 4) | gapComposerH.K(function7);
            Object objX7 = gapComposerH.x();
            if (zK || objX7 == composer$Companion$Empty$1) {
                DistantRepairFormComposableKt$DistantRepairFormComposable$2$1 distantRepairFormComposableKt$DistantRepairFormComposable$2$1 = new DistantRepairFormComposableKt$DistantRepairFormComposable$2$1(datePickerViewModel, distantRepairFormViewModel, function7, null);
                gapComposerH.q(distantRepairFormComposableKt$DistantRepairFormComposable$2$1);
                obj = distantRepairFormComposableKt$DistantRepairFormComposable$2$1;
            } else {
                obj = objX7;
            }
            EffectsKt.e(gapComposerH, unit, (Function2) obj);
            Object objX8 = gapComposerH.x();
            Object objB = objX8;
            if (objX8 == composer$Companion$Empty$1) {
                objB = n00.b(gapComposerH);
            }
            SnackbarHostState snackbarHostState = (SnackbarHostState) objB;
            boolean zY3 = (i7 == 32) | gapComposerH.y(context);
            Object objX9 = gapComposerH.x();
            if (zY3 || objX9 == composer$Companion$Empty$1) {
                DistantRepairFormComposableKt$DistantRepairFormComposable$3$1 distantRepairFormComposableKt$DistantRepairFormComposable$3$1 = new DistantRepairFormComposableKt$DistantRepairFormComposable$3$1(datePickerViewModel, snackbarHostState, context, null);
                gapComposerH.q(distantRepairFormComposableKt$DistantRepairFormComposable$3$1);
                obj2 = distantRepairFormComposableKt$DistantRepairFormComposable$3$1;
            } else {
                obj2 = objX9;
            }
            EffectsKt.e(gapComposerH, unit, (Function2) obj2);
            Object objX10 = gapComposerH.x();
            Object objB2 = objX10;
            if (objX10 == composer$Companion$Empty$1) {
                objB2 = n00.b(gapComposerH);
            }
            SnackbarHostState snackbarHostState2 = (SnackbarHostState) objB2;
            boolean zY4 = (i6 == 4) | gapComposerH.y(context);
            Object objX11 = gapComposerH.x();
            if (zY4 || objX11 == composer$Companion$Empty$1) {
                DistantRepairFormComposableKt$DistantRepairFormComposable$4$1 distantRepairFormComposableKt$DistantRepairFormComposable$4$1 = new DistantRepairFormComposableKt$DistantRepairFormComposable$4$1(distantRepairFormViewModel, snackbarHostState2, context, null);
                gapComposerH.q(distantRepairFormComposableKt$DistantRepairFormComposable$4$1);
                obj3 = distantRepairFormComposableKt$DistantRepairFormComposable$4$1;
            } else {
                obj3 = objX11;
            }
            EffectsKt.e(gapComposerH, unit, (Function2) obj3);
            boolean zY5 = (i6 == 4) | gapComposerH.y(navHostControllerA);
            Object objX12 = gapComposerH.x();
            Object obj17 = objX12;
            if (zY5 || objX12 == composer$Companion$Empty$1) {
                DistantRepairFormComposableKt$DistantRepairFormComposable$5$1 distantRepairFormComposableKt$DistantRepairFormComposable$5$1 = new DistantRepairFormComposableKt$DistantRepairFormComposable$5$1(distantRepairFormViewModel, navHostControllerA, null);
                gapComposerH.q(distantRepairFormComposableKt$DistantRepairFormComposable$5$1);
                obj17 = distantRepairFormComposableKt$DistantRepairFormComposable$5$1;
            }
            EffectsKt.e(gapComposerH, unit, (Function2) obj17);
            String str = ((DistantRepairCalendarViewState) mutableStateB2.getF10755b()).f57378f.f57365a;
            boolean zK2 = gapComposerH.K(mutableStateB2) | (i6 == 4);
            Object objX13 = gapComposerH.x();
            Object obj18 = objX13;
            if (zK2 || objX13 == composer$Companion$Empty$1) {
                DistantRepairFormComposableKt$DistantRepairFormComposable$6$1 distantRepairFormComposableKt$DistantRepairFormComposable$6$1 = new DistantRepairFormComposableKt$DistantRepairFormComposable$6$1(distantRepairFormViewModel, mutableStateB2, null);
                gapComposerH.q(distantRepairFormComposableKt$DistantRepairFormComposable$6$1);
                obj18 = distantRepairFormComposableKt$DistantRepairFormComposable$6$1;
            }
            EffectsKt.e(gapComposerH, str, (Function2) obj18);
            boolean zK3 = gapComposerH.K(function8);
            Object objX14 = gapComposerH.x();
            if (zK3 || objX14 == composer$Companion$Empty$1) {
                DistantRepairFormComposableKt$DistantRepairFormComposable$7$1 distantRepairFormComposableKt$DistantRepairFormComposable$7$1 = new DistantRepairFormComposableKt$DistantRepairFormComposable$7$1(null, function8);
                gapComposerH.q(distantRepairFormComposableKt$DistantRepairFormComposable$7$1);
                obj4 = distantRepairFormComposableKt$DistantRepairFormComposable$7$1;
            } else {
                obj4 = objX14;
            }
            EffectsKt.e(gapComposerH, unit, (Function2) obj4);
            DistantRepairFormViewState distantRepairFormViewState = (DistantRepairFormViewState) mutableStateB.getF10755b();
            ContactUsUiModel contactUsUiModel = (ContactUsUiModel) mutableStateA.getF10755b();
            boolean z5 = i6 == 4;
            Object objX15 = gapComposerH.x();
            if (z5 || objX15 == composer$Companion$Empty$1) {
                i3 = i6;
                function6 = function8;
                i4 = 131072;
                DistantRepairFormComposableKt$DistantRepairFormComposable$8$1 distantRepairFormComposableKt$DistantRepairFormComposable$8$1 = new DistantRepairFormComposableKt$DistantRepairFormComposable$8$1(0, distantRepairFormViewModel, DistantRepairFormViewModel.class, "sendRepairData", "sendRepairData()V", 0);
                gapComposerH.q(distantRepairFormComposableKt$DistantRepairFormComposable$8$1);
                objX15 = distantRepairFormComposableKt$DistantRepairFormComposable$8$1;
            } else {
                function6 = function8;
                i4 = 131072;
                i3 = i6;
            }
            Function0 function9 = (Function0) ((KFunction) objX15);
            boolean zK4 = gapComposerH.K(function6) | (i7 == 32) | gapComposerH.K(r16);
            Object objX16 = gapComposerH.x();
            if (zK4 || objX16 == composer$Companion$Empty$1) {
                z = true;
                ku kuVar = new ku(function6, datePickerViewModel, r16, 1);
                gapComposerH.q(kuVar);
                obj5 = kuVar;
            } else {
                z = true;
                obj5 = objX16;
            }
            Function0 function10 = (Function0) obj5;
            boolean z6 = i3 != 4 ? false : z;
            Object objX17 = gapComposerH.x();
            Object obj19 = objX17;
            if (z6 || objX17 == composer$Companion$Empty$1) {
                DistantRepairFormComposableKt$DistantRepairFormComposable$10$1 distantRepairFormComposableKt$DistantRepairFormComposable$10$1 = new DistantRepairFormComposableKt$DistantRepairFormComposable$10$1(1, distantRepairFormViewModel, DistantRepairFormViewModel.class, "setEditStep", "setEditStep(Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/Step;)V", 0);
                gapComposerH.q(distantRepairFormComposableKt$DistantRepairFormComposable$10$1);
                obj19 = distantRepairFormComposableKt$DistantRepairFormComposable$10$1;
            }
            Function1 function11 = (Function1) ((KFunction) obj19);
            boolean z7 = i3 != 4 ? false : z;
            Object objX18 = gapComposerH.x();
            Object obj20 = objX18;
            if (z7 || objX18 == composer$Companion$Empty$1) {
                DistantRepairFormComposableKt$DistantRepairFormComposable$11$1 distantRepairFormComposableKt$DistantRepairFormComposable$11$1 = new DistantRepairFormComposableKt$DistantRepairFormComposable$11$1(1, distantRepairFormViewModel, DistantRepairFormViewModel.class, "goToNextStep", "goToNextStep(Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/Step;)V", 0);
                gapComposerH.q(distantRepairFormComposableKt$DistantRepairFormComposable$11$1);
                obj20 = distantRepairFormComposableKt$DistantRepairFormComposable$11$1;
            }
            Function1 function12 = (Function1) ((KFunction) obj20);
            boolean z8 = i3 != 4 ? false : z;
            Object objX19 = gapComposerH.x();
            Object obj21 = objX19;
            if (z8 || objX19 == composer$Companion$Empty$1) {
                DistantRepairFormComposableKt$DistantRepairFormComposable$12$1 distantRepairFormComposableKt$DistantRepairFormComposable$12$1 = new DistantRepairFormComposableKt$DistantRepairFormComposable$12$1(1, distantRepairFormViewModel, DistantRepairFormViewModel.class, "setContactMethod", "setContactMethod(Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;)V", 0);
                gapComposerH.q(distantRepairFormComposableKt$DistantRepairFormComposable$12$1);
                obj21 = distantRepairFormComposableKt$DistantRepairFormComposable$12$1;
            }
            Function1 function13 = (Function1) ((KFunction) obj21);
            boolean z9 = i3 != 4 ? false : z;
            Object objX20 = gapComposerH.x();
            Object obj22 = objX20;
            if (z9 || objX20 == composer$Companion$Empty$1) {
                DistantRepairFormComposableKt$DistantRepairFormComposable$13$1 distantRepairFormComposableKt$DistantRepairFormComposable$13$1 = new DistantRepairFormComposableKt$DistantRepairFormComposable$13$1(3, distantRepairFormViewModel, DistantRepairFormViewModel.class, "setPhoneNumber", "setPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", 0);
                gapComposerH.q(distantRepairFormComposableKt$DistantRepairFormComposable$13$1);
                obj22 = distantRepairFormComposableKt$DistantRepairFormComposable$13$1;
            }
            Function3 function14 = (Function3) ((KFunction) obj22);
            boolean z10 = i3 != 4 ? false : z;
            Object objX21 = gapComposerH.x();
            if (z10 || objX21 == composer$Companion$Empty$1) {
                distantRepairFormViewModel2 = distantRepairFormViewModel;
                DistantRepairFormComposableKt$DistantRepairFormComposable$14$1 distantRepairFormComposableKt$DistantRepairFormComposable$14$1 = new DistantRepairFormComposableKt$DistantRepairFormComposable$14$1(1, distantRepairFormViewModel2, DistantRepairFormViewModel.class, "setProductDescription", "setProductDescription(Ljava/lang/String;)V", 0);
                gapComposerH.q(distantRepairFormComposableKt$DistantRepairFormComposable$14$1);
                obj6 = distantRepairFormComposableKt$DistantRepairFormComposable$14$1;
            } else {
                distantRepairFormViewModel2 = distantRepairFormViewModel;
                obj6 = objX21;
            }
            Function1 function15 = (Function1) ((KFunction) obj6);
            boolean z11 = ((i5 & ImageMetadata.JPEG_GPS_COORDINATES) == i4 ? z : false) | (i3 != 4 ? false : z);
            Object objX22 = gapComposerH.x();
            Object obj23 = objX22;
            if (z11 || objX22 == composer$Companion$Empty$1) {
                vg vgVar = new vg(distantRepairFormViewModel2, function3, 27);
                gapComposerH.q(vgVar);
                obj23 = vgVar;
            }
            Function1 function16 = (Function1) obj23;
            boolean zK5 = gapComposerH.K(function6);
            Object objX23 = gapComposerH.x();
            if (zK5 || objX23 == composer$Companion$Empty$1) {
                c2 = 7;
                k0 k0Var = new k0(function6, 7);
                gapComposerH.q(k0Var);
                obj7 = k0Var;
            } else {
                c2 = 7;
                obj7 = objX23;
            }
            Function1 function17 = (Function1) obj7;
            boolean zK6 = (i3 != 4 ? false : z) | gapComposerH.K(function6);
            Object objX24 = gapComposerH.x();
            Object obj24 = objX24;
            if (zK6 || objX24 == composer$Companion$Empty$1) {
                dt dtVar = new dt(distantRepairFormViewModel2, function6, 5);
                gapComposerH.q(dtVar);
                obj24 = dtVar;
            }
            Function0 function18 = (Function0) obj24;
            boolean zK7 = gapComposerH.K(function6);
            Object objX25 = gapComposerH.x();
            Object obj25 = objX25;
            if (zK7 || objX25 == composer$Companion$Empty$1) {
                u8 u8Var = new u8(function6, 16);
                gapComposerH.q(u8Var);
                obj25 = u8Var;
            }
            Function0 function19 = (Function0) obj25;
            boolean z12 = i3 != 4 ? false : z;
            Object objX26 = gapComposerH.x();
            if (z12 || objX26 == composer$Companion$Empty$1) {
                z2 = false;
                su suVar = new su(distantRepairFormViewModel2, 0);
                gapComposerH.q(suVar);
                obj8 = suVar;
            } else {
                z2 = false;
                obj8 = objX26;
            }
            Function0 function20 = (Function0) obj8;
            boolean zK8 = gapComposerH.K(function6);
            Object objX27 = gapComposerH.x();
            Object obj26 = objX27;
            if (zK8 || objX27 == composer$Companion$Empty$1) {
                u8 u8Var2 = new u8(function6, 17);
                gapComposerH.q(u8Var2);
                obj26 = u8Var2;
            }
            Function0 function21 = (Function0) obj26;
            boolean z13 = i3 != 4 ? z2 : z;
            Object objX28 = gapComposerH.x();
            if (z13 || objX28 == composer$Companion$Empty$1) {
                z3 = z2;
                DistantRepairFormComposableKt$DistantRepairFormComposable$21$1 distantRepairFormComposableKt$DistantRepairFormComposable$21$1 = new DistantRepairFormComposableKt$DistantRepairFormComposable$21$1(1, distantRepairFormViewModel2, DistantRepairFormViewModel.class, "updateZipPostalCode", "updateZipPostalCode(Ljava/lang/String;)V", 0);
                gapComposerH.q(distantRepairFormComposableKt$DistantRepairFormComposable$21$1);
                objX28 = distantRepairFormComposableKt$DistantRepairFormComposable$21$1;
            } else {
                z3 = z2;
            }
            Function1 function22 = (Function1) ((KFunction) objX28);
            Object objX29 = gapComposerH.x();
            if (objX29 == composer$Companion$Empty$1) {
                rq rqVar = new rq(5);
                gapComposerH.q(rqVar);
                obj9 = rqVar;
            } else {
                obj9 = objX29;
            }
            int i8 = LVModalBottomSheetState.f48797e;
            int i9 = (i5 >> 9) & 7168;
            int i10 = i3;
            boolean z14 = z3;
            boolean z15 = z;
            DistantRepairFormScreenKt.b(navHostControllerA, distantRepairFormViewState, snackbarHostState2, coroutineScope, contactUsUiModel, lVModalBottomSheetStateF, function0, function9, function10, function11, function12, function13, function14, function15, function16, function17, function18, function19, function1, function2, function20, function21, function22, function4, (Function2) obj9, gapComposerH, (i8 << 15) | KyberEngine.KyberPolyBytes | ((i5 << 12) & 3670016), (i5 << 15) & 2113929216, i9 | 24576);
            GapComposer gapComposer2 = gapComposerH;
            if (((DistantRepairFormViewState) mutableStateB.getF10755b()).g) {
                gapComposer2.L(316329565);
                LVLoadingOverlayKt.a(z14, gapComposer2, z14 ? 1 : 0, z15 ? 1 : 0);
                gapComposer2.Z(z14);
            } else {
                gapComposer2.L(316362239);
                gapComposer2.Z(z14);
            }
            if (lVModalBottomSheetStateF2.a()) {
                gapComposer2.L(316503289);
                distantRepairFormViewModel3 = distantRepairFormViewModel;
                boolean z16 = z14 ? 1 : 0;
                LVModalBottomSheetKt.b(null, StringResources_androidKt.c(gapComposer2, R.string.alt_close), function7, lVModalBottomSheetStateF2, null, 0L, false, null, ComposableLambdaKt.b(-200949125, new a(mutableState, snackbarHostState, distantRepairFormViewModel, datePickerViewModel, mutableStateB, function7, lVModalBottomSheetStateF2, function5, mutableStateB2, 1), gapComposer2), gapComposer2, (i8 << 9) | 100663296, 241);
                gapComposer2.Z(z16);
                r14 = z16;
            } else {
                distantRepairFormViewModel3 = distantRepairFormViewModel;
                boolean z17 = z14 ? 1 : 0;
                gapComposer2.L(319221183);
                gapComposer2.Z(z17);
                r14 = z17;
            }
            ContactUsUiModel contactUsUiModel2 = (ContactUsUiModel) mutableStateA.getF10755b();
            LVModalBottomSheetState lVModalBottomSheetStateF3 = LVModalBottomSheetKt.f(r14, 7, gapComposer2, null);
            ?? r10 = i10 != 4 ? r14 : z15 ? 1 : 0;
            Object objX30 = gapComposer2.x();
            if (r10 != 0 || objX30 == composer$Companion$Empty$1) {
                obj10 = objX30;
                su suVar2 = new su(distantRepairFormViewModel3, 5);
                gapComposer2.q(suVar2);
                obj10 = suVar2;
            }
            obj10 = objX30;
            ContactUsBottomSheetKt.a(contactUsUiModel2, lVModalBottomSheetStateF, lVModalBottomSheetStateF3, function4, (Function0) obj10, gapComposer2, (i8 << 3) | (i8 << 6) | i9);
            gapComposer = gapComposer2;
        } else {
            GapComposer gapComposer3 = gapComposerH;
            gapComposer3.D();
            gapComposer = gapComposer3;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new q8(distantRepairFormViewModel, datePickerViewModel, function0, function1, function2, function3, function4, function5, i2, 9);
        }
    }
}
