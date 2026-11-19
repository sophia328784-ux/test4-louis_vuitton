package com.vuitton.android.presentation.screen.connectivity.watch.detail;

import androidx.lifecycle.MutableLiveData;
import com.vuitton.android.domain.usecase.travel.GetTravelListUseCase;
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
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.connectivity.watch.detail.WatchDetailsViewModelImpl$getTravels$1", f = "WatchDetailsViewModelImpl.kt", l = {EACTags.CERTIFICATION_AUTHORITY_PUBLIC_KEY}, m = "invokeSuspend", v = 2)
final class WatchDetailsViewModelImpl$getTravels$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f56733b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ WatchDetailsViewModelImpl f56734c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WatchDetailsViewModelImpl$getTravels$1(WatchDetailsViewModelImpl watchDetailsViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.f56734c = watchDetailsViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new WatchDetailsViewModelImpl$getTravels$1(this.f56734c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((WatchDetailsViewModelImpl$getTravels$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objA;
        WatchDetailsViewModelImpl watchDetailsViewModelImpl = this.f56734c;
        MutableLiveData mutableLiveData = watchDetailsViewModelImpl.f56729j;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f56733b;
        if (i2 == 0) {
            ResultKt.b(obj);
            GetTravelListUseCase getTravelListUseCase = watchDetailsViewModelImpl.f56722a;
            this.f56733b = 1;
            objA = getTravelListUseCase.a(this);
            if (objA == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            objA = ((Result) obj).f71708b;
        }
        Result.Companion companion = Result.INSTANCE;
        if (!(objA instanceof Result.Failure)) {
            mutableLiveData.postValue((List) objA);
        }
        if (Result.a(objA) != null) {
            mutableLiveData.postValue(null);
        }
        return Unit.f71739a;
    }
}
