package com.vuitton.android.domain.usecase.cart;

import com.vuitton.android.domain.repository.CartRepository;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import defpackage.a;
import defpackage.fc;
import defpackage.md;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\u0006B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/domain/usecase/cart/UpdateCartItemQuantityUseCase;", "", "Lcom/vuitton/android/domain/repository/CartRepository;", "cartRepository", "<init>", "(Lcom/vuitton/android/domain/repository/CartRepository;)V", "Param", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class UpdateCartItemQuantityUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CartRepository f49600a;

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/domain/usecase/cart/UpdateCartItemQuantityUseCase$Param;", "", "", "itemId", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "sku", "", "quantity", "<init>", "(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Param {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f49601a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f49602b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f49603c;

        public Param(String str, String str2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            str2.getClass();
            this.f49601a = str;
            this.f49602b = str2;
            this.f49603c = i2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Param)) {
                return false;
            }
            Param param = (Param) obj;
            if (!this.f49601a.equals(param.f49601a)) {
                return false;
            }
            String str = param.f49602b;
            SkuId.Companion companion = SkuId.INSTANCE;
            return this.f49602b.equals(str) && this.f49603c == param.f49603c;
        }

        public final int hashCode() {
            int iHashCode = this.f49601a.hashCode() * 31;
            SkuId.Companion companion = SkuId.INSTANCE;
            return Integer.hashCode(this.f49603c) + fc.b(iHashCode, 31, this.f49602b);
        }

        public final String toString() {
            SkuId.Companion companion = SkuId.INSTANCE;
            return a.i(this.f49603c, ")", fc.s("Param(itemId=", this.f49601a, ", sku=", this.f49602b, ", quantity="));
        }
    }

    @Inject
    public UpdateCartItemQuantityUseCase(CartRepository cartRepository) {
        cartRepository.getClass();
        this.f49600a = cartRepository;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(Param param, ContinuationImpl continuationImpl) {
        UpdateCartItemQuantityUseCase$run$1 updateCartItemQuantityUseCase$run$1;
        if (continuationImpl instanceof UpdateCartItemQuantityUseCase$run$1) {
            updateCartItemQuantityUseCase$run$1 = (UpdateCartItemQuantityUseCase$run$1) continuationImpl;
            int i2 = updateCartItemQuantityUseCase$run$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                updateCartItemQuantityUseCase$run$1.d = i2 - Integer.MIN_VALUE;
            } else {
                updateCartItemQuantityUseCase$run$1 = new UpdateCartItemQuantityUseCase$run$1(this, continuationImpl);
            }
        } else {
            updateCartItemQuantityUseCase$run$1 = new UpdateCartItemQuantityUseCase$run$1(this, continuationImpl);
        }
        Object obj = updateCartItemQuantityUseCase$run$1.f49604b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = updateCartItemQuantityUseCase$run$1.d;
        if (i3 != 0) {
            if (i3 == 1) {
                ResultKt.b(obj);
                return ((Result) obj).f71708b;
            }
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        String str = param.f49601a;
        String str2 = param.f49602b;
        int i4 = param.f49603c;
        updateCartItemQuantityUseCase$run$1.d = 1;
        Object objL = this.f49600a.l(str, str2, i4, updateCartItemQuantityUseCase$run$1);
        return objL == coroutineSingletons ? coroutineSingletons : objL;
    }
}
