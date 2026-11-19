package com.vuitton.android.presentation.screen.connectivity.watch.detail;

import androidx.lifecycle.MutableLiveData;
import com.vuitton.android.domain.usecase.connectivity.watch.watchface.GetWatchfacePresentationWithVersionUseCase;
import com.vuitton.android.presentation.screen.connectivity.watchface.WatchFacePresentationMapperKt;
import com.vuitton.foundation.model.domain.model.connectivity.watchface.WatchfacePresentation;
import defpackage.md;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.connectivity.watch.detail.WatchDetailsViewModelImpl$getWatchFaces$1", f = "WatchDetailsViewModelImpl.kt", l = {87}, m = "invokeSuspend", v = 2)
final class WatchDetailsViewModelImpl$getWatchFaces$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f56737b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f56738c;
    public final /* synthetic */ WatchDetailsViewModelImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Integer f56739e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WatchDetailsViewModelImpl$getWatchFaces$1(WatchDetailsViewModelImpl watchDetailsViewModelImpl, Integer num, Continuation continuation) {
        super(2, continuation);
        this.d = watchDetailsViewModelImpl;
        this.f56739e = num;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        WatchDetailsViewModelImpl$getWatchFaces$1 watchDetailsViewModelImpl$getWatchFaces$1 = new WatchDetailsViewModelImpl$getWatchFaces$1(this.d, this.f56739e, continuation);
        watchDetailsViewModelImpl$getWatchFaces$1.f56738c = obj;
        return watchDetailsViewModelImpl$getWatchFaces$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((WatchDetailsViewModelImpl$getWatchFaces$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object failure;
        WatchDetailsViewModelImpl watchDetailsViewModelImpl = this.d;
        MutableLiveData mutableLiveData = watchDetailsViewModelImpl.l;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f56737b;
        try {
            if (i2 == 0) {
                ResultKt.b(obj);
                Integer num = this.f56739e;
                Result.Companion companion = Result.INSTANCE;
                GetWatchfacePresentationWithVersionUseCase getWatchfacePresentationWithVersionUseCase = watchDetailsViewModelImpl.f56724c;
                int iIntValue = num.intValue();
                this.f56738c = null;
                this.f56737b = 1;
                obj = getWatchfacePresentationWithVersionUseCase.a(iIntValue, this);
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
            List listQ0 = CollectionsKt.q0((List) failure, 5);
            ArrayList arrayList = new ArrayList(CollectionsKt.t(listQ0, 10));
            Iterator it = listQ0.iterator();
            while (it.hasNext()) {
                arrayList.add(WatchFacePresentationMapperKt.a((WatchfacePresentation) it.next()));
            }
            mutableLiveData.postValue(arrayList);
        } else {
            mutableLiveData.postValue(null);
        }
        return Unit.f71739a;
    }
}
