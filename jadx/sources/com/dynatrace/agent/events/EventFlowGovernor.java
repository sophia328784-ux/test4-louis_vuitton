package com.dynatrace.agent.events;

import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;
import kotlinx.coroutines.flow.MutableSharedFlow;
import kotlinx.coroutines.flow.SharedFlowKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B5\u0012$\b\u0002\u0010\u0006\u001a\u001e\u0012\u001a\u0012\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00030\u0002\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/dynatrace/agent/events/EventFlowGovernor;", "", "Lkotlinx/coroutines/flow/MutableSharedFlow;", "Lkotlin/Function1;", "Lkotlin/coroutines/Continuation;", "", "flow", "Lkotlinx/coroutines/CoroutineScope;", "scope", "<init>", "(Lkotlinx/coroutines/flow/MutableSharedFlow;Lkotlinx/coroutines/CoroutineScope;)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class EventFlowGovernor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MutableSharedFlow f26728a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CoroutineScope f26729b;

    /* JADX INFO: renamed from: com.dynatrace.agent.events.EventFlowGovernor$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\u0010\u0000\u001a\u00020\u00012\u001c\u0010\u0002\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0003H\n"}, d2 = {"<anonymous>", "", "enrichmentTask", "Lkotlin/Function1;", "Lkotlin/coroutines/Continuation;", ""}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.dynatrace.agent.events.EventFlowGovernor$1", f = "EventFlowGovernor.kt", l = {29}, m = "invokeSuspend")
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<Function1<? super Continuation<? super Unit>, ? extends Object>, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f26730b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public /* synthetic */ Object f26731c;

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(2, continuation);
            anonymousClass1.f26731c = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((Function1) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f26730b;
            if (i2 == 0) {
                ResultKt.b(obj);
                Function1 function1 = (Function1) this.f26731c;
                this.f26730b = 1;
                if (function1.invoke(this) == coroutineSingletons) {
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

    public EventFlowGovernor(MutableSharedFlow<Function1<Continuation<? super Unit>, Object>> mutableSharedFlow, CoroutineScope coroutineScope) {
        mutableSharedFlow.getClass();
        coroutineScope.getClass();
        this.f26728a = mutableSharedFlow;
        this.f26729b = coroutineScope;
        FlowKt.u(new FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1(mutableSharedFlow, new AnonymousClass1(2, null)), coroutineScope);
    }

    public final void a(Function1 function1) {
        BuildersKt.c(this.f26729b, null, null, new EventFlowGovernor$enqueue$1(this, function1, null), 3);
    }

    public /* synthetic */ EventFlowGovernor(MutableSharedFlow mutableSharedFlow, CoroutineScope coroutineScope, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? SharedFlowKt.b(0, Integer.MAX_VALUE, null, 4) : mutableSharedFlow, coroutineScope);
    }
}
