package com.dynatrace.agent;

import com.dynatrace.agent.storage.db.EventDatabaseDataSource;
import com.dynatrace.agent.storage.db.EventRecord;
import com.dynatrace.android.agent.util.Utility;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.dynatrace.agent.OneAgentEventDispatcher$storeEvent$1", f = "OneAgentEventDispatcher.kt", l = {533}, m = "invokeSuspend")
final class OneAgentEventDispatcher$storeEvent$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f26463b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ OneAgentEventDispatcher f26464c;
    public final /* synthetic */ EventRecord d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OneAgentEventDispatcher$storeEvent$1(OneAgentEventDispatcher oneAgentEventDispatcher, EventRecord eventRecord, Continuation continuation) {
        super(2, continuation);
        this.f26464c = oneAgentEventDispatcher;
        this.d = eventRecord;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new OneAgentEventDispatcher$storeEvent$1(this.f26464c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((OneAgentEventDispatcher$storeEvent$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f26463b;
        if (i2 == 0) {
            ResultKt.b(obj);
            EventDatabaseDataSource eventDatabaseDataSource = this.f26464c.f26437c;
            StringBuilder sb = new StringBuilder("storing event: ");
            EventRecord eventRecord = this.d;
            sb.append(eventRecord);
            Utility.b(sb.toString());
            this.f26463b = 1;
            if (eventDatabaseDataSource.a(eventRecord, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        return Unit.f71739a;
    }
}
