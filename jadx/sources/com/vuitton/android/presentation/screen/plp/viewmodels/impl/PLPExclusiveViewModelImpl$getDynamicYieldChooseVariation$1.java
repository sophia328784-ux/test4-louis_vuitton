package com.vuitton.android.presentation.screen.plp.viewmodels.impl;

import com.vuitton.android.domain.usecase.dynamicyield.GetDYPlpChooseVariationUseCase;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.plp.viewmodels.impl.PLPExclusiveViewModelImpl$getDynamicYieldChooseVariation$1", f = "PLPExclusiveViewModelImpl.kt", l = {158}, m = "invokeSuspend", v = 2)
final class PLPExclusiveViewModelImpl$getDynamicYieldChooseVariation$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f63076b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PLPExclusiveViewModelImpl f63077c;
    public final /* synthetic */ String d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PLPExclusiveViewModelImpl$getDynamicYieldChooseVariation$1(PLPExclusiveViewModelImpl pLPExclusiveViewModelImpl, String str, Continuation continuation) {
        super(2, continuation);
        this.f63077c = pLPExclusiveViewModelImpl;
        this.d = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PLPExclusiveViewModelImpl$getDynamicYieldChooseVariation$1(this.f63077c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PLPExclusiveViewModelImpl$getDynamicYieldChooseVariation$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f63076b;
        if (i2 == 0) {
            ResultKt.b(obj);
            GetDYPlpChooseVariationUseCase getDYPlpChooseVariationUseCase = this.f63077c.f63063e;
            this.f63076b = 1;
            if (getDYPlpChooseVariationUseCase.a(this.d, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            ((Result) obj).getClass();
        }
        return Unit.f71739a;
    }
}
