package com.vuitton.android.presentation.screen.feed;

import android.app.Application;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.net.Uri;
import android.provider.CalendarContract;
import com.vuitton.android.domain.usecase.calendar.GetCalendarEventsUseCase;
import com.vuitton.android.domain.usecase.calendar.RemoveCalendarEventUseCase;
import com.vuitton.android.domain.usecase.calendar.UpdateCalendarEventsUseCase;
import com.vuitton.android.presentation.link.builder.PassAppLinkBuilder;
import com.vuitton.android.presentation.model.calendar.CalendarEventUiModel;
import com.vuitton.android.presentation.utils.CalendarUtilsKt;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.calendar.CalendarEvent;
import defpackage.md;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B1\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/presentation/screen/feed/CalendarManager;", "", "Landroid/app/Application;", "application", "Lcom/vuitton/android/presentation/link/builder/PassAppLinkBuilder;", "passAppLogger", "Lcom/vuitton/android/domain/usecase/calendar/GetCalendarEventsUseCase;", "getCalendarEventsUseCase", "Lcom/vuitton/android/domain/usecase/calendar/RemoveCalendarEventUseCase;", "removeCalendarEventUseCase", "Lcom/vuitton/android/domain/usecase/calendar/UpdateCalendarEventsUseCase;", "updateCalendarEventsUseCase", "<init>", "(Landroid/app/Application;Lcom/vuitton/android/presentation/link/builder/PassAppLinkBuilder;Lcom/vuitton/android/domain/usecase/calendar/GetCalendarEventsUseCase;Lcom/vuitton/android/domain/usecase/calendar/RemoveCalendarEventUseCase;Lcom/vuitton/android/domain/usecase/calendar/UpdateCalendarEventsUseCase;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class CalendarManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Application f57573a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final PassAppLinkBuilder f57574b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final GetCalendarEventsUseCase f57575c;
    public final RemoveCalendarEventUseCase d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final UpdateCalendarEventsUseCase f57576e;

    @Inject
    public CalendarManager(Application application, PassAppLinkBuilder passAppLinkBuilder, GetCalendarEventsUseCase getCalendarEventsUseCase, RemoveCalendarEventUseCase removeCalendarEventUseCase, UpdateCalendarEventsUseCase updateCalendarEventsUseCase) {
        application.getClass();
        passAppLinkBuilder.getClass();
        getCalendarEventsUseCase.getClass();
        removeCalendarEventUseCase.getClass();
        updateCalendarEventsUseCase.getClass();
        this.f57573a = application;
        this.f57574b = passAppLinkBuilder;
        this.f57575c = getCalendarEventsUseCase;
        this.d = removeCalendarEventUseCase;
        this.f57576e = updateCalendarEventsUseCase;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(Logger logger, CalendarEventUiModel calendarEventUiModel, ContinuationImpl continuationImpl) {
        CalendarManager$addEventToCalendar$1 calendarManager$addEventToCalendar$1;
        Object obj;
        CalendarEventUiModel calendarEventUiModel2;
        if (continuationImpl instanceof CalendarManager$addEventToCalendar$1) {
            calendarManager$addEventToCalendar$1 = (CalendarManager$addEventToCalendar$1) continuationImpl;
            int i2 = calendarManager$addEventToCalendar$1.f57579e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                calendarManager$addEventToCalendar$1.f57579e = i2 - Integer.MIN_VALUE;
            } else {
                calendarManager$addEventToCalendar$1 = new CalendarManager$addEventToCalendar$1(this, continuationImpl);
            }
        } else {
            calendarManager$addEventToCalendar$1 = new CalendarManager$addEventToCalendar$1(this, continuationImpl);
        }
        Object obj2 = calendarManager$addEventToCalendar$1.f57578c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = calendarManager$addEventToCalendar$1.f57579e;
        try {
            if (i3 == 0) {
                ResultKt.b(obj2);
                Result.Companion companion = Result.INSTANCE;
                Long lA = CalendarUtilsKt.a(logger, calendarEventUiModel, this.f57573a);
                if (lA == null) {
                    throw new IllegalArgumentException("Event ID is null");
                }
                CalendarEventUiModel calendarEventUiModelA = CalendarEventUiModel.a(calendarEventUiModel, lA, Boolean.TRUE);
                UpdateCalendarEventsUseCase updateCalendarEventsUseCase = this.f57576e;
                CalendarEvent calendarEvent = new CalendarEvent(calendarEventUiModelA.f51767b, calendarEventUiModelA.f51766a, calendarEventUiModelA.f51768c);
                calendarManager$addEventToCalendar$1.f57577b = calendarEventUiModelA;
                calendarManager$addEventToCalendar$1.f57579e = 1;
                Object objA = updateCalendarEventsUseCase.a(calendarEvent, calendarManager$addEventToCalendar$1);
                if (objA == coroutineSingletons) {
                    return coroutineSingletons;
                }
                obj = objA;
                calendarEventUiModel2 = calendarEventUiModelA;
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                calendarEventUiModel2 = calendarManager$addEventToCalendar$1.f57577b;
                ResultKt.b(obj2);
                obj = ((Result) obj2).f71708b;
            }
            ResultKt.b(obj);
            Result.Companion companion2 = Result.INSTANCE;
            return calendarEventUiModel2;
        } catch (Throwable th) {
            Result.Companion companion3 = Result.INSTANCE;
            return new Result.Failure(th);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00e7, code lost:
    
        if (r0.a(r4, r2) == r3) goto L46;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.io.Serializable b(com.vuitton.android.presentation.screen.feed.models.CalendarEventData r21, kotlin.coroutines.jvm.internal.ContinuationImpl r22) {
        /*
            Method dump skipped, instruction units count: 248
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.feed.CalendarManager.b(com.vuitton.android.presentation.screen.feed.models.CalendarEventData, kotlin.coroutines.jvm.internal.ContinuationImpl):java.io.Serializable");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object c(CalendarEventUiModel calendarEventUiModel, ContinuationImpl continuationImpl) {
        CalendarManager$removeEventFromCalendar$1 calendarManager$removeEventFromCalendar$1;
        Object objA;
        if (continuationImpl instanceof CalendarManager$removeEventFromCalendar$1) {
            calendarManager$removeEventFromCalendar$1 = (CalendarManager$removeEventFromCalendar$1) continuationImpl;
            int i2 = calendarManager$removeEventFromCalendar$1.f57586e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                calendarManager$removeEventFromCalendar$1.f57586e = i2 - Integer.MIN_VALUE;
            } else {
                calendarManager$removeEventFromCalendar$1 = new CalendarManager$removeEventFromCalendar$1(this, continuationImpl);
            }
        } else {
            calendarManager$removeEventFromCalendar$1 = new CalendarManager$removeEventFromCalendar$1(this, continuationImpl);
        }
        Object obj = calendarManager$removeEventFromCalendar$1.f57585c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = calendarManager$removeEventFromCalendar$1.f57586e;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                Result.Companion companion = Result.INSTANCE;
                Long l = calendarEventUiModel.f51767b;
                if (l == null) {
                    throw new IllegalArgumentException("Event ID is null");
                }
                Long l2 = new Long(l.longValue());
                Application application = this.f57573a;
                application.getClass();
                Long lB = CalendarUtilsKt.b(application);
                if (lB != null) {
                    ContentResolver contentResolver = application.getContentResolver();
                    Uri uriWithAppendedId = ContentUris.withAppendedId(CalendarContract.Events.CONTENT_URI, l2.longValue());
                    uriWithAppendedId.getClass();
                    contentResolver.delete(uriWithAppendedId, null, null);
                    CalendarUtilsKt.d(contentResolver, lB.longValue());
                }
                RemoveCalendarEventUseCase removeCalendarEventUseCase = this.d;
                CalendarEvent calendarEvent = new CalendarEvent(calendarEventUiModel.f51767b, calendarEventUiModel.f51766a, calendarEventUiModel.f51768c);
                calendarManager$removeEventFromCalendar$1.f57584b = calendarEventUiModel;
                calendarManager$removeEventFromCalendar$1.f57586e = 1;
                objA = removeCalendarEventUseCase.a(calendarEvent, calendarManager$removeEventFromCalendar$1);
                if (objA == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                calendarEventUiModel = calendarManager$removeEventFromCalendar$1.f57584b;
                ResultKt.b(obj);
                objA = ((Result) obj).f71708b;
            }
            ResultKt.b(objA);
            CalendarEventUiModel calendarEventUiModelA = CalendarEventUiModel.a(calendarEventUiModel, null, Boolean.FALSE);
            Result.Companion companion2 = Result.INSTANCE;
            return calendarEventUiModelA;
        } catch (Throwable th) {
            Result.Companion companion3 = Result.INSTANCE;
            return new Result.Failure(th);
        }
    }
}
