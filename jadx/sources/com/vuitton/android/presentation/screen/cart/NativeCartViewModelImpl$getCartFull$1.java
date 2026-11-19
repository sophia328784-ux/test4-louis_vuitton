package com.vuitton.android.presentation.screen.cart;

import com.vuitton.foundation.model.domain.error.cart.Empty;
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
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.cart.NativeCartViewModelImpl$getCartFull$1", f = "NativeCartViewModelImpl.kt", l = {388}, m = "invokeSuspend", v = 2)
final class NativeCartViewModelImpl$getCartFull$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f54901b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ NativeCartViewModelImpl f54902c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NativeCartViewModelImpl$getCartFull$1(Continuation continuation, NativeCartViewModelImpl nativeCartViewModelImpl) {
        super(2, continuation);
        this.f54902c = nativeCartViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new NativeCartViewModelImpl$getCartFull$1(continuation, this.f54902c);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((NativeCartViewModelImpl$getCartFull$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objYc;
        NativeCartViewModelImpl nativeCartViewModelImpl = this.f54902c;
        MutableStateFlow mutableStateFlow = nativeCartViewModelImpl.O;
        MutableStateFlow mutableStateFlow2 = nativeCartViewModelImpl.M;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f54901b;
        if (i2 == 0) {
            ResultKt.b(obj);
            mutableStateFlow2.setValue(Boolean.TRUE);
            this.f54901b = 1;
            objYc = NativeCartViewModelImpl.yc(nativeCartViewModelImpl, this);
            if (objYc == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            objYc = ((Result) obj).f71708b;
        }
        Result.Companion companion = Result.INSTANCE;
        if (!(objYc instanceof Result.Failure)) {
            mutableStateFlow.setValue(Boolean.FALSE);
        }
        Throwable thA = Result.a(objYc);
        if (thA != null) {
            if (thA instanceof Empty) {
                nativeCartViewModelImpl.P.setValue(Boolean.TRUE);
            } else {
                mutableStateFlow.setValue(Boolean.TRUE);
            }
            nativeCartViewModelImpl.f54871a.c("NativeCartViewModelImpl", "Unable to get cart", thA);
        }
        mutableStateFlow2.setValue(Boolean.FALSE);
        return Unit.f71739a;
    }
}
