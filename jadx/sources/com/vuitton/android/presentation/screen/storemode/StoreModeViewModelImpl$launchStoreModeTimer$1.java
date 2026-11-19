package com.vuitton.android.presentation.screen.storemode;

import com.vuitton.android.domain.usecase.storemode.EnableStoreModeUseCase;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.storemode.StoreModeViewModelImpl$launchStoreModeTimer$1", f = "StoreModeViewModelImpl.kt", l = {}, m = "invokeSuspend", v = 2)
final class StoreModeViewModelImpl$launchStoreModeTimer$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ StoreModeViewModelImpl f64822b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StoreModeViewModelImpl$launchStoreModeTimer$1(StoreModeViewModelImpl storeModeViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.f64822b = storeModeViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new StoreModeViewModelImpl$launchStoreModeTimer$1(this.f64822b, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((StoreModeViewModelImpl$launchStoreModeTimer$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        StoreModeViewModelImpl storeModeViewModelImpl = this.f64822b;
        String str = storeModeViewModelImpl.n;
        if (str != null) {
            EnableStoreModeUseCase enableStoreModeUseCase = storeModeViewModelImpl.f64790f;
            long jCurrentTimeMillis = System.currentTimeMillis();
            enableStoreModeUseCase.getClass();
            str.getClass();
            Object objG = enableStoreModeUseCase.f50390a.g(jCurrentTimeMillis, str);
            Result.Companion companion = Result.INSTANCE;
            if (!(objG instanceof Result.Failure)) {
                storeModeViewModelImpl.F();
            }
        } else {
            storeModeViewModelImpl.f64786a.d("StoreModeRmsCode", " No RMS Code received", null);
        }
        return Unit.f71739a;
    }
}
