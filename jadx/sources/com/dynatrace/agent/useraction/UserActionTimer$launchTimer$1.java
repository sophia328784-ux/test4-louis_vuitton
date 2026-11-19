package com.dynatrace.agent.useraction;

import defpackage.md;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.JobKt;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.dynatrace.agent.useraction.UserActionTimer$launchTimer$1", f = "UserActionTimer.kt", l = {150}, m = "invokeSuspend")
final class UserActionTimer$launchTimer$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f27100b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f27101c;
    public final /* synthetic */ long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ UserActionTimer f27102e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Function0 f27103f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UserActionTimer$launchTimer$1(long j2, UserActionTimer userActionTimer, Function0 function0, Continuation continuation) {
        super(2, continuation);
        this.d = j2;
        this.f27102e = userActionTimer;
        this.f27103f = function0;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        UserActionTimer$launchTimer$1 userActionTimer$launchTimer$1 = new UserActionTimer$launchTimer$1(this.d, this.f27102e, this.f27103f, continuation);
        userActionTimer$launchTimer$1.f27101c = obj;
        return userActionTimer$launchTimer$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((UserActionTimer$launchTimer$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineScope coroutineScope;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f27100b;
        if (i2 == 0) {
            ResultKt.b(obj);
            CoroutineScope coroutineScope2 = (CoroutineScope) this.f27101c;
            this.f27101c = coroutineScope2;
            this.f27100b = 1;
            if (DelayKt.b(this.d, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
            coroutineScope = coroutineScope2;
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            coroutineScope = (CoroutineScope) this.f27101c;
            ResultKt.b(obj);
        }
        JobKt.d(coroutineScope.getF8068c());
        ReentrantLock reentrantLock = this.f27102e.f27097b;
        Function0 function0 = this.f27103f;
        reentrantLock.lock();
        try {
            JobKt.d(coroutineScope.getF8068c());
            function0.mo47invoke();
            return Unit.f71739a;
        } finally {
            reentrantLock.unlock();
        }
    }
}
