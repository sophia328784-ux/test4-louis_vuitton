package com.dynatrace.android.agent.data;

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
import kotlinx.coroutines.Job;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.dynatrace.android.agent.data.CrossPlatformScreenshotStore$flush$1", f = "CrossPlatformScreenshotStore.kt", l = {95}, m = "invokeSuspend")
final class CrossPlatformScreenshotStore$flush$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f27464b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CrossPlatformScreenshotStore f27465c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CrossPlatformScreenshotStore$flush$1(CrossPlatformScreenshotStore crossPlatformScreenshotStore, Continuation continuation) {
        super(2, continuation);
        this.f27465c = crossPlatformScreenshotStore;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new CrossPlatformScreenshotStore$flush$1(this.f27465c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((CrossPlatformScreenshotStore$flush$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f27464b;
        if (i2 == 0) {
            ResultKt.b(obj);
            Job job = this.f27465c.f27461f;
            if (job == null) {
                return null;
            }
            this.f27464b = 1;
            if (job.join(this) == coroutineSingletons) {
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
