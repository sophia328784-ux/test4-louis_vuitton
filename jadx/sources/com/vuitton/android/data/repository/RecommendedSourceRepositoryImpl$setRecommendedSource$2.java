package com.vuitton.android.data.repository;

import android.content.SharedPreferences;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.product.LastViewedProduct;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CancellationException;
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

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"}, d2 = {"<anonymous>", "Lkotlin/Result;", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.RecommendedSourceRepositoryImpl$setRecommendedSource$2", f = "RecommendedSourceRepositoryImpl.kt", l = {}, m = "invokeSuspend", v = 2)
final class RecommendedSourceRepositoryImpl$setRecommendedSource$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Result<? extends Unit>>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ List f47937b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ RecommendedSourceRepositoryImpl f47938c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RecommendedSourceRepositoryImpl$setRecommendedSource$2(List list, RecommendedSourceRepositoryImpl recommendedSourceRepositoryImpl, Continuation continuation) {
        super(2, continuation);
        this.f47937b = list;
        this.f47938c = recommendedSourceRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new RecommendedSourceRepositoryImpl$setRecommendedSource$2(this.f47937b, this.f47938c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((RecommendedSourceRepositoryImpl$setRecommendedSource$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object failure;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        List list = this.f47937b;
        RecommendedSourceRepositoryImpl recommendedSourceRepositoryImpl = this.f47938c;
        try {
            Result.Companion companion = Result.INSTANCE;
            List<LastViewedProduct> list2 = list;
            ArrayList arrayList = new ArrayList(CollectionsKt.t(list2, 10));
            for (LastViewedProduct lastViewedProduct : list2) {
                lastViewedProduct.getClass();
                arrayList.add(new LastViewedProductData(lastViewedProduct.f67896a, lastViewedProduct.f67897b, String.valueOf(lastViewedProduct.f67898c), lastViewedProduct.d, null));
            }
            LastViewedProductListData lastViewedProductListData = new LastViewedProductListData(arrayList);
            Object obj2 = recommendedSourceRepositoryImpl.f47925a.get();
            obj2.getClass();
            SharedPreferences.Editor editorEdit = ((SharedPreferences) obj2).edit();
            editorEdit.putString("RECOMMENDED_SOURCE", recommendedSourceRepositoryImpl.f47927c.c(LastViewedProductListData.INSTANCE.serializer(), lastViewedProductListData));
            editorEdit.commit();
            recommendedSourceRepositoryImpl.d.setValue(list);
            failure = new Result(Unit.f71739a);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            if (thA instanceof CancellationException) {
                throw thA;
            }
            failure = new Result(new Result.Failure(thA));
        }
        Object obj3 = ((Result) failure).f71708b;
        Throwable thA2 = Result.a(obj3);
        if (thA2 != null) {
            Logger logger = recommendedSourceRepositoryImpl.f47926b;
            thA2.getMessage();
            logger.getClass();
        }
        return new Result(obj3);
    }
}
