package com.vuitton.android.presentation.screen.connectivity.section;

import androidx.lifecycle.MutableLiveData;
import com.vuitton.android.domain.usecase.connectivity.earphone.GetEarphoneVideoUseCase;
import com.vuitton.android.presentation.screen.connectivity.ConnectivityMapperKt;
import com.vuitton.foundation.model.domain.model.connectivity.common.Video;
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
import net.rtccloud.sdk.Sink;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.connectivity.section.ConnectivitySectionDetailViewModelImpl$getEarphoneVideo$1", f = "ConnectivitySectionDetailViewModelImpl.kt", l = {Sink.ORIENTATION_90}, m = "invokeSuspend", v = 2)
final class ConnectivitySectionDetailViewModelImpl$getEarphoneVideo$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f56281b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f56282c;
    public final /* synthetic */ ConnectivitySectionDetailViewModelImpl d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConnectivitySectionDetailViewModelImpl$getEarphoneVideo$1(ConnectivitySectionDetailViewModelImpl connectivitySectionDetailViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.d = connectivitySectionDetailViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        ConnectivitySectionDetailViewModelImpl$getEarphoneVideo$1 connectivitySectionDetailViewModelImpl$getEarphoneVideo$1 = new ConnectivitySectionDetailViewModelImpl$getEarphoneVideo$1(this.d, continuation);
        connectivitySectionDetailViewModelImpl$getEarphoneVideo$1.f56282c = obj;
        return connectivitySectionDetailViewModelImpl$getEarphoneVideo$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ConnectivitySectionDetailViewModelImpl$getEarphoneVideo$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object failure;
        ConnectivitySectionDetailViewModelImpl connectivitySectionDetailViewModelImpl = this.d;
        MutableLiveData mutableLiveData = connectivitySectionDetailViewModelImpl.n;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f56281b;
        try {
            if (i2 == 0) {
                ResultKt.b(obj);
                Result.Companion companion = Result.INSTANCE;
                GetEarphoneVideoUseCase getEarphoneVideoUseCase = connectivitySectionDetailViewModelImpl.f56271b;
                this.f56282c = null;
                this.f56281b = 1;
                obj = getEarphoneVideoUseCase.a(this);
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
            failure = (Video) obj;
            Result.Companion companion2 = Result.INSTANCE;
        } catch (Throwable th) {
            Result.Companion companion3 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA == null) {
            mutableLiveData.postValue(new Result(ConnectivityMapperKt.a((Video) failure)));
        } else {
            mutableLiveData.postValue(new Result(new Result.Failure(thA)));
        }
        return Unit.f71739a;
    }
}
