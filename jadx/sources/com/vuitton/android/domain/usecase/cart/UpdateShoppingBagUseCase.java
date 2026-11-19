package com.vuitton.android.domain.usecase.cart;

import com.vuitton.android.domain.repository.CartRepository;
import com.vuitton.foundation.model.domain.model.cart.GiftOption;
import defpackage.md;
import java.util.ArrayList;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/usecase/cart/UpdateShoppingBagUseCase;", "", "Lcom/vuitton/android/domain/repository/CartRepository;", "cartRepository", "<init>", "(Lcom/vuitton/android/domain/repository/CartRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class UpdateShoppingBagUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CartRepository f49606a;

    @Inject
    public UpdateShoppingBagUseCase(CartRepository cartRepository) {
        cartRepository.getClass();
        this.f49606a = cartRepository;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(GiftOption giftOption, ArrayList arrayList, ContinuationImpl continuationImpl, boolean z) {
        UpdateShoppingBagUseCase$run$1 updateShoppingBagUseCase$run$1;
        if (continuationImpl instanceof UpdateShoppingBagUseCase$run$1) {
            updateShoppingBagUseCase$run$1 = (UpdateShoppingBagUseCase$run$1) continuationImpl;
            int i2 = updateShoppingBagUseCase$run$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                updateShoppingBagUseCase$run$1.d = i2 - Integer.MIN_VALUE;
            } else {
                updateShoppingBagUseCase$run$1 = new UpdateShoppingBagUseCase$run$1(this, continuationImpl);
            }
        } else {
            updateShoppingBagUseCase$run$1 = new UpdateShoppingBagUseCase$run$1(this, continuationImpl);
        }
        Object obj = updateShoppingBagUseCase$run$1.f49607b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = updateShoppingBagUseCase$run$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            updateShoppingBagUseCase$run$1.d = 1;
            Object objF = this.f49606a.f(giftOption, updateShoppingBagUseCase$run$1, z);
            return objF == coroutineSingletons ? coroutineSingletons : objF;
        }
        if (i3 == 1) {
            ResultKt.b(obj);
            return ((Result) obj).f71708b;
        }
        md.k("call to 'resume' before 'invoke' with coroutine");
        return null;
    }
}
