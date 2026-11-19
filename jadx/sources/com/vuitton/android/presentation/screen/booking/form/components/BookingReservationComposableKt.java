package com.vuitton.android.presentation.screen.booking.form.components;

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
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.lifecycle.compose.FlowExtKt;
import com.vuitton.android.presentation.screen.booking.common.models.BookingCTAState;
import com.vuitton.android.presentation.screen.booking.form.BookingExperienceViewModel;
import com.vuitton.android.presentation.screen.booking.form.models.BookingExperienceViewState;
import com.vuitton.android.presentation.screen.booking.form.models.BookingFormTrackingUiModel;
import com.vuitton.android.presentation.screen.booking.form.models.BookingFormUiModel;
import com.vuitton.foundation.model.domain.model.booking.BookingId;
import com.vuitton.foundation.model.domain.model.booking.PreBookId;
import defpackage.fg;
import defpackage.k;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.reflect.KFunction;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0004²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002²\u0006\f\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState;", "viewState", "Lcom/vuitton/android/presentation/screen/booking/common/models/BookingCTAState;", "bookingCTAState", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class BookingReservationComposableKt {
    public static final void a(BookingExperienceViewModel bookingExperienceViewModel, StateFlow stateFlow, SnackbarHostState snackbarHostState, Function1 function1, final Function3 function3, Function0 function0, Function0 function2, Function1 function4, Composer composer, int i2) {
        GapComposer gapComposer;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        int i3;
        boolean z;
        final BookingExperienceViewModel bookingExperienceViewModel2 = bookingExperienceViewModel;
        bookingExperienceViewModel2.getClass();
        stateFlow.getClass();
        snackbarHostState.getClass();
        function1.getClass();
        function3.getClass();
        function0.getClass();
        function2.getClass();
        function4.getClass();
        GapComposer gapComposerH = composer.h(-1964204365);
        int i4 = (gapComposerH.K(bookingExperienceViewModel2) ? 4 : 2) | i2 | (gapComposerH.y(stateFlow) ? 32 : 16);
        if ((i2 & 3072) == 0) {
            i4 |= gapComposerH.y(function1) ? 2048 : 1024;
        }
        int i5 = i4 | (gapComposerH.y(function3) ? 16384 : 8192) | (gapComposerH.y(function0) ? 131072 : 65536) | (gapComposerH.y(function2) ? 1048576 : 524288) | (gapComposerH.y(function4) ? 8388608 : 4194304);
        if (gapComposerH.p(i5 & 1, (4793491 & i5) != 4793490)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            Unit unit = Unit.f71739a;
            int i6 = i5 & 14;
            boolean z2 = i6 == 4;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
            if (z2 || objX == composer$Companion$Empty$2) {
                objX = new BookingReservationComposableKt$BookingReservationComposable$1$1(bookingExperienceViewModel2, null);
                gapComposerH.q(objX);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX);
            boolean zY = (i6 == 4) | gapComposerH.y(context);
            Object objX2 = gapComposerH.x();
            if (zY || objX2 == composer$Companion$Empty$2) {
                objX2 = new BookingReservationComposableKt$BookingReservationComposable$2$1(bookingExperienceViewModel2, snackbarHostState, context, null);
                gapComposerH.q(objX2);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX2);
            MutableState mutableStateC = FlowExtKt.c(bookingExperienceViewModel2.getF54437k(), null, gapComposerH, 0, 7);
            MutableState mutableStateC2 = FlowExtKt.c(stateFlow, null, gapComposerH, (i5 >> 3) & 14, 7);
            BookingExperienceViewState bookingExperienceViewState = (BookingExperienceViewState) mutableStateC.getF10755b();
            BookingCTAState bookingCTAState = (BookingCTAState) mutableStateC2.getF10755b();
            boolean p = bookingExperienceViewModel2.getP();
            boolean o = bookingExperienceViewModel2.getO();
            boolean z3 = i6 == 4;
            Object objX3 = gapComposerH.x();
            if (z3 || objX3 == composer$Companion$Empty$2) {
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                i3 = i5;
                z = false;
                BookingReservationComposableKt$BookingReservationComposable$3$1 bookingReservationComposableKt$BookingReservationComposable$3$1 = new BookingReservationComposableKt$BookingReservationComposable$3$1(1, bookingExperienceViewModel2, BookingExperienceViewModel.class, "toggleModule", "toggleModule(Ljava/lang/String;)V", 0);
                gapComposerH.q(bookingReservationComposableKt$BookingReservationComposable$3$1);
                objX3 = bookingReservationComposableKt$BookingReservationComposable$3$1;
            } else {
                i3 = i5;
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                z = false;
            }
            KFunction kFunction = (KFunction) objX3;
            boolean z4 = i6 != 4 ? z : true;
            Object objX4 = gapComposerH.x();
            if (z4 || objX4 == composer$Companion$Empty$1) {
                objX4 = new BookingReservationComposableKt$BookingReservationComposable$4$1(2, bookingExperienceViewModel, BookingExperienceViewModel.class, "updateModuleData", "updateModuleData(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel;)V", 0);
                gapComposerH.q(objX4);
            }
            KFunction kFunction2 = (KFunction) objX4;
            boolean z5 = i6 != 4 ? z : true;
            Object objX5 = gapComposerH.x();
            if (z5 || objX5 == composer$Companion$Empty$1) {
                objX5 = new BookingReservationComposableKt$BookingReservationComposable$5$1(2, bookingExperienceViewModel, BookingExperienceViewModel.class, "openCategoryEditor", "openCategoryEditor(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextCategory;)V", 0);
                gapComposerH.q(objX5);
            }
            KFunction kFunction3 = (KFunction) objX5;
            boolean z6 = i6 != 4 ? z : true;
            Object objX6 = gapComposerH.x();
            if (z6 || objX6 == composer$Companion$Empty$1) {
                objX6 = new BookingReservationComposableKt$BookingReservationComposable$6$1(0, bookingExperienceViewModel, BookingExperienceViewModel.class, "dismissCategoryEditor", "dismissCategoryEditor()V", 0);
                gapComposerH.q(objX6);
            }
            KFunction kFunction4 = (KFunction) objX6;
            boolean z7 = i6 != 4 ? z : true;
            Object objX7 = gapComposerH.x();
            if (z7 || objX7 == composer$Companion$Empty$1) {
                objX7 = new BookingReservationComposableKt$BookingReservationComposable$7$1(1, bookingExperienceViewModel, BookingExperienceViewModel.class, "confirmCategoryEditor", "confirmCategoryEditor(Ljava/util/List;)V", 0);
                gapComposerH.q(objX7);
            }
            KFunction kFunction5 = (KFunction) objX7;
            boolean z8 = i6 != 4 ? z : true;
            Object objX8 = gapComposerH.x();
            if (z8 || objX8 == composer$Companion$Empty$1) {
                bookingExperienceViewModel2 = bookingExperienceViewModel;
                objX8 = new BookingReservationComposableKt$BookingReservationComposable$8$1(0, bookingExperienceViewModel2, BookingExperienceViewModel.class, "initialize", "initialize()V", 0);
                gapComposerH.q(objX8);
            } else {
                bookingExperienceViewModel2 = bookingExperienceViewModel;
            }
            KFunction kFunction6 = (KFunction) objX8;
            Function1 function5 = (Function1) kFunction;
            Function2 function6 = (Function2) kFunction2;
            boolean z9 = ((i3 & 7168) == 2048 ? true : z) | (i6 != 4 ? z : true);
            Object objX9 = gapComposerH.x();
            if (z9 || objX9 == composer$Companion$Empty$1) {
                objX9 = new k(bookingExperienceViewModel2, function1, 26);
                gapComposerH.q(objX9);
            }
            Function1 function7 = (Function1) objX9;
            boolean z10 = (i6 != 4 ? z : true) | ((i3 & 57344) != 16384 ? z : true);
            Object objX10 = gapComposerH.x();
            if (z10 || objX10 == composer$Companion$Empty$1) {
                objX10 = new Function3<PreBookId, BookingId, BookingFormUiModel, Unit>() { // from class: com.vuitton.android.presentation.screen.booking.form.components.BookingReservationComposableKt$BookingReservationComposable$10$1
                    @Override // kotlin.jvm.functions.Function3
                    public final Object A(Object obj, Object obj2, Object obj3) {
                        PreBookId preBookId = (PreBookId) obj;
                        String str = preBookId != null ? preBookId.f66774a : null;
                        BookingId bookingId = (BookingId) obj2;
                        String str2 = bookingId != null ? bookingId.f66743a : null;
                        BookingFormUiModel bookingFormUiModel = (BookingFormUiModel) obj3;
                        bookingFormUiModel.getClass();
                        String str3 = bookingFormUiModel.f54556a;
                        BookingExperienceViewModel bookingExperienceViewModel3 = bookingExperienceViewModel2;
                        bookingExperienceViewModel3.Ma(new BookingFormTrackingUiModel.ContinueEvent(str3, bookingExperienceViewModel3.getP()));
                        function3.A(str != null ? new PreBookId(str) : null, str2 != null ? new BookingId(str2) : null, bookingFormUiModel);
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(objX10);
            }
            gapComposer = gapComposerH;
            BookingReservationScreenKt.a(bookingExperienceViewState, p, o, bookingCTAState, snackbarHostState, function5, function6, function7, (Function3) objX10, function0, function2, (Function2) kFunction3, (Function0) kFunction4, (Function1) kFunction5, function4, (Function0) kFunction6, gapComposer, 24576 | ((i3 << 12) & 1879048192), ((i3 >> 18) & 14) | (57344 & (i3 >> 9)));
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new fg(bookingExperienceViewModel2, stateFlow, snackbarHostState, function1, function3, function0, function2, function4, i2);
        }
    }
}
