package com.vuitton.android.presentation.screen.booking.form.components;

import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import com.vuitton.android.presentation.screen.booking.common.models.BookingCTAState;
import com.vuitton.android.presentation.screen.booking.form.models.BookingExperienceViewState;
import com.vuitton.android.presentation.screen.booking.form.models.MocksKt;
import defpackage.fl;
import defpackage.km;
import defpackage.mn;
import defpackage.nn;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
public final class ComposableSingletons$BookingReservationScreenKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ComposableSingletons$BookingReservationScreenKt f54474a = new ComposableSingletons$BookingReservationScreenKt();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ComposableLambdaImpl f54475b = new ComposableLambdaImpl(2143189118, false, new mn(5));

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ComposableLambdaImpl f54476c = new ComposableLambdaImpl(553992359, false, new mn(6));
    public static final ComposableLambdaImpl d = new ComposableLambdaImpl(1771389387, false, new mn(7));

    static {
        final int i2 = 0;
        new ComposableLambdaImpl(-1871925576, false, new Function2() { // from class: com.vuitton.android.presentation.screen.booking.form.components.a
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                int i3 = i2;
                int i4 = 24;
                int i5 = 17;
                int i6 = 16;
                int i7 = 15;
                int i8 = 23;
                int i9 = 22;
                int i10 = 13;
                int i11 = 12;
                int i12 = 21;
                int i13 = 27;
                int i14 = 26;
                Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                byte b2 = 0;
                switch (i3) {
                    case 0:
                        Composer composer = (Composer) obj;
                        int iIntValue = ((Integer) obj2).intValue();
                        ComposableSingletons$BookingReservationScreenKt composableSingletons$BookingReservationScreenKt = ComposableSingletons$BookingReservationScreenKt.f54474a;
                        if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                            OpaqueKey opaqueKey = ComposerKt.f7940a;
                            BookingCTAState bookingCTAState = BookingCTAState.LOADING;
                            SnackbarHostState snackbarHostState = new SnackbarHostState();
                            Object objX = composer.x();
                            if (objX == composer$Companion$Empty$1) {
                                objX = new km(14);
                                composer.q(objX);
                            }
                            Function1 function1 = (Function1) objX;
                            Object objX2 = composer.x();
                            if (objX2 == composer$Companion$Empty$1) {
                                objX2 = new fl(i9, b2);
                                composer.q(objX2);
                            }
                            Function2 function2 = (Function2) objX2;
                            Object objX3 = composer.x();
                            if (objX3 == composer$Companion$Empty$1) {
                                objX3 = new km(i7);
                                composer.q(objX3);
                            }
                            Function1 function3 = (Function1) objX3;
                            Object objX4 = composer.x();
                            if (objX4 == composer$Companion$Empty$1) {
                                objX4 = ComposableSingletons$BookingReservationScreenKt$lambda$1871925576$1$4$1.f54478b;
                                composer.q(objX4);
                            }
                            Function3 function4 = (Function3) objX4;
                            Object objX5 = composer.x();
                            if (objX5 == composer$Companion$Empty$1) {
                                objX5 = new nn(7);
                                composer.q(objX5);
                            }
                            Function0 function0 = (Function0) objX5;
                            Object objX6 = composer.x();
                            if (objX6 == composer$Companion$Empty$1) {
                                objX6 = new nn(8);
                                composer.q(objX6);
                            }
                            Function0 function5 = (Function0) objX6;
                            Object objX7 = composer.x();
                            if (objX7 == composer$Companion$Empty$1) {
                                objX7 = new fl(i8, b2);
                                composer.q(objX7);
                            }
                            Function2 function6 = (Function2) objX7;
                            Object objX8 = composer.x();
                            if (objX8 == composer$Companion$Empty$1) {
                                objX8 = new nn(9);
                                composer.q(objX8);
                            }
                            Function0 function7 = (Function0) objX8;
                            Object objX9 = composer.x();
                            if (objX9 == composer$Companion$Empty$1) {
                                objX9 = new km(i6);
                                composer.q(objX9);
                            }
                            Function1 function8 = (Function1) objX9;
                            Object objX10 = composer.x();
                            if (objX10 == composer$Companion$Empty$1) {
                                objX10 = new km(i5);
                                composer.q(objX10);
                            }
                            Function1 function9 = (Function1) objX10;
                            Object objX11 = composer.x();
                            if (objX11 == composer$Companion$Empty$1) {
                                objX11 = new nn(10);
                                composer.q(objX11);
                            }
                            BookingReservationScreenKt.a(BookingExperienceViewState.Loading.f54501a, false, false, bookingCTAState, snackbarHostState, function1, function2, function3, function4, function0, function5, function6, function7, function8, function9, (Function0) objX11, composer, 920325558, 224694);
                        } else {
                            composer.D();
                        }
                        break;
                    case 1:
                        Composer composer2 = (Composer) obj;
                        int iIntValue2 = ((Integer) obj2).intValue();
                        ComposableSingletons$BookingReservationScreenKt composableSingletons$BookingReservationScreenKt2 = ComposableSingletons$BookingReservationScreenKt.f54474a;
                        if (composer2.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                            BookingExperienceViewState.Success success = new BookingExperienceViewState.Success(MocksKt.f54567e, false, null, null, null, null, 56, null);
                            BookingCTAState bookingCTAState2 = BookingCTAState.IDLE;
                            SnackbarHostState snackbarHostState2 = new SnackbarHostState();
                            Object objX12 = composer2.x();
                            if (objX12 == composer$Companion$Empty$1) {
                                objX12 = new km(18);
                                composer2.q(objX12);
                            }
                            Function1 function10 = (Function1) objX12;
                            Object objX13 = composer2.x();
                            if (objX13 == composer$Companion$Empty$1) {
                                objX13 = new fl(i4, b2);
                                composer2.q(objX13);
                            }
                            Function2 function11 = (Function2) objX13;
                            Object objX14 = composer2.x();
                            if (objX14 == composer$Companion$Empty$1) {
                                objX14 = new km(19);
                                composer2.q(objX14);
                            }
                            Function1 function12 = (Function1) objX14;
                            Object objX15 = composer2.x();
                            if (objX15 == composer$Companion$Empty$1) {
                                objX15 = ComposableSingletons$BookingReservationScreenKt$lambda$354028097$1$4$1.f54479b;
                                composer2.q(objX15);
                            }
                            Function3 function13 = (Function3) objX15;
                            Object objX16 = composer2.x();
                            if (objX16 == composer$Companion$Empty$1) {
                                objX16 = new nn(11);
                                composer2.q(objX16);
                            }
                            Function0 function14 = (Function0) objX16;
                            Object objX17 = composer2.x();
                            if (objX17 == composer$Companion$Empty$1) {
                                objX17 = new nn(i11);
                                composer2.q(objX17);
                            }
                            Function0 function15 = (Function0) objX17;
                            Object objX18 = composer2.x();
                            if (objX18 == composer$Companion$Empty$1) {
                                objX18 = new fl(25, b2);
                                composer2.q(objX18);
                            }
                            Function2 function16 = (Function2) objX18;
                            Object objX19 = composer2.x();
                            if (objX19 == composer$Companion$Empty$1) {
                                objX19 = new nn(i10);
                                composer2.q(objX19);
                            }
                            Function0 function17 = (Function0) objX19;
                            Object objX20 = composer2.x();
                            if (objX20 == composer$Companion$Empty$1) {
                                objX20 = new km(20);
                                composer2.q(objX20);
                            }
                            Function1 function18 = (Function1) objX20;
                            Object objX21 = composer2.x();
                            if (objX21 == composer$Companion$Empty$1) {
                                objX21 = new km(i12);
                                composer2.q(objX21);
                            }
                            Function1 function19 = (Function1) objX21;
                            Object objX22 = composer2.x();
                            if (objX22 == composer$Companion$Empty$1) {
                                objX22 = new nn(14);
                                composer2.q(objX22);
                            }
                            BookingReservationScreenKt.a(success, false, false, bookingCTAState2, snackbarHostState2, function10, function11, function12, function13, function14, function15, function16, function17, function18, function19, (Function0) objX22, composer2, 920325552, 224694);
                        } else {
                            composer2.D();
                        }
                        break;
                    case 2:
                        Composer composer3 = (Composer) obj;
                        int iIntValue3 = ((Integer) obj2).intValue();
                        ComposableSingletons$BookingReservationScreenKt composableSingletons$BookingReservationScreenKt3 = ComposableSingletons$BookingReservationScreenKt.f54474a;
                        if (composer3.p(iIntValue3 & 1, (iIntValue3 & 3) != 2)) {
                            OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                            BookingExperienceViewState.Success success2 = new BookingExperienceViewState.Success(MocksKt.f54567e, true, null, null, null, null, 56, null);
                            BookingCTAState bookingCTAState3 = BookingCTAState.IDLE;
                            SnackbarHostState snackbarHostState3 = new SnackbarHostState();
                            Object objX23 = composer3.x();
                            if (objX23 == composer$Companion$Empty$1) {
                                objX23 = new km(i9);
                                composer3.q(objX23);
                            }
                            Function1 function20 = (Function1) objX23;
                            Object objX24 = composer3.x();
                            if (objX24 == composer$Companion$Empty$1) {
                                objX24 = new fl(i14, b2);
                                composer3.q(objX24);
                            }
                            Function2 function21 = (Function2) objX24;
                            Object objX25 = composer3.x();
                            if (objX25 == composer$Companion$Empty$1) {
                                objX25 = new km(i8);
                                composer3.q(objX25);
                            }
                            Function1 function22 = (Function1) objX25;
                            Object objX26 = composer3.x();
                            if (objX26 == composer$Companion$Empty$1) {
                                objX26 = ComposableSingletons$BookingReservationScreenKt$lambda$885085688$1$4$1.f54480b;
                                composer3.q(objX26);
                            }
                            Function3 function23 = (Function3) objX26;
                            Object objX27 = composer3.x();
                            if (objX27 == composer$Companion$Empty$1) {
                                objX27 = new nn(i7);
                                composer3.q(objX27);
                            }
                            Function0 function24 = (Function0) objX27;
                            Object objX28 = composer3.x();
                            if (objX28 == composer$Companion$Empty$1) {
                                objX28 = new nn(i6);
                                composer3.q(objX28);
                            }
                            Function0 function25 = (Function0) objX28;
                            Object objX29 = composer3.x();
                            if (objX29 == composer$Companion$Empty$1) {
                                objX29 = new fl(i13, b2);
                                composer3.q(objX29);
                            }
                            Function2 function26 = (Function2) objX29;
                            Object objX30 = composer3.x();
                            if (objX30 == composer$Companion$Empty$1) {
                                objX30 = new nn(i5);
                                composer3.q(objX30);
                            }
                            Function0 function27 = (Function0) objX30;
                            Object objX31 = composer3.x();
                            if (objX31 == composer$Companion$Empty$1) {
                                objX31 = new km(i4);
                                composer3.q(objX31);
                            }
                            Function1 function28 = (Function1) objX31;
                            Object objX32 = composer3.x();
                            if (objX32 == composer$Companion$Empty$1) {
                                objX32 = new km(25);
                                composer3.q(objX32);
                            }
                            Function1 function29 = (Function1) objX32;
                            Object objX33 = composer3.x();
                            if (objX33 == composer$Companion$Empty$1) {
                                objX33 = new nn(18);
                                composer3.q(objX33);
                            }
                            BookingReservationScreenKt.a(success2, true, true, bookingCTAState3, snackbarHostState3, function20, function21, function22, function23, function24, function25, function26, function27, function28, function29, (Function0) objX33, composer3, 920325552, 224694);
                        } else {
                            composer3.D();
                        }
                        break;
                    default:
                        Composer composer4 = (Composer) obj;
                        int iIntValue4 = ((Integer) obj2).intValue();
                        ComposableSingletons$BookingReservationScreenKt composableSingletons$BookingReservationScreenKt4 = ComposableSingletons$BookingReservationScreenKt.f54474a;
                        if (composer4.p(iIntValue4 & 1, (iIntValue4 & 3) != 2)) {
                            OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                            BookingCTAState bookingCTAState4 = BookingCTAState.ERROR;
                            SnackbarHostState snackbarHostState4 = new SnackbarHostState();
                            Object objX34 = composer4.x();
                            if (objX34 == composer$Companion$Empty$1) {
                                objX34 = new km(i14);
                                composer4.q(objX34);
                            }
                            Function1 function30 = (Function1) objX34;
                            Object objX35 = composer4.x();
                            if (objX35 == composer$Companion$Empty$1) {
                                objX35 = new fl(28, b2);
                                composer4.q(objX35);
                            }
                            Function2 function31 = (Function2) objX35;
                            Object objX36 = composer4.x();
                            if (objX36 == composer$Companion$Empty$1) {
                                objX36 = new km(i13);
                                composer4.q(objX36);
                            }
                            Function1 function32 = (Function1) objX36;
                            Object objX37 = composer4.x();
                            if (objX37 == composer$Companion$Empty$1) {
                                objX37 = ComposableSingletons$BookingReservationScreenKt$lambda$1638235068$1$4$1.f54477b;
                                composer4.q(objX37);
                            }
                            Function3 function33 = (Function3) objX37;
                            Object objX38 = composer4.x();
                            if (objX38 == composer$Companion$Empty$1) {
                                objX38 = new nn(3);
                                composer4.q(objX38);
                            }
                            Function0 function34 = (Function0) objX38;
                            Object objX39 = composer4.x();
                            if (objX39 == composer$Companion$Empty$1) {
                                objX39 = new nn(4);
                                composer4.q(objX39);
                            }
                            Function0 function35 = (Function0) objX39;
                            Object objX40 = composer4.x();
                            if (objX40 == composer$Companion$Empty$1) {
                                objX40 = new fl(i12, b2);
                                composer4.q(objX40);
                            }
                            Function2 function36 = (Function2) objX40;
                            Object objX41 = composer4.x();
                            if (objX41 == composer$Companion$Empty$1) {
                                objX41 = new nn(5);
                                composer4.q(objX41);
                            }
                            Function0 function37 = (Function0) objX41;
                            Object objX42 = composer4.x();
                            if (objX42 == composer$Companion$Empty$1) {
                                objX42 = new km(i11);
                                composer4.q(objX42);
                            }
                            Function1 function38 = (Function1) objX42;
                            Object objX43 = composer4.x();
                            if (objX43 == composer$Companion$Empty$1) {
                                objX43 = new km(i10);
                                composer4.q(objX43);
                            }
                            Function1 function39 = (Function1) objX43;
                            Object objX44 = composer4.x();
                            if (objX44 == composer$Companion$Empty$1) {
                                objX44 = new nn(6);
                                composer4.q(objX44);
                            }
                            BookingReservationScreenKt.a(BookingExperienceViewState.Error.f54500a, false, false, bookingCTAState4, snackbarHostState4, function30, function31, function32, function33, function34, function35, function36, function37, function38, function39, (Function0) objX44, composer4, 920325558, 224694);
                        } else {
                            composer4.D();
                        }
                        break;
                }
                return Unit.f71739a;
            }
        });
        final int i3 = 1;
        new ComposableLambdaImpl(-354028097, false, new Function2() { // from class: com.vuitton.android.presentation.screen.booking.form.components.a
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                int i4 = i3;
                int i5 = 24;
                int i6 = 17;
                int i7 = 16;
                int i8 = 15;
                int i9 = 23;
                int i10 = 22;
                int i11 = 13;
                int i12 = 12;
                int i13 = 21;
                int i14 = 27;
                int i15 = 26;
                Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                byte b2 = 0;
                switch (i4) {
                    case 0:
                        Composer composer = (Composer) obj;
                        int iIntValue = ((Integer) obj2).intValue();
                        ComposableSingletons$BookingReservationScreenKt composableSingletons$BookingReservationScreenKt = ComposableSingletons$BookingReservationScreenKt.f54474a;
                        if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                            OpaqueKey opaqueKey = ComposerKt.f7940a;
                            BookingCTAState bookingCTAState = BookingCTAState.LOADING;
                            SnackbarHostState snackbarHostState = new SnackbarHostState();
                            Object objX = composer.x();
                            if (objX == composer$Companion$Empty$1) {
                                objX = new km(14);
                                composer.q(objX);
                            }
                            Function1 function1 = (Function1) objX;
                            Object objX2 = composer.x();
                            if (objX2 == composer$Companion$Empty$1) {
                                objX2 = new fl(i10, b2);
                                composer.q(objX2);
                            }
                            Function2 function2 = (Function2) objX2;
                            Object objX3 = composer.x();
                            if (objX3 == composer$Companion$Empty$1) {
                                objX3 = new km(i8);
                                composer.q(objX3);
                            }
                            Function1 function3 = (Function1) objX3;
                            Object objX4 = composer.x();
                            if (objX4 == composer$Companion$Empty$1) {
                                objX4 = ComposableSingletons$BookingReservationScreenKt$lambda$1871925576$1$4$1.f54478b;
                                composer.q(objX4);
                            }
                            Function3 function4 = (Function3) objX4;
                            Object objX5 = composer.x();
                            if (objX5 == composer$Companion$Empty$1) {
                                objX5 = new nn(7);
                                composer.q(objX5);
                            }
                            Function0 function0 = (Function0) objX5;
                            Object objX6 = composer.x();
                            if (objX6 == composer$Companion$Empty$1) {
                                objX6 = new nn(8);
                                composer.q(objX6);
                            }
                            Function0 function5 = (Function0) objX6;
                            Object objX7 = composer.x();
                            if (objX7 == composer$Companion$Empty$1) {
                                objX7 = new fl(i9, b2);
                                composer.q(objX7);
                            }
                            Function2 function6 = (Function2) objX7;
                            Object objX8 = composer.x();
                            if (objX8 == composer$Companion$Empty$1) {
                                objX8 = new nn(9);
                                composer.q(objX8);
                            }
                            Function0 function7 = (Function0) objX8;
                            Object objX9 = composer.x();
                            if (objX9 == composer$Companion$Empty$1) {
                                objX9 = new km(i7);
                                composer.q(objX9);
                            }
                            Function1 function8 = (Function1) objX9;
                            Object objX10 = composer.x();
                            if (objX10 == composer$Companion$Empty$1) {
                                objX10 = new km(i6);
                                composer.q(objX10);
                            }
                            Function1 function9 = (Function1) objX10;
                            Object objX11 = composer.x();
                            if (objX11 == composer$Companion$Empty$1) {
                                objX11 = new nn(10);
                                composer.q(objX11);
                            }
                            BookingReservationScreenKt.a(BookingExperienceViewState.Loading.f54501a, false, false, bookingCTAState, snackbarHostState, function1, function2, function3, function4, function0, function5, function6, function7, function8, function9, (Function0) objX11, composer, 920325558, 224694);
                        } else {
                            composer.D();
                        }
                        break;
                    case 1:
                        Composer composer2 = (Composer) obj;
                        int iIntValue2 = ((Integer) obj2).intValue();
                        ComposableSingletons$BookingReservationScreenKt composableSingletons$BookingReservationScreenKt2 = ComposableSingletons$BookingReservationScreenKt.f54474a;
                        if (composer2.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                            BookingExperienceViewState.Success success = new BookingExperienceViewState.Success(MocksKt.f54567e, false, null, null, null, null, 56, null);
                            BookingCTAState bookingCTAState2 = BookingCTAState.IDLE;
                            SnackbarHostState snackbarHostState2 = new SnackbarHostState();
                            Object objX12 = composer2.x();
                            if (objX12 == composer$Companion$Empty$1) {
                                objX12 = new km(18);
                                composer2.q(objX12);
                            }
                            Function1 function10 = (Function1) objX12;
                            Object objX13 = composer2.x();
                            if (objX13 == composer$Companion$Empty$1) {
                                objX13 = new fl(i5, b2);
                                composer2.q(objX13);
                            }
                            Function2 function11 = (Function2) objX13;
                            Object objX14 = composer2.x();
                            if (objX14 == composer$Companion$Empty$1) {
                                objX14 = new km(19);
                                composer2.q(objX14);
                            }
                            Function1 function12 = (Function1) objX14;
                            Object objX15 = composer2.x();
                            if (objX15 == composer$Companion$Empty$1) {
                                objX15 = ComposableSingletons$BookingReservationScreenKt$lambda$354028097$1$4$1.f54479b;
                                composer2.q(objX15);
                            }
                            Function3 function13 = (Function3) objX15;
                            Object objX16 = composer2.x();
                            if (objX16 == composer$Companion$Empty$1) {
                                objX16 = new nn(11);
                                composer2.q(objX16);
                            }
                            Function0 function14 = (Function0) objX16;
                            Object objX17 = composer2.x();
                            if (objX17 == composer$Companion$Empty$1) {
                                objX17 = new nn(i12);
                                composer2.q(objX17);
                            }
                            Function0 function15 = (Function0) objX17;
                            Object objX18 = composer2.x();
                            if (objX18 == composer$Companion$Empty$1) {
                                objX18 = new fl(25, b2);
                                composer2.q(objX18);
                            }
                            Function2 function16 = (Function2) objX18;
                            Object objX19 = composer2.x();
                            if (objX19 == composer$Companion$Empty$1) {
                                objX19 = new nn(i11);
                                composer2.q(objX19);
                            }
                            Function0 function17 = (Function0) objX19;
                            Object objX20 = composer2.x();
                            if (objX20 == composer$Companion$Empty$1) {
                                objX20 = new km(20);
                                composer2.q(objX20);
                            }
                            Function1 function18 = (Function1) objX20;
                            Object objX21 = composer2.x();
                            if (objX21 == composer$Companion$Empty$1) {
                                objX21 = new km(i13);
                                composer2.q(objX21);
                            }
                            Function1 function19 = (Function1) objX21;
                            Object objX22 = composer2.x();
                            if (objX22 == composer$Companion$Empty$1) {
                                objX22 = new nn(14);
                                composer2.q(objX22);
                            }
                            BookingReservationScreenKt.a(success, false, false, bookingCTAState2, snackbarHostState2, function10, function11, function12, function13, function14, function15, function16, function17, function18, function19, (Function0) objX22, composer2, 920325552, 224694);
                        } else {
                            composer2.D();
                        }
                        break;
                    case 2:
                        Composer composer3 = (Composer) obj;
                        int iIntValue3 = ((Integer) obj2).intValue();
                        ComposableSingletons$BookingReservationScreenKt composableSingletons$BookingReservationScreenKt3 = ComposableSingletons$BookingReservationScreenKt.f54474a;
                        if (composer3.p(iIntValue3 & 1, (iIntValue3 & 3) != 2)) {
                            OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                            BookingExperienceViewState.Success success2 = new BookingExperienceViewState.Success(MocksKt.f54567e, true, null, null, null, null, 56, null);
                            BookingCTAState bookingCTAState3 = BookingCTAState.IDLE;
                            SnackbarHostState snackbarHostState3 = new SnackbarHostState();
                            Object objX23 = composer3.x();
                            if (objX23 == composer$Companion$Empty$1) {
                                objX23 = new km(i10);
                                composer3.q(objX23);
                            }
                            Function1 function20 = (Function1) objX23;
                            Object objX24 = composer3.x();
                            if (objX24 == composer$Companion$Empty$1) {
                                objX24 = new fl(i15, b2);
                                composer3.q(objX24);
                            }
                            Function2 function21 = (Function2) objX24;
                            Object objX25 = composer3.x();
                            if (objX25 == composer$Companion$Empty$1) {
                                objX25 = new km(i9);
                                composer3.q(objX25);
                            }
                            Function1 function22 = (Function1) objX25;
                            Object objX26 = composer3.x();
                            if (objX26 == composer$Companion$Empty$1) {
                                objX26 = ComposableSingletons$BookingReservationScreenKt$lambda$885085688$1$4$1.f54480b;
                                composer3.q(objX26);
                            }
                            Function3 function23 = (Function3) objX26;
                            Object objX27 = composer3.x();
                            if (objX27 == composer$Companion$Empty$1) {
                                objX27 = new nn(i8);
                                composer3.q(objX27);
                            }
                            Function0 function24 = (Function0) objX27;
                            Object objX28 = composer3.x();
                            if (objX28 == composer$Companion$Empty$1) {
                                objX28 = new nn(i7);
                                composer3.q(objX28);
                            }
                            Function0 function25 = (Function0) objX28;
                            Object objX29 = composer3.x();
                            if (objX29 == composer$Companion$Empty$1) {
                                objX29 = new fl(i14, b2);
                                composer3.q(objX29);
                            }
                            Function2 function26 = (Function2) objX29;
                            Object objX30 = composer3.x();
                            if (objX30 == composer$Companion$Empty$1) {
                                objX30 = new nn(i6);
                                composer3.q(objX30);
                            }
                            Function0 function27 = (Function0) objX30;
                            Object objX31 = composer3.x();
                            if (objX31 == composer$Companion$Empty$1) {
                                objX31 = new km(i5);
                                composer3.q(objX31);
                            }
                            Function1 function28 = (Function1) objX31;
                            Object objX32 = composer3.x();
                            if (objX32 == composer$Companion$Empty$1) {
                                objX32 = new km(25);
                                composer3.q(objX32);
                            }
                            Function1 function29 = (Function1) objX32;
                            Object objX33 = composer3.x();
                            if (objX33 == composer$Companion$Empty$1) {
                                objX33 = new nn(18);
                                composer3.q(objX33);
                            }
                            BookingReservationScreenKt.a(success2, true, true, bookingCTAState3, snackbarHostState3, function20, function21, function22, function23, function24, function25, function26, function27, function28, function29, (Function0) objX33, composer3, 920325552, 224694);
                        } else {
                            composer3.D();
                        }
                        break;
                    default:
                        Composer composer4 = (Composer) obj;
                        int iIntValue4 = ((Integer) obj2).intValue();
                        ComposableSingletons$BookingReservationScreenKt composableSingletons$BookingReservationScreenKt4 = ComposableSingletons$BookingReservationScreenKt.f54474a;
                        if (composer4.p(iIntValue4 & 1, (iIntValue4 & 3) != 2)) {
                            OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                            BookingCTAState bookingCTAState4 = BookingCTAState.ERROR;
                            SnackbarHostState snackbarHostState4 = new SnackbarHostState();
                            Object objX34 = composer4.x();
                            if (objX34 == composer$Companion$Empty$1) {
                                objX34 = new km(i15);
                                composer4.q(objX34);
                            }
                            Function1 function30 = (Function1) objX34;
                            Object objX35 = composer4.x();
                            if (objX35 == composer$Companion$Empty$1) {
                                objX35 = new fl(28, b2);
                                composer4.q(objX35);
                            }
                            Function2 function31 = (Function2) objX35;
                            Object objX36 = composer4.x();
                            if (objX36 == composer$Companion$Empty$1) {
                                objX36 = new km(i14);
                                composer4.q(objX36);
                            }
                            Function1 function32 = (Function1) objX36;
                            Object objX37 = composer4.x();
                            if (objX37 == composer$Companion$Empty$1) {
                                objX37 = ComposableSingletons$BookingReservationScreenKt$lambda$1638235068$1$4$1.f54477b;
                                composer4.q(objX37);
                            }
                            Function3 function33 = (Function3) objX37;
                            Object objX38 = composer4.x();
                            if (objX38 == composer$Companion$Empty$1) {
                                objX38 = new nn(3);
                                composer4.q(objX38);
                            }
                            Function0 function34 = (Function0) objX38;
                            Object objX39 = composer4.x();
                            if (objX39 == composer$Companion$Empty$1) {
                                objX39 = new nn(4);
                                composer4.q(objX39);
                            }
                            Function0 function35 = (Function0) objX39;
                            Object objX40 = composer4.x();
                            if (objX40 == composer$Companion$Empty$1) {
                                objX40 = new fl(i13, b2);
                                composer4.q(objX40);
                            }
                            Function2 function36 = (Function2) objX40;
                            Object objX41 = composer4.x();
                            if (objX41 == composer$Companion$Empty$1) {
                                objX41 = new nn(5);
                                composer4.q(objX41);
                            }
                            Function0 function37 = (Function0) objX41;
                            Object objX42 = composer4.x();
                            if (objX42 == composer$Companion$Empty$1) {
                                objX42 = new km(i12);
                                composer4.q(objX42);
                            }
                            Function1 function38 = (Function1) objX42;
                            Object objX43 = composer4.x();
                            if (objX43 == composer$Companion$Empty$1) {
                                objX43 = new km(i11);
                                composer4.q(objX43);
                            }
                            Function1 function39 = (Function1) objX43;
                            Object objX44 = composer4.x();
                            if (objX44 == composer$Companion$Empty$1) {
                                objX44 = new nn(6);
                                composer4.q(objX44);
                            }
                            BookingReservationScreenKt.a(BookingExperienceViewState.Error.f54500a, false, false, bookingCTAState4, snackbarHostState4, function30, function31, function32, function33, function34, function35, function36, function37, function38, function39, (Function0) objX44, composer4, 920325558, 224694);
                        } else {
                            composer4.D();
                        }
                        break;
                }
                return Unit.f71739a;
            }
        });
        final int i4 = 2;
        new ComposableLambdaImpl(885085688, false, new Function2() { // from class: com.vuitton.android.presentation.screen.booking.form.components.a
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                int i5 = i4;
                int i6 = 24;
                int i7 = 17;
                int i8 = 16;
                int i9 = 15;
                int i10 = 23;
                int i11 = 22;
                int i12 = 13;
                int i13 = 12;
                int i14 = 21;
                int i15 = 27;
                int i16 = 26;
                Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                byte b2 = 0;
                switch (i5) {
                    case 0:
                        Composer composer = (Composer) obj;
                        int iIntValue = ((Integer) obj2).intValue();
                        ComposableSingletons$BookingReservationScreenKt composableSingletons$BookingReservationScreenKt = ComposableSingletons$BookingReservationScreenKt.f54474a;
                        if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                            OpaqueKey opaqueKey = ComposerKt.f7940a;
                            BookingCTAState bookingCTAState = BookingCTAState.LOADING;
                            SnackbarHostState snackbarHostState = new SnackbarHostState();
                            Object objX = composer.x();
                            if (objX == composer$Companion$Empty$1) {
                                objX = new km(14);
                                composer.q(objX);
                            }
                            Function1 function1 = (Function1) objX;
                            Object objX2 = composer.x();
                            if (objX2 == composer$Companion$Empty$1) {
                                objX2 = new fl(i11, b2);
                                composer.q(objX2);
                            }
                            Function2 function2 = (Function2) objX2;
                            Object objX3 = composer.x();
                            if (objX3 == composer$Companion$Empty$1) {
                                objX3 = new km(i9);
                                composer.q(objX3);
                            }
                            Function1 function3 = (Function1) objX3;
                            Object objX4 = composer.x();
                            if (objX4 == composer$Companion$Empty$1) {
                                objX4 = ComposableSingletons$BookingReservationScreenKt$lambda$1871925576$1$4$1.f54478b;
                                composer.q(objX4);
                            }
                            Function3 function4 = (Function3) objX4;
                            Object objX5 = composer.x();
                            if (objX5 == composer$Companion$Empty$1) {
                                objX5 = new nn(7);
                                composer.q(objX5);
                            }
                            Function0 function0 = (Function0) objX5;
                            Object objX6 = composer.x();
                            if (objX6 == composer$Companion$Empty$1) {
                                objX6 = new nn(8);
                                composer.q(objX6);
                            }
                            Function0 function5 = (Function0) objX6;
                            Object objX7 = composer.x();
                            if (objX7 == composer$Companion$Empty$1) {
                                objX7 = new fl(i10, b2);
                                composer.q(objX7);
                            }
                            Function2 function6 = (Function2) objX7;
                            Object objX8 = composer.x();
                            if (objX8 == composer$Companion$Empty$1) {
                                objX8 = new nn(9);
                                composer.q(objX8);
                            }
                            Function0 function7 = (Function0) objX8;
                            Object objX9 = composer.x();
                            if (objX9 == composer$Companion$Empty$1) {
                                objX9 = new km(i8);
                                composer.q(objX9);
                            }
                            Function1 function8 = (Function1) objX9;
                            Object objX10 = composer.x();
                            if (objX10 == composer$Companion$Empty$1) {
                                objX10 = new km(i7);
                                composer.q(objX10);
                            }
                            Function1 function9 = (Function1) objX10;
                            Object objX11 = composer.x();
                            if (objX11 == composer$Companion$Empty$1) {
                                objX11 = new nn(10);
                                composer.q(objX11);
                            }
                            BookingReservationScreenKt.a(BookingExperienceViewState.Loading.f54501a, false, false, bookingCTAState, snackbarHostState, function1, function2, function3, function4, function0, function5, function6, function7, function8, function9, (Function0) objX11, composer, 920325558, 224694);
                        } else {
                            composer.D();
                        }
                        break;
                    case 1:
                        Composer composer2 = (Composer) obj;
                        int iIntValue2 = ((Integer) obj2).intValue();
                        ComposableSingletons$BookingReservationScreenKt composableSingletons$BookingReservationScreenKt2 = ComposableSingletons$BookingReservationScreenKt.f54474a;
                        if (composer2.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                            BookingExperienceViewState.Success success = new BookingExperienceViewState.Success(MocksKt.f54567e, false, null, null, null, null, 56, null);
                            BookingCTAState bookingCTAState2 = BookingCTAState.IDLE;
                            SnackbarHostState snackbarHostState2 = new SnackbarHostState();
                            Object objX12 = composer2.x();
                            if (objX12 == composer$Companion$Empty$1) {
                                objX12 = new km(18);
                                composer2.q(objX12);
                            }
                            Function1 function10 = (Function1) objX12;
                            Object objX13 = composer2.x();
                            if (objX13 == composer$Companion$Empty$1) {
                                objX13 = new fl(i6, b2);
                                composer2.q(objX13);
                            }
                            Function2 function11 = (Function2) objX13;
                            Object objX14 = composer2.x();
                            if (objX14 == composer$Companion$Empty$1) {
                                objX14 = new km(19);
                                composer2.q(objX14);
                            }
                            Function1 function12 = (Function1) objX14;
                            Object objX15 = composer2.x();
                            if (objX15 == composer$Companion$Empty$1) {
                                objX15 = ComposableSingletons$BookingReservationScreenKt$lambda$354028097$1$4$1.f54479b;
                                composer2.q(objX15);
                            }
                            Function3 function13 = (Function3) objX15;
                            Object objX16 = composer2.x();
                            if (objX16 == composer$Companion$Empty$1) {
                                objX16 = new nn(11);
                                composer2.q(objX16);
                            }
                            Function0 function14 = (Function0) objX16;
                            Object objX17 = composer2.x();
                            if (objX17 == composer$Companion$Empty$1) {
                                objX17 = new nn(i13);
                                composer2.q(objX17);
                            }
                            Function0 function15 = (Function0) objX17;
                            Object objX18 = composer2.x();
                            if (objX18 == composer$Companion$Empty$1) {
                                objX18 = new fl(25, b2);
                                composer2.q(objX18);
                            }
                            Function2 function16 = (Function2) objX18;
                            Object objX19 = composer2.x();
                            if (objX19 == composer$Companion$Empty$1) {
                                objX19 = new nn(i12);
                                composer2.q(objX19);
                            }
                            Function0 function17 = (Function0) objX19;
                            Object objX20 = composer2.x();
                            if (objX20 == composer$Companion$Empty$1) {
                                objX20 = new km(20);
                                composer2.q(objX20);
                            }
                            Function1 function18 = (Function1) objX20;
                            Object objX21 = composer2.x();
                            if (objX21 == composer$Companion$Empty$1) {
                                objX21 = new km(i14);
                                composer2.q(objX21);
                            }
                            Function1 function19 = (Function1) objX21;
                            Object objX22 = composer2.x();
                            if (objX22 == composer$Companion$Empty$1) {
                                objX22 = new nn(14);
                                composer2.q(objX22);
                            }
                            BookingReservationScreenKt.a(success, false, false, bookingCTAState2, snackbarHostState2, function10, function11, function12, function13, function14, function15, function16, function17, function18, function19, (Function0) objX22, composer2, 920325552, 224694);
                        } else {
                            composer2.D();
                        }
                        break;
                    case 2:
                        Composer composer3 = (Composer) obj;
                        int iIntValue3 = ((Integer) obj2).intValue();
                        ComposableSingletons$BookingReservationScreenKt composableSingletons$BookingReservationScreenKt3 = ComposableSingletons$BookingReservationScreenKt.f54474a;
                        if (composer3.p(iIntValue3 & 1, (iIntValue3 & 3) != 2)) {
                            OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                            BookingExperienceViewState.Success success2 = new BookingExperienceViewState.Success(MocksKt.f54567e, true, null, null, null, null, 56, null);
                            BookingCTAState bookingCTAState3 = BookingCTAState.IDLE;
                            SnackbarHostState snackbarHostState3 = new SnackbarHostState();
                            Object objX23 = composer3.x();
                            if (objX23 == composer$Companion$Empty$1) {
                                objX23 = new km(i11);
                                composer3.q(objX23);
                            }
                            Function1 function20 = (Function1) objX23;
                            Object objX24 = composer3.x();
                            if (objX24 == composer$Companion$Empty$1) {
                                objX24 = new fl(i16, b2);
                                composer3.q(objX24);
                            }
                            Function2 function21 = (Function2) objX24;
                            Object objX25 = composer3.x();
                            if (objX25 == composer$Companion$Empty$1) {
                                objX25 = new km(i10);
                                composer3.q(objX25);
                            }
                            Function1 function22 = (Function1) objX25;
                            Object objX26 = composer3.x();
                            if (objX26 == composer$Companion$Empty$1) {
                                objX26 = ComposableSingletons$BookingReservationScreenKt$lambda$885085688$1$4$1.f54480b;
                                composer3.q(objX26);
                            }
                            Function3 function23 = (Function3) objX26;
                            Object objX27 = composer3.x();
                            if (objX27 == composer$Companion$Empty$1) {
                                objX27 = new nn(i9);
                                composer3.q(objX27);
                            }
                            Function0 function24 = (Function0) objX27;
                            Object objX28 = composer3.x();
                            if (objX28 == composer$Companion$Empty$1) {
                                objX28 = new nn(i8);
                                composer3.q(objX28);
                            }
                            Function0 function25 = (Function0) objX28;
                            Object objX29 = composer3.x();
                            if (objX29 == composer$Companion$Empty$1) {
                                objX29 = new fl(i15, b2);
                                composer3.q(objX29);
                            }
                            Function2 function26 = (Function2) objX29;
                            Object objX30 = composer3.x();
                            if (objX30 == composer$Companion$Empty$1) {
                                objX30 = new nn(i7);
                                composer3.q(objX30);
                            }
                            Function0 function27 = (Function0) objX30;
                            Object objX31 = composer3.x();
                            if (objX31 == composer$Companion$Empty$1) {
                                objX31 = new km(i6);
                                composer3.q(objX31);
                            }
                            Function1 function28 = (Function1) objX31;
                            Object objX32 = composer3.x();
                            if (objX32 == composer$Companion$Empty$1) {
                                objX32 = new km(25);
                                composer3.q(objX32);
                            }
                            Function1 function29 = (Function1) objX32;
                            Object objX33 = composer3.x();
                            if (objX33 == composer$Companion$Empty$1) {
                                objX33 = new nn(18);
                                composer3.q(objX33);
                            }
                            BookingReservationScreenKt.a(success2, true, true, bookingCTAState3, snackbarHostState3, function20, function21, function22, function23, function24, function25, function26, function27, function28, function29, (Function0) objX33, composer3, 920325552, 224694);
                        } else {
                            composer3.D();
                        }
                        break;
                    default:
                        Composer composer4 = (Composer) obj;
                        int iIntValue4 = ((Integer) obj2).intValue();
                        ComposableSingletons$BookingReservationScreenKt composableSingletons$BookingReservationScreenKt4 = ComposableSingletons$BookingReservationScreenKt.f54474a;
                        if (composer4.p(iIntValue4 & 1, (iIntValue4 & 3) != 2)) {
                            OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                            BookingCTAState bookingCTAState4 = BookingCTAState.ERROR;
                            SnackbarHostState snackbarHostState4 = new SnackbarHostState();
                            Object objX34 = composer4.x();
                            if (objX34 == composer$Companion$Empty$1) {
                                objX34 = new km(i16);
                                composer4.q(objX34);
                            }
                            Function1 function30 = (Function1) objX34;
                            Object objX35 = composer4.x();
                            if (objX35 == composer$Companion$Empty$1) {
                                objX35 = new fl(28, b2);
                                composer4.q(objX35);
                            }
                            Function2 function31 = (Function2) objX35;
                            Object objX36 = composer4.x();
                            if (objX36 == composer$Companion$Empty$1) {
                                objX36 = new km(i15);
                                composer4.q(objX36);
                            }
                            Function1 function32 = (Function1) objX36;
                            Object objX37 = composer4.x();
                            if (objX37 == composer$Companion$Empty$1) {
                                objX37 = ComposableSingletons$BookingReservationScreenKt$lambda$1638235068$1$4$1.f54477b;
                                composer4.q(objX37);
                            }
                            Function3 function33 = (Function3) objX37;
                            Object objX38 = composer4.x();
                            if (objX38 == composer$Companion$Empty$1) {
                                objX38 = new nn(3);
                                composer4.q(objX38);
                            }
                            Function0 function34 = (Function0) objX38;
                            Object objX39 = composer4.x();
                            if (objX39 == composer$Companion$Empty$1) {
                                objX39 = new nn(4);
                                composer4.q(objX39);
                            }
                            Function0 function35 = (Function0) objX39;
                            Object objX40 = composer4.x();
                            if (objX40 == composer$Companion$Empty$1) {
                                objX40 = new fl(i14, b2);
                                composer4.q(objX40);
                            }
                            Function2 function36 = (Function2) objX40;
                            Object objX41 = composer4.x();
                            if (objX41 == composer$Companion$Empty$1) {
                                objX41 = new nn(5);
                                composer4.q(objX41);
                            }
                            Function0 function37 = (Function0) objX41;
                            Object objX42 = composer4.x();
                            if (objX42 == composer$Companion$Empty$1) {
                                objX42 = new km(i13);
                                composer4.q(objX42);
                            }
                            Function1 function38 = (Function1) objX42;
                            Object objX43 = composer4.x();
                            if (objX43 == composer$Companion$Empty$1) {
                                objX43 = new km(i12);
                                composer4.q(objX43);
                            }
                            Function1 function39 = (Function1) objX43;
                            Object objX44 = composer4.x();
                            if (objX44 == composer$Companion$Empty$1) {
                                objX44 = new nn(6);
                                composer4.q(objX44);
                            }
                            BookingReservationScreenKt.a(BookingExperienceViewState.Error.f54500a, false, false, bookingCTAState4, snackbarHostState4, function30, function31, function32, function33, function34, function35, function36, function37, function38, function39, (Function0) objX44, composer4, 920325558, 224694);
                        } else {
                            composer4.D();
                        }
                        break;
                }
                return Unit.f71739a;
            }
        });
        final int i5 = 3;
        new ComposableLambdaImpl(-1638235068, false, new Function2() { // from class: com.vuitton.android.presentation.screen.booking.form.components.a
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                int i6 = i5;
                int i7 = 24;
                int i8 = 17;
                int i9 = 16;
                int i10 = 15;
                int i11 = 23;
                int i12 = 22;
                int i13 = 13;
                int i14 = 12;
                int i15 = 21;
                int i16 = 27;
                int i17 = 26;
                Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                byte b2 = 0;
                switch (i6) {
                    case 0:
                        Composer composer = (Composer) obj;
                        int iIntValue = ((Integer) obj2).intValue();
                        ComposableSingletons$BookingReservationScreenKt composableSingletons$BookingReservationScreenKt = ComposableSingletons$BookingReservationScreenKt.f54474a;
                        if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                            OpaqueKey opaqueKey = ComposerKt.f7940a;
                            BookingCTAState bookingCTAState = BookingCTAState.LOADING;
                            SnackbarHostState snackbarHostState = new SnackbarHostState();
                            Object objX = composer.x();
                            if (objX == composer$Companion$Empty$1) {
                                objX = new km(14);
                                composer.q(objX);
                            }
                            Function1 function1 = (Function1) objX;
                            Object objX2 = composer.x();
                            if (objX2 == composer$Companion$Empty$1) {
                                objX2 = new fl(i12, b2);
                                composer.q(objX2);
                            }
                            Function2 function2 = (Function2) objX2;
                            Object objX3 = composer.x();
                            if (objX3 == composer$Companion$Empty$1) {
                                objX3 = new km(i10);
                                composer.q(objX3);
                            }
                            Function1 function3 = (Function1) objX3;
                            Object objX4 = composer.x();
                            if (objX4 == composer$Companion$Empty$1) {
                                objX4 = ComposableSingletons$BookingReservationScreenKt$lambda$1871925576$1$4$1.f54478b;
                                composer.q(objX4);
                            }
                            Function3 function4 = (Function3) objX4;
                            Object objX5 = composer.x();
                            if (objX5 == composer$Companion$Empty$1) {
                                objX5 = new nn(7);
                                composer.q(objX5);
                            }
                            Function0 function0 = (Function0) objX5;
                            Object objX6 = composer.x();
                            if (objX6 == composer$Companion$Empty$1) {
                                objX6 = new nn(8);
                                composer.q(objX6);
                            }
                            Function0 function5 = (Function0) objX6;
                            Object objX7 = composer.x();
                            if (objX7 == composer$Companion$Empty$1) {
                                objX7 = new fl(i11, b2);
                                composer.q(objX7);
                            }
                            Function2 function6 = (Function2) objX7;
                            Object objX8 = composer.x();
                            if (objX8 == composer$Companion$Empty$1) {
                                objX8 = new nn(9);
                                composer.q(objX8);
                            }
                            Function0 function7 = (Function0) objX8;
                            Object objX9 = composer.x();
                            if (objX9 == composer$Companion$Empty$1) {
                                objX9 = new km(i9);
                                composer.q(objX9);
                            }
                            Function1 function8 = (Function1) objX9;
                            Object objX10 = composer.x();
                            if (objX10 == composer$Companion$Empty$1) {
                                objX10 = new km(i8);
                                composer.q(objX10);
                            }
                            Function1 function9 = (Function1) objX10;
                            Object objX11 = composer.x();
                            if (objX11 == composer$Companion$Empty$1) {
                                objX11 = new nn(10);
                                composer.q(objX11);
                            }
                            BookingReservationScreenKt.a(BookingExperienceViewState.Loading.f54501a, false, false, bookingCTAState, snackbarHostState, function1, function2, function3, function4, function0, function5, function6, function7, function8, function9, (Function0) objX11, composer, 920325558, 224694);
                        } else {
                            composer.D();
                        }
                        break;
                    case 1:
                        Composer composer2 = (Composer) obj;
                        int iIntValue2 = ((Integer) obj2).intValue();
                        ComposableSingletons$BookingReservationScreenKt composableSingletons$BookingReservationScreenKt2 = ComposableSingletons$BookingReservationScreenKt.f54474a;
                        if (composer2.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                            BookingExperienceViewState.Success success = new BookingExperienceViewState.Success(MocksKt.f54567e, false, null, null, null, null, 56, null);
                            BookingCTAState bookingCTAState2 = BookingCTAState.IDLE;
                            SnackbarHostState snackbarHostState2 = new SnackbarHostState();
                            Object objX12 = composer2.x();
                            if (objX12 == composer$Companion$Empty$1) {
                                objX12 = new km(18);
                                composer2.q(objX12);
                            }
                            Function1 function10 = (Function1) objX12;
                            Object objX13 = composer2.x();
                            if (objX13 == composer$Companion$Empty$1) {
                                objX13 = new fl(i7, b2);
                                composer2.q(objX13);
                            }
                            Function2 function11 = (Function2) objX13;
                            Object objX14 = composer2.x();
                            if (objX14 == composer$Companion$Empty$1) {
                                objX14 = new km(19);
                                composer2.q(objX14);
                            }
                            Function1 function12 = (Function1) objX14;
                            Object objX15 = composer2.x();
                            if (objX15 == composer$Companion$Empty$1) {
                                objX15 = ComposableSingletons$BookingReservationScreenKt$lambda$354028097$1$4$1.f54479b;
                                composer2.q(objX15);
                            }
                            Function3 function13 = (Function3) objX15;
                            Object objX16 = composer2.x();
                            if (objX16 == composer$Companion$Empty$1) {
                                objX16 = new nn(11);
                                composer2.q(objX16);
                            }
                            Function0 function14 = (Function0) objX16;
                            Object objX17 = composer2.x();
                            if (objX17 == composer$Companion$Empty$1) {
                                objX17 = new nn(i14);
                                composer2.q(objX17);
                            }
                            Function0 function15 = (Function0) objX17;
                            Object objX18 = composer2.x();
                            if (objX18 == composer$Companion$Empty$1) {
                                objX18 = new fl(25, b2);
                                composer2.q(objX18);
                            }
                            Function2 function16 = (Function2) objX18;
                            Object objX19 = composer2.x();
                            if (objX19 == composer$Companion$Empty$1) {
                                objX19 = new nn(i13);
                                composer2.q(objX19);
                            }
                            Function0 function17 = (Function0) objX19;
                            Object objX20 = composer2.x();
                            if (objX20 == composer$Companion$Empty$1) {
                                objX20 = new km(20);
                                composer2.q(objX20);
                            }
                            Function1 function18 = (Function1) objX20;
                            Object objX21 = composer2.x();
                            if (objX21 == composer$Companion$Empty$1) {
                                objX21 = new km(i15);
                                composer2.q(objX21);
                            }
                            Function1 function19 = (Function1) objX21;
                            Object objX22 = composer2.x();
                            if (objX22 == composer$Companion$Empty$1) {
                                objX22 = new nn(14);
                                composer2.q(objX22);
                            }
                            BookingReservationScreenKt.a(success, false, false, bookingCTAState2, snackbarHostState2, function10, function11, function12, function13, function14, function15, function16, function17, function18, function19, (Function0) objX22, composer2, 920325552, 224694);
                        } else {
                            composer2.D();
                        }
                        break;
                    case 2:
                        Composer composer3 = (Composer) obj;
                        int iIntValue3 = ((Integer) obj2).intValue();
                        ComposableSingletons$BookingReservationScreenKt composableSingletons$BookingReservationScreenKt3 = ComposableSingletons$BookingReservationScreenKt.f54474a;
                        if (composer3.p(iIntValue3 & 1, (iIntValue3 & 3) != 2)) {
                            OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                            BookingExperienceViewState.Success success2 = new BookingExperienceViewState.Success(MocksKt.f54567e, true, null, null, null, null, 56, null);
                            BookingCTAState bookingCTAState3 = BookingCTAState.IDLE;
                            SnackbarHostState snackbarHostState3 = new SnackbarHostState();
                            Object objX23 = composer3.x();
                            if (objX23 == composer$Companion$Empty$1) {
                                objX23 = new km(i12);
                                composer3.q(objX23);
                            }
                            Function1 function20 = (Function1) objX23;
                            Object objX24 = composer3.x();
                            if (objX24 == composer$Companion$Empty$1) {
                                objX24 = new fl(i17, b2);
                                composer3.q(objX24);
                            }
                            Function2 function21 = (Function2) objX24;
                            Object objX25 = composer3.x();
                            if (objX25 == composer$Companion$Empty$1) {
                                objX25 = new km(i11);
                                composer3.q(objX25);
                            }
                            Function1 function22 = (Function1) objX25;
                            Object objX26 = composer3.x();
                            if (objX26 == composer$Companion$Empty$1) {
                                objX26 = ComposableSingletons$BookingReservationScreenKt$lambda$885085688$1$4$1.f54480b;
                                composer3.q(objX26);
                            }
                            Function3 function23 = (Function3) objX26;
                            Object objX27 = composer3.x();
                            if (objX27 == composer$Companion$Empty$1) {
                                objX27 = new nn(i10);
                                composer3.q(objX27);
                            }
                            Function0 function24 = (Function0) objX27;
                            Object objX28 = composer3.x();
                            if (objX28 == composer$Companion$Empty$1) {
                                objX28 = new nn(i9);
                                composer3.q(objX28);
                            }
                            Function0 function25 = (Function0) objX28;
                            Object objX29 = composer3.x();
                            if (objX29 == composer$Companion$Empty$1) {
                                objX29 = new fl(i16, b2);
                                composer3.q(objX29);
                            }
                            Function2 function26 = (Function2) objX29;
                            Object objX30 = composer3.x();
                            if (objX30 == composer$Companion$Empty$1) {
                                objX30 = new nn(i8);
                                composer3.q(objX30);
                            }
                            Function0 function27 = (Function0) objX30;
                            Object objX31 = composer3.x();
                            if (objX31 == composer$Companion$Empty$1) {
                                objX31 = new km(i7);
                                composer3.q(objX31);
                            }
                            Function1 function28 = (Function1) objX31;
                            Object objX32 = composer3.x();
                            if (objX32 == composer$Companion$Empty$1) {
                                objX32 = new km(25);
                                composer3.q(objX32);
                            }
                            Function1 function29 = (Function1) objX32;
                            Object objX33 = composer3.x();
                            if (objX33 == composer$Companion$Empty$1) {
                                objX33 = new nn(18);
                                composer3.q(objX33);
                            }
                            BookingReservationScreenKt.a(success2, true, true, bookingCTAState3, snackbarHostState3, function20, function21, function22, function23, function24, function25, function26, function27, function28, function29, (Function0) objX33, composer3, 920325552, 224694);
                        } else {
                            composer3.D();
                        }
                        break;
                    default:
                        Composer composer4 = (Composer) obj;
                        int iIntValue4 = ((Integer) obj2).intValue();
                        ComposableSingletons$BookingReservationScreenKt composableSingletons$BookingReservationScreenKt4 = ComposableSingletons$BookingReservationScreenKt.f54474a;
                        if (composer4.p(iIntValue4 & 1, (iIntValue4 & 3) != 2)) {
                            OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                            BookingCTAState bookingCTAState4 = BookingCTAState.ERROR;
                            SnackbarHostState snackbarHostState4 = new SnackbarHostState();
                            Object objX34 = composer4.x();
                            if (objX34 == composer$Companion$Empty$1) {
                                objX34 = new km(i17);
                                composer4.q(objX34);
                            }
                            Function1 function30 = (Function1) objX34;
                            Object objX35 = composer4.x();
                            if (objX35 == composer$Companion$Empty$1) {
                                objX35 = new fl(28, b2);
                                composer4.q(objX35);
                            }
                            Function2 function31 = (Function2) objX35;
                            Object objX36 = composer4.x();
                            if (objX36 == composer$Companion$Empty$1) {
                                objX36 = new km(i16);
                                composer4.q(objX36);
                            }
                            Function1 function32 = (Function1) objX36;
                            Object objX37 = composer4.x();
                            if (objX37 == composer$Companion$Empty$1) {
                                objX37 = ComposableSingletons$BookingReservationScreenKt$lambda$1638235068$1$4$1.f54477b;
                                composer4.q(objX37);
                            }
                            Function3 function33 = (Function3) objX37;
                            Object objX38 = composer4.x();
                            if (objX38 == composer$Companion$Empty$1) {
                                objX38 = new nn(3);
                                composer4.q(objX38);
                            }
                            Function0 function34 = (Function0) objX38;
                            Object objX39 = composer4.x();
                            if (objX39 == composer$Companion$Empty$1) {
                                objX39 = new nn(4);
                                composer4.q(objX39);
                            }
                            Function0 function35 = (Function0) objX39;
                            Object objX40 = composer4.x();
                            if (objX40 == composer$Companion$Empty$1) {
                                objX40 = new fl(i15, b2);
                                composer4.q(objX40);
                            }
                            Function2 function36 = (Function2) objX40;
                            Object objX41 = composer4.x();
                            if (objX41 == composer$Companion$Empty$1) {
                                objX41 = new nn(5);
                                composer4.q(objX41);
                            }
                            Function0 function37 = (Function0) objX41;
                            Object objX42 = composer4.x();
                            if (objX42 == composer$Companion$Empty$1) {
                                objX42 = new km(i14);
                                composer4.q(objX42);
                            }
                            Function1 function38 = (Function1) objX42;
                            Object objX43 = composer4.x();
                            if (objX43 == composer$Companion$Empty$1) {
                                objX43 = new km(i13);
                                composer4.q(objX43);
                            }
                            Function1 function39 = (Function1) objX43;
                            Object objX44 = composer4.x();
                            if (objX44 == composer$Companion$Empty$1) {
                                objX44 = new nn(6);
                                composer4.q(objX44);
                            }
                            BookingReservationScreenKt.a(BookingExperienceViewState.Error.f54500a, false, false, bookingCTAState4, snackbarHostState4, function30, function31, function32, function33, function34, function35, function36, function37, function38, function39, (Function0) objX44, composer4, 920325558, 224694);
                        } else {
                            composer4.D();
                        }
                        break;
                }
                return Unit.f71739a;
            }
        });
    }
}
