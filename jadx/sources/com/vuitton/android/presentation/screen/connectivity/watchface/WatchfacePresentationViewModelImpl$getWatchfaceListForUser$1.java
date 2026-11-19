package com.vuitton.android.presentation.screen.connectivity.watchface;

import androidx.lifecycle.MutableLiveData;
import com.vuitton.android.domain.usecase.connectivity.watch.watchface.GetWatchfacePresentationForUserUseCase;
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
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.connectivity.watchface.WatchfacePresentationViewModelImpl$getWatchfaceListForUser$1", f = "WatchfacePresentationViewModelImpl.kt", l = {EACTags.TRANSACTION_DATE}, m = "invokeSuspend", v = 2)
final class WatchfacePresentationViewModelImpl$getWatchfaceListForUser$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f56840b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f56841c;
    public final /* synthetic */ WatchfacePresentationViewModelImpl d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WatchfacePresentationViewModelImpl$getWatchfaceListForUser$1(WatchfacePresentationViewModelImpl watchfacePresentationViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.d = watchfacePresentationViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        WatchfacePresentationViewModelImpl$getWatchfaceListForUser$1 watchfacePresentationViewModelImpl$getWatchfaceListForUser$1 = new WatchfacePresentationViewModelImpl$getWatchfaceListForUser$1(this.d, continuation);
        watchfacePresentationViewModelImpl$getWatchfaceListForUser$1.f56841c = obj;
        return watchfacePresentationViewModelImpl$getWatchfaceListForUser$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((WatchfacePresentationViewModelImpl$getWatchfaceListForUser$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object failure;
        WatchfacePresentationViewModelImpl watchfacePresentationViewModelImpl = this.d;
        MutableLiveData mutableLiveData = watchfacePresentationViewModelImpl.d;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f56840b;
        try {
            if (i2 == 0) {
                ResultKt.b(obj);
                Result.Companion companion = Result.INSTANCE;
                GetWatchfacePresentationForUserUseCase getWatchfacePresentationForUserUseCase = watchfacePresentationViewModelImpl.f56837b;
                this.f56841c = null;
                this.f56840b = 1;
                obj = getWatchfacePresentationForUserUseCase.a(this);
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
        Throwable thA = Result.a(failure);
        if (thA == null) {
            List list = (List) failure;
            ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(WatchFacePresentationMapperKt.a((WatchfacePresentation) it.next()));
            }
            mutableLiveData.postValue(new Result(arrayList));
        } else {
            mutableLiveData.postValue(new Result(new Result.Failure(thA)));
        }
        return Unit.f71739a;
    }
}
