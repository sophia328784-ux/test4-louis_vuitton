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
import com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormBffViewModel;
import com.vuitton.android.presentation.screen.distantrepairs.form.datepicker.DatePickerViewModel;
import com.vuitton.android.presentation.screen.distantrepairs.models.DistantRepairCalendarViewState;
import com.vuitton.android.presentation.screen.distantrepairs.models.DistantRepairFormViewState;
import defpackage.dt;
import defpackage.gu;
import defpackage.j6;
import defpackage.ju;
import defpackage.k0;
import defpackage.ku;
import defpackage.n00;
import defpackage.n8;
import defpackage.q8;
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
public abstract class DistantRepairFormBffComposableKt {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v27 */
    /* JADX WARN: Type inference failed for: r10v28 */
    /* JADX WARN: Type inference failed for: r10v29 */
    /* JADX WARN: Type inference failed for: r14v3, types: [int] */
    /* JADX WARN: Type inference failed for: r14v5 */
    /* JADX WARN: Type inference failed for: r14v6 */
    public static final void a(DistantRepairFormBffViewModel distantRepairFormBffViewModel, DatePickerViewModel datePickerViewModel, Function0 function0, Function0 function1, Function0 function2, Function1 function3, Function1 function4, Function1 function5, Composer composer, int i2) {
        GapComposer gapComposer;
        Object obj;
        Object obj2;
        Object obj3;
        Object obj4;
        Object obj5;
        int i3;
        int i4;
        MutableState mutableState;
        Function1 function6;
        int i5;
        DistantRepairFormBffViewModel distantRepairFormBffViewModel2;
        Object obj6;
        boolean z;
        Object obj7;
        boolean z2;
        DistantRepairFormBffViewModel distantRepairFormBffViewModel3;
        ?? r14;
        Object obj8;
        distantRepairFormBffViewModel.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        function3.getClass();
        function4.getClass();
        function5.getClass();
        GapComposer gapComposerH = composer.h(330627233);
        int i6 = i2 | (gapComposerH.K(distantRepairFormBffViewModel) ? 4 : 2) | (gapComposerH.K(datePickerViewModel) ? 32 : 16) | (gapComposerH.y(function0) ? 256 : 128) | (gapComposerH.y(function1) ? 2048 : 1024) | (gapComposerH.y(function2) ? 16384 : 8192) | (gapComposerH.y(function3) ? 131072 : 65536) | (gapComposerH.y(function4) ? 1048576 : 524288) | (gapComposerH.y(function5) ? 8388608 : 4194304);
        if (gapComposerH.p(i6 & 1, (4793491 & i6) != 4793490)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Unit unit = Unit.f71739a;
            int i7 = i6 & 14;
            boolean z3 = i7 == 4;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            Object obj9 = objX;
            if (z3 || objX == composer$Companion$Empty$1) {
                DistantRepairFormBffComposableKt$DistantRepairFormBffComposable$1$1 distantRepairFormBffComposableKt$DistantRepairFormBffComposable$1$1 = new DistantRepairFormBffComposableKt$DistantRepairFormBffComposable$1$1(distantRepairFormBffViewModel, null);
                gapComposerH.q(distantRepairFormBffComposableKt$DistantRepairFormBffComposable$1$1);
                obj9 = distantRepairFormBffComposableKt$DistantRepairFormBffComposable$1$1;
            }
            EffectsKt.e(gapComposerH, unit, (Function2) obj9);
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            Object objX2 = gapComposerH.x();
            Object obj10 = objX2;
            if (objX2 == composer$Companion$Empty$1) {
                CoroutineScope coroutineScopeJ = EffectsKt.j(EmptyCoroutineContext.f71840b, gapComposerH);
                gapComposerH.q(coroutineScopeJ);
                obj10 = coroutineScopeJ;
            }
            CoroutineScope coroutineScope = (CoroutineScope) obj10;
            NavHostController navHostControllerA = NavHostControllerKt.a(new Navigator[0], gapComposerH);
            MutableState mutableStateB = SnapshotStateKt.b(distantRepairFormBffViewModel.getD(), gapComposerH);
            MutableState mutableStateB2 = SnapshotStateKt.b(datePickerViewModel.getP(), gapComposerH);
            MutableState mutableStateA = SnapshotStateKt.a(distantRepairFormBffViewModel.i(), new ContactUsUiModel(false, null, null, null, null, null, null, null, false, false, false, null, 4095, null), null, gapComposerH, 0, 2);
            Object objX3 = gapComposerH.x();
            Object obj11 = objX3;
            if (objX3 == composer$Companion$Empty$1) {
                MutableState mutableStateG = SnapshotStateKt.g(null);
                gapComposerH.q(mutableStateG);
                obj11 = mutableStateG;
            }
            MutableState mutableState2 = (MutableState) obj11;
            LVModalBottomSheetState lVModalBottomSheetStateF = LVModalBottomSheetKt.f(0, 7, gapComposerH, null);
            Object objX4 = gapComposerH.x();
            Object obj12 = objX4;
            if (objX4 == composer$Companion$Empty$1) {
                j6 j6Var = new j6(23, mutableState2);
                gapComposerH.q(j6Var);
                obj12 = j6Var;
            }
            LVModalBottomSheetState lVModalBottomSheetStateF2 = LVModalBottomSheetKt.f(48, 5, gapComposerH, (Function1) obj12);
            boolean zY = ((i6 & 896) == 256) | gapComposerH.y(lVModalBottomSheetStateF2);
            Object objX5 = gapComposerH.x();
            if (zY || objX5 == composer$Companion$Empty$1) {
                ju juVar = new ju(lVModalBottomSheetStateF2, function0, mutableState2, 0);
                gapComposerH.q(juVar);
                obj = juVar;
            } else {
                obj = objX5;
            }
            Function0 function7 = (Function0) obj;
            boolean zY2 = gapComposerH.y(lVModalBottomSheetStateF2);
            Object objX6 = gapComposerH.x();
            Object obj13 = objX6;
            if (zY2 || objX6 == composer$Companion$Empty$1) {
                n8 n8Var = new n8(lVModalBottomSheetStateF2, mutableState2, 2);
                gapComposerH.q(n8Var);
                obj13 = n8Var;
            }
            Function1 function8 = (Function1) obj13;
            int i8 = i6 & 112;
            boolean zK = (i8 == 32) | (i7 == 4) | gapComposerH.K(function7);
            Object objX7 = gapComposerH.x();
            if (zK || objX7 == composer$Companion$Empty$1) {
                DistantRepairFormBffComposableKt$DistantRepairFormBffComposable$2$1 distantRepairFormBffComposableKt$DistantRepairFormBffComposable$2$1 = new DistantRepairFormBffComposableKt$DistantRepairFormBffComposable$2$1(datePickerViewModel, distantRepairFormBffViewModel, function7, null);
                gapComposerH.q(distantRepairFormBffComposableKt$DistantRepairFormBffComposable$2$1);
                obj2 = distantRepairFormBffComposableKt$DistantRepairFormBffComposable$2$1;
            } else {
                obj2 = objX7;
            }
            EffectsKt.e(gapComposerH, unit, (Function2) obj2);
            Object objX8 = gapComposerH.x();
            Object objB = objX8;
            if (objX8 == composer$Companion$Empty$1) {
                objB = n00.b(gapComposerH);
            }
            SnackbarHostState snackbarHostState = (SnackbarHostState) objB;
            boolean zY3 = (i8 == 32) | gapComposerH.y(context);
            Object objX9 = gapComposerH.x();
            if (zY3 || objX9 == composer$Companion$Empty$1) {
                DistantRepairFormBffComposableKt$DistantRepairFormBffComposable$3$1 distantRepairFormBffComposableKt$DistantRepairFormBffComposable$3$1 = new DistantRepairFormBffComposableKt$DistantRepairFormBffComposable$3$1(datePickerViewModel, snackbarHostState, context, null);
                gapComposerH.q(distantRepairFormBffComposableKt$DistantRepairFormBffComposable$3$1);
                obj3 = distantRepairFormBffComposableKt$DistantRepairFormBffComposable$3$1;
            } else {
                obj3 = objX9;
            }
            EffectsKt.e(gapComposerH, unit, (Function2) obj3);
            Object objX10 = gapComposerH.x();
            Object objB2 = objX10;
            if (objX10 == composer$Companion$Empty$1) {
                objB2 = n00.b(gapComposerH);
            }
            SnackbarHostState snackbarHostState2 = (SnackbarHostState) objB2;
            boolean zY4 = (i7 == 4) | gapComposerH.y(context);
            Object objX11 = gapComposerH.x();
            if (zY4 || objX11 == composer$Companion$Empty$1) {
                DistantRepairFormBffComposableKt$DistantRepairFormBffComposable$4$1 distantRepairFormBffComposableKt$DistantRepairFormBffComposable$4$1 = new DistantRepairFormBffComposableKt$DistantRepairFormBffComposable$4$1(distantRepairFormBffViewModel, snackbarHostState2, context, null);
                gapComposerH.q(distantRepairFormBffComposableKt$DistantRepairFormBffComposable$4$1);
                obj4 = distantRepairFormBffComposableKt$DistantRepairFormBffComposable$4$1;
            } else {
                obj4 = objX11;
            }
            EffectsKt.e(gapComposerH, unit, (Function2) obj4);
            boolean zY5 = (i7 == 4) | gapComposerH.y(navHostControllerA);
            Object objX12 = gapComposerH.x();
            Object obj14 = objX12;
            if (zY5 || objX12 == composer$Companion$Empty$1) {
                DistantRepairFormBffComposableKt$DistantRepairFormBffComposable$5$1 distantRepairFormBffComposableKt$DistantRepairFormBffComposable$5$1 = new DistantRepairFormBffComposableKt$DistantRepairFormBffComposable$5$1(distantRepairFormBffViewModel, navHostControllerA, null);
                gapComposerH.q(distantRepairFormBffComposableKt$DistantRepairFormBffComposable$5$1);
                obj14 = distantRepairFormBffComposableKt$DistantRepairFormBffComposable$5$1;
            }
            EffectsKt.e(gapComposerH, unit, (Function2) obj14);
            String str = ((DistantRepairCalendarViewState) mutableStateB2.getF10755b()).f57378f.f57365a;
            boolean zK2 = gapComposerH.K(mutableStateB2) | (i7 == 4);
            Object objX13 = gapComposerH.x();
            Object obj15 = objX13;
            if (zK2 || objX13 == composer$Companion$Empty$1) {
                DistantRepairFormBffComposableKt$DistantRepairFormBffComposable$6$1 distantRepairFormBffComposableKt$DistantRepairFormBffComposable$6$1 = new DistantRepairFormBffComposableKt$DistantRepairFormBffComposable$6$1(distantRepairFormBffViewModel, mutableStateB2, null);
                gapComposerH.q(distantRepairFormBffComposableKt$DistantRepairFormBffComposable$6$1);
                obj15 = distantRepairFormBffComposableKt$DistantRepairFormBffComposable$6$1;
            }
            EffectsKt.e(gapComposerH, str, (Function2) obj15);
            boolean zK3 = gapComposerH.K(function8);
            Object objX14 = gapComposerH.x();
            if (zK3 || objX14 == composer$Companion$Empty$1) {
                DistantRepairFormBffComposableKt$DistantRepairFormBffComposable$7$1 distantRepairFormBffComposableKt$DistantRepairFormBffComposable$7$1 = new DistantRepairFormBffComposableKt$DistantRepairFormBffComposable$7$1(null, function8);
                gapComposerH.q(distantRepairFormBffComposableKt$DistantRepairFormBffComposable$7$1);
                obj5 = distantRepairFormBffComposableKt$DistantRepairFormBffComposable$7$1;
            } else {
                obj5 = objX14;
            }
            EffectsKt.e(gapComposerH, unit, (Function2) obj5);
            DistantRepairFormViewState distantRepairFormViewState = (DistantRepairFormViewState) mutableStateB.getF10755b();
            ContactUsUiModel contactUsUiModel = (ContactUsUiModel) mutableStateA.getF10755b();
            boolean z4 = i7 == 4;
            Object objX15 = gapComposerH.x();
            if (z4 || objX15 == composer$Companion$Empty$1) {
                i3 = i8;
                i4 = i7;
                mutableState = mutableStateB2;
                function6 = function8;
                DistantRepairFormBffComposableKt$DistantRepairFormBffComposable$8$1 distantRepairFormBffComposableKt$DistantRepairFormBffComposable$8$1 = new DistantRepairFormBffComposableKt$DistantRepairFormBffComposable$8$1(0, distantRepairFormBffViewModel, DistantRepairFormBffViewModel.class, "sendRepairData", "sendRepairData()V", 0);
                gapComposerH.q(distantRepairFormBffComposableKt$DistantRepairFormBffComposable$8$1);
                objX15 = distantRepairFormBffComposableKt$DistantRepairFormBffComposable$8$1;
            } else {
                i3 = i8;
                mutableState = mutableStateB2;
                i4 = i7;
                function6 = function8;
            }
            Function0 function9 = (Function0) ((KFunction) objX15);
            boolean zK4 = gapComposerH.K(function6) | (i3 == 32) | gapComposerH.K(r29);
            Object objX16 = gapComposerH.x();
            Object obj16 = objX16;
            if (zK4 || objX16 == composer$Companion$Empty$1) {
                ku kuVar = new ku(function6, datePickerViewModel, r29, 0);
                gapComposerH.q(kuVar);
                obj16 = kuVar;
            }
            Function0 function10 = (Function0) obj16;
            int i9 = i4;
            boolean z5 = i9 == 4;
            Object objX17 = gapComposerH.x();
            if (z5 || objX17 == composer$Companion$Empty$1) {
                i5 = i9;
                DistantRepairFormBffComposableKt$DistantRepairFormBffComposable$10$1 distantRepairFormBffComposableKt$DistantRepairFormBffComposable$10$1 = new DistantRepairFormBffComposableKt$DistantRepairFormBffComposable$10$1(1, distantRepairFormBffViewModel, DistantRepairFormBffViewModel.class, "setEditStep", "setEditStep(Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/Step;)V", 0);
                gapComposerH.q(distantRepairFormBffComposableKt$DistantRepairFormBffComposable$10$1);
                objX17 = distantRepairFormBffComposableKt$DistantRepairFormBffComposable$10$1;
            } else {
                i5 = i9;
            }
            Function1 function11 = (Function1) ((KFunction) objX17);
            boolean z6 = i5 == 4;
            Object objX18 = gapComposerH.x();
            Object obj17 = objX18;
            if (z6 || objX18 == composer$Companion$Empty$1) {
                DistantRepairFormBffComposableKt$DistantRepairFormBffComposable$11$1 distantRepairFormBffComposableKt$DistantRepairFormBffComposable$11$1 = new DistantRepairFormBffComposableKt$DistantRepairFormBffComposable$11$1(1, distantRepairFormBffViewModel, DistantRepairFormBffViewModel.class, "goToNextStep", "goToNextStep(Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/Step;)V", 0);
                gapComposerH.q(distantRepairFormBffComposableKt$DistantRepairFormBffComposable$11$1);
                obj17 = distantRepairFormBffComposableKt$DistantRepairFormBffComposable$11$1;
            }
            Function1 function12 = (Function1) ((KFunction) obj17);
            boolean z7 = i5 == 4;
            Object objX19 = gapComposerH.x();
            Object obj18 = objX19;
            if (z7 || objX19 == composer$Companion$Empty$1) {
                DistantRepairFormBffComposableKt$DistantRepairFormBffComposable$12$1 distantRepairFormBffComposableKt$DistantRepairFormBffComposable$12$1 = new DistantRepairFormBffComposableKt$DistantRepairFormBffComposable$12$1(1, distantRepairFormBffViewModel, DistantRepairFormBffViewModel.class, "setContactMethod", "setContactMethod(Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;)V", 0);
                gapComposerH.q(distantRepairFormBffComposableKt$DistantRepairFormBffComposable$12$1);
                obj18 = distantRepairFormBffComposableKt$DistantRepairFormBffComposable$12$1;
            }
            Function1 function13 = (Function1) ((KFunction) obj18);
            boolean z8 = i5 == 4;
            Object objX20 = gapComposerH.x();
            Object obj19 = objX20;
            if (z8 || objX20 == composer$Companion$Empty$1) {
                DistantRepairFormBffComposableKt$DistantRepairFormBffComposable$13$1 distantRepairFormBffComposableKt$DistantRepairFormBffComposable$13$1 = new DistantRepairFormBffComposableKt$DistantRepairFormBffComposable$13$1(3, distantRepairFormBffViewModel, DistantRepairFormBffViewModel.class, "setPhoneNumber", "setPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", 0);
                gapComposerH.q(distantRepairFormBffComposableKt$DistantRepairFormBffComposable$13$1);
                obj19 = distantRepairFormBffComposableKt$DistantRepairFormBffComposable$13$1;
            }
            Function3 function14 = (Function3) ((KFunction) obj19);
            boolean z9 = i5 == 4;
            Object objX21 = gapComposerH.x();
            if (z9 || objX21 == composer$Companion$Empty$1) {
                distantRepairFormBffViewModel2 = distantRepairFormBffViewModel;
                DistantRepairFormBffComposableKt$DistantRepairFormBffComposable$14$1 distantRepairFormBffComposableKt$DistantRepairFormBffComposable$14$1 = new DistantRepairFormBffComposableKt$DistantRepairFormBffComposable$14$1(1, distantRepairFormBffViewModel2, DistantRepairFormBffViewModel.class, "setProductDescription", "setProductDescription(Ljava/lang/String;)V", 0);
                gapComposerH.q(distantRepairFormBffComposableKt$DistantRepairFormBffComposable$14$1);
                obj6 = distantRepairFormBffComposableKt$DistantRepairFormBffComposable$14$1;
            } else {
                distantRepairFormBffViewModel2 = distantRepairFormBffViewModel;
                obj6 = objX21;
            }
            Function1 function15 = (Function1) ((KFunction) obj6);
            boolean z10 = ((i6 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072) | (i5 == 4);
            Object objX22 = gapComposerH.x();
            Object obj20 = objX22;
            if (z10 || objX22 == composer$Companion$Empty$1) {
                vg vgVar = new vg(distantRepairFormBffViewModel2, function3, 26);
                gapComposerH.q(vgVar);
                obj20 = vgVar;
            }
            Function1 function16 = (Function1) obj20;
            boolean zK5 = gapComposerH.K(function6);
            Object objX23 = gapComposerH.x();
            Object obj21 = objX23;
            if (zK5 || objX23 == composer$Companion$Empty$1) {
                k0 k0Var = new k0(function6, 6);
                gapComposerH.q(k0Var);
                obj21 = k0Var;
            }
            Function1 function17 = (Function1) obj21;
            boolean zK6 = gapComposerH.K(function6) | (i5 == 4);
            Object objX24 = gapComposerH.x();
            Object obj22 = objX24;
            if (zK6 || objX24 == composer$Companion$Empty$1) {
                dt dtVar = new dt(distantRepairFormBffViewModel2, function6, 4);
                gapComposerH.q(dtVar);
                obj22 = dtVar;
            }
            Function0 function18 = (Function0) obj22;
            boolean zK7 = gapComposerH.K(function6);
            Object objX25 = gapComposerH.x();
            Object obj23 = objX25;
            if (zK7 || objX25 == composer$Companion$Empty$1) {
                u8 u8Var = new u8(function6, 14);
                gapComposerH.q(u8Var);
                obj23 = u8Var;
            }
            Function0 function19 = (Function0) obj23;
            boolean z11 = i5 == 4;
            Object objX26 = gapComposerH.x();
            if (z11 || objX26 == composer$Companion$Empty$1) {
                z = false;
                gu guVar = new gu(distantRepairFormBffViewModel2, 0);
                gapComposerH.q(guVar);
                obj7 = guVar;
            } else {
                z = false;
                obj7 = objX26;
            }
            Function0 function20 = (Function0) obj7;
            boolean zK8 = gapComposerH.K(function6);
            Object objX27 = gapComposerH.x();
            Object obj24 = objX27;
            if (zK8 || objX27 == composer$Companion$Empty$1) {
                u8 u8Var2 = new u8(function6, 15);
                gapComposerH.q(u8Var2);
                obj24 = u8Var2;
            }
            Function0 function21 = (Function0) obj24;
            boolean z12 = i5 != 4 ? z : true;
            Object objX28 = gapComposerH.x();
            if (z12 || objX28 == composer$Companion$Empty$1) {
                z2 = z;
                DistantRepairFormBffComposableKt$DistantRepairFormBffComposable$21$1 distantRepairFormBffComposableKt$DistantRepairFormBffComposable$21$1 = new DistantRepairFormBffComposableKt$DistantRepairFormBffComposable$21$1(1, distantRepairFormBffViewModel2, DistantRepairFormBffViewModel.class, "updateZipPostalCode", "updateZipPostalCode(Ljava/lang/String;)V", 0);
                gapComposerH.q(distantRepairFormBffComposableKt$DistantRepairFormBffComposable$21$1);
                objX28 = distantRepairFormBffComposableKt$DistantRepairFormBffComposable$21$1;
            } else {
                z2 = z;
            }
            Function1 function22 = (Function1) ((KFunction) objX28);
            boolean z13 = i5 != 4 ? z2 : true;
            Object objX29 = gapComposerH.x();
            if (z13 || objX29 == composer$Companion$Empty$1) {
                DistantRepairFormBffComposableKt$DistantRepairFormBffComposable$22$1 distantRepairFormBffComposableKt$DistantRepairFormBffComposable$22$1 = new DistantRepairFormBffComposableKt$DistantRepairFormBffComposable$22$1(2, distantRepairFormBffViewModel, DistantRepairFormBffViewModel.class, "onFieldUpdated", "onFieldUpdated(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/Object;)V", 0);
                gapComposerH.q(distantRepairFormBffComposableKt$DistantRepairFormBffComposable$22$1);
                objX29 = distantRepairFormBffComposableKt$DistantRepairFormBffComposable$22$1;
            }
            int i10 = LVModalBottomSheetState.f48797e;
            int i11 = (i6 >> 9) & 7168;
            boolean z14 = z2;
            DistantRepairFormScreenKt.b(navHostControllerA, distantRepairFormViewState, snackbarHostState2, coroutineScope, contactUsUiModel, lVModalBottomSheetStateF, function0, function9, function10, function11, function12, function13, function14, function15, function16, function17, function18, function19, function1, function2, function20, function21, function22, function4, (Function2) ((KFunction) objX29), gapComposerH, (i10 << 15) | KyberEngine.KyberPolyBytes | ((i6 << 12) & 3670016), (i6 << 15) & 2113929216, i11);
            GapComposer gapComposer2 = gapComposerH;
            if (((DistantRepairFormViewState) mutableStateB.getF10755b()).g) {
                gapComposer2.L(1361832703);
                LVLoadingOverlayKt.a(z14, gapComposer2, z14 ? 1 : 0, 1);
                gapComposer2.Z(z14);
            } else {
                gapComposer2.L(1361865377);
                gapComposer2.Z(z14);
            }
            if (lVModalBottomSheetStateF2.a()) {
                gapComposer2.L(1362006427);
                distantRepairFormBffViewModel3 = distantRepairFormBffViewModel;
                boolean z15 = z14 ? 1 : 0;
                LVModalBottomSheetKt.b(null, StringResources_androidKt.c(gapComposer2, R.string.alt_close), function7, lVModalBottomSheetStateF2, null, 0L, false, null, ComposableLambdaKt.b(-1332866647, new a(mutableState2, snackbarHostState, distantRepairFormBffViewModel, datePickerViewModel, mutableStateB, function7, lVModalBottomSheetStateF2, function5, mutableState, 0), gapComposer2), gapComposer2, (i10 << 9) | 100663296, 241);
                gapComposer2.Z(z15);
                r14 = z15;
            } else {
                distantRepairFormBffViewModel3 = distantRepairFormBffViewModel;
                boolean z16 = z14 ? 1 : 0;
                gapComposer2.L(1364724321);
                gapComposer2.Z(z16);
                r14 = z16;
            }
            ContactUsUiModel contactUsUiModel2 = (ContactUsUiModel) mutableStateA.getF10755b();
            LVModalBottomSheetState lVModalBottomSheetStateF3 = LVModalBottomSheetKt.f(r14, 7, gapComposer2, null);
            ?? r10 = i5 != 4 ? r14 : 1;
            Object objX30 = gapComposer2.x();
            if (r10 != 0 || objX30 == composer$Companion$Empty$1) {
                obj8 = objX30;
                gu guVar2 = new gu(distantRepairFormBffViewModel3, 5);
                gapComposer2.q(guVar2);
                obj8 = guVar2;
            }
            obj8 = objX30;
            ContactUsBottomSheetKt.a(contactUsUiModel2, lVModalBottomSheetStateF, lVModalBottomSheetStateF3, function4, (Function0) obj8, gapComposer2, (i10 << 3) | (i10 << 6) | i11);
            gapComposer = gapComposer2;
        } else {
            GapComposer gapComposer3 = gapComposerH;
            gapComposer3.D();
            gapComposer = gapComposer3;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new q8(distantRepairFormBffViewModel, datePickerViewModel, function0, function1, function2, function3, function4, function5, i2, 8);
        }
    }
}
