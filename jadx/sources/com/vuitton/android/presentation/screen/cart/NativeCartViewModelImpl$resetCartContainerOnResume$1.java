package com.vuitton.android.presentation.screen.cart;

import com.vuitton.android.domain.usecase.cart.ResetCartContainerUseCase;
import defpackage.md;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.cart.NativeCartViewModelImpl$resetCartContainerOnResume$1", f = "NativeCartViewModelImpl.kt", l = {381}, m = "invokeSuspend", v = 2)
final class NativeCartViewModelImpl$resetCartContainerOnResume$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f54933b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f54934c;
    public final /* synthetic */ NativeCartViewModelImpl d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NativeCartViewModelImpl$resetCartContainerOnResume$1(Continuation continuation, NativeCartViewModelImpl nativeCartViewModelImpl) {
        super(2, continuation);
        this.d = nativeCartViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        NativeCartViewModelImpl$resetCartContainerOnResume$1 nativeCartViewModelImpl$resetCartContainerOnResume$1 = new NativeCartViewModelImpl$resetCartContainerOnResume$1(continuation, this.d);
        nativeCartViewModelImpl$resetCartContainerOnResume$1.f54934c = obj;
        return nativeCartViewModelImpl$resetCartContainerOnResume$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((NativeCartViewModelImpl$resetCartContainerOnResume$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f54933b;
        try {
            if (i2 == 0) {
                ResultKt.b(obj);
                NativeCartViewModelImpl nativeCartViewModelImpl = this.d;
                Result.Companion companion = Result.INSTANCE;
                ResetCartContainerUseCase resetCartContainerUseCase = nativeCartViewModelImpl.q;
                this.f54934c = null;
                this.f54933b = 1;
                Object objD = resetCartContainerUseCase.f49596a.d(this);
                if (objD != coroutineSingletons) {
                    objD = Unit.f71739a;
                }
                if (objD == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i2 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
            Result.Companion companion2 = Result.INSTANCE;
        } catch (Throwable th) {
            Result.Companion companion3 = Result.INSTANCE;
            new Result.Failure(th);
        }
        return Unit.f71739a;
    }
}
