package com.vuitton.android.presentation.screen.distantrepairs.form.components;

import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormBffViewModel;
import com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormViewModel;
import com.vuitton.android.presentation.screen.distantrepairs.form.datepicker.DatePickerViewModel;
import com.vuitton.android.presentation.screen.distantrepairs.models.DistantRepairCalendarViewState;
import com.vuitton.android.presentation.screen.distantrepairs.models.DistantRepairFormViewState;
import com.vuitton.android.presentation.screen.distantrepairs.models.TimeSlotUiModel;
import defpackage.gu;
import defpackage.pp;
import defpackage.su;
import java.time.LocalDate;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.reflect.KFunction;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class a implements Function3 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f57279b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MutableState f57280c;
    public final /* synthetic */ SnackbarHostState d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ DatePickerViewModel f57281e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ MutableState f57282f;
    public final /* synthetic */ Function0 g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ LVModalBottomSheetState f57283h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Function1 f57284i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ MutableState f57285j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ Object f57286k;

    public /* synthetic */ a(MutableState mutableState, SnackbarHostState snackbarHostState, Object obj, DatePickerViewModel datePickerViewModel, MutableState mutableState2, Function0 function0, LVModalBottomSheetState lVModalBottomSheetState, Function1 function1, MutableState mutableState3, int i2) {
        this.f57279b = i2;
        this.f57280c = mutableState;
        this.d = snackbarHostState;
        this.f57286k = obj;
        this.f57281e = datePickerViewModel;
        this.f57282f = mutableState2;
        this.g = function0;
        this.f57283h = lVModalBottomSheetState;
        this.f57284i = function1;
        this.f57285j = mutableState3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        Object distantRepairFormComposableKt$DistantRepairFormComposable$23$1$1$1;
        Composer composer;
        DistantRepairFormViewModel distantRepairFormViewModel;
        int i2 = this.f57279b;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        MutableState mutableState = this.f57285j;
        LVModalBottomSheetState lVModalBottomSheetState = this.f57283h;
        final MutableState mutableState2 = this.f57282f;
        final DatePickerViewModel datePickerViewModel = this.f57281e;
        Object obj4 = this.f57286k;
        MutableState mutableState3 = this.f57280c;
        Object[] objArr = 0;
        Object[] objArr2 = 0;
        final int i3 = 1;
        switch (i2) {
            case 0:
                DistantRepairFormBffViewModel distantRepairFormBffViewModel = (DistantRepairFormBffViewModel) obj4;
                Composer composer2 = (Composer) obj2;
                int iIntValue = ((Integer) obj3).intValue();
                ((ColumnScope) obj).getClass();
                if (composer2.p(iIntValue & 1, (iIntValue & 17) != 16)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    DistantRepairFormBottomSheetScreen distantRepairFormBottomSheetScreen = (DistantRepairFormBottomSheetScreen) mutableState3.getF10755b();
                    if (distantRepairFormBottomSheetScreen == null) {
                        composer2.L(-457512231);
                        composer2.F();
                    } else {
                        composer2.L(-457512230);
                        DistantRepairFormViewState distantRepairFormViewState = (DistantRepairFormViewState) mutableState2.getF10755b();
                        DistantRepairCalendarViewState distantRepairCalendarViewState = (DistantRepairCalendarViewState) mutableState.getF10755b();
                        boolean zY = composer2.y(distantRepairFormBffViewModel);
                        Object objX = composer2.x();
                        if (zY || objX == composer$Companion$Empty$1) {
                            DistantRepairFormBffComposableKt$DistantRepairFormBffComposable$23$1$1$1 distantRepairFormBffComposableKt$DistantRepairFormBffComposable$23$1$1$1 = new DistantRepairFormBffComposableKt$DistantRepairFormBffComposable$23$1$1$1(1, distantRepairFormBffViewModel, DistantRepairFormBffViewModel.class, "removePhoto", "removePhoto(I)V", 0);
                            composer2.q(distantRepairFormBffComposableKt$DistantRepairFormBffComposable$23$1$1$1);
                            objX = distantRepairFormBffComposableKt$DistantRepairFormBffComposable$23$1$1$1;
                        }
                        Function1 function1 = (Function1) ((KFunction) objX);
                        boolean zY2 = composer2.y(datePickerViewModel) | composer2.K(mutableState2);
                        Object objX2 = composer2.x();
                        if (zY2 || objX2 == composer$Companion$Empty$1) {
                            final Object[] objArr3 = objArr == true ? 1 : 0;
                            objX2 = new Function2() { // from class: hu
                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(Object obj5, Object obj6) {
                                    int i4 = objArr3;
                                    MutableState mutableState4 = mutableState2;
                                    DatePickerViewModel datePickerViewModel2 = datePickerViewModel;
                                    LocalDate localDate = (LocalDate) obj5;
                                    String str = (String) obj6;
                                    switch (i4) {
                                        case 0:
                                            localDate.getClass();
                                            str.getClass();
                                            datePickerViewModel2.Tb(localDate, str, ((DistantRepairFormViewState) mutableState4.getF10755b()).f57381c.f57401a, null);
                                            break;
                                        default:
                                            localDate.getClass();
                                            str.getClass();
                                            datePickerViewModel2.Tb(localDate, str, ((DistantRepairFormViewState) mutableState4.getF10755b()).f57381c.f57401a, null);
                                            break;
                                    }
                                    return Unit.f71739a;
                                }
                            };
                            composer2.q(objX2);
                        }
                        Function2 function2 = (Function2) objX2;
                        boolean zY3 = composer2.y(datePickerViewModel) | composer2.K(mutableState2);
                        Object objX3 = composer2.x();
                        if (zY3 || objX3 == composer$Companion$Empty$1) {
                            final Object[] objArr4 = objArr2 == true ? 1 : 0;
                            objX3 = new Function1() { // from class: iu
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj5) {
                                    int i4 = objArr4;
                                    MutableState mutableState4 = mutableState2;
                                    DatePickerViewModel datePickerViewModel2 = datePickerViewModel;
                                    TimeSlotUiModel timeSlotUiModel = (TimeSlotUiModel) obj5;
                                    switch (i4) {
                                        case 0:
                                            timeSlotUiModel.getClass();
                                            datePickerViewModel2.I7(timeSlotUiModel, ((DistantRepairFormViewState) mutableState4.getF10755b()).f57381c.f57401a);
                                            break;
                                        default:
                                            timeSlotUiModel.getClass();
                                            datePickerViewModel2.I7(timeSlotUiModel, ((DistantRepairFormViewState) mutableState4.getF10755b()).f57381c.f57401a);
                                            break;
                                    }
                                    return Unit.f71739a;
                                }
                            };
                            composer2.q(objX3);
                        }
                        Function1 function3 = (Function1) objX3;
                        boolean zY4 = composer2.y(distantRepairFormBffViewModel);
                        Object objX4 = composer2.x();
                        if (zY4 || objX4 == composer$Companion$Empty$1) {
                            objX4 = new gu(distantRepairFormBffViewModel, 1);
                            composer2.q(objX4);
                        }
                        Function0 function0 = (Function0) objX4;
                        boolean zY5 = composer2.y(distantRepairFormBffViewModel);
                        Object objX5 = composer2.x();
                        if (zY5 || objX5 == composer$Companion$Empty$1) {
                            objX5 = new gu(distantRepairFormBffViewModel, 2);
                            composer2.q(objX5);
                        }
                        Function0 function4 = (Function0) objX5;
                        boolean zY6 = composer2.y(distantRepairFormBffViewModel);
                        Object objX6 = composer2.x();
                        if (zY6 || objX6 == composer$Companion$Empty$1) {
                            objX6 = new gu(distantRepairFormBffViewModel, 3);
                            composer2.q(objX6);
                        }
                        Function0 function5 = (Function0) objX6;
                        boolean zY7 = composer2.y(distantRepairFormBffViewModel);
                        Object objX7 = composer2.x();
                        if (zY7 || objX7 == composer$Companion$Empty$1) {
                            objX7 = new gu(distantRepairFormBffViewModel, 4);
                            composer2.q(objX7);
                        }
                        Function0 function6 = (Function0) objX7;
                        boolean zY8 = composer2.y(distantRepairFormBffViewModel) | composer2.y(lVModalBottomSheetState);
                        Object objX8 = composer2.x();
                        if (zY8 || objX8 == composer$Companion$Empty$1) {
                            objX8 = new pp(distantRepairFormBffViewModel, lVModalBottomSheetState, mutableState3, 4);
                            composer2.q(objX8);
                        }
                        DistantRepairFormBottomSheetScreenKt.c(distantRepairFormBottomSheetScreen, distantRepairFormViewState, distantRepairCalendarViewState, this.d, function1, function2, function3, function0, function4, function5, this.g, function6, (Function0) objX8, this.f57284i, composer2, 3072);
                        composer2.F();
                    }
                } else {
                    composer2.D();
                }
                break;
            default:
                DistantRepairFormViewModel distantRepairFormViewModel2 = (DistantRepairFormViewModel) obj4;
                Composer composer3 = (Composer) obj2;
                int iIntValue2 = ((Integer) obj3).intValue();
                ((ColumnScope) obj).getClass();
                if (composer3.p(iIntValue2 & 1, (iIntValue2 & 17) != 16)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    DistantRepairFormBottomSheetScreen distantRepairFormBottomSheetScreen2 = (DistantRepairFormBottomSheetScreen) mutableState3.getF10755b();
                    if (distantRepairFormBottomSheetScreen2 == null) {
                        composer3.L(709144775);
                        composer3.F();
                    } else {
                        composer3.L(709144776);
                        DistantRepairFormViewState distantRepairFormViewState2 = (DistantRepairFormViewState) mutableState2.getF10755b();
                        DistantRepairCalendarViewState distantRepairCalendarViewState2 = (DistantRepairCalendarViewState) mutableState.getF10755b();
                        boolean zY9 = composer3.y(distantRepairFormViewModel2);
                        Object objX9 = composer3.x();
                        if (zY9 || objX9 == composer$Companion$Empty$1) {
                            composer = composer3;
                            distantRepairFormComposableKt$DistantRepairFormComposable$23$1$1$1 = new DistantRepairFormComposableKt$DistantRepairFormComposable$23$1$1$1(1, distantRepairFormViewModel2, DistantRepairFormViewModel.class, "removePhoto", "removePhoto(I)V", 0);
                            distantRepairFormViewModel = distantRepairFormViewModel2;
                            composer.q(distantRepairFormComposableKt$DistantRepairFormComposable$23$1$1$1);
                        } else {
                            distantRepairFormViewModel = distantRepairFormViewModel2;
                            composer = composer3;
                            distantRepairFormComposableKt$DistantRepairFormComposable$23$1$1$1 = objX9;
                        }
                        Function1 function7 = (Function1) ((KFunction) distantRepairFormComposableKt$DistantRepairFormComposable$23$1$1$1);
                        boolean zY10 = composer.y(datePickerViewModel) | composer.K(mutableState2);
                        Object objX10 = composer.x();
                        if (zY10 || objX10 == composer$Companion$Empty$1) {
                            objX10 = new Function2() { // from class: hu
                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(Object obj5, Object obj6) {
                                    int i4 = i3;
                                    MutableState mutableState4 = mutableState2;
                                    DatePickerViewModel datePickerViewModel2 = datePickerViewModel;
                                    LocalDate localDate = (LocalDate) obj5;
                                    String str = (String) obj6;
                                    switch (i4) {
                                        case 0:
                                            localDate.getClass();
                                            str.getClass();
                                            datePickerViewModel2.Tb(localDate, str, ((DistantRepairFormViewState) mutableState4.getF10755b()).f57381c.f57401a, null);
                                            break;
                                        default:
                                            localDate.getClass();
                                            str.getClass();
                                            datePickerViewModel2.Tb(localDate, str, ((DistantRepairFormViewState) mutableState4.getF10755b()).f57381c.f57401a, null);
                                            break;
                                    }
                                    return Unit.f71739a;
                                }
                            };
                            composer.q(objX10);
                        }
                        Function2 function8 = (Function2) objX10;
                        boolean zY11 = composer.y(datePickerViewModel) | composer.K(mutableState2);
                        Object objX11 = composer.x();
                        if (zY11 || objX11 == composer$Companion$Empty$1) {
                            objX11 = new Function1() { // from class: iu
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj5) {
                                    int i4 = i3;
                                    MutableState mutableState4 = mutableState2;
                                    DatePickerViewModel datePickerViewModel2 = datePickerViewModel;
                                    TimeSlotUiModel timeSlotUiModel = (TimeSlotUiModel) obj5;
                                    switch (i4) {
                                        case 0:
                                            timeSlotUiModel.getClass();
                                            datePickerViewModel2.I7(timeSlotUiModel, ((DistantRepairFormViewState) mutableState4.getF10755b()).f57381c.f57401a);
                                            break;
                                        default:
                                            timeSlotUiModel.getClass();
                                            datePickerViewModel2.I7(timeSlotUiModel, ((DistantRepairFormViewState) mutableState4.getF10755b()).f57381c.f57401a);
                                            break;
                                    }
                                    return Unit.f71739a;
                                }
                            };
                            composer.q(objX11);
                        }
                        Function1 function9 = (Function1) objX11;
                        boolean zY12 = composer.y(distantRepairFormViewModel);
                        Object objX12 = composer.x();
                        if (zY12 || objX12 == composer$Companion$Empty$1) {
                            objX12 = new su(distantRepairFormViewModel, 1);
                            composer.q(objX12);
                        }
                        Function0 function10 = (Function0) objX12;
                        boolean zY13 = composer.y(distantRepairFormViewModel);
                        Object objX13 = composer.x();
                        if (zY13 || objX13 == composer$Companion$Empty$1) {
                            objX13 = new su(distantRepairFormViewModel, 2);
                            composer.q(objX13);
                        }
                        Function0 function11 = (Function0) objX13;
                        boolean zY14 = composer.y(distantRepairFormViewModel);
                        Object objX14 = composer.x();
                        if (zY14 || objX14 == composer$Companion$Empty$1) {
                            objX14 = new su(distantRepairFormViewModel, 3);
                            composer.q(objX14);
                        }
                        Function0 function12 = (Function0) objX14;
                        boolean zY15 = composer.y(distantRepairFormViewModel);
                        Object objX15 = composer.x();
                        if (zY15 || objX15 == composer$Companion$Empty$1) {
                            objX15 = new su(distantRepairFormViewModel, 4);
                            composer.q(objX15);
                        }
                        Function0 function13 = (Function0) objX15;
                        boolean zY16 = composer.y(distantRepairFormViewModel) | composer.y(lVModalBottomSheetState);
                        Object objX16 = composer.x();
                        if (zY16 || objX16 == composer$Companion$Empty$1) {
                            objX16 = new pp(distantRepairFormViewModel, lVModalBottomSheetState, mutableState3, 5);
                            composer.q(objX16);
                        }
                        Composer composer4 = composer;
                        DistantRepairFormBottomSheetScreenKt.c(distantRepairFormBottomSheetScreen2, distantRepairFormViewState2, distantRepairCalendarViewState2, this.d, function7, function8, function9, function10, function11, function12, this.g, function13, (Function0) objX16, this.f57284i, composer4, 3072);
                        composer4.F();
                    }
                } else {
                    composer3.D();
                }
                break;
        }
        return Unit.f71739a;
    }
}
