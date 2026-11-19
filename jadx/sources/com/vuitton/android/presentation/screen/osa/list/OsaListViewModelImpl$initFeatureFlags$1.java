package com.vuitton.android.presentation.screen.osa.list;

import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.foundation.model.domain.model.sync.Feature;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.osa.list.OsaListViewModelImpl$initFeatureFlags$1", f = "OsaListViewModelImpl.kt", l = {131, 132}, m = "invokeSuspend", v = 2)
final class OsaListViewModelImpl$initFeatureFlags$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f60863b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f60864c;
    public final /* synthetic */ OsaListViewModelImpl d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OsaListViewModelImpl$initFeatureFlags$1(Continuation continuation, OsaListViewModelImpl osaListViewModelImpl) {
        super(2, continuation);
        this.d = osaListViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new OsaListViewModelImpl$initFeatureFlags$1(continuation, this.d);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((OsaListViewModelImpl$initFeatureFlags$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        MutableStateFlow mutableStateFlow;
        MutableStateFlow mutableStateFlow2;
        OsaListViewModelImpl osaListViewModelImpl = this.d;
        IsFeatureAvailableUseCase isFeatureAvailableUseCase = osaListViewModelImpl.f60850h;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f60864c;
        if (i2 == 0) {
            ResultKt.b(obj);
            mutableStateFlow = osaListViewModelImpl.r;
            Feature[] featureArr = {Feature.OSA_REASONS};
            this.f60863b = mutableStateFlow;
            this.f60864c = 1;
            obj = isFeatureAvailableUseCase.c(featureArr, false, this);
            if (obj != coroutineSingletons) {
            }
            return coroutineSingletons;
        }
        if (i2 == 1) {
            mutableStateFlow = (MutableStateFlow) this.f60863b;
            ResultKt.b(obj);
        } else {
            if (i2 != 2) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            mutableStateFlow2 = (MutableStateFlow) this.f60863b;
            ResultKt.b(obj);
        }
        mutableStateFlow2.setValue(obj);
        return Unit.f71739a;
        mutableStateFlow.setValue(obj);
        MutableStateFlow mutableStateFlow3 = osaListViewModelImpl.s;
        Feature[] featureArr2 = {Feature.OSA_MODIFY};
        this.f60863b = mutableStateFlow3;
        this.f60864c = 2;
        Object objC = isFeatureAvailableUseCase.c(featureArr2, false, this);
        if (objC != coroutineSingletons) {
            obj = objC;
            mutableStateFlow2 = mutableStateFlow3;
            mutableStateFlow2.setValue(obj);
            return Unit.f71739a;
        }
        return coroutineSingletons;
    }
}
