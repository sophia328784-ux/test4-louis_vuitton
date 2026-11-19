package com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.detail;

import com.vuitton.android.domain.usecase.connectivity.trunkspeaker.GetTrunkSpeakerFaqUseCase;
import defpackage.md;
import java.util.List;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.detail.WifiDeviceDetailViewModelImpl$getTrunkSpeakerFaq$1", f = "WifiDeviceDetailViewModelImpl.kt", l = {25}, m = "invokeSuspend", v = 2)
final class WifiDeviceDetailViewModelImpl$getTrunkSpeakerFaq$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f56523b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f56524c;
    public final /* synthetic */ WifiDeviceDetailViewModelImpl d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WifiDeviceDetailViewModelImpl$getTrunkSpeakerFaq$1(WifiDeviceDetailViewModelImpl wifiDeviceDetailViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.d = wifiDeviceDetailViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        WifiDeviceDetailViewModelImpl$getTrunkSpeakerFaq$1 wifiDeviceDetailViewModelImpl$getTrunkSpeakerFaq$1 = new WifiDeviceDetailViewModelImpl$getTrunkSpeakerFaq$1(this.d, continuation);
        wifiDeviceDetailViewModelImpl$getTrunkSpeakerFaq$1.f56524c = obj;
        return wifiDeviceDetailViewModelImpl$getTrunkSpeakerFaq$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((WifiDeviceDetailViewModelImpl$getTrunkSpeakerFaq$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object failure;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f56523b;
        WifiDeviceDetailViewModelImpl wifiDeviceDetailViewModelImpl = this.d;
        try {
            if (i2 == 0) {
                ResultKt.b(obj);
                Result.Companion companion = Result.INSTANCE;
                GetTrunkSpeakerFaqUseCase getTrunkSpeakerFaqUseCase = wifiDeviceDetailViewModelImpl.f56520a;
                this.f56524c = null;
                this.f56523b = 1;
                obj = getTrunkSpeakerFaqUseCase.a(this);
                if (obj == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i2 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
            failure = (List) obj;
            Result.Companion companion2 = Result.INSTANCE;
        } catch (Throwable th) {
            Result.Companion companion3 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        if (Result.a(failure) == null) {
            wifiDeviceDetailViewModelImpl.f56521b.postValue((List) failure);
        }
        return Unit.f71739a;
    }
}
