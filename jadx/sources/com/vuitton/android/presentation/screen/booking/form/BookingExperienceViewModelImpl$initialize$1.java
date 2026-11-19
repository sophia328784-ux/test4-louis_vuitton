package com.vuitton.android.presentation.screen.booking.form;

import com.vuitton.android.data.monitoring.DynatraceMonitorAction;
import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.booking.BookingMonitoring;
import com.vuitton.android.domain.usecase.booking.GetBookingFormUseCase;
import com.vuitton.android.presentation.screen.booking.form.models.BookingExperienceHeaderUiModel;
import com.vuitton.android.presentation.screen.booking.form.models.BookingExperienceViewState;
import com.vuitton.android.presentation.screen.booking.form.models.BookingFormTrackingUiModel;
import com.vuitton.android.presentation.screen.booking.form.models.BookingFormUiModel;
import com.vuitton.android.presentation.screen.booking.form.models.BookingMapperKt;
import com.vuitton.android.presentation.screen.booking.list.models.BookingTypeUiModel;
import com.vuitton.android.presentation.screen.booking.list.models.BookingUiModelMapperKt;
import com.vuitton.foundation.model.domain.model.booking.BookingForm;
import com.vuitton.foundation.model.domain.model.booking.BookingFormHeader;
import com.vuitton.foundation.model.domain.model.booking.BookingFormModule;
import com.vuitton.foundation.model.domain.model.booking.BookingId;
import com.vuitton.foundation.model.domain.model.booking.BookingType;
import com.vuitton.foundation.model.domain.model.booking.PreBookId;
import defpackage.md;
import defpackage.v40;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;
import net.rtccloud.sdk.Sink;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.booking.form.BookingExperienceViewModelImpl$initialize$1", f = "BookingExperienceViewModelImpl.kt", l = {Sink.ORIENTATION_90}, m = "invokeSuspend", v = 2)
final class BookingExperienceViewModelImpl$initialize$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MonitorAction f54438b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f54439c;
    public final /* synthetic */ BookingExperienceViewModelImpl d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BookingExperienceViewModelImpl$initialize$1(BookingExperienceViewModelImpl bookingExperienceViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.d = bookingExperienceViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new BookingExperienceViewModelImpl$initialize$1(this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((BookingExperienceViewModelImpl$initialize$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object obj2;
        MonitorAction monitorAction;
        BookingTypeUiModel bookingTypeUiModel;
        String str;
        String str2;
        BookingExperienceViewModelImpl bookingExperienceViewModelImpl = this.d;
        MutableStateFlow mutableStateFlow = bookingExperienceViewModelImpl.f54436j;
        String str3 = bookingExperienceViewModelImpl.f54431c;
        String str4 = bookingExperienceViewModelImpl.f54430b;
        String str5 = bookingExperienceViewModelImpl.f54429a;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f54439c;
        if (i2 == 0) {
            ResultKt.b(obj);
            DynatraceMonitorAction dynatraceMonitorActionA = bookingExperienceViewModelImpl.f54435i.a(bookingExperienceViewModelImpl.l, BookingMonitoring.Action.LoadForm.f48852a);
            dynatraceMonitorActionA.c(str5, "experienceId");
            GetBookingFormUseCase getBookingFormUseCase = bookingExperienceViewModelImpl.d;
            this.f54438b = dynatraceMonitorActionA;
            this.f54439c = 1;
            Object objA = getBookingFormUseCase.a(str5, str4, str3, this);
            if (objA == coroutineSingletons) {
                return coroutineSingletons;
            }
            obj2 = objA;
            monitorAction = dynatraceMonitorActionA;
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            monitorAction = this.f54438b;
            ResultKt.b(obj);
            obj2 = ((Result) obj).f71708b;
        }
        Result.Companion companion = Result.INSTANCE;
        if (!(obj2 instanceof Result.Failure)) {
            BookingForm bookingForm = (BookingForm) obj2;
            List listA = BookingExperienceViewModelImplKt.a(bookingForm.f66701c, bookingForm.f66702e);
            bookingExperienceViewModelImpl.q = listA;
            String str6 = bookingForm.f66699a;
            String str7 = bookingForm.f66700b;
            BookingFormHeader bookingFormHeader = bookingForm.d;
            bookingFormHeader.getClass();
            BookingExperienceHeaderUiModel bookingExperienceHeaderUiModel = new BookingExperienceHeaderUiModel(bookingFormHeader.f66704a, bookingFormHeader.f66705b, bookingFormHeader.f66706c, bookingFormHeader.d, bookingFormHeader.f66707e, bookingFormHeader.f66708f.f67108a, bookingFormHeader.g);
            List list = bookingForm.f66702e;
            ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(BookingMapperKt.b((BookingFormModule) it.next()));
            }
            BookingType bookingType = bookingForm.f66703f;
            bookingType.getClass();
            int i3 = BookingUiModelMapperKt.WhenMappings.f54625c[bookingType.ordinal()];
            if (i3 == 1) {
                bookingTypeUiModel = BookingTypeUiModel.APPOINTMENT;
            } else {
                if (i3 != 2) {
                    v40.g();
                    return null;
                }
                bookingTypeUiModel = BookingTypeUiModel.EXPERIENCE;
            }
            BookingFormUiModel bookingFormUiModelA = BookingFormUiModel.a(new BookingFormUiModel(str6, str7, bookingExperienceHeaderUiModel, arrayList, bookingTypeUiModel), listA);
            boolean zZc = bookingExperienceViewModelImpl.zc(listA);
            if (str4 != null) {
                PreBookId.Companion companion2 = PreBookId.INSTANCE;
                str = str4;
            } else {
                str = null;
            }
            if (str3 != null) {
                BookingId.Companion companion3 = BookingId.INSTANCE;
                str2 = str3;
            } else {
                str2 = null;
            }
            mutableStateFlow.setValue(new BookingExperienceViewState.Success(bookingFormUiModelA, zZc, str, str2, null, null, 48, null));
            bookingExperienceViewModelImpl.Ma(new BookingFormTrackingUiModel.BookingFormScreen(str5));
        }
        Throwable thA = Result.a(obj2);
        if (thA != null) {
            bookingExperienceViewModelImpl.g.c(BookingExperienceViewModelImplKt.f54444a, "Failed to load booking experience", thA);
            monitorAction.d(new BookingMonitoring.Error.LoadFormError(thA));
            mutableStateFlow.setValue(BookingExperienceViewState.Error.f54500a);
        }
        monitorAction.b();
        return Unit.f71739a;
    }
}
