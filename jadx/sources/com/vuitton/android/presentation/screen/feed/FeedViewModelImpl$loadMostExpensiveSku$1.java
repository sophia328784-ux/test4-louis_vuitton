package com.vuitton.android.presentation.screen.feed;

import com.vuitton.android.domain.usecase.account.order.GetOrdersHistoryWithMostExpensiveProductUseCase;
import com.vuitton.foundation.model.domain.model.common.ResultStrategy;
import com.vuitton.foundation.model.domain.model.producttiny.ProductTiny;
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

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.feed.FeedViewModelImpl$loadMostExpensiveSku$1", f = "FeedViewModelImpl.kt", l = {612, 614, 619}, m = "invokeSuspend", v = 2)
final class FeedViewModelImpl$loadMostExpensiveSku$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ResultStrategy f57691b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ProductTiny f57692c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ FeedViewModelImpl f57693e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FeedViewModelImpl$loadMostExpensiveSku$1(FeedViewModelImpl feedViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.f57693e = feedViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new FeedViewModelImpl$loadMostExpensiveSku$1(this.f57693e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((FeedViewModelImpl$loadMostExpensiveSku$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:20:0x004e  */
    /* JADX WARN: Code duplicated, block: B:22:0x0054  */
    /* JADX WARN: Code duplicated, block: B:24:0x0058  */
    /* JADX WARN: Code duplicated, block: B:26:0x005b  */
    /* JADX WARN: Code duplicated, block: B:30:0x006b  */
    /* JADX WARN: Code duplicated, block: B:33:0x0074  */
    /* JADX WARN: Code duplicated, block: B:36:0x0080  */
    /* JADX WARN: Code duplicated, block: B:38:0x0087  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        ResultStrategy resultStrategy;
        Result result;
        ProductTiny productTiny;
        Object objB;
        Object obj2;
        ProductTiny productTiny2;
        Object obj3;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.d;
        FeedViewModelImpl feedViewModelImpl = this.f57693e;
        if (i2 == 0) {
            ResultKt.b(obj);
            GetOrdersHistoryWithMostExpensiveProductUseCase getOrdersHistoryWithMostExpensiveProductUseCase = feedViewModelImpl.D;
            this.d = 1;
            obj = getOrdersHistoryWithMostExpensiveProductUseCase.f49123a.e();
            if (obj != coroutineSingletons) {
            }
            return coroutineSingletons;
        }
        if (i2 == 1) {
            ResultKt.b(obj);
        } else {
            if (i2 == 2) {
                resultStrategy = this.f57691b;
                ResultKt.b(obj);
                result = (Result) obj;
                if (result != null) {
                    obj3 = result.f71708b;
                    if (obj3 instanceof Result.Failure) {
                        obj3 = null;
                    }
                    productTiny = (ProductTiny) obj3;
                } else {
                    productTiny = null;
                }
                if (productTiny != null) {
                    FeedViewModelImpl.Dc(feedViewModelImpl, productTiny);
                }
                this.f57691b = null;
                this.f57692c = productTiny;
                this.d = 3;
                objB = resultStrategy.b(this);
                if (objB != coroutineSingletons) {
                    ProductTiny productTiny3 = productTiny;
                    obj2 = objB;
                    productTiny2 = productTiny3;
                }
                return coroutineSingletons;
            }
            if (i2 != 3) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            productTiny2 = this.f57692c;
            ResultKt.b(obj);
            obj2 = ((Result) obj).f71708b;
        }
        Result.Companion companion = Result.INSTANCE;
        if (!(obj2 instanceof Result.Failure)) {
            FeedViewModelImpl.Dc(feedViewModelImpl, (ProductTiny) obj2);
        }
        if (Result.a(obj2) != null) {
            feedViewModelImpl.f57615b.getClass();
            if (productTiny2 == null) {
                FeedViewModelImpl.Dc(feedViewModelImpl, null);
            }
        }
        return Unit.f71739a;
        resultStrategy = (ResultStrategy) obj;
        this.f57691b = resultStrategy;
        this.d = 2;
        obj = resultStrategy.g(this);
        if (obj != coroutineSingletons) {
            result = (Result) obj;
            if (result != null) {
                obj3 = result.f71708b;
                if (obj3 instanceof Result.Failure) {
                    obj3 = null;
                }
                productTiny = (ProductTiny) obj3;
            } else {
                productTiny = null;
            }
            if (productTiny != null) {
                FeedViewModelImpl.Dc(feedViewModelImpl, productTiny);
            }
            this.f57691b = null;
            this.f57692c = productTiny;
            this.d = 3;
            objB = resultStrategy.b(this);
            if (objB != coroutineSingletons) {
                ProductTiny productTiny4 = productTiny;
                obj2 = objB;
                productTiny2 = productTiny4;
                Result.Companion companion2 = Result.INSTANCE;
                if (!(obj2 instanceof Result.Failure)) {
                    FeedViewModelImpl.Dc(feedViewModelImpl, (ProductTiny) obj2);
                }
                if (Result.a(obj2) != null) {
                    feedViewModelImpl.f57615b.getClass();
                    if (productTiny2 == null) {
                        FeedViewModelImpl.Dc(feedViewModelImpl, null);
                    }
                }
                return Unit.f71739a;
            }
        }
        return coroutineSingletons;
    }
}
