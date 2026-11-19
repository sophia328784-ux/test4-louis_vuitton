package com.sightcall.pratik;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.ChannelKt;
import kotlinx.coroutines.internal.MainDispatcherLoader;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B!\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0004\b\u0007\u0010\bJ>\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\f2'\u0010\r\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\u000f\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000e¢\u0006\u0002\b\u0010¢\u0006\u0002\u0010\u0011J\u0006\u0010\u0012\u001a\u00020\nR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/sightcall/pratik/JobQueue;", "", "scope", "Lkotlinx/coroutines/CoroutineScope;", "queue", "Lkotlinx/coroutines/channels/Channel;", "Lkotlinx/coroutines/Job;", "<init>", "(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/channels/Channel;)V", "submit", "", MvelScriptManager.VAR_CONTEXT, "Lkotlin/coroutines/CoroutineContext;", "block", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "Lkotlin/ExtensionFunctionType;", "(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)V", "cancel", "pratik_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class JobQueue {
    private final Channel<Job> queue;
    private final CoroutineScope scope;

    /* JADX INFO: renamed from: com.sightcall.pratik.JobQueue$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.sightcall.pratik.JobQueue$1", f = "JobQueue.kt", l = {20, 21}, m = "invokeSuspend", v = 2)
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        Object L$0;
        Object L$1;
        int label;

        public AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return JobQueue.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.f71739a);
        }

        /* JADX WARN: Code duplicated, block: B:15:0x0042  */
        /* JADX WARN: Code duplicated, block: B:18:0x004d  */
        /* JADX WARN: Code duplicated, block: B:21:0x0060  */
        /* JADX WARN: Code restructure failed: missing block: B:19:0x005d, code lost:
        
            if (r7.join(r6) == r0) goto L20;
         */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x005d -> B:7:0x0018). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r7) {
            /*
                r6 = this;
                kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                int r1 = r6.label
                r2 = 0
                r3 = 2
                r4 = 1
                if (r1 == 0) goto L28
                if (r1 == r4) goto L20
                if (r1 != r3) goto L1a
                java.lang.Object r1 = r6.L$1
                kotlinx.coroutines.Job r1 = (kotlinx.coroutines.Job) r1
                java.lang.Object r1 = r6.L$0
                kotlinx.coroutines.channels.ChannelIterator r1 = (kotlinx.coroutines.channels.ChannelIterator) r1
                kotlin.ResultKt.b(r7)
            L18:
                r7 = r1
                goto L35
            L1a:
                java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.md.k(r6)
                return r2
            L20:
                java.lang.Object r1 = r6.L$0
                kotlinx.coroutines.channels.ChannelIterator r1 = (kotlinx.coroutines.channels.ChannelIterator) r1
                kotlin.ResultKt.b(r7)
                goto L45
            L28:
                kotlin.ResultKt.b(r7)
                com.sightcall.pratik.JobQueue r7 = com.sightcall.pratik.JobQueue.this
                kotlinx.coroutines.channels.Channel r7 = com.sightcall.pratik.JobQueue.access$getQueue$p(r7)
                kotlinx.coroutines.channels.ChannelIterator r7 = r7.iterator()
            L35:
                r6.L$0 = r7
                r6.L$1 = r2
                r6.label = r4
                java.lang.Object r1 = r7.a(r6)
                if (r1 != r0) goto L42
                goto L5f
            L42:
                r5 = r1
                r1 = r7
                r7 = r5
            L45:
                java.lang.Boolean r7 = (java.lang.Boolean) r7
                boolean r7 = r7.booleanValue()
                if (r7 == 0) goto L60
                java.lang.Object r7 = r1.next()
                kotlinx.coroutines.Job r7 = (kotlinx.coroutines.Job) r7
                r6.L$0 = r1
                r6.L$1 = r2
                r6.label = r3
                java.lang.Object r7 = r7.join(r6)
                if (r7 != r0) goto L18
            L5f:
                return r0
            L60:
                kotlin.Unit r6 = kotlin.Unit.f71739a
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: com.sightcall.pratik.JobQueue.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public JobQueue(CoroutineScope coroutineScope, Channel<Job> channel) {
        coroutineScope.getClass();
        channel.getClass();
        this.scope = coroutineScope;
        this.queue = channel;
        DefaultScheduler defaultScheduler = Dispatchers.f74659a;
        BuildersKt.c(coroutineScope, MainDispatcherLoader.f75131a, null, new AnonymousClass1(null), 2);
    }

    public static /* synthetic */ void submit$default(JobQueue jobQueue, CoroutineContext coroutineContext, Function2 function2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.f71840b;
        }
        jobQueue.submit(coroutineContext, function2);
    }

    public final void cancel() {
        this.queue.cancel(null);
        CoroutineScopeKt.c(this.scope, null);
    }

    public final void submit(CoroutineContext context, Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object> block) {
        context.getClass();
        block.getClass();
        synchronized (block) {
            this.queue.b(BuildersKt.b(this.scope, context, CoroutineStart.LAZY, block));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public JobQueue() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public /* synthetic */ JobQueue(CoroutineScope coroutineScope, Channel channel, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? CoroutineScopeKt.b() : coroutineScope, (i2 & 2) != 0 ? ChannelKt.a(Integer.MAX_VALUE, 6, null) : channel);
    }
}
