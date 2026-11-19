package com.vuitton.android.presentation.screen.orders.viewmodels;

import com.vuitton.android.domain.usecase.products.GetSizeGuideUseCase;
import com.vuitton.android.presentation.screen.orders.models.OrderReturnOrExchangeBottomSheet;
import com.vuitton.android.presentation.screen.orders.models.OrderReturnOrExchangeItemUiModel;
import com.vuitton.android.presentation.screen.orders.models.TransactionItemUiModel;
import com.vuitton.android.presentation.screen.pdp.mappers.ProductMapperKt;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SizeGuideUiModel;
import com.vuitton.foundation.model.domain.model.product.ProductId;
import com.vuitton.foundation.model.domain.model.sizeguide.SizeGuide;
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
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.orders.viewmodels.OrderReturnOrExchangeViewModelImpl$requestSizeGuide$1", f = "OrderReturnOrExchangeViewModelImpl.kt", l = {443}, m = "invokeSuspend", v = 2)
final class OrderReturnOrExchangeViewModelImpl$requestSizeGuide$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public OrderReturnOrExchangeViewModelImpl f60459b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f60460c;
    public final /* synthetic */ OrderReturnOrExchangeViewModelImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f60461e;

    @Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u008a\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$requestSizeGuide$1$SizeGuideResponseUiModel", "", "Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;", "item", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeGuideUiModel;", "sizeGuide", "<init>", "(Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeGuideUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public final /* data */ class SizeGuideResponseUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final TransactionItemUiModel f60462a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final SizeGuideUiModel f60463b;

        public SizeGuideResponseUiModel(TransactionItemUiModel transactionItemUiModel, SizeGuideUiModel sizeGuideUiModel) {
            transactionItemUiModel.getClass();
            sizeGuideUiModel.getClass();
            this.f60462a = transactionItemUiModel;
            this.f60463b = sizeGuideUiModel;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof SizeGuideResponseUiModel)) {
                return false;
            }
            SizeGuideResponseUiModel sizeGuideResponseUiModel = (SizeGuideResponseUiModel) obj;
            return Intrinsics.c(this.f60462a, sizeGuideResponseUiModel.f60462a) && Intrinsics.c(this.f60463b, sizeGuideResponseUiModel.f60463b);
        }

        public final int hashCode() {
            return this.f60463b.hashCode() + (this.f60462a.hashCode() * 31);
        }

        public final String toString() {
            return "SizeGuideResponseUiModel(item=" + this.f60462a + ", sizeGuide=" + this.f60463b + ")";
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OrderReturnOrExchangeViewModelImpl$requestSizeGuide$1(OrderReturnOrExchangeViewModelImpl orderReturnOrExchangeViewModelImpl, String str, Continuation continuation) {
        super(2, continuation);
        this.d = orderReturnOrExchangeViewModelImpl;
        this.f60461e = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new OrderReturnOrExchangeViewModelImpl$requestSizeGuide$1(this.d, this.f60461e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((OrderReturnOrExchangeViewModelImpl$requestSizeGuide$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objA;
        OrderReturnOrExchangeViewModelImpl orderReturnOrExchangeViewModelImpl;
        Object failure;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f60460c;
        OrderReturnOrExchangeBottomSheet.SizeGuide sizeGuide = null;
        OrderReturnOrExchangeViewModelImpl orderReturnOrExchangeViewModelImpl2 = this.d;
        if (i2 == 0) {
            ResultKt.b(obj);
            orderReturnOrExchangeViewModelImpl2.X7(new OrderReturnOrExchangeBottomSheet.SizeGuide(OrderReturnOrExchangeBottomSheet.SizeGuide.SizeGuideRequest.Loading.f60295a));
            GetSizeGuideUseCase getSizeGuideUseCase = orderReturnOrExchangeViewModelImpl2.l;
            ProductId.Companion companion = ProductId.INSTANCE;
            String str = this.f60461e;
            str.getClass();
            this.f60459b = orderReturnOrExchangeViewModelImpl2;
            this.f60460c = 1;
            objA = getSizeGuideUseCase.a(str, null, this);
            if (objA == coroutineSingletons) {
                return coroutineSingletons;
            }
            orderReturnOrExchangeViewModelImpl = orderReturnOrExchangeViewModelImpl2;
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            orderReturnOrExchangeViewModelImpl = this.f60459b;
            ResultKt.b(obj);
            objA = ((Result) obj).f71708b;
        }
        Result.Companion companion2 = Result.INSTANCE;
        if (!(objA instanceof Result.Failure)) {
            try {
                SizeGuide sizeGuide2 = (SizeGuide) objA;
                OrderReturnOrExchangeItemUiModel orderReturnOrExchangeItemUiModel = orderReturnOrExchangeViewModelImpl2.B;
                orderReturnOrExchangeItemUiModel.getClass();
                TransactionItemUiModel transactionItemUiModel = orderReturnOrExchangeItemUiModel.f60302a;
                sizeGuide2.getClass();
                failure = new SizeGuideResponseUiModel(transactionItemUiModel, ProductMapperKt.c(sizeGuide2, orderReturnOrExchangeViewModelImpl2.f60436b.a().f67233e));
            } catch (Throwable th) {
                Result.Companion companion3 = Result.INSTANCE;
                failure = new Result.Failure(th);
            }
            objA = failure;
        }
        if (Result.a(objA) == null) {
            SizeGuideResponseUiModel sizeGuideResponseUiModel = (SizeGuideResponseUiModel) objA;
            sizeGuide = new OrderReturnOrExchangeBottomSheet.SizeGuide(new OrderReturnOrExchangeBottomSheet.SizeGuide.SizeGuideRequest.Result(sizeGuideResponseUiModel.f60462a, sizeGuideResponseUiModel.f60463b, orderReturnOrExchangeViewModelImpl2.o));
        }
        orderReturnOrExchangeViewModelImpl.X7(sizeGuide);
        return Unit.f71739a;
    }
}
