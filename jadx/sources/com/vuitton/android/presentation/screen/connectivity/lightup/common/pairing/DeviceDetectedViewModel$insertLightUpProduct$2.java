package com.vuitton.android.presentation.screen.connectivity.lightup.common.pairing;

import com.vuitton.android.domain.usecase.connectivity.lightup.InsertLightUpProductUseCase;
import com.vuitton.foundation.model.domain.model.connectivity.LightUpProduct;
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
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.connectivity.lightup.common.pairing.DeviceDetectedViewModel$insertLightUpProduct$2", f = "DeviceDetectedViewModel.kt", l = {35}, m = "invokeSuspend", v = 2)
final class DeviceDetectedViewModel$insertLightUpProduct$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f56184b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ DeviceDetectedViewModel f56185c;
    public final /* synthetic */ LightUpProduct d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeviceDetectedViewModel$insertLightUpProduct$2(DeviceDetectedViewModel deviceDetectedViewModel, LightUpProduct lightUpProduct, Continuation continuation) {
        super(2, continuation);
        this.f56185c = deviceDetectedViewModel;
        this.d = lightUpProduct;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new DeviceDetectedViewModel$insertLightUpProduct$2(this.f56185c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((DeviceDetectedViewModel$insertLightUpProduct$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f56184b;
        LightUpProduct lightUpProduct = this.d;
        DeviceDetectedViewModel deviceDetectedViewModel = this.f56185c;
        if (i2 == 0) {
            ResultKt.b(obj);
            InsertLightUpProductUseCase insertLightUpProductUseCase = deviceDetectedViewModel.f56180c;
            this.f56184b = 1;
            Object objK = insertLightUpProductUseCase.f49810a.k(lightUpProduct, this);
            if (objK != coroutineSingletons) {
                objK = Unit.f71739a;
            }
            if (objK == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        deviceDetectedViewModel.f56181e.postValue(lightUpProduct);
        return Unit.f71739a;
    }
}
