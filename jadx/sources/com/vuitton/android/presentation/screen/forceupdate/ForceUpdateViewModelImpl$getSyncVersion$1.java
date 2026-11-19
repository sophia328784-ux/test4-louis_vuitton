package com.vuitton.android.presentation.screen.forceupdate;

import androidx.compose.runtime.MutableState;
import com.vuitton.android.domain.usecase.config.RequireCachedConfigsVersionUseCase;
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

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.forceupdate.ForceUpdateViewModelImpl$getSyncVersion$1", f = "ForceUpdateViewModel.kt", l = {33}, m = "invokeSuspend", v = 2)
final class ForceUpdateViewModelImpl$getSyncVersion$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f58186b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f58187c;
    public final /* synthetic */ ForceUpdateViewModelImpl d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ForceUpdateViewModelImpl$getSyncVersion$1(ForceUpdateViewModelImpl forceUpdateViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.d = forceUpdateViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ForceUpdateViewModelImpl$getSyncVersion$1(this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ForceUpdateViewModelImpl$getSyncVersion$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        MutableState mutableState;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f58187c;
        if (i2 == 0) {
            ResultKt.b(obj);
            ForceUpdateViewModelImpl forceUpdateViewModelImpl = this.d;
            MutableState mutableState2 = forceUpdateViewModelImpl.f58184b;
            RequireCachedConfigsVersionUseCase requireCachedConfigsVersionUseCase = forceUpdateViewModelImpl.f58183a;
            this.f58186b = mutableState2;
            this.f58187c = 1;
            obj = requireCachedConfigsVersionUseCase.a(this);
            if (obj == coroutineSingletons) {
                return coroutineSingletons;
            }
            mutableState = mutableState2;
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            mutableState = (MutableState) this.f58186b;
            ResultKt.b(obj);
        }
        mutableState.setValue(obj);
        return Unit.f71739a;
    }
}
