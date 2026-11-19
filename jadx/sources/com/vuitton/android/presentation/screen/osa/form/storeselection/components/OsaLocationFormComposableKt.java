package com.vuitton.android.presentation.screen.osa.form.storeselection.components;

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
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.screen.osa.form.storeselection.OsaLocationFormViewModel;
import com.vuitton.android.presentation.screen.osa.form.storeselection.models.OsaLocationFormViewState;
import com.vuitton.android.presentation.screen.osa.reasons.OsaReasonsFormViewModel;
import com.vuitton.android.presentation.screen.osa.reasons.models.OsaReasonsFormViewState;
import com.vuitton.android.presentation.screen.osa.tracking.OsaTrackingUiModel;
import defpackage.c30;
import defpackage.m8;
import defpackage.n00;
import defpackage.of0;
import defpackage.p9;
import defpackage.t3;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.reflect.KFunction;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0006²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002²\u0006\f\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002²\u0006\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u00048\n@\nX\u008a\u008e\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/osa/form/storeselection/models/OsaLocationFormViewState;", "viewState", "Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonsFormViewState;", "osaReasonsFormViewState", "Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/OsaLocationFormBottomSheetScreen;", "currentBottomSheet", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class OsaLocationFormComposableKt {
    public static final void a(OsaLocationFormViewModel osaLocationFormViewModel, OsaReasonsFormViewModel osaReasonsFormViewModel, Function0 function0, Function0 function1, Function0 function2, Function1 function3, Function0 function4, Function1 function5, Function1 function6, Composer composer, int i2) {
        GapComposer gapComposer;
        MutableState mutableState;
        int i3;
        Continuation continuation;
        MutableState mutableState2;
        final MutableState mutableState3;
        final int i4;
        final int i5;
        final OsaLocationFormViewModel osaLocationFormViewModel2 = osaLocationFormViewModel;
        osaLocationFormViewModel2.getClass();
        osaReasonsFormViewModel.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        function3.getClass();
        function4.getClass();
        function5.getClass();
        function6.getClass();
        GapComposer gapComposerH = composer.h(697034610);
        int i6 = i2 | (gapComposerH.K(osaLocationFormViewModel2) ? 4 : 2) | (gapComposerH.K(osaReasonsFormViewModel) ? 32 : 16) | (gapComposerH.y(function0) ? 256 : 128) | (gapComposerH.y(function1) ? 2048 : 1024) | (gapComposerH.y(function2) ? 16384 : 8192) | (gapComposerH.y(function3) ? 131072 : 65536) | (gapComposerH.y(function4) ? 1048576 : 524288) | (gapComposerH.y(function5) ? 8388608 : 4194304) | (gapComposerH.y(function6) ? 67108864 : 33554432);
        if (gapComposerH.p(i6 & 1, (i6 & 38347923) != 38347922)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            MutableState mutableStateB = SnapshotStateKt.b(osaLocationFormViewModel2.getU(), gapComposerH);
            MutableState mutableStateB2 = SnapshotStateKt.b(osaReasonsFormViewModel.getL(), gapComposerH);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = EffectsKt.j(EmptyCoroutineContext.f71840b, gapComposerH);
                gapComposerH.q(objX);
            }
            final CoroutineScope coroutineScope = (CoroutineScope) objX;
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = SnapshotStateKt.g(null);
                gapComposerH.q(objX2);
            }
            final MutableState mutableState4 = (MutableState) objX2;
            Object objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = new c30(16, mutableState4);
                gapComposerH.q(objX3);
            }
            final LVModalBottomSheetState lVModalBottomSheetStateF = LVModalBottomSheetKt.f(48, 5, gapComposerH, (Function1) objX3);
            boolean zY = gapComposerH.y(coroutineScope) | gapComposerH.y(lVModalBottomSheetStateF);
            Object objX4 = gapComposerH.x();
            if (zY || objX4 == composer$Companion$Empty$1) {
                objX4 = new Function1() { // from class: com.vuitton.android.presentation.screen.osa.form.storeselection.components.a
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        OsaLocationFormBottomSheetScreen osaLocationFormBottomSheetScreen = (OsaLocationFormBottomSheetScreen) obj;
                        osaLocationFormBottomSheetScreen.getClass();
                        mutableState4.setValue(osaLocationFormBottomSheetScreen);
                        BuildersKt.c(coroutineScope, null, null, new OsaLocationFormComposableKt$OsaLocationFormComposable$openSheet$1$1$1(lVModalBottomSheetStateF, null), 3);
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(objX4);
            }
            Function1 function7 = (Function1) objX4;
            boolean zY2 = gapComposerH.y(lVModalBottomSheetStateF);
            Object objX5 = gapComposerH.x();
            if (zY2 || objX5 == composer$Companion$Empty$1) {
                objX5 = new m8(lVModalBottomSheetStateF, mutableState4, 7);
                gapComposerH.q(objX5);
            }
            Function0 function8 = (Function0) objX5;
            int i7 = i6 & 896;
            boolean zY3 = (i7 == 256) | gapComposerH.y(lVModalBottomSheetStateF);
            Object objX6 = gapComposerH.x();
            if (zY3 || objX6 == composer$Companion$Empty$1) {
                objX6 = new t3(lVModalBottomSheetStateF, function0, 11);
                gapComposerH.q(objX6);
            }
            Function0 function9 = (Function0) objX6;
            Unit unit = Unit.f71739a;
            int i8 = i6 & 14;
            boolean zK = (i8 == 4) | gapComposerH.K(mutableStateB);
            Object objX7 = gapComposerH.x();
            if (zK || objX7 == composer$Companion$Empty$1) {
                objX7 = new OsaLocationFormComposableKt$OsaLocationFormComposable$1$1(osaLocationFormViewModel2, mutableStateB, null);
                gapComposerH.q(objX7);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX7);
            boolean z = (i8 == 4) | ((i6 & 29360128) == 8388608);
            Object objX8 = gapComposerH.x();
            if (z || objX8 == composer$Companion$Empty$1) {
                objX8 = new OsaLocationFormComposableKt$OsaLocationFormComposable$2$1(osaLocationFormViewModel2, function5, null);
                gapComposerH.q(objX8);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX8);
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            Object objX9 = gapComposerH.x();
            if (objX9 == composer$Companion$Empty$1) {
                objX9 = n00.b(gapComposerH);
            }
            SnackbarHostState snackbarHostState = (SnackbarHostState) objX9;
            int i9 = i6 & 112;
            boolean zY4 = (i8 == 4) | gapComposerH.y(context) | (i9 == 32) | gapComposerH.K(mutableStateB);
            Object objX10 = gapComposerH.x();
            if (zY4 || objX10 == composer$Companion$Empty$1) {
                mutableState = mutableStateB;
                i3 = i9;
                continuation = null;
                objX10 = new OsaLocationFormComposableKt$OsaLocationFormComposable$3$1(osaLocationFormViewModel2, osaReasonsFormViewModel, snackbarHostState, context, mutableState, null);
                osaLocationFormViewModel2 = osaLocationFormViewModel2;
                mutableState2 = mutableStateB2;
                snackbarHostState = snackbarHostState;
                gapComposerH.q(objX10);
            } else {
                i3 = i9;
                mutableState = mutableStateB;
                mutableState2 = mutableStateB2;
                continuation = null;
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX10);
            boolean z2 = i8 == 4;
            Object objX11 = gapComposerH.x();
            if (z2 || objX11 == composer$Companion$Empty$1) {
                objX11 = new OsaLocationFormComposableKt$OsaLocationFormComposable$4$1(osaLocationFormViewModel2, continuation);
                gapComposerH.q(objX11);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX11);
            boolean zK2 = gapComposerH.K(function7) | (i8 == 4);
            Object objX12 = gapComposerH.x();
            if (zK2 || objX12 == composer$Companion$Empty$1) {
                objX12 = new OsaLocationFormComposableKt$OsaLocationFormComposable$5$1(osaLocationFormViewModel2, function7, continuation);
                gapComposerH.q(objX12);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX12);
            OsaLocationFormViewState osaLocationFormViewState = (OsaLocationFormViewState) mutableState.getF10755b();
            OsaLocationFormBottomSheetScreen osaLocationFormBottomSheetScreen = (OsaLocationFormBottomSheetScreen) mutableState4.getF10755b();
            OsaReasonsFormViewState osaReasonsFormViewState = (OsaReasonsFormViewState) mutableState2.getF10755b();
            boolean z3 = i8 == 4;
            Object objX13 = gapComposerH.x();
            if (z3 || objX13 == composer$Companion$Empty$1) {
                mutableState3 = mutableState;
                objX13 = new OsaLocationFormComposableKt$OsaLocationFormComposable$6$1(0, osaLocationFormViewModel2, OsaLocationFormViewModel.class, "onNextClicked", "onNextClicked()V", 0);
                gapComposerH.q(objX13);
            } else {
                mutableState3 = mutableState;
            }
            KFunction kFunction = (KFunction) objX13;
            boolean z4 = i8 == 4;
            Object objX14 = gapComposerH.x();
            if (z4 || objX14 == composer$Companion$Empty$1) {
                objX14 = new OsaLocationFormComposableKt$OsaLocationFormComposable$7$1(2, osaLocationFormViewModel, OsaLocationFormViewModel.class, "selectAppointmentType", "selectAppointmentType(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/osa/models/AppointmentTypeUiModel;)V", 0);
                gapComposerH.q(objX14);
            }
            KFunction kFunction2 = (KFunction) objX14;
            boolean z5 = i8 == 4;
            Object objX15 = gapComposerH.x();
            if (z5 || objX15 == composer$Companion$Empty$1) {
                objX15 = new OsaLocationFormComposableKt$OsaLocationFormComposable$8$1(2, osaLocationFormViewModel, OsaLocationFormViewModel.class, "selectTimeSlot", "selectTimeSlot(Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;Lcom/vuitton/android/presentation/screen/osa/models/OsaFormItemUiModel;)V", 0);
                gapComposerH.q(objX15);
            }
            KFunction kFunction3 = (KFunction) objX15;
            boolean z6 = i8 == 4;
            Object objX16 = gapComposerH.x();
            if (z6 || objX16 == composer$Companion$Empty$1) {
                objX16 = new OsaLocationFormComposableKt$OsaLocationFormComposable$9$1(0, osaLocationFormViewModel, OsaLocationFormViewModel.class, "getAvailableDates", "getAvailableDates()V", 0);
                gapComposerH.q(objX16);
            }
            KFunction kFunction4 = (KFunction) objX16;
            boolean z7 = i8 == 4;
            Object objX17 = gapComposerH.x();
            if (z7 || objX17 == composer$Companion$Empty$1) {
                osaLocationFormViewModel2 = osaLocationFormViewModel;
                objX17 = new OsaLocationFormComposableKt$OsaLocationFormComposable$10$1(1, osaLocationFormViewModel2, OsaLocationFormViewModel.class, "onDateSelected", "onDateSelected(Ljava/time/LocalDate;)V", 0);
                gapComposerH.q(objX17);
            } else {
                osaLocationFormViewModel2 = osaLocationFormViewModel;
            }
            KFunction kFunction5 = (KFunction) objX17;
            boolean z8 = (i3 == 32) | (i8 == 4) | (i7 == 256);
            Object objX18 = gapComposerH.x();
            if (z8 || objX18 == composer$Companion$Empty$1) {
                objX18 = new of0(osaLocationFormViewModel2, osaReasonsFormViewModel, function0, 14);
                gapComposerH.q(objX18);
            }
            Function0 function10 = (Function0) objX18;
            Function0 function11 = (Function0) kFunction;
            Function2 function12 = (Function2) kFunction2;
            Function2 function13 = (Function2) kFunction3;
            Function0 function14 = (Function0) kFunction4;
            Function1 function15 = (Function1) kFunction5;
            boolean zK3 = gapComposerH.K(mutableState3) | (i8 == 4);
            Object objX19 = gapComposerH.x();
            if (zK3 || objX19 == composer$Companion$Empty$1) {
                i4 = 0;
                objX19 = new Function0() { // from class: qj0
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        int i10 = i4;
                        MutableState mutableState5 = mutableState3;
                        OsaLocationFormViewModel osaLocationFormViewModel3 = osaLocationFormViewModel2;
                        switch (i10) {
                            case 0:
                                osaLocationFormViewModel3.o(new OsaTrackingUiModel.BookAppointmentDateSelectionClickedEvent(((OsaLocationFormViewState) mutableState5.getF10755b()).r));
                                break;
                            case 1:
                                osaLocationFormViewModel3.o(new OsaTrackingUiModel.BookAppointmentDateSelectionScreen(((OsaLocationFormViewState) mutableState5.getF10755b()).r));
                                break;
                            default:
                                osaLocationFormViewModel3.o(new OsaTrackingUiModel.BookAppointmentDateSelectionNoDateEvent(((OsaLocationFormViewState) mutableState5.getF10755b()).r));
                                break;
                        }
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(objX19);
            } else {
                i4 = 0;
            }
            Function0 function16 = (Function0) objX19;
            int i10 = (gapComposerH.K(mutableState3) ? 1 : 0) | (i8 != 4 ? i4 : 1);
            Object objX20 = gapComposerH.x();
            if (i10 != 0 || objX20 == composer$Companion$Empty$1) {
                i5 = 1;
                objX20 = new Function0() { // from class: qj0
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        int i11 = i5;
                        MutableState mutableState5 = mutableState3;
                        OsaLocationFormViewModel osaLocationFormViewModel3 = osaLocationFormViewModel2;
                        switch (i11) {
                            case 0:
                                osaLocationFormViewModel3.o(new OsaTrackingUiModel.BookAppointmentDateSelectionClickedEvent(((OsaLocationFormViewState) mutableState5.getF10755b()).r));
                                break;
                            case 1:
                                osaLocationFormViewModel3.o(new OsaTrackingUiModel.BookAppointmentDateSelectionScreen(((OsaLocationFormViewState) mutableState5.getF10755b()).r));
                                break;
                            default:
                                osaLocationFormViewModel3.o(new OsaTrackingUiModel.BookAppointmentDateSelectionNoDateEvent(((OsaLocationFormViewState) mutableState5.getF10755b()).r));
                                break;
                        }
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(objX20);
            } else {
                i5 = 1;
            }
            Function0 function17 = (Function0) objX20;
            int i11 = (gapComposerH.K(mutableState3) ? 1 : 0) | (i8 != 4 ? i4 : i5);
            Object objX21 = gapComposerH.x();
            if (i11 != 0 || objX21 == composer$Companion$Empty$1) {
                final int i12 = 2;
                objX21 = new Function0() { // from class: qj0
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        int i13 = i12;
                        MutableState mutableState5 = mutableState3;
                        OsaLocationFormViewModel osaLocationFormViewModel3 = osaLocationFormViewModel2;
                        switch (i13) {
                            case 0:
                                osaLocationFormViewModel3.o(new OsaTrackingUiModel.BookAppointmentDateSelectionClickedEvent(((OsaLocationFormViewState) mutableState5.getF10755b()).r));
                                break;
                            case 1:
                                osaLocationFormViewModel3.o(new OsaTrackingUiModel.BookAppointmentDateSelectionScreen(((OsaLocationFormViewState) mutableState5.getF10755b()).r));
                                break;
                            default:
                                osaLocationFormViewModel3.o(new OsaTrackingUiModel.BookAppointmentDateSelectionNoDateEvent(((OsaLocationFormViewState) mutableState5.getF10755b()).r));
                                break;
                        }
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(objX21);
            }
            gapComposer = gapComposerH;
            OsaLocationFormScreenKt.c(osaLocationFormViewState, lVModalBottomSheetStateF, osaLocationFormBottomSheetScreen, function7, function8, function9, osaReasonsFormViewState, snackbarHostState, function10, function11, function12, function13, function14, function15, function1, function2, function4, function3, function16, function17, (Function0) objX21, function6, gapComposer, (LVModalBottomSheetState.f48797e << 3) | 12582912, ((i6 << 3) & 516096) | (i6 & 3670016) | ((i6 << 6) & 29360128), (i6 >> 21) & 112);
        } else {
            osaReasonsFormViewModel = osaReasonsFormViewModel;
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new p9(osaLocationFormViewModel2, osaReasonsFormViewModel, function0, function1, function2, function3, function4, function5, function6, i2);
        }
    }
}
