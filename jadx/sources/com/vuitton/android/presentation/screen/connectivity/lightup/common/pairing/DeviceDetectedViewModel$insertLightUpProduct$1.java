package com.vuitton.android.presentation.screen.connectivity.lightup.common.pairing;

import androidx.lifecycle.MutableLiveData;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\n\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004H\n"}, d2 = {"<anonymous>", "", "it", "Ljava/lang/Exception;", "Lkotlin/Exception;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.connectivity.lightup.common.pairing.DeviceDetectedViewModel$insertLightUpProduct$1", f = "DeviceDetectedViewModel.kt", l = {}, m = "invokeSuspend", v = 2)
final class DeviceDetectedViewModel$insertLightUpProduct$1 extends SuspendLambda implements Function2<Exception, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ DeviceDetectedViewModel f56183b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeviceDetectedViewModel$insertLightUpProduct$1(DeviceDetectedViewModel deviceDetectedViewModel, Continuation continuation) {
        super(2, continuation);
        this.f56183b = deviceDetectedViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new DeviceDetectedViewModel$insertLightUpProduct$1(this.f56183b, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((DeviceDetectedViewModel$insertLightUpProduct$1) create((Exception) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        MutableLiveData mutableLiveData = this.f56183b.f56182f;
        Unit unit = Unit.f71739a;
        mutableLiveData.postValue(unit);
        return unit;
    }
}
