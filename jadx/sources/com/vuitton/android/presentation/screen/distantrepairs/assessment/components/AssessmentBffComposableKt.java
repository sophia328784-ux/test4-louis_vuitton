package com.vuitton.android.presentation.screen.distantrepairs.assessment.components;

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
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.contact.compose.ContactUsBottomSheetKt;
import com.vuitton.android.presentation.contact.models.ContactUsUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.bff.DistantRepairAssessmentBffViewModel;
import com.vuitton.android.presentation.screen.distantrepairs.models.AssessmentBffViewState;
import com.vuitton.android.presentation.screen.distantrepairs.tracking.DistantRepairTrackingUiModel;
import defpackage.g1;
import defpackage.m8;
import defpackage.n00;
import defpackage.n8;
import defpackage.o8;
import defpackage.q8;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.reflect.KFunction;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0006²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002²\u0006\f\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002²\u0006\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u00048\n@\nX\u008a\u008e\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;", "viewState", "Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;", "contactUsUiModel", "Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/components/AssessmentBottomSheetScreen;", "currentBottomSheet", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AssessmentBffComposableKt {
    /* JADX WARN: Multi-variable type inference failed */
    public static final void a(DistantRepairAssessmentBffViewModel distantRepairAssessmentBffViewModel, Function0 function0, Function0 function1, Function0 function2, Function1 function3, Function0 function4, Function0 function5, Function1 function6, Composer composer, int i2) {
        final DistantRepairAssessmentBffViewModel distantRepairAssessmentBffViewModel2;
        boolean z;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        int i3;
        boolean z2;
        SnackbarHostState snackbarHostState;
        int i4;
        Composer$Companion$Empty$1 composer$Companion$Empty$2;
        int i5;
        Object assessmentBffComposableKt$AssessmentBffComposable$8$1;
        final DistantRepairAssessmentBffViewModel distantRepairAssessmentBffViewModel3;
        final int i6;
        distantRepairAssessmentBffViewModel.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        function3.getClass();
        function4.getClass();
        function5.getClass();
        function6.getClass();
        GapComposer gapComposerH = composer.h(-1240033690);
        int i7 = i2 | (gapComposerH.K(distantRepairAssessmentBffViewModel) ? 4 : 2) | (gapComposerH.y(function0) ? 32 : 16) | (gapComposerH.y(function1) ? 256 : 128) | (gapComposerH.y(function2) ? 2048 : 1024) | (gapComposerH.y(function3) ? 16384 : 8192) | (gapComposerH.y(function4) ? 131072 : 65536) | (gapComposerH.y(function5) ? 1048576 : 524288) | (gapComposerH.y(function6) ? 8388608 : 4194304);
        if (gapComposerH.p(i7 & 1, (i7 & 4793491) != 4793490)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Unit unit = Unit.f71739a;
            int i8 = i7 & 14;
            Object[] objArr = i8 == 4;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$3 = Composer.Companion.f7939a;
            if (objArr != false || objX == composer$Companion$Empty$3) {
                objX = new AssessmentBffComposableKt$AssessmentBffComposable$1$1(distantRepairAssessmentBffViewModel, null);
                gapComposerH.q(objX);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX);
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$3) {
                objX2 = EffectsKt.j(EmptyCoroutineContext.f71840b, gapComposerH);
                gapComposerH.q(objX2);
            }
            CoroutineScope coroutineScope = (CoroutineScope) objX2;
            NavHostController navHostControllerA = NavHostControllerKt.a(new Navigator[0], gapComposerH);
            MutableState mutableStateB = SnapshotStateKt.b(distantRepairAssessmentBffViewModel.getI(), gapComposerH);
            MutableState mutableStateA = SnapshotStateKt.a(distantRepairAssessmentBffViewModel.i(), new ContactUsUiModel(false, null, null, null, null, null, null, null, false, false, false, null, 4095, null), null, gapComposerH, 0, 2);
            LVModalBottomSheetState lVModalBottomSheetStateF = LVModalBottomSheetKt.f(0, 7, gapComposerH, null);
            LVModalBottomSheetState lVModalBottomSheetStateF2 = LVModalBottomSheetKt.f(0, 7, gapComposerH, null);
            Object objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$3) {
                objX3 = SnapshotStateKt.g(null);
                gapComposerH.q(objX3);
            }
            MutableState mutableState = (MutableState) objX3;
            boolean zY = gapComposerH.y(lVModalBottomSheetStateF2);
            Object objX4 = gapComposerH.x();
            if (zY || objX4 == composer$Companion$Empty$3) {
                objX4 = new m8(lVModalBottomSheetStateF2, mutableState, 0);
                gapComposerH.q(objX4);
            }
            Function0 function7 = (Function0) objX4;
            boolean zY2 = gapComposerH.y(lVModalBottomSheetStateF2);
            Object objX5 = gapComposerH.x();
            if (zY2 || objX5 == composer$Companion$Empty$3) {
                z = false;
                objX5 = new n8(lVModalBottomSheetStateF2, mutableState, 0);
                gapComposerH.q(objX5);
            } else {
                z = false;
            }
            Function1 function8 = (Function1) objX5;
            boolean zY3 = (i8 != 4 ? z : true) | gapComposerH.y(navHostControllerA);
            Object objX6 = gapComposerH.x();
            if (zY3 || objX6 == composer$Companion$Empty$3) {
                objX6 = new AssessmentBffComposableKt$AssessmentBffComposable$2$1(distantRepairAssessmentBffViewModel, navHostControllerA, null);
                gapComposerH.q(objX6);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX6);
            boolean z3 = (i8 == 4) | ((i7 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072);
            Object objX7 = gapComposerH.x();
            if (z3 || objX7 == composer$Companion$Empty$3) {
                objX7 = new AssessmentBffComposableKt$AssessmentBffComposable$3$1(distantRepairAssessmentBffViewModel, function4, null);
                gapComposerH.q(objX7);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX7);
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            Object objX8 = gapComposerH.x();
            if (objX8 == composer$Companion$Empty$3) {
                objX8 = n00.b(gapComposerH);
            }
            SnackbarHostState snackbarHostState2 = (SnackbarHostState) objX8;
            boolean zY4 = (i8 == 4) | gapComposerH.y(context);
            Object objX9 = gapComposerH.x();
            if (zY4 || objX9 == composer$Companion$Empty$3) {
                objX9 = new AssessmentBffComposableKt$AssessmentBffComposable$4$1(distantRepairAssessmentBffViewModel, snackbarHostState2, context, null);
                gapComposerH.q(objX9);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX9);
            if (((AssessmentBffViewState) mutableStateB.getF10755b()).f57345b || ((AssessmentBffViewState) mutableStateB.getF10755b()).f57351j) {
                composer$Companion$Empty$1 = composer$Companion$Empty$3;
                i3 = i8;
                gapComposerH = gapComposerH;
                z2 = false;
                gapComposerH.L(-827942548);
                AssessmentLoadingScreenKt.a(snackbarHostState2, function0, gapComposerH, (i7 & 112) | 6);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-827751309);
                AssessmentBffViewState assessmentBffViewState = (AssessmentBffViewState) mutableStateB.getF10755b();
                boolean z4 = i8 == 4;
                Object objX10 = gapComposerH.x();
                if (z4 || objX10 == composer$Companion$Empty$3) {
                    snackbarHostState = snackbarHostState2;
                    i4 = i8;
                    composer$Companion$Empty$2 = composer$Companion$Empty$3;
                    i5 = 16384;
                    AssessmentBffComposableKt$AssessmentBffComposable$5$1 assessmentBffComposableKt$AssessmentBffComposable$5$1 = new AssessmentBffComposableKt$AssessmentBffComposable$5$1(0, distantRepairAssessmentBffViewModel, DistantRepairAssessmentBffViewModel.class, "acceptAssessment", "acceptAssessment()V", 0);
                    gapComposerH.q(assessmentBffComposableKt$AssessmentBffComposable$5$1);
                    objX10 = assessmentBffComposableKt$AssessmentBffComposable$5$1;
                } else {
                    composer$Companion$Empty$2 = composer$Companion$Empty$3;
                    snackbarHostState = snackbarHostState2;
                    i4 = i8;
                    i5 = 16384;
                }
                KFunction kFunction = (KFunction) objX10;
                boolean z5 = i4 == 4;
                Object objX11 = gapComposerH.x();
                if (z5 || objX11 == composer$Companion$Empty$2) {
                    AssessmentBffComposableKt$AssessmentBffComposable$6$1 assessmentBffComposableKt$AssessmentBffComposable$6$1 = new AssessmentBffComposableKt$AssessmentBffComposable$6$1(1, distantRepairAssessmentBffViewModel, DistantRepairAssessmentBffViewModel.class, "setSelectedAddressById", "setSelectedAddressById(Ljava/lang/String;)V", 0);
                    gapComposerH.q(assessmentBffComposableKt$AssessmentBffComposable$6$1);
                    objX11 = assessmentBffComposableKt$AssessmentBffComposable$6$1;
                }
                KFunction kFunction2 = (KFunction) objX11;
                boolean z6 = i4 == 4;
                Object objX12 = gapComposerH.x();
                if (z6 || objX12 == composer$Companion$Empty$2) {
                    AssessmentBffComposableKt$AssessmentBffComposable$7$1 assessmentBffComposableKt$AssessmentBffComposable$7$1 = new AssessmentBffComposableKt$AssessmentBffComposable$7$1(1, distantRepairAssessmentBffViewModel, DistantRepairAssessmentBffViewModel.class, "setEditStep", "setEditStep(Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/Step;)V", 0);
                    gapComposerH.q(assessmentBffComposableKt$AssessmentBffComposable$7$1);
                    objX12 = assessmentBffComposableKt$AssessmentBffComposable$7$1;
                }
                KFunction kFunction3 = (KFunction) objX12;
                boolean z7 = i4 == 4;
                Object objX13 = gapComposerH.x();
                if (z7 || objX13 == composer$Companion$Empty$2) {
                    assessmentBffComposableKt$AssessmentBffComposable$8$1 = new AssessmentBffComposableKt$AssessmentBffComposable$8$1(1, distantRepairAssessmentBffViewModel, DistantRepairAssessmentBffViewModel.class, "gotToNextStep", "gotToNextStep(Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/Step;)V", 0);
                    distantRepairAssessmentBffViewModel3 = distantRepairAssessmentBffViewModel;
                    gapComposerH.q(assessmentBffComposableKt$AssessmentBffComposable$8$1);
                } else {
                    assessmentBffComposableKt$AssessmentBffComposable$8$1 = objX13;
                    distantRepairAssessmentBffViewModel3 = distantRepairAssessmentBffViewModel;
                }
                KFunction kFunction4 = (KFunction) assessmentBffComposableKt$AssessmentBffComposable$8$1;
                ContactUsUiModel contactUsUiModel = (ContactUsUiModel) mutableStateA.getF10755b();
                boolean zK = ((i7 & 57344) == i5) | gapComposerH.K(mutableStateB);
                Object objX14 = gapComposerH.x();
                if (zK || objX14 == composer$Companion$Empty$2) {
                    i6 = 0;
                    objX14 = new o8(function3, mutableStateB, 0);
                    gapComposerH.q(objX14);
                } else {
                    i6 = 0;
                }
                Function0 function9 = (Function0) objX14;
                Function0 function10 = (Function0) kFunction;
                Function1 function11 = (Function1) kFunction3;
                Function1 function12 = (Function1) kFunction2;
                Function1 function13 = (Function1) kFunction4;
                int i9 = i4 != 4 ? i6 : 1;
                Object objX15 = gapComposerH.x();
                if (i9 != 0 || objX15 == composer$Companion$Empty$2) {
                    objX15 = new Function0() { // from class: p8
                        @Override // kotlin.jvm.functions.Function0
                        /* JADX INFO: renamed from: invoke */
                        public final Object mo47invoke() {
                            int i10 = i6;
                            DistantRepairAssessmentBffViewModel distantRepairAssessmentBffViewModel4 = distantRepairAssessmentBffViewModel3;
                            switch (i10) {
                                case 0:
                                    distantRepairAssessmentBffViewModel4.d(DistantRepairTrackingUiModel.ContactExpertClickedEvent.f57427a);
                                    break;
                                default:
                                    distantRepairAssessmentBffViewModel4.c();
                                    break;
                            }
                            return Unit.f71739a;
                        }
                    };
                    gapComposerH.q(objX15);
                }
                int i10 = i7 << 15;
                i3 = i4;
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                AssessmentBffScreenKt.a(assessmentBffViewState, snackbarHostState, coroutineScope, navHostControllerA, function8, function0, function9, function1, function2, function10, function11, function12, function13, function3, (Function0) objX15, function5, contactUsUiModel, function6, lVModalBottomSheetStateF, gapComposerH, ((i7 << 12) & ImageMetadata.JPEG_GPS_COORDINATES) | 48 | (i10 & 29360128) | (i10 & 234881024), ((i7 >> 3) & 465920) | (i7 & 29360128) | (LVModalBottomSheetState.f48797e << 24));
                gapComposerH = gapComposerH;
                z2 = false;
                gapComposerH.Z(false);
            }
            if (lVModalBottomSheetStateF2.a()) {
                gapComposerH.L(-826526375);
                distantRepairAssessmentBffViewModel2 = distantRepairAssessmentBffViewModel;
                GapComposer gapComposer = gapComposerH;
                LVModalBottomSheetKt.b(null, StringResources_androidKt.c(gapComposerH, R.string.alt_close), null, lVModalBottomSheetStateF2, null, 0L, false, null, ComposableLambdaKt.b(1967586158, new g1(2, mutableState, distantRepairAssessmentBffViewModel2, function7), gapComposerH), gapComposer, (LVModalBottomSheetState.f48797e << 9) | 100663296, 245);
                gapComposerH = gapComposer;
                gapComposerH.Z(z2);
            } else {
                distantRepairAssessmentBffViewModel2 = distantRepairAssessmentBffViewModel;
                gapComposerH.L(-825933252);
                gapComposerH.Z(z2);
            }
            ContactUsUiModel contactUsUiModel2 = (ContactUsUiModel) mutableStateA.getF10755b();
            LVModalBottomSheetState lVModalBottomSheetStateF3 = LVModalBottomSheetKt.f(z2 ? 1 : 0, 7, gapComposerH, null);
            if (i3 == 4) {
                z2 = true;
            }
            Object objX16 = gapComposerH.x();
            if (z2 || objX16 == composer$Companion$Empty$1) {
                final int i11 = 1;
                objX16 = new Function0() { // from class: p8
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        int i12 = i11;
                        DistantRepairAssessmentBffViewModel distantRepairAssessmentBffViewModel4 = distantRepairAssessmentBffViewModel2;
                        switch (i12) {
                            case 0:
                                distantRepairAssessmentBffViewModel4.d(DistantRepairTrackingUiModel.ContactExpertClickedEvent.f57427a);
                                break;
                            default:
                                distantRepairAssessmentBffViewModel4.c();
                                break;
                        }
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(objX16);
            }
            Function0 function14 = (Function0) objX16;
            int i12 = LVModalBottomSheetState.f48797e;
            ContactUsBottomSheetKt.a(contactUsUiModel2, lVModalBottomSheetStateF, lVModalBottomSheetStateF3, function6, function14, gapComposerH, (i12 << 6) | (i12 << 3) | ((i7 >> 12) & 7168));
        } else {
            distantRepairAssessmentBffViewModel2 = distantRepairAssessmentBffViewModel;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new q8(distantRepairAssessmentBffViewModel2, function0, function1, function2, function3, function4, function5, function6, i2, 0);
        }
    }
}
