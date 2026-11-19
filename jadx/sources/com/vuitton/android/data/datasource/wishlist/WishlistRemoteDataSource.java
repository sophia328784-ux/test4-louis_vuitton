package com.vuitton.android.data.datasource.wishlist;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.api.bff.user.WishlistApi;
import com.vuitton.android.data.dto.wishlist.bff.AddWishlistItemDto;
import com.vuitton.android.data.dto.wishlist.bff.AddWishlistItemsDto;
import com.vuitton.android.data.dto.wishlist.bff.WishlistDto;
import com.vuitton.android.data.dto.wishlist.bff.mapper.WishlistMapperKt;
import com.vuitton.android.data.exception.NetworkExceptionMapperKt;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import defpackage.md;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.serialization.json.Json;
import retrofit2.HttpException;
import retrofit2.Response;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/data/datasource/wishlist/WishlistRemoteDataSource;", "", "Lcom/vuitton/android/data/api/bff/user/WishlistApi;", "wishlistApi", "Lkotlinx/serialization/json/Json;", "json", "<init>", "(Lcom/vuitton/android/data/api/bff/user/WishlistApi;Lkotlinx/serialization/json/Json;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class WishlistRemoteDataSource {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final WishlistApi f44275a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Json f44276b;

    @Inject
    public WishlistRemoteDataSource(WishlistApi wishlistApi, Json json) {
        wishlistApi.getClass();
        json.getClass();
        this.f44275a = wishlistApi;
        this.f44276b = json;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(List list, ContinuationImpl continuationImpl) {
        WishlistRemoteDataSource$addProductsToWishlist$1 wishlistRemoteDataSource$addProductsToWishlist$1;
        Object failure;
        if (continuationImpl instanceof WishlistRemoteDataSource$addProductsToWishlist$1) {
            wishlistRemoteDataSource$addProductsToWishlist$1 = (WishlistRemoteDataSource$addProductsToWishlist$1) continuationImpl;
            int i2 = wishlistRemoteDataSource$addProductsToWishlist$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                wishlistRemoteDataSource$addProductsToWishlist$1.d = i2 - Integer.MIN_VALUE;
            } else {
                wishlistRemoteDataSource$addProductsToWishlist$1 = new WishlistRemoteDataSource$addProductsToWishlist$1(this, continuationImpl);
            }
        } else {
            wishlistRemoteDataSource$addProductsToWishlist$1 = new WishlistRemoteDataSource$addProductsToWishlist$1(this, continuationImpl);
        }
        Object objAddProductsToWishlist = wishlistRemoteDataSource$addProductsToWishlist$1.f44277b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = wishlistRemoteDataSource$addProductsToWishlist$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(objAddProductsToWishlist);
                Result.Companion companion = Result.INSTANCE;
                WishlistApi wishlistApi = this.f44275a;
                List list2 = list;
                ArrayList arrayList = new ArrayList(CollectionsKt.t(list2, 10));
                Iterator it = list2.iterator();
                while (it.hasNext()) {
                    arrayList.add(new AddWishlistItemDto(((SkuId) it.next()).f67933a, null));
                }
                AddWishlistItemsDto addWishlistItemsDto = new AddWishlistItemsDto(arrayList);
                wishlistRemoteDataSource$addProductsToWishlist$1.d = 1;
                objAddProductsToWishlist = wishlistApi.addProductsToWishlist(addWishlistItemsDto, wishlistRemoteDataSource$addProductsToWishlist$1);
                if (objAddProductsToWishlist == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(objAddProductsToWishlist);
            }
            Response response = (Response) objAddProductsToWishlist;
            if (!response.f79449a.r) {
                throw new HttpException(response);
            }
            failure = new Result(Unit.f71739a);
            Throwable thA = Result.a(failure);
            if (thA != null) {
                if (thA instanceof CancellationException) {
                    throw thA;
                }
                failure = new Result(new Result.Failure(thA));
            }
            Object obj = ((Result) failure).f71708b;
            Throwable thA2 = Result.a(obj);
            if (thA2 == null) {
                return obj;
            }
            try {
                throw WishlistMapperKt.a(this.f44276b, thA2);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                return new Result.Failure(th);
            }
        } catch (Throwable th2) {
            Result.Companion companion3 = Result.INSTANCE;
            failure = new Result.Failure(th2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object b(String str, ContinuationImpl continuationImpl) {
        WishlistRemoteDataSource$deleteProductFromWishlist$1 wishlistRemoteDataSource$deleteProductFromWishlist$1;
        Object failure;
        if (continuationImpl instanceof WishlistRemoteDataSource$deleteProductFromWishlist$1) {
            wishlistRemoteDataSource$deleteProductFromWishlist$1 = (WishlistRemoteDataSource$deleteProductFromWishlist$1) continuationImpl;
            int i2 = wishlistRemoteDataSource$deleteProductFromWishlist$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                wishlistRemoteDataSource$deleteProductFromWishlist$1.d = i2 - Integer.MIN_VALUE;
            } else {
                wishlistRemoteDataSource$deleteProductFromWishlist$1 = new WishlistRemoteDataSource$deleteProductFromWishlist$1(this, continuationImpl);
            }
        } else {
            wishlistRemoteDataSource$deleteProductFromWishlist$1 = new WishlistRemoteDataSource$deleteProductFromWishlist$1(this, continuationImpl);
        }
        Object objDeleteProductFromWishlist = wishlistRemoteDataSource$deleteProductFromWishlist$1.f44279b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = wishlistRemoteDataSource$deleteProductFromWishlist$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(objDeleteProductFromWishlist);
                Result.Companion companion = Result.INSTANCE;
                if (str == null) {
                    return new Result.Failure(new IllegalArgumentException("wishlistItemId cannot be null"));
                }
                WishlistApi wishlistApi = this.f44275a;
                wishlistRemoteDataSource$deleteProductFromWishlist$1.d = 1;
                objDeleteProductFromWishlist = wishlistApi.deleteProductFromWishlist(str, wishlistRemoteDataSource$deleteProductFromWishlist$1);
                if (objDeleteProductFromWishlist == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(objDeleteProductFromWishlist);
            }
            Response response = (Response) objDeleteProductFromWishlist;
            if (!response.f79449a.r) {
                throw new HttpException(response);
            }
            failure = new Result(Unit.f71739a);
            Throwable thA = Result.a(failure);
            if (thA != null) {
                if (thA instanceof CancellationException) {
                    throw thA;
                }
                failure = new Result(new Result.Failure(thA));
            }
            return ((Result) failure).f71708b;
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object c(ContinuationImpl continuationImpl) {
        WishlistRemoteDataSource$getWishlist$1 wishlistRemoteDataSource$getWishlist$1;
        Object failure;
        if (continuationImpl instanceof WishlistRemoteDataSource$getWishlist$1) {
            wishlistRemoteDataSource$getWishlist$1 = (WishlistRemoteDataSource$getWishlist$1) continuationImpl;
            int i2 = wishlistRemoteDataSource$getWishlist$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                wishlistRemoteDataSource$getWishlist$1.d = i2 - Integer.MIN_VALUE;
            } else {
                wishlistRemoteDataSource$getWishlist$1 = new WishlistRemoteDataSource$getWishlist$1(this, continuationImpl);
            }
        } else {
            wishlistRemoteDataSource$getWishlist$1 = new WishlistRemoteDataSource$getWishlist$1(this, continuationImpl);
        }
        Object wishlist = wishlistRemoteDataSource$getWishlist$1.f44281b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = wishlistRemoteDataSource$getWishlist$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(wishlist);
                Result.Companion companion = Result.INSTANCE;
                WishlistApi wishlistApi = this.f44275a;
                wishlistRemoteDataSource$getWishlist$1.d = 1;
                wishlist = wishlistApi.getWishlist(wishlistRemoteDataSource$getWishlist$1);
                if (wishlist == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(wishlist);
            }
            failure = new Result(WishlistMapperKt.b((WishlistDto) wishlist));
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
        Object failure2 = ((Result) failure).f71708b;
        Throwable thA2 = Result.a(failure2);
        if (thA2 != null) {
            try {
                if (!(thA2 instanceof HttpException)) {
                    throw thA2;
                }
                if (((HttpException) thA2).f79346b != 404) {
                    throw thA2;
                }
                failure2 = null;
            } catch (Throwable th2) {
                Result.Companion companion3 = Result.INSTANCE;
                failure2 = new Result.Failure(th2);
            }
        }
        return NetworkExceptionMapperKt.a(failure2, null);
    }
}
