package com.dynatrace.agent;

import com.dynatrace.agent.storage.db.EventDatabaseDataSource;
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
@DebugMetadata(c = "com.dynatrace.agent.OneAgentStartupImpl$stopCommunication$1", f = "OneAgentStartupImpl.kt", l = {128}, m = "invokeSuspend")
final class OneAgentStartupImpl$stopCommunication$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f26497b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ OneAgentStartupImpl f26498c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OneAgentStartupImpl$stopCommunication$1(OneAgentStartupImpl oneAgentStartupImpl, Continuation continuation) {
        super(2, continuation);
        this.f26498c = oneAgentStartupImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new OneAgentStartupImpl$stopCommunication$1(this.f26498c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((OneAgentStartupImpl$stopCommunication$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f26497b;
        if (i2 == 0) {
            ResultKt.b(obj);
            Utility.b("discarding pending events due to Grail being turned off");
            EventDatabaseDataSource eventDatabaseDataSource = this.f26498c.f26482c;
            this.f26497b = 1;
            if (eventDatabaseDataSource.d(this) == coroutineSingletons) {
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
