package com.vuitton.android.domain.usecase.wishlist;

import com.vuitton.android.domain.repository.WishlistRepository;
import com.vuitton.foundation.model.domain.model.common.ResultStrategy;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import com.vuitton.foundation.model.domain.model.wishlist.Wishlist;
import com.vuitton.foundation.model.domain.model.wishlist.WishlistItem;
import defpackage.md;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;", "", "Lcom/vuitton/android/domain/repository/WishlistRepository;", "wishListRepository", "<init>", "(Lcom/vuitton/android/domain/repository/WishlistRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class IsProductInWishlistUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final WishlistRepository f50441a;

    @Inject
    public IsProductInWishlistUseCase(WishlistRepository wishlistRepository) {
        wishlistRepository.getClass();
        this.f50441a = wishlistRepository;
    }

    /* JADX WARN: Code duplicated, block: B:34:0x007d A[Catch: all -> 0x009e, TryCatch #0 {all -> 0x009e, blocks: (B:25:0x0063, B:27:0x0068, B:29:0x006c, B:31:0x0072, B:34:0x007d, B:35:0x0081, B:37:0x0087, B:40:0x0098), top: B:48:0x0063 }] */
    /* JADX WARN: Code duplicated, block: B:37:0x0087 A[Catch: all -> 0x009e, TryCatch #0 {all -> 0x009e, blocks: (B:25:0x0063, B:27:0x0068, B:29:0x006c, B:31:0x0072, B:34:0x007d, B:35:0x0081, B:37:0x0087, B:40:0x0098), top: B:48:0x0063 }] */
    /* JADX WARN: Code duplicated, block: B:46:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:48:0x0063 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:50:0x007b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:53:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(String str, ContinuationImpl continuationImpl) {
        IsProductInWishlistUseCase$run$1 isProductInWishlistUseCase$run$1;
        Object failure;
        String str2;
        Wishlist wishlist;
        boolean z;
        List list;
        List list2;
        Iterator it;
        String str3;
        Boolean bool;
        if (continuationImpl instanceof IsProductInWishlistUseCase$run$1) {
            isProductInWishlistUseCase$run$1 = (IsProductInWishlistUseCase$run$1) continuationImpl;
            int i2 = isProductInWishlistUseCase$run$1.f50444e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                isProductInWishlistUseCase$run$1.f50444e = i2 - Integer.MIN_VALUE;
            } else {
                isProductInWishlistUseCase$run$1 = new IsProductInWishlistUseCase$run$1(this, continuationImpl);
            }
        } else {
            isProductInWishlistUseCase$run$1 = new IsProductInWishlistUseCase$run$1(this, continuationImpl);
        }
        Object objF = isProductInWishlistUseCase$run$1.f50443c;
        Object obj = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = isProductInWishlistUseCase$run$1.f50444e;
        boolean z2 = true;
        if (i3 == 0) {
            ResultKt.b(objF);
            isProductInWishlistUseCase$run$1.f50442b = str;
            isProductInWishlistUseCase$run$1.f50444e = 1;
            objF = this.f50441a.f();
            if (objF != obj) {
            }
            return obj;
        }
        if (i3 == 1) {
            str = isProductInWishlistUseCase$run$1.f50442b;
            ResultKt.b(objF);
        } else {
            if (i3 != 2) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            str2 = isProductInWishlistUseCase$run$1.f50442b;
            ResultKt.b(objF);
            failure = ((Result) objF).f71708b;
        }
        Result.Companion companion = Result.INSTANCE;
        if (!(failure instanceof Result.Failure)) {
            try {
                wishlist = (Wishlist) failure;
                z = false;
                if (wishlist != null && (list = wishlist.f68282a) != null) {
                    list2 = list;
                    if ((list2 instanceof Collection) && list2.isEmpty()) {
                        z2 = false;
                        break;
                    }
                    it = list2.iterator();
                    do {
                        if (!it.hasNext()) {
                            z2 = false;
                            break;
                        }
                        str3 = ((WishlistItem) it.next()).f68285b;
                        SkuId.Companion companion2 = SkuId.INSTANCE;
                    } while (!str3.equals(str2));
                    z = z2;
                }
                failure = Boolean.valueOf(z);
            } catch (Throwable th) {
                Result.Companion companion3 = Result.INSTANCE;
                failure = new Result.Failure(th);
            }
        }
        bool = Boolean.FALSE;
        if (failure instanceof Result.Failure) {
            return bool;
        }
        return failure;
        isProductInWishlistUseCase$run$1.f50442b = str;
        isProductInWishlistUseCase$run$1.f50444e = 2;
        Object objC = ((ResultStrategy) objF).c(isProductInWishlistUseCase$run$1);
        if (objC != obj) {
            String str4 = str;
            failure = objC;
            str2 = str4;
            Result.Companion companion4 = Result.INSTANCE;
            if (!(failure instanceof Result.Failure)) {
                wishlist = (Wishlist) failure;
                z = false;
                if (wishlist != null) {
                    list2 = list;
                    if (list2 instanceof Collection) {
                        it = list2.iterator();
                        do {
                            if (!it.hasNext()) {
                                z2 = false;
                                break;
                            }
                            str3 = ((WishlistItem) it.next()).f68285b;
                            SkuId.Companion companion5 = SkuId.INSTANCE;
                        } while (!str3.equals(str2));
                    } else {
                        it = list2.iterator();
                        do {
                            if (!it.hasNext()) {
                                z2 = false;
                                break;
                            }
                            str3 = ((WishlistItem) it.next()).f68285b;
                            SkuId.Companion companion6 = SkuId.INSTANCE;
                        } while (!str3.equals(str2));
                    }
                    z = z2;
                }
                failure = Boolean.valueOf(z);
            }
            bool = Boolean.FALSE;
            if (failure instanceof Result.Failure) {
                return bool;
            }
            return failure;
        }
        return obj;
    }
}
