package com.dynatrace.agent.events;

import defpackage.md;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.dynatrace.agent.events.EventThrottler$processEventIfPossible$1", f = "EventThrottler.kt", l = {146}, m = "invokeSuspend")
final class EventThrottler$processEventIfPossible$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f26746b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ EventThrottler f26747c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EventThrottler$processEventIfPossible$1(EventThrottler eventThrottler, Continuation continuation) {
        super(2, continuation);
        this.f26747c = eventThrottler;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new EventThrottler$processEventIfPossible$1(this.f26747c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((EventThrottler$processEventIfPossible$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f26746b;
        if (i2 == 0) {
            ResultKt.b(obj);
            Duration.Companion companion = Duration.INSTANCE;
            long jG = DurationKt.g(this.f26747c.d, DurationUnit.SECONDS);
            this.f26746b = 1;
            if (DelayKt.c(jG, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        EventThrottler eventThrottler = this.f26747c;
        ReentrantLock reentrantLock = eventThrottler.f26739h;
        reentrantLock.lock();
        try {
            String strB = EventThrottler.b(eventThrottler, eventThrottler.f26741j);
            eventThrottler.f26740i = 0;
            for (EventThrottler.EventThrottlerType eventThrottlerType : eventThrottler.f26741j) {
                eventThrottlerType.f26744b = 0;
                eventThrottlerType.f26743a = 0;
            }
            eventThrottler.f26738f.b(strB);
            return Unit.f71739a;
        } finally {
            reentrantLock.unlock();
        }
    }
}
