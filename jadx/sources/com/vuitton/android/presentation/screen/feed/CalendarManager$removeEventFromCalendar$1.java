package com.vuitton.android.presentation.screen.feed;

import com.vuitton.android.presentation.model.calendar.CalendarEventUiModel;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.feed.CalendarManager", f = "CalendarManager.kt", l = {73}, m = "removeEventFromCalendar-gIAlu-s", v = 2)
final class CalendarManager$removeEventFromCalendar$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public CalendarEventUiModel f57584b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f57585c;
    public final /* synthetic */ CalendarManager d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f57586e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CalendarManager$removeEventFromCalendar$1(CalendarManager calendarManager, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = calendarManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f57585c = obj;
        this.f57586e |= Integer.MIN_VALUE;
        Object objC = this.d.c(null, this);
        return objC == CoroutineSingletons.COROUTINE_SUSPENDED ? objC : new Result(objC);
    }
}
