package com.vuitton.android.domain.usecase.calendar;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.calendar.GetCalendarEventsUseCase", f = "GetCalendarEventsUseCase.kt", l = {8}, m = "run-IoAF18A", v = 2)
final class GetCalendarEventsUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f49507b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ GetCalendarEventsUseCase f49508c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetCalendarEventsUseCase$run$1(GetCalendarEventsUseCase getCalendarEventsUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f49508c = getCalendarEventsUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f49507b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f49508c.a(this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
