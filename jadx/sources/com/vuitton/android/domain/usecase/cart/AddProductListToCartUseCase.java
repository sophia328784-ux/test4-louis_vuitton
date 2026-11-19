package com.vuitton.android.domain.usecase.cart;

import com.vuitton.android.domain.repository.CartRepository;
import com.vuitton.android.domain.usecase.authentication.oauth.GetSotTokenForTwistUserOrNullUseCase;
import com.vuitton.foundation.model.domain.model.authentication.SotToken;
import defpackage.md;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/domain/usecase/cart/AddProductListToCartUseCase;", "", "Lcom/vuitton/android/domain/usecase/authentication/oauth/GetSotTokenForTwistUserOrNullUseCase;", "getSotTokenForTwistUserOrNullUseCase", "Lcom/vuitton/android/domain/repository/CartRepository;", "cartRepository", "<init>", "(Lcom/vuitton/android/domain/usecase/authentication/oauth/GetSotTokenForTwistUserOrNullUseCase;Lcom/vuitton/android/domain/repository/CartRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AddProductListToCartUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final GetSotTokenForTwistUserOrNullUseCase f49560a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CartRepository f49561b;

    @Inject
    public AddProductListToCartUseCase(GetSotTokenForTwistUserOrNullUseCase getSotTokenForTwistUserOrNullUseCase, CartRepository cartRepository) {
        getSotTokenForTwistUserOrNullUseCase.getClass();
        cartRepository.getClass();
        this.f49560a = getSotTokenForTwistUserOrNullUseCase;
        this.f49561b = cartRepository;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(List list, ContinuationImpl continuationImpl) {
        AddProductListToCartUseCase$run$1 addProductListToCartUseCase$run$1;
        Object obj;
        CartRepository cartRepository;
        if (continuationImpl instanceof AddProductListToCartUseCase$run$1) {
            addProductListToCartUseCase$run$1 = (AddProductListToCartUseCase$run$1) continuationImpl;
            int i2 = addProductListToCartUseCase$run$1.f49565f;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                addProductListToCartUseCase$run$1.f49565f = i2 - Integer.MIN_VALUE;
            } else {
                addProductListToCartUseCase$run$1 = new AddProductListToCartUseCase$run$1(this, continuationImpl);
            }
        } else {
            addProductListToCartUseCase$run$1 = new AddProductListToCartUseCase$run$1(this, continuationImpl);
        }
        Object obj2 = addProductListToCartUseCase$run$1.d;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = addProductListToCartUseCase$run$1.f49565f;
        if (i3 == 0) {
            ResultKt.b(obj2);
            CartRepository cartRepository2 = this.f49561b;
            addProductListToCartUseCase$run$1.f49562b = cartRepository2;
            addProductListToCartUseCase$run$1.f49563c = list;
            addProductListToCartUseCase$run$1.f49565f = 1;
            Object objA = this.f49560a.a(addProductListToCartUseCase$run$1);
            if (objA != coroutineSingletons) {
                obj = objA;
                cartRepository = cartRepository2;
            }
        }
        if (i3 != 1) {
            if (i3 == 2) {
                ResultKt.b(obj2);
                return ((Result) obj2).f71708b;
            }
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        list = addProductListToCartUseCase$run$1.f49563c;
        cartRepository = addProductListToCartUseCase$run$1.f49562b;
        ResultKt.b(obj2);
        SotToken sotToken = (SotToken) obj2;
        obj = sotToken != null ? sotToken.f66608a : null;
        addProductListToCartUseCase$run$1.f49562b = null;
        addProductListToCartUseCase$run$1.f49563c = null;
        addProductListToCartUseCase$run$1.f49565f = 2;
        Object objI = cartRepository.i((String) obj, list, addProductListToCartUseCase$run$1);
        return objI == coroutineSingletons ? coroutineSingletons : objI;
    }
}
