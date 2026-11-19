package com.vuitton.android.presentation.screen.booking.form;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import com.vuitton.android.domain.monitoring.Monitor;
import com.vuitton.android.domain.usecase.booking.GetBookingFormUseCase;
import com.vuitton.android.domain.usecase.booking.PostBookingFormUpdateUseCase;
import com.vuitton.android.domain.usecase.dispatch.RequireUserInAppDispatchUseCase;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.android.presentation.screen.booking.form.models.BookingExperienceViewState;
import com.vuitton.android.presentation.screen.booking.form.models.BookingFormModuleDataUiModel;
import com.vuitton.android.presentation.screen.booking.form.models.BookingFormModuleUiModel;
import com.vuitton.android.presentation.screen.booking.form.models.BookingFormTrackingContext;
import com.vuitton.android.presentation.screen.booking.form.models.BookingFormTrackingUiModel;
import com.vuitton.android.presentation.screen.booking.form.models.BookingFormUiModel;
import com.vuitton.android.presentation.screen.booking.form.models.BookingMapperKt;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.analytics.AdditionalProperty;
import com.vuitton.foundation.model.domain.model.analytics.Hit;
import com.vuitton.foundation.model.domain.model.booking.BookingForm;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import dagger.assisted.Assisted;
import dagger.assisted.AssistedFactory;
import dagger.assisted.AssistedInject;
import defpackage.v40;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.SharedFlow;
import kotlinx.coroutines.flow.SharedFlowImpl;
import kotlinx.coroutines.flow.SharedFlowKt;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u0019Bm\b\u0007\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0003\u0012\n\b\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0001\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015¢\u0006\u0004\b\u0017\u0010\u0018¨\u0006\u001a"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;", "Landroidx/lifecycle/ViewModel;", "Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModel;", "", "experienceId", "prebookId", "bookingId", "", "isAdditional", "Lcom/vuitton/android/domain/usecase/booking/GetBookingFormUseCase;", "getBookingFormUseCase", "Lcom/vuitton/android/domain/usecase/booking/PostBookingFormUpdateUseCase;", "postBookingFormUpdateUseCase", "Lcom/vuitton/android/presentation/notification/NotificationBuilder;", "notificationBuilder", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "Lcom/vuitton/android/domain/monitoring/Monitor;", "monitor", "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;", "requireUserInAppDispatchUseCase", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/vuitton/android/domain/usecase/booking/GetBookingFormUseCase;Lcom/vuitton/android/domain/usecase/booking/PostBookingFormUpdateUseCase;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;)V", "Factory", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class BookingExperienceViewModelImpl extends ViewModel implements BookingExperienceViewModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f54429a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f54430b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f54431c;
    public final GetBookingFormUseCase d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final PostBookingFormUpdateUseCase f54432e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final NotificationBuilder f54433f;
    public final Logger g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AnalyticsTracker f54434h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Monitor f54435i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final MutableStateFlow f54436j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final StateFlow f54437k;
    public final InAppDispatch l;
    public final SharedFlowImpl m;
    public final SharedFlow n;
    public final boolean o;
    public final boolean p;
    public List q;
    public Job r;

    @AssistedFactory
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bg\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl$Factory;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface Factory {
        static /* synthetic */ BookingExperienceViewModelImpl a(Factory factory, String str, String str2, String str3, boolean z, int i2) {
            if ((i2 & 2) != 0) {
                str2 = null;
            }
            if ((i2 & 4) != 0) {
                str3 = null;
            }
            if ((i2 & 8) != 0) {
                z = false;
            }
            return factory.b(str, str2, str3, z);
        }

        BookingExperienceViewModelImpl b(String str, String str2, String str3, boolean z);
    }

    @AssistedInject
    public BookingExperienceViewModelImpl(@Assisted String str, @Assisted String str2, @Assisted String str3, @Assisted boolean z, GetBookingFormUseCase getBookingFormUseCase, PostBookingFormUpdateUseCase postBookingFormUpdateUseCase, NotificationBuilder notificationBuilder, Logger logger, AnalyticsTracker analyticsTracker, Monitor monitor, RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCase) {
        str.getClass();
        getBookingFormUseCase.getClass();
        postBookingFormUpdateUseCase.getClass();
        notificationBuilder.getClass();
        logger.getClass();
        analyticsTracker.getClass();
        monitor.getClass();
        requireUserInAppDispatchUseCase.getClass();
        this.f54429a = str;
        this.f54430b = str2;
        this.f54431c = str3;
        this.d = getBookingFormUseCase;
        this.f54432e = postBookingFormUpdateUseCase;
        this.f54433f = notificationBuilder;
        this.g = logger;
        this.f54434h = analyticsTracker;
        this.f54435i = monitor;
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(BookingExperienceViewState.Loading.f54501a);
        this.f54436j = mutableStateFlowA;
        this.f54437k = FlowKt.b(mutableStateFlowA);
        this.l = requireUserInAppDispatchUseCase.f49912a.b();
        SharedFlowImpl sharedFlowImplB = SharedFlowKt.b(0, 1, null, 5);
        this.m = sharedFlowImplB;
        this.n = FlowKt.a(sharedFlowImplB);
        this.o = (str2 == null && str3 == null && !z) ? false : true;
        this.p = (str2 == null && str3 == null) ? false : true;
        this.q = EmptyList.f71768b;
    }

    @Override // com.vuitton.android.presentation.screen.booking.form.BookingExperienceViewModel
    public final void K8(String str, BookingFormModuleDataUiModel.MultipleTextCategory multipleTextCategory) {
        str.getClass();
        multipleTextCategory.getClass();
        MutableStateFlow mutableStateFlow = this.f54436j;
        Object value = mutableStateFlow.getValue();
        BookingExperienceViewState.Success success = value instanceof BookingExperienceViewState.Success ? (BookingExperienceViewState.Success) value : null;
        if (success == null) {
            return;
        }
        mutableStateFlow.setValue(BookingExperienceViewState.Success.a(success, null, false, str, multipleTextCategory, 15));
        Ma(new BookingFormTrackingUiModel.MultipleTagScreen(this.f54429a, multipleTextCategory.f54518a));
    }

    @Override // com.vuitton.android.presentation.screen.booking.form.BookingExperienceViewModel
    public final void M6(String str) {
        str.getClass();
        MutableStateFlow mutableStateFlow = this.f54436j;
        Object value = mutableStateFlow.getValue();
        Object obj = null;
        BookingExperienceViewState.Success success = value instanceof BookingExperienceViewState.Success ? (BookingExperienceViewState.Success) value : null;
        if (success == null) {
            return;
        }
        BookingFormUiModel bookingFormUiModel = success.f54502a;
        for (Object obj2 : bookingFormUiModel.d) {
            if (Intrinsics.c(((BookingFormModuleUiModel) obj2).f54536a, str)) {
                obj = obj2;
                break;
            }
        }
        BookingFormModuleUiModel bookingFormModuleUiModel = (BookingFormModuleUiModel) obj;
        if (bookingFormModuleUiModel == null || !bookingFormModuleUiModel.f54541h) {
            return;
        }
        boolean z = bookingFormModuleUiModel.f54540f;
        boolean z2 = !z;
        List<BookingFormModuleUiModel> list = bookingFormUiModel.d;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
        for (BookingFormModuleUiModel bookingFormModuleUiModelA : list) {
            if (Intrinsics.c(bookingFormModuleUiModelA.f54536a, str)) {
                bookingFormModuleUiModelA = BookingFormModuleUiModel.a(bookingFormModuleUiModelA, z2, false, null, false, 4063);
            } else if (!z) {
                bookingFormModuleUiModelA = BookingFormModuleUiModel.a(bookingFormModuleUiModelA, false, false, null, false, 4063);
            }
            arrayList.add(bookingFormModuleUiModelA);
        }
        mutableStateFlow.setValue(BookingExperienceViewState.Success.a(success, BookingFormUiModel.a(bookingFormUiModel, arrayList), false, null, null, 62));
    }

    @Override // com.vuitton.android.presentation.screen.booking.form.BookingExperienceViewModel
    public final void Ma(BookingFormTrackingUiModel bookingFormTrackingUiModel) {
        Hit defaultEventHit;
        Hit.EventHit.DefaultEventHit defaultEventHit2;
        Hit defaultScreenHit;
        if (bookingFormTrackingUiModel instanceof BookingFormTrackingUiModel.BookingFormScreen) {
            defaultScreenHit = new Hit.ScreenHit.DefaultScreenHit(null, "booking_form", "booking_form", "booking", CollectionsKt.O(new AdditionalProperty.ExperienceId(CollectionsKt.O(((BookingFormTrackingUiModel.BookingFormScreen) bookingFormTrackingUiModel).f54545a))), 1, null);
        } else {
            if (bookingFormTrackingUiModel instanceof BookingFormTrackingUiModel.MultipleTagScreen) {
                BookingFormTrackingUiModel.MultipleTagScreen multipleTagScreen = (BookingFormTrackingUiModel.MultipleTagScreen) bookingFormTrackingUiModel;
                defaultEventHit = new Hit.ScreenHit.DefaultScreenHit(null, "multiple_tag", "multiple_tag", "booking", CollectionsKt.P(new AdditionalProperty.ExperienceId(CollectionsKt.O(multipleTagScreen.f54551a)), new AdditionalProperty.ContentId(multipleTagScreen.f54552b)), 1, null);
            } else {
                if (bookingFormTrackingUiModel instanceof BookingFormTrackingUiModel.SelectValueEvent) {
                    BookingFormTrackingUiModel.SelectValueEvent selectValueEvent = (BookingFormTrackingUiModel.SelectValueEvent) bookingFormTrackingUiModel;
                    AdditionalProperty.ExperienceId experienceId = new AdditionalProperty.ExperienceId(CollectionsKt.O(selectValueEvent.f54553a));
                    AdditionalProperty.ContentId contentId = new AdditionalProperty.ContentId(selectValueEvent.f54555c);
                    BookingFormTrackingContext.Companion companion = BookingFormTrackingContext.INSTANCE;
                    boolean z = selectValueEvent.d;
                    companion.getClass();
                    defaultEventHit2 = new Hit.EventHit.DefaultEventHit(null, "booking_form", "select_value", "booking_form", "click", "booking", CollectionsKt.P(experienceId, contentId, new AdditionalProperty.Context((z ? BookingFormTrackingContext.MODIFY : BookingFormTrackingContext.CREATION).getValue()), new AdditionalProperty.StepId(selectValueEvent.f54554b)), 1, null);
                } else if (bookingFormTrackingUiModel instanceof BookingFormTrackingUiModel.MultipleTagConfirmationEvent) {
                    BookingFormTrackingUiModel.MultipleTagConfirmationEvent multipleTagConfirmationEvent = (BookingFormTrackingUiModel.MultipleTagConfirmationEvent) bookingFormTrackingUiModel;
                    AdditionalProperty.ExperienceId experienceId2 = new AdditionalProperty.ExperienceId(CollectionsKt.O(multipleTagConfirmationEvent.f54548a));
                    AdditionalProperty.ContentId contentId2 = new AdditionalProperty.ContentId(CollectionsKt.K(multipleTagConfirmationEvent.f54550c, ",", null, null, null, 62));
                    BookingFormTrackingContext.Companion companion2 = BookingFormTrackingContext.INSTANCE;
                    boolean z2 = multipleTagConfirmationEvent.d;
                    companion2.getClass();
                    defaultEventHit2 = new Hit.EventHit.DefaultEventHit(null, "multiple_tag", "multiple_tag_confirmation", "booking_form", "click", "booking", CollectionsKt.P(experienceId2, contentId2, new AdditionalProperty.Context((z2 ? BookingFormTrackingContext.MODIFY : BookingFormTrackingContext.CREATION).getValue()), new AdditionalProperty.StepId(multipleTagConfirmationEvent.f54549b)), 1, null);
                } else {
                    if (!(bookingFormTrackingUiModel instanceof BookingFormTrackingUiModel.ContinueEvent)) {
                        v40.g();
                        return;
                    }
                    BookingFormTrackingUiModel.ContinueEvent continueEvent = (BookingFormTrackingUiModel.ContinueEvent) bookingFormTrackingUiModel;
                    AdditionalProperty.ExperienceId experienceId3 = new AdditionalProperty.ExperienceId(CollectionsKt.O(continueEvent.f54546a));
                    BookingFormTrackingContext.Companion companion3 = BookingFormTrackingContext.INSTANCE;
                    boolean z3 = continueEvent.f54547b;
                    companion3.getClass();
                    defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "booking_form", "booking_form_confirmation", "booking_form", "click", "booking", CollectionsKt.P(experienceId3, new AdditionalProperty.Context((z3 ? BookingFormTrackingContext.MODIFY : BookingFormTrackingContext.CREATION).getValue())), 1, null);
                }
                defaultScreenHit = defaultEventHit2;
            }
            defaultScreenHit = defaultEventHit;
        }
        this.f54434h.a(defaultScreenHit);
    }

    @Override // com.vuitton.android.presentation.screen.booking.form.BookingExperienceViewModel
    /* JADX INFO: renamed from: U7, reason: from getter */
    public final boolean getO() {
        return this.o;
    }

    @Override // com.vuitton.android.presentation.screen.booking.form.BookingExperienceViewModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final StateFlow getF54437k() {
        return this.f54437k;
    }

    @Override // com.vuitton.android.presentation.screen.booking.form.BookingExperienceViewModel
    /* JADX INFO: renamed from: b, reason: from getter */
    public final SharedFlow getN() {
        return this.n;
    }

    @Override // com.vuitton.android.presentation.screen.booking.form.BookingExperienceViewModel
    public final void bb(List list) {
        String str;
        BookingFormModuleDataUiModel.MultipleTextCategory multipleTextCategory;
        Object next;
        list.getClass();
        MutableStateFlow mutableStateFlow = this.f54436j;
        Object value = mutableStateFlow.getValue();
        BookingExperienceViewState.Success success = value instanceof BookingExperienceViewState.Success ? (BookingExperienceViewState.Success) value : null;
        if (success == null || (str = success.f54505e) == null || (multipleTextCategory = success.f54506f) == null) {
            return;
        }
        String str2 = multipleTextCategory.f54518a;
        Iterator it = success.f54502a.d.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!Intrinsics.c(((BookingFormModuleUiModel) next).f54536a, str));
        BookingFormModuleUiModel bookingFormModuleUiModel = (BookingFormModuleUiModel) next;
        BookingFormModuleDataUiModel bookingFormModuleDataUiModel = bookingFormModuleUiModel != null ? bookingFormModuleUiModel.f54544k : null;
        BookingFormModuleDataUiModel.MultipleText multipleText = bookingFormModuleDataUiModel instanceof BookingFormModuleDataUiModel.MultipleText ? (BookingFormModuleDataUiModel.MultipleText) bookingFormModuleDataUiModel : null;
        if (multipleText == null) {
            return;
        }
        String str3 = this.f54429a;
        boolean z = this.p;
        Ma(new BookingFormTrackingUiModel.SelectValueEvent(str3, str, str2, z));
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (((BookingFormModuleDataUiModel.MultipleTextOption) obj).f54523c) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(CollectionsKt.t(arrayList, 10));
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            arrayList2.add(((BookingFormModuleDataUiModel.MultipleTextOption) it2.next()).f54521a);
        }
        Ma(new BookingFormTrackingUiModel.MultipleTagConfirmationEvent(str3, str, arrayList2, z));
        mutableStateFlow.setValue(BookingExperienceViewState.Success.a(success, null, false, null, null, 15));
        List<BookingFormModuleDataUiModel.MultipleTextCategory> list2 = multipleText.f54515a;
        ArrayList arrayList3 = new ArrayList(CollectionsKt.t(list2, 10));
        for (BookingFormModuleDataUiModel.MultipleTextCategory multipleTextCategoryA : list2) {
            if (Intrinsics.c(multipleTextCategoryA.f54518a, str2)) {
                multipleTextCategoryA = BookingFormModuleDataUiModel.MultipleTextCategory.a(multipleTextCategoryA, list);
            }
            arrayList3.add(multipleTextCategoryA);
        }
        t9(str, BookingFormModuleDataUiModel.MultipleText.b(multipleText, arrayList3, 6));
    }

    @Override // com.vuitton.android.presentation.screen.booking.form.BookingExperienceViewModel
    /* JADX INFO: renamed from: ma, reason: from getter */
    public final boolean getP() {
        return this.p;
    }

    @Override // com.vuitton.android.presentation.screen.booking.form.BookingExperienceViewModel
    public final void n() {
        this.f54436j.setValue(BookingExperienceViewState.Loading.f54501a);
        BuildersKt.c(ViewModelKt.a(this), null, null, new BookingExperienceViewModelImpl$initialize$1(this, null), 3);
    }

    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [com.vuitton.android.presentation.screen.booking.form.models.BookingFormModuleDataUiModel$SlotDate, com.vuitton.android.presentation.screen.booking.form.models.BookingFormModuleDataUiModel$TimeSlot, java.lang.String, java.time.LocalDateTime] */
    /* JADX WARN: Type inference failed for: r9v12 */
    @Override // com.vuitton.android.presentation.screen.booking.form.BookingExperienceViewModel
    public final void t9(String str, BookingFormModuleDataUiModel bookingFormModuleDataUiModel) {
        Object next;
        String string;
        LocalDate localDate;
        BookingFormModuleDataUiModel bookingFormModuleDataUiModelB;
        String str2 = str;
        BookingFormModuleDataUiModel bookingFormModuleDataUiModel2 = bookingFormModuleDataUiModel;
        str2.getClass();
        bookingFormModuleDataUiModel2.getClass();
        MutableStateFlow mutableStateFlow = this.f54436j;
        Object value = mutableStateFlow.getValue();
        ?? r9 = 0;
        BookingExperienceViewState.Success success = value instanceof BookingExperienceViewState.Success ? (BookingExperienceViewState.Success) value : null;
        if (success == null) {
            return;
        }
        BookingFormUiModel bookingFormUiModel = success.f54502a;
        Iterator it = bookingFormUiModel.d.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!Intrinsics.c(((BookingFormModuleUiModel) next).f54536a, str2));
        BookingFormModuleUiModel bookingFormModuleUiModel = (BookingFormModuleUiModel) next;
        if (bookingFormModuleUiModel == null) {
            return;
        }
        Set setB0 = CollectionsKt.B0(bookingFormModuleUiModel.f54543j);
        String str3 = BookingExperienceViewModelImplKt.f54444a;
        if (bookingFormModuleDataUiModel2 instanceof BookingFormModuleDataUiModel.SingleChoice) {
            string = ((BookingFormModuleDataUiModel.SingleChoice) bookingFormModuleDataUiModel2).f54526c;
        } else if (bookingFormModuleDataUiModel2 instanceof BookingFormModuleDataUiModel.Calendar) {
            LocalDateTime localDateTime = ((BookingFormModuleDataUiModel.Calendar) bookingFormModuleDataUiModel2).f54508b;
            string = (localDateTime == null || (localDate = localDateTime.toLocalDate()) == null) ? null : localDate.toString();
        } else if (bookingFormModuleDataUiModel2 instanceof BookingFormModuleDataUiModel.Slot) {
            BookingFormModuleDataUiModel.TimeSlot timeSlot = ((BookingFormModuleDataUiModel.Slot) bookingFormModuleDataUiModel2).f54529c;
            if (timeSlot != null) {
                string = timeSlot.f54533a;
            }
        } else if (!(bookingFormModuleDataUiModel2 instanceof BookingFormModuleDataUiModel.MultipleText)) {
            v40.g();
            return;
        }
        if (string != null) {
            Ma(new BookingFormTrackingUiModel.SelectValueEvent(this.f54429a, str2, string, this.p));
        }
        List<BookingFormModuleUiModel> list = bookingFormUiModel.d;
        int i2 = 10;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
        for (BookingFormModuleUiModel bookingFormModuleUiModelA : list) {
            String str4 = bookingFormModuleUiModelA.f54536a;
            if (Intrinsics.c(str4, str2)) {
                bookingFormModuleUiModelA = BookingFormModuleUiModel.a(bookingFormModuleUiModelA, false, false, bookingFormModuleDataUiModel2, false, 3071);
            } else if (setB0.contains(str4)) {
                BookingFormModuleDataUiModel bookingFormModuleDataUiModel3 = bookingFormModuleUiModelA.f54544k;
                if (bookingFormModuleDataUiModel3 instanceof BookingFormModuleDataUiModel.SingleChoice) {
                    bookingFormModuleDataUiModelB = BookingFormModuleDataUiModel.SingleChoice.b((BookingFormModuleDataUiModel.SingleChoice) bookingFormModuleDataUiModel3, r9);
                } else if (bookingFormModuleDataUiModel3 instanceof BookingFormModuleDataUiModel.Calendar) {
                    bookingFormModuleDataUiModelB = BookingFormModuleDataUiModel.Calendar.b((BookingFormModuleDataUiModel.Calendar) bookingFormModuleDataUiModel3, r9);
                } else if (bookingFormModuleDataUiModel3 instanceof BookingFormModuleDataUiModel.Slot) {
                    bookingFormModuleDataUiModelB = BookingFormModuleDataUiModel.Slot.b((BookingFormModuleDataUiModel.Slot) bookingFormModuleDataUiModel3, r9, r9, 3);
                } else {
                    if (!(bookingFormModuleDataUiModel3 instanceof BookingFormModuleDataUiModel.MultipleText)) {
                        v40.g();
                        return;
                    }
                    BookingFormModuleDataUiModel.MultipleText multipleText = (BookingFormModuleDataUiModel.MultipleText) bookingFormModuleDataUiModel3;
                    List<BookingFormModuleDataUiModel.MultipleTextCategory> list2 = multipleText.f54515a;
                    ArrayList arrayList2 = new ArrayList(CollectionsKt.t(list2, i2));
                    for (BookingFormModuleDataUiModel.MultipleTextCategory multipleTextCategory : list2) {
                        List list3 = multipleTextCategory.f54520c;
                        ArrayList arrayList3 = new ArrayList(CollectionsKt.t(list3, i2));
                        Iterator it2 = list3.iterator();
                        while (it2.hasNext()) {
                            arrayList3.add(BookingFormModuleDataUiModel.MultipleTextOption.a((BookingFormModuleDataUiModel.MultipleTextOption) it2.next(), false));
                        }
                        arrayList2.add(BookingFormModuleDataUiModel.MultipleTextCategory.a(multipleTextCategory, arrayList3));
                        i2 = 10;
                    }
                    bookingFormModuleDataUiModelB = BookingFormModuleDataUiModel.MultipleText.b(multipleText, arrayList2, 2);
                }
                bookingFormModuleUiModelA = BookingFormModuleUiModel.a(bookingFormModuleUiModelA, false, false, bookingFormModuleDataUiModelB, false, 3071);
            } else {
                continue;
            }
            arrayList.add(bookingFormModuleUiModelA);
            str2 = str;
            bookingFormModuleDataUiModel2 = bookingFormModuleDataUiModel;
            r9 = 0;
            i2 = 10;
        }
        ArrayList arrayListB = BookingExperienceViewModelImplKt.b(BookingExperienceViewModelImplKt.c(arrayList));
        BookingFormUiModel bookingFormUiModelA = BookingFormUiModel.a(bookingFormUiModel, arrayListB);
        mutableStateFlow.setValue(BookingExperienceViewState.Success.a(success, bookingFormUiModelA, zc(arrayListB), null, null, 60));
        if (!bookingFormModuleUiModel.f54542i) {
            if (!bookingFormModuleDataUiModel.isCompleted() || bookingFormModuleUiModel.g) {
                return;
            }
            yc(false);
            return;
        }
        BookingForm bookingFormA = BookingMapperKt.a(bookingFormUiModelA);
        Job job = this.r;
        if (job != null) {
            job.cancel(null);
        }
        Object value2 = mutableStateFlow.getValue();
        BookingExperienceViewState.Success success2 = value2 instanceof BookingExperienceViewState.Success ? (BookingExperienceViewState.Success) value2 : null;
        if (success2 == null) {
            return;
        }
        BookingFormUiModel bookingFormUiModel2 = success2.f54502a;
        List list4 = bookingFormUiModel2.d;
        ArrayList arrayList4 = new ArrayList(CollectionsKt.t(list4, 10));
        Iterator it3 = list4.iterator();
        while (it3.hasNext()) {
            arrayList4.add(BookingFormModuleUiModel.a((BookingFormModuleUiModel) it3.next(), false, false, null, false, 2047));
        }
        BookingExperienceViewState.Success successA = BookingExperienceViewState.Success.a(success2, BookingFormUiModel.a(bookingFormUiModel2, BookingExperienceViewModelImplKt.b(arrayList4)), false, null, null, 62);
        Iterator it4 = successA.f54502a.d.iterator();
        int i3 = 0;
        while (it4.hasNext()) {
            if (((BookingFormModuleUiModel) it4.next()).f54540f) {
                mutableStateFlow.setValue(successA);
                yc(true);
                this.r = BuildersKt.c(ViewModelKt.a(this), null, null, new BookingExperienceViewModelImpl$updateBookingForm$1(this, bookingFormA, successA, i3 + 1, null), 3);
            }
            i3++;
        }
        i3 = -1;
        mutableStateFlow.setValue(successA);
        yc(true);
        this.r = BuildersKt.c(ViewModelKt.a(this), null, null, new BookingExperienceViewModelImpl$updateBookingForm$1(this, bookingFormA, successA, i3 + 1, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.booking.form.BookingExperienceViewModel
    public final void u1() {
        MutableStateFlow mutableStateFlow = this.f54436j;
        Object value = mutableStateFlow.getValue();
        BookingExperienceViewState.Success success = value instanceof BookingExperienceViewState.Success ? (BookingExperienceViewState.Success) value : null;
        if (success == null) {
            return;
        }
        mutableStateFlow.setValue(BookingExperienceViewState.Success.a(success, null, false, null, null, 15));
    }

    public final void yc(boolean z) {
        MutableStateFlow mutableStateFlow = this.f54436j;
        Object value = mutableStateFlow.getValue();
        BookingExperienceViewState.Success success = value instanceof BookingExperienceViewState.Success ? (BookingExperienceViewState.Success) value : null;
        if (success == null) {
            return;
        }
        BookingFormUiModel bookingFormUiModel = success.f54502a;
        Iterator it = bookingFormUiModel.d.iterator();
        int i2 = 0;
        int i3 = 0;
        while (true) {
            if (!it.hasNext()) {
                i3 = -1;
                break;
            } else if (((BookingFormModuleUiModel) it.next()).f54540f) {
                break;
            } else {
                i3++;
            }
        }
        if (i3 == -1) {
            return;
        }
        List list = bookingFormUiModel.d;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
        for (Object obj : list) {
            int i4 = i2 + 1;
            if (i2 < 0) {
                CollectionsKt.t0();
                throw null;
            }
            BookingFormModuleUiModel bookingFormModuleUiModelA = (BookingFormModuleUiModel) obj;
            if (i2 == i3) {
                bookingFormModuleUiModelA = BookingFormModuleUiModel.a(bookingFormModuleUiModelA, false, false, null, false, 4063);
            } else if (i2 == i3 + 1) {
                bookingFormModuleUiModelA = BookingFormModuleUiModel.a(bookingFormModuleUiModelA, true, false, null, z, 2015);
            }
            arrayList.add(bookingFormModuleUiModelA);
            i2 = i4;
        }
        mutableStateFlow.setValue(BookingExperienceViewState.Success.a(success, BookingFormUiModel.a(bookingFormUiModel, BookingExperienceViewModelImplKt.b(arrayList)), false, null, null, 62));
    }

    public final boolean zc(List list) {
        String str = BookingExperienceViewModelImplKt.f54444a;
        List<BookingFormModuleUiModel> list2 = list;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list2) {
            if (!((BookingFormModuleUiModel) obj).g) {
                arrayList.add(obj);
            }
        }
        if (!arrayList.isEmpty()) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                if (!((BookingFormModuleUiModel) it.next()).f54544k.isCompleted()) {
                    return false;
                }
            }
        }
        if (!this.p) {
            return true;
        }
        List<BookingFormModuleUiModel> list3 = this.q;
        int iG = MapsKt.g(CollectionsKt.t(list3, 10));
        if (iG < 16) {
            iG = 16;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(iG);
        for (BookingFormModuleUiModel bookingFormModuleUiModel : list3) {
            Pair pair = new Pair(bookingFormModuleUiModel.f54536a, bookingFormModuleUiModel.f54544k);
            linkedHashMap.put(pair.f71705b, pair.f71706c);
        }
        if ((list2 instanceof Collection) && list2.isEmpty()) {
            return false;
        }
        for (BookingFormModuleUiModel bookingFormModuleUiModel2 : list2) {
            if (!Intrinsics.c(bookingFormModuleUiModel2.f54544k, linkedHashMap.get(bookingFormModuleUiModel2.f54536a))) {
                return true;
            }
        }
        return false;
    }
}
