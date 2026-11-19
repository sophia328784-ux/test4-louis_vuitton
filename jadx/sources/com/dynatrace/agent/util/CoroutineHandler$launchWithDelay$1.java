package com.dynatrace.agent.util;

import defpackage.md;
import defpackage.ss;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.DelayKt;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.dynatrace.agent.util.CoroutineHandler$launchWithDelay$1", f = "CoroutineHandler.kt", l = {35}, m = "invokeSuspend")
final class CoroutineHandler$launchWithDelay$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f27199b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f27200c;
    public final /* synthetic */ ss d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CoroutineHandler$launchWithDelay$1(ss ssVar, Continuation continuation) {
        super(2, continuation);
        this.d = ssVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        CoroutineHandler$launchWithDelay$1 coroutineHandler$launchWithDelay$1 = new CoroutineHandler$launchWithDelay$1(this.d, continuation);
        coroutineHandler$launchWithDelay$1.f27200c = obj;
        return coroutineHandler$launchWithDelay$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((CoroutineHandler$launchWithDelay$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f27199b;
        try {
            if (i2 == 0) {
                ResultKt.b(obj);
                if (CoroutineScopeKt.e((CoroutineScope) this.f27200c)) {
                    this.f27199b = 1;
                    if (DelayKt.b(500L, this) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                }
                return Unit.f71739a;
            }
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            this.d.mo47invoke();
            return Unit.f71739a;
        } catch (CancellationException unused) {
            return Unit.f71739a;
        }
    }
}
