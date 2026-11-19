package com.vuitton.android.data.repository;

import android.content.SharedPreferences;
import com.vuitton.foundation.model.domain.model.product.LastViewedProduct;
import com.vuitton.foundation.util.StringKtExtKt;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001*\u00020\u0004H\n"}, d2 = {"<anonymous>", "Lkotlin/Result;", "", "Lcom/vuitton/foundation/model/domain/model/product/LastViewedProduct;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.RecommendedSourceRepositoryImpl$getRecommendedSourceFromSharedPref$2", f = "RecommendedSourceRepositoryImpl.kt", l = {}, m = "invokeSuspend", v = 2)
final class RecommendedSourceRepositoryImpl$getRecommendedSourceFromSharedPref$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Result<? extends List<? extends LastViewedProduct>>>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ RecommendedSourceRepositoryImpl f47934b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RecommendedSourceRepositoryImpl$getRecommendedSourceFromSharedPref$2(RecommendedSourceRepositoryImpl recommendedSourceRepositoryImpl, Continuation continuation) {
        super(2, continuation);
        this.f47934b = recommendedSourceRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new RecommendedSourceRepositoryImpl$getRecommendedSourceFromSharedPref$2(this.f47934b, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((RecommendedSourceRepositoryImpl$getRecommendedSourceFromSharedPref$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v10, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v18 */
    /* JADX WARN: Type inference failed for: r7v6 */
    /* JADX WARN: Type inference failed for: r8v10, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r8v8, types: [kotlin.Result$Failure] */
    /* JADX WARN: Type inference failed for: r8v9 */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object failure;
        ?? failure2;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        RecommendedSourceRepositoryImpl recommendedSourceRepositoryImpl = this.f47934b;
        try {
            Result.Companion companion = Result.INSTANCE;
            String string = ((SharedPreferences) recommendedSourceRepositoryImpl.f47925a.get()).getString("RECOMMENDED_SOURCE", null);
            failure = new Result((string == null || string.length() == 0) ? EmptyList.f71768b : ((LastViewedProductListData) recommendedSourceRepositoryImpl.f47927c.b(LastViewedProductListData.INSTANCE.serializer(), string)).f47750a);
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
        Object obj2 = ((Result) failure).f71708b;
        boolean z = obj2 instanceof Result.Failure;
        ?? r7 = obj2;
        if (!z) {
            try {
                List<LastViewedProductData> list = (List) obj2;
                failure2 = new ArrayList(CollectionsKt.t(list, 10));
                for (LastViewedProductData lastViewedProductData : list) {
                    lastViewedProductData.getClass();
                    failure2.add(new LastViewedProduct(lastViewedProductData.f47745a, lastViewedProductData.f47746b, StringKtExtKt.d(lastViewedProductData.f47747c), lastViewedProductData.d, null));
                }
            } catch (Throwable th2) {
                Result.Companion companion3 = Result.INSTANCE;
                failure2 = new Result.Failure(th2);
            }
            r7 = failure2;
        }
        return new Result(r7);
    }
}
