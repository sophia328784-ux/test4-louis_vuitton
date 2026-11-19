package com.dynatrace.agent.communication;

import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynatrace/agent/communication/RequestScheduler;", "", "Lkotlinx/coroutines/CoroutineScope;", "scope", "<init>", "(Lkotlinx/coroutines/CoroutineScope;)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class RequestScheduler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CoroutineScope f26564a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Job f26565b;

    public RequestScheduler(CoroutineScope coroutineScope) {
        coroutineScope.getClass();
        this.f26564a = coroutineScope;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(long j2, Function1 function1, ContinuationImpl continuationImpl) {
        RequestScheduler$schedule$1 requestScheduler$schedule$1;
        if (continuationImpl instanceof RequestScheduler$schedule$1) {
            requestScheduler$schedule$1 = (RequestScheduler$schedule$1) continuationImpl;
            int i2 = requestScheduler$schedule$1.g;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                requestScheduler$schedule$1.g = i2 - Integer.MIN_VALUE;
            } else {
                requestScheduler$schedule$1 = new RequestScheduler$schedule$1(this, continuationImpl);
            }
        } else {
            requestScheduler$schedule$1 = new RequestScheduler$schedule$1(this, continuationImpl);
        }
        Object obj = requestScheduler$schedule$1.f26568e;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = requestScheduler$schedule$1.g;
        if (i3 == 0) {
            ResultKt.b(obj);
            Job job = this.f26565b;
            if (job != null) {
                requestScheduler$schedule$1.f26566b = this;
                requestScheduler$schedule$1.f26567c = function1;
                requestScheduler$schedule$1.d = j2;
                requestScheduler$schedule$1.g = 1;
                if (JobKt.c(job, requestScheduler$schedule$1) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            j2 = requestScheduler$schedule$1.d;
            function1 = (Function1) requestScheduler$schedule$1.f26567c;
            this = requestScheduler$schedule$1.f26566b;
            ResultKt.b(obj);
        }
        this.f26565b = BuildersKt.c(this.f26564a, null, null, new RequestScheduler$schedule$2(j2, function1, null), 3);
        return Unit.f71739a;
    }
}
