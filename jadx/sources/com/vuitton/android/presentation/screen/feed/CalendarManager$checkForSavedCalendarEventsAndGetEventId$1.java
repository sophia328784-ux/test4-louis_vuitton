package com.vuitton.android.presentation.screen.feed;

import com.vuitton.android.presentation.screen.feed.models.CalendarEventData;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.feed.CalendarManager", f = "CalendarManager.kt", l = {37, 49}, m = "checkForSavedCalendarEventsAndGetEventId-gIAlu-s", v = 2)
final class CalendarManager$checkForSavedCalendarEventsAndGetEventId$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public CalendarEventData f57580b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public CalendarManager f57581c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public /* synthetic */ Object f57582e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ CalendarManager f57583f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CalendarManager$checkForSavedCalendarEventsAndGetEventId$1(CalendarManager calendarManager, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f57583f = calendarManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f57582e = obj;
        this.g |= Integer.MIN_VALUE;
        Serializable serializableB = this.f57583f.b(null, this);
        return serializableB == CoroutineSingletons.COROUTINE_SUSPENDED ? serializableB : new Result(serializableB);
    }
}
