package com.vuitton.android.presentation.screen.pdp.vto.beauty.components;

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

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.vto.beauty.components.PerfectCameraComposableKt$PerfectCameraComposable$4$1", f = "PerfectCameraComposable.kt", l = {}, m = "invokeSuspend", v = 2)
final class PerfectCameraComposableKt$PerfectCameraComposable$4$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ boolean f62045b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function0 f62046c;
    public final /* synthetic */ Function0 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function0 f62047e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PerfectCameraComposableKt$PerfectCameraComposable$4$1(boolean z, Function0 function0, Function0 function1, Function0 function2, Continuation continuation) {
        super(2, continuation);
        this.f62045b = z;
        this.f62046c = function0;
        this.d = function1;
        this.f62047e = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PerfectCameraComposableKt$PerfectCameraComposable$4$1(this.f62045b, this.f62046c, this.d, this.f62047e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PerfectCameraComposableKt$PerfectCameraComposable$4$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        if (!this.f62045b) {
            this.f62046c.mo47invoke();
        }
        this.d.mo47invoke();
        this.f62047e.mo47invoke();
        return Unit.f71739a;
    }
}
