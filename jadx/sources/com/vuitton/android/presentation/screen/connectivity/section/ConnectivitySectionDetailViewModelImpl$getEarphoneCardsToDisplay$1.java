package com.vuitton.android.presentation.screen.connectivity.section;

import androidx.lifecycle.MutableLiveData;
import com.vuitton.android.domain.usecase.connectivity.earphone.GetEarphoneSkuListUseCase;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.foundation.model.domain.model.product.SkuId;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.connectivity.section.ConnectivitySectionDetailViewModelImpl$getEarphoneCardsToDisplay$1", f = "ConnectivitySectionDetailViewModelImpl.kt", l = {101}, m = "invokeSuspend", v = 2)
final class ConnectivitySectionDetailViewModelImpl$getEarphoneCardsToDisplay$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f56279b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f56280c;
    public final /* synthetic */ ConnectivitySectionDetailViewModelImpl d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConnectivitySectionDetailViewModelImpl$getEarphoneCardsToDisplay$1(ConnectivitySectionDetailViewModelImpl connectivitySectionDetailViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.d = connectivitySectionDetailViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        ConnectivitySectionDetailViewModelImpl$getEarphoneCardsToDisplay$1 connectivitySectionDetailViewModelImpl$getEarphoneCardsToDisplay$1 = new ConnectivitySectionDetailViewModelImpl$getEarphoneCardsToDisplay$1(this.d, continuation);
        connectivitySectionDetailViewModelImpl$getEarphoneCardsToDisplay$1.f56280c = obj;
        return connectivitySectionDetailViewModelImpl$getEarphoneCardsToDisplay$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ConnectivitySectionDetailViewModelImpl$getEarphoneCardsToDisplay$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object failure;
        ConnectivitySectionDetailViewModelImpl connectivitySectionDetailViewModelImpl = this.d;
        MutableLiveData mutableLiveData = connectivitySectionDetailViewModelImpl.p;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f56279b;
        try {
            if (i2 == 0) {
                ResultKt.b(obj);
                Result.Companion companion = Result.INSTANCE;
                GetEarphoneSkuListUseCase getEarphoneSkuListUseCase = connectivitySectionDetailViewModelImpl.f56272c;
                this.f56280c = null;
                this.f56279b = 1;
                obj = getEarphoneSkuListUseCase.a(this);
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
            Iterable iterable = (Iterable) obj;
            ArrayList arrayList = new ArrayList(CollectionsKt.t(iterable, 10));
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                String str = ((SkuId) it.next()).f67933a;
                SkuIdUiModel.f61763c.getClass();
                SkuIdUiModel.Companion.c(str);
                arrayList.add(new SkuIdUiModel(str));
            }
            Result.Companion companion2 = Result.INSTANCE;
            failure = arrayList;
        } catch (Throwable th) {
            Result.Companion companion3 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA == null) {
            mutableLiveData.postValue(new Result((List) failure));
        } else {
            mutableLiveData.postValue(new Result(new Result.Failure(thA)));
        }
        return Unit.f71739a;
    }
}
