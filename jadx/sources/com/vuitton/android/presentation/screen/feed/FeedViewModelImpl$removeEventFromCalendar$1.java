package com.vuitton.android.presentation.screen.feed;

import com.vuitton.android.presentation.model.calendar.CalendarEventUiModel;
import defpackage.md;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.feed.FeedViewModelImpl$removeEventFromCalendar$1", f = "FeedViewModelImpl.kt", l = {1044}, m = "invokeSuspend", v = 2)
final class FeedViewModelImpl$removeEventFromCalendar$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f57716b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ FeedViewModelImpl f57717c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FeedViewModelImpl$removeEventFromCalendar$1(FeedViewModelImpl feedViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.f57717c = feedViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new FeedViewModelImpl$removeEventFromCalendar$1(this.f57717c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((FeedViewModelImpl$removeEventFromCalendar$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objC;
        Object value;
        FeedViewModelImpl feedViewModelImpl = this.f57717c;
        MutableStateFlow mutableStateFlow = feedViewModelImpl.W;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f57716b;
        if (i2 == 0) {
            ResultKt.b(obj);
            CalendarManager calendarManager = feedViewModelImpl.f57617e;
            CalendarEventUiModel calendarEventUiModel = (CalendarEventUiModel) mutableStateFlow.getValue();
            this.f57716b = 1;
            objC = calendarManager.c(calendarEventUiModel, this);
            if (objC == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            objC = ((Result) obj).f71708b;
        }
        Result.Companion companion = Result.INSTANCE;
        if (!(objC instanceof Result.Failure)) {
            CalendarEventUiModel calendarEventUiModel2 = (CalendarEventUiModel) objC;
            do {
                value = mutableStateFlow.getValue();
            } while (!mutableStateFlow.i(value, calendarEventUiModel2));
            feedViewModelImpl.Lc(FeedNotification.CalendarRemoveSuccess.f57611a);
        }
        if (Result.a(objC) != null) {
            feedViewModelImpl.Lc(FeedNotification.CalendarRemoveError.f57610a);
        }
        feedViewModelImpl.qa(null);
        return Unit.f71739a;
    }
}
