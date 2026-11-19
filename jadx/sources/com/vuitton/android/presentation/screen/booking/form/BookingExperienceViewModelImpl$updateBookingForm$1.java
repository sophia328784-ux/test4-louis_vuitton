package com.vuitton.android.presentation.screen.booking.form;

import com.vuitton.android.R;
import com.vuitton.android.domain.usecase.booking.PostBookingFormUpdateUseCase;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.screen.booking.form.models.BookingExperienceViewState;
import com.vuitton.android.presentation.screen.booking.form.models.BookingFormModuleUiModel;
import com.vuitton.android.presentation.screen.booking.form.models.BookingFormUiModel;
import com.vuitton.foundation.model.domain.model.booking.BookingForm;
import defpackage.md;
import java.util.ArrayList;
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

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.booking.form.BookingExperienceViewModelImpl$updateBookingForm$1", f = "BookingExperienceViewModelImpl.kt", l = {122}, m = "invokeSuspend", v = 2)
final class BookingExperienceViewModelImpl$updateBookingForm$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f54440b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ BookingExperienceViewModelImpl f54441c;
    public final /* synthetic */ BookingForm d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ BookingExperienceViewState.Success f54442e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f54443f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BookingExperienceViewModelImpl$updateBookingForm$1(BookingExperienceViewModelImpl bookingExperienceViewModelImpl, BookingForm bookingForm, BookingExperienceViewState.Success success, int i2, Continuation continuation) {
        super(2, continuation);
        this.f54441c = bookingExperienceViewModelImpl;
        this.d = bookingForm;
        this.f54442e = success;
        this.f54443f = i2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new BookingExperienceViewModelImpl$updateBookingForm$1(this.f54441c, this.d, this.f54442e, this.f54443f, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((BookingExperienceViewModelImpl$updateBookingForm$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object obj2;
        BookingExperienceViewModelImpl bookingExperienceViewModelImpl = this.f54441c;
        MutableStateFlow mutableStateFlow = bookingExperienceViewModelImpl.f54436j;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f54440b;
        if (i2 == 0) {
            ResultKt.b(obj);
            PostBookingFormUpdateUseCase postBookingFormUpdateUseCase = bookingExperienceViewModelImpl.f54432e;
            String str = bookingExperienceViewModelImpl.f54430b;
            String str2 = bookingExperienceViewModelImpl.f54431c;
            this.f54440b = 1;
            Object objA = postBookingFormUpdateUseCase.a(this.d, str, str2, this);
            if (objA == coroutineSingletons) {
                return coroutineSingletons;
            }
            obj2 = objA;
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            obj2 = ((Result) obj).f71708b;
        }
        Result.Companion companion = Result.INSTANCE;
        boolean z = obj2 instanceof Result.Failure;
        BookingExperienceViewState.Success success = this.f54442e;
        if (!z) {
            List listA = BookingExperienceViewModelImplKt.a(null, (List) obj2);
            ArrayList arrayList = new ArrayList(CollectionsKt.t(listA, 10));
            int i3 = 0;
            for (Object obj3 : listA) {
                int i4 = i3 + 1;
                if (i3 < 0) {
                    CollectionsKt.t0();
                    throw null;
                }
                BookingFormModuleUiModel bookingFormModuleUiModelA = (BookingFormModuleUiModel) obj3;
                if (i3 == this.f54443f) {
                    bookingFormModuleUiModelA = BookingFormModuleUiModel.a(bookingFormModuleUiModelA, true, false, null, false, 4063);
                }
                arrayList.add(bookingFormModuleUiModelA);
                i3 = i4;
            }
            mutableStateFlow.setValue(BookingExperienceViewState.Success.a(success, BookingFormUiModel.a(success.f54502a, arrayList), bookingExperienceViewModelImpl.zc(listA), null, null, 60));
        }
        Throwable thA = Result.a(obj2);
        if (thA != null) {
            bookingExperienceViewModelImpl.g.c(BookingExperienceViewModelImplKt.f54444a, "Failed to update booking experience", thA);
            mutableStateFlow.setValue(success);
            bookingExperienceViewModelImpl.m.a(NotificationBuilder.a(bookingExperienceViewModelImpl.f54433f, new StringResourceUiModel.ResId(R.string.error_generic, null, 2, null), false, null, null, 60));
        }
        return Unit.f71739a;
    }
}
