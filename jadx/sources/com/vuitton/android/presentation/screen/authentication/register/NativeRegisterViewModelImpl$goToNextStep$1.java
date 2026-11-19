package com.vuitton.android.presentation.screen.authentication.register;

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
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.register.NativeRegisterViewModelImpl$goToNextStep$1", f = "NativeRegisterViewModelImpl.kt", l = {255}, m = "invokeSuspend", v = 2)
final class NativeRegisterViewModelImpl$goToNextStep$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f53747b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ NativeRegisterViewModelImpl f53748c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NativeRegisterViewModelImpl$goToNextStep$1(Continuation continuation, NativeRegisterViewModelImpl nativeRegisterViewModelImpl) {
        super(2, continuation);
        this.f53748c = nativeRegisterViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new NativeRegisterViewModelImpl$goToNextStep$1(continuation, this.f53748c);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((NativeRegisterViewModelImpl$goToNextStep$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        NativeRegisterViewModelImpl nativeRegisterViewModelImpl = this.f53748c;
        MutableStateFlow mutableStateFlow = nativeRegisterViewModelImpl.y;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f53747b;
        if (i2 == 0) {
            ResultKt.b(obj);
            int iIntValue = ((Number) mutableStateFlow.getValue()).intValue();
            int i3 = iIntValue + 1;
            if (!NativeRegisterViewModelImpl.yc(nativeRegisterViewModelImpl) && i3 == Step.REGISTRATION_ADDRESS.ordinal()) {
                i3 = iIntValue + 2;
            }
            if (i3 <= Step.ACCOUNT_ACTIVATION.ordinal()) {
                Integer num = new Integer(i3);
                this.f53747b = 1;
                if (mutableStateFlow.emit(num, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
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
