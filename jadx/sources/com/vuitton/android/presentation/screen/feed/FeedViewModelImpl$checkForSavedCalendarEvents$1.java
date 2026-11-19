package com.vuitton.android.presentation.screen.feed;

import com.vuitton.android.presentation.model.calendar.CalendarEventUiModel;
import com.vuitton.android.presentation.redirectlink.DeepLink;
import com.vuitton.android.presentation.screen.feed.models.CalendarEventData;
import defpackage.md;
import defpackage.tr;
import java.time.Instant;
import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.util.Calendar;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.feed.FeedViewModelImpl$checkForSavedCalendarEvents$1", f = "FeedViewModelImpl.kt", l = {1016}, m = "invokeSuspend", v = 2)
final class FeedViewModelImpl$checkForSavedCalendarEvents$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f57639b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ FeedViewModelImpl f57640c;
    public final /* synthetic */ CalendarEventData d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FeedViewModelImpl$checkForSavedCalendarEvents$1(FeedViewModelImpl feedViewModelImpl, CalendarEventData calendarEventData, Continuation continuation) {
        super(2, continuation);
        this.f57640c = feedViewModelImpl;
        this.d = calendarEventData;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new FeedViewModelImpl$checkForSavedCalendarEvents$1(this.f57640c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((FeedViewModelImpl$checkForSavedCalendarEvents$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Type inference failed for: r16v0, types: [java.lang.Object, java.time.LocalDateTime] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objB;
        Object value;
        ?? localDateTime;
        long timeInMillis;
        long timeInMillis2;
        String strA;
        String str;
        String str2;
        FeedViewModelImpl feedViewModelImpl = this.f57640c;
        CalendarManager calendarManager = feedViewModelImpl.f57617e;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f57639b;
        CalendarEventData calendarEventData = this.d;
        if (i2 == 0) {
            ResultKt.b(obj);
            this.f57639b = 1;
            objB = calendarManager.b(calendarEventData, this);
            if (objB == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            objB = ((Result) obj).f71708b;
        }
        Result.Companion companion = Result.INSTANCE;
        if (!(objB instanceof Result.Failure)) {
            Long l = (Long) objB;
            MutableStateFlow mutableStateFlow = feedViewModelImpl.W;
            do {
                value = mutableStateFlow.getValue();
                calendarManager.getClass();
                calendarEventData.getClass();
                Instant instant = calendarEventData.f57907c;
                instant.getClass();
                localDateTime = ZonedDateTime.ofInstant(instant, ZoneId.systemDefault()).toLocalDateTime();
                localDateTime.getClass();
                Calendar calendar = Calendar.getInstance();
                calendar.set(localDateTime.getYear(), localDateTime.getMonthValue() - 1, localDateTime.getDayOfMonth(), localDateTime.getHour(), localDateTime.getMinute());
                timeInMillis = calendar.getTimeInMillis();
                Calendar calendar2 = Calendar.getInstance();
                calendar2.set(localDateTime.getYear(), localDateTime.getMonthValue() - 1, localDateTime.getDayOfMonth(), localDateTime.getHour() + 1, localDateTime.getMinute());
                timeInMillis2 = calendar2.getTimeInMillis();
                strA = calendarManager.f57574b.a(CollectionsKt.O(DeepLink.EXPLORE.getHost()));
                str = calendarEventData.f57905a;
                str2 = calendarEventData.f57906b;
            } while (!mutableStateFlow.i(value, new CalendarEventUiModel(str, l, null, str2, tr.g("LOUIS VUITTON ", str2), strA, 1440, 60, localDateTime, Boolean.valueOf(l != null), Long.valueOf(timeInMillis), Long.valueOf(timeInMillis2), 4, null)));
            feedViewModelImpl.qa(FeedBottomSheet.CalendarEvent.f57587a);
        }
        if (Result.a(objB) != null) {
            feedViewModelImpl.Lc(FeedNotification.ErrorGeneric.f57612a);
        }
        return Unit.f71739a;
    }
}
