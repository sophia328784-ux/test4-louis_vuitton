package com.vuitton.android.domain.usecase.cart;

import com.vuitton.android.domain.repository.CartRepository;
import defpackage.fc;
import defpackage.md;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\u0006B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/domain/usecase/cart/RemoveCartItemUseCase;", "", "Lcom/vuitton/android/domain/repository/CartRepository;", "cartRepository", "<init>", "(Lcom/vuitton/android/domain/repository/CartRepository;)V", "Param", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class RemoveCartItemUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CartRepository f49592a;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/usecase/cart/RemoveCartItemUseCase$Param;", "", "", "itemId", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Param {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f49593a;

        public Param(String str) {
            str.getClass();
            this.f49593a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Param) && Intrinsics.c(this.f49593a, ((Param) obj).f49593a);
        }

        public final int hashCode() {
            return this.f49593a.hashCode();
        }

        public final String toString() {
            return fc.h("Param(itemId=", this.f49593a, ")");
        }
    }

    @Inject
    public RemoveCartItemUseCase(CartRepository cartRepository) {
        cartRepository.getClass();
        this.f49592a = cartRepository;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(Param param, ContinuationImpl continuationImpl) {
        RemoveCartItemUseCase$run$1 removeCartItemUseCase$run$1;
        if (continuationImpl instanceof RemoveCartItemUseCase$run$1) {
            removeCartItemUseCase$run$1 = (RemoveCartItemUseCase$run$1) continuationImpl;
            int i2 = removeCartItemUseCase$run$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                removeCartItemUseCase$run$1.d = i2 - Integer.MIN_VALUE;
            } else {
                removeCartItemUseCase$run$1 = new RemoveCartItemUseCase$run$1(this, continuationImpl);
            }
        } else {
            removeCartItemUseCase$run$1 = new RemoveCartItemUseCase$run$1(this, continuationImpl);
        }
        Object obj = removeCartItemUseCase$run$1.f49594b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = removeCartItemUseCase$run$1.d;
        if (i3 != 0) {
            if (i3 == 1) {
                ResultKt.b(obj);
                return ((Result) obj).f71708b;
            }
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        String str = param.f49593a;
        removeCartItemUseCase$run$1.d = 1;
        Object objH = this.f49592a.h(str, removeCartItemUseCase$run$1);
        return objH == coroutineSingletons ? coroutineSingletons : objH;
    }
}
