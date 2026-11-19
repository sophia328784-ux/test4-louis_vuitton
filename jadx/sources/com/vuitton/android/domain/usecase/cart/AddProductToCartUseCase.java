package com.vuitton.android.domain.usecase.cart;

import com.vuitton.foundation.model.domain.model.cart.CartResponse;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import defpackage.md;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/usecase/cart/AddProductToCartUseCase;", "", "Lcom/vuitton/android/domain/usecase/cart/AddProductListToCartUseCase;", "addProductListToCartUseCase", "<init>", "(Lcom/vuitton/android/domain/usecase/cart/AddProductListToCartUseCase;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AddProductToCartUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AddProductListToCartUseCase f49566a;

    @Inject
    public AddProductToCartUseCase(AddProductListToCartUseCase addProductListToCartUseCase) {
        addProductListToCartUseCase.getClass();
        this.f49566a = addProductListToCartUseCase;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(String str, String str2, ContinuationImpl continuationImpl) {
        AddProductToCartUseCase$run$1 addProductToCartUseCase$run$1;
        Object objA;
        if (continuationImpl instanceof AddProductToCartUseCase$run$1) {
            addProductToCartUseCase$run$1 = (AddProductToCartUseCase$run$1) continuationImpl;
            int i2 = addProductToCartUseCase$run$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                addProductToCartUseCase$run$1.d = i2 - Integer.MIN_VALUE;
            } else {
                addProductToCartUseCase$run$1 = new AddProductToCartUseCase$run$1(this, continuationImpl);
            }
        } else {
            addProductToCartUseCase$run$1 = new AddProductToCartUseCase$run$1(this, continuationImpl);
        }
        Object obj = addProductToCartUseCase$run$1.f49567b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = addProductToCartUseCase$run$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            List listO = CollectionsKt.O(new Pair(new SkuId(str), str2));
            addProductToCartUseCase$run$1.d = 1;
            objA = this.f49566a.a(listO, addProductToCartUseCase$run$1);
            if (objA == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            objA = ((Result) obj).f71708b;
        }
        Result.Companion companion = Result.INSTANCE;
        return !(objA instanceof Result.Failure) ? ((CartResponse) objA).f66925a : objA;
    }
}
