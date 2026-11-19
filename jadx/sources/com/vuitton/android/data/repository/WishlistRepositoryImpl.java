package com.vuitton.android.data.repository;

import com.batch.android.Batch;
import com.batch.android.BatchEventAttributes;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.datasource.wishlist.LegacyWishlistAtgDataSource;
import com.vuitton.android.data.datasource.wishlist.WishlistLocalDataSource;
import com.vuitton.android.data.datasource.wishlist.WishlistRemoteDataSource;
import com.vuitton.android.domain.repository.WishlistRepository;
import com.vuitton.foundation.model.domain.model.common.ResultStrategyLazy;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import com.vuitton.foundation.model.domain.model.wishlist.Wishlist;
import com.vuitton.foundation.util.ResultExtKt;
import defpackage.md;
import java.util.List;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\nB!\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/data/repository/WishlistRepositoryImpl;", "Lcom/vuitton/android/domain/repository/WishlistRepository;", "Lcom/vuitton/android/data/datasource/wishlist/LegacyWishlistAtgDataSource;", "legacyWishlistAtgDataSource", "Lcom/vuitton/android/data/datasource/wishlist/WishlistRemoteDataSource;", "wishlistRemoteDataSource", "Lcom/vuitton/android/data/datasource/wishlist/WishlistLocalDataSource;", "wishlistLocalDataSource", "<init>", "(Lcom/vuitton/android/data/datasource/wishlist/LegacyWishlistAtgDataSource;Lcom/vuitton/android/data/datasource/wishlist/WishlistRemoteDataSource;Lcom/vuitton/android/data/datasource/wishlist/WishlistLocalDataSource;)V", "Companion", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class WishlistRepositoryImpl implements WishlistRepository {
    public static final /* synthetic */ int d = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LegacyWishlistAtgDataSource f48214a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final WishlistRemoteDataSource f48215b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final WishlistLocalDataSource f48216c;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/repository/WishlistRepositoryImpl$Companion;", "", "", "ADD_TO_WISHLIST_PRODUCT_SKU", "Ljava/lang/String;", "ADD_TO_WISHLIST_EVENT_NAME", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    @Inject
    public WishlistRepositoryImpl(LegacyWishlistAtgDataSource legacyWishlistAtgDataSource, WishlistRemoteDataSource wishlistRemoteDataSource, WishlistLocalDataSource wishlistLocalDataSource) {
        legacyWishlistAtgDataSource.getClass();
        wishlistRemoteDataSource.getClass();
        wishlistLocalDataSource.getClass();
        this.f48214a = legacyWishlistAtgDataSource;
        this.f48215b = wishlistRemoteDataSource;
        this.f48216c = wishlistLocalDataSource;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.WishlistRepository
    public final Object a(ContinuationImpl continuationImpl) {
        WishlistRepositoryImpl$refreshWishlist$1 wishlistRepositoryImpl$refreshWishlist$1;
        Object objH;
        if (continuationImpl instanceof WishlistRepositoryImpl$refreshWishlist$1) {
            wishlistRepositoryImpl$refreshWishlist$1 = (WishlistRepositoryImpl$refreshWishlist$1) continuationImpl;
            int i2 = wishlistRepositoryImpl$refreshWishlist$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                wishlistRepositoryImpl$refreshWishlist$1.d = i2 - Integer.MIN_VALUE;
            } else {
                wishlistRepositoryImpl$refreshWishlist$1 = new WishlistRepositoryImpl$refreshWishlist$1(this, continuationImpl);
            }
        } else {
            wishlistRepositoryImpl$refreshWishlist$1 = new WishlistRepositoryImpl$refreshWishlist$1(this, continuationImpl);
        }
        Object obj = wishlistRepositoryImpl$refreshWishlist$1.f48227b;
        Object obj2 = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = wishlistRepositoryImpl$refreshWishlist$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            wishlistRepositoryImpl$refreshWishlist$1.d = 1;
            objH = h(wishlistRepositoryImpl$refreshWishlist$1);
            if (objH == obj2) {
                return obj2;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            objH = ((Result) obj).f71708b;
        }
        return ResultExtKt.a(objH);
    }

    /* JADX WARN: Code duplicated, block: B:42:0x009d  */
    /* JADX WARN: Code duplicated, block: B:44:0x00a0 A[Catch: all -> 0x0093, TRY_LEAVE, TryCatch #0 {all -> 0x0093, blocks: (B:26:0x006d, B:28:0x0071, B:30:0x0075, B:31:0x007b, B:33:0x0081, B:39:0x0096, B:41:0x009a, B:44:0x00a0), top: B:62:0x006d }] */
    /* JADX WARN: Code duplicated, block: B:46:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:51:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:62:0x006d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00c4, code lost:
    
        if (r9 == r1) goto L54;
     */
    @Override // com.vuitton.android.domain.repository.WishlistRepository
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object b(java.lang.String r8, kotlin.coroutines.jvm.internal.ContinuationImpl r9) {
        /*
            Method dump skipped, instruction units count: 226
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.data.repository.WishlistRepositoryImpl.b(java.lang.String, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:37:0x008a  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.WishlistRepository
    public final Object c(String str, ContinuationImpl continuationImpl) {
        WishlistRepositoryImpl$addProductToWishlist$1 wishlistRepositoryImpl$addProductToWishlist$1;
        Object objD;
        Throwable th;
        String str2;
        Object obj;
        if (continuationImpl instanceof WishlistRepositoryImpl$addProductToWishlist$1) {
            wishlistRepositoryImpl$addProductToWishlist$1 = (WishlistRepositoryImpl$addProductToWishlist$1) continuationImpl;
            int i2 = wishlistRepositoryImpl$addProductToWishlist$1.f48221e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                wishlistRepositoryImpl$addProductToWishlist$1.f48221e = i2 - Integer.MIN_VALUE;
            } else {
                wishlistRepositoryImpl$addProductToWishlist$1 = new WishlistRepositoryImpl$addProductToWishlist$1(this, continuationImpl);
            }
        } else {
            wishlistRepositoryImpl$addProductToWishlist$1 = new WishlistRepositoryImpl$addProductToWishlist$1(this, continuationImpl);
        }
        Object obj2 = wishlistRepositoryImpl$addProductToWishlist$1.f48220c;
        Object obj3 = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = wishlistRepositoryImpl$addProductToWishlist$1.f48221e;
        if (i3 == 0) {
            ResultKt.b(obj2);
            List listO = CollectionsKt.O(new SkuId(str));
            wishlistRepositoryImpl$addProductToWishlist$1.f48219b = str;
            wishlistRepositoryImpl$addProductToWishlist$1.f48221e = 1;
            objD = d(listO, wishlistRepositoryImpl$addProductToWishlist$1);
            if (objD != obj3) {
            }
            return obj3;
        }
        if (i3 != 1) {
            if (i3 != 2) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            str2 = wishlistRepositoryImpl$addProductToWishlist$1.f48219b;
            try {
                ResultKt.b(obj2);
                obj = ((Result) obj2).f71708b;
                ResultKt.b(obj);
                Object obj4 = Unit.f71739a;
                Result.Companion companion = Result.INSTANCE;
                objD = obj4;
            } catch (Throwable th2) {
                th = th2;
                Result.Companion companion2 = Result.INSTANCE;
                objD = new Result.Failure(th);
            }
            str = str2;
            if (!(objD instanceof Result.Failure)) {
                BatchEventAttributes batchEventAttributes = new BatchEventAttributes();
                SkuId.Companion companion3 = SkuId.INSTANCE;
                batchEventAttributes.put("sku", str);
                Batch.Profile.trackEvent("added_to_wishlist", batchEventAttributes);
            }
            return objD;
        }
        str = wishlistRepositoryImpl$addProductToWishlist$1.f48219b;
        ResultKt.b(obj2);
        objD = ((Result) obj2).f71708b;
        Result.Companion companion4 = Result.INSTANCE;
        if (!(objD instanceof Result.Failure)) {
            try {
                wishlistRepositoryImpl$addProductToWishlist$1.f48219b = str;
                wishlistRepositoryImpl$addProductToWishlist$1.f48221e = 2;
                Object objA = a(wishlistRepositoryImpl$addProductToWishlist$1);
                if (objA != obj3) {
                    String str3 = str;
                    obj = objA;
                    str2 = str3;
                    ResultKt.b(obj);
                    Object obj5 = Unit.f71739a;
                    Result.Companion companion5 = Result.INSTANCE;
                    objD = obj5;
                    str = str2;
                }
                return obj3;
            } catch (Throwable th3) {
                String str4 = str;
                th = th3;
                str2 = str4;
                Result.Companion companion6 = Result.INSTANCE;
                objD = new Result.Failure(th);
            }
        }
        if (!(objD instanceof Result.Failure)) {
            BatchEventAttributes batchEventAttributes2 = new BatchEventAttributes();
            SkuId.Companion companion7 = SkuId.INSTANCE;
            batchEventAttributes2.put("sku", str);
            Batch.Profile.trackEvent("added_to_wishlist", batchEventAttributes2);
        }
        return objD;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.WishlistRepository
    public final Object d(List list, ContinuationImpl continuationImpl) {
        WishlistRepositoryImpl$addProductListToWishlist$1 wishlistRepositoryImpl$addProductListToWishlist$1;
        if (continuationImpl instanceof WishlistRepositoryImpl$addProductListToWishlist$1) {
            wishlistRepositoryImpl$addProductListToWishlist$1 = (WishlistRepositoryImpl$addProductListToWishlist$1) continuationImpl;
            int i2 = wishlistRepositoryImpl$addProductListToWishlist$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                wishlistRepositoryImpl$addProductListToWishlist$1.d = i2 - Integer.MIN_VALUE;
            } else {
                wishlistRepositoryImpl$addProductListToWishlist$1 = new WishlistRepositoryImpl$addProductListToWishlist$1(this, continuationImpl);
            }
        } else {
            wishlistRepositoryImpl$addProductListToWishlist$1 = new WishlistRepositoryImpl$addProductListToWishlist$1(this, continuationImpl);
        }
        Object obj = wishlistRepositoryImpl$addProductListToWishlist$1.f48217b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = wishlistRepositoryImpl$addProductListToWishlist$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            wishlistRepositoryImpl$addProductListToWishlist$1.d = 1;
            Object objA = this.f48215b.a(list, wishlistRepositoryImpl$addProductListToWishlist$1);
            return objA == coroutineSingletons ? coroutineSingletons : objA;
        }
        if (i3 == 1) {
            ResultKt.b(obj);
            return ((Result) obj).f71708b;
        }
        md.k("call to 'resume' before 'invoke' with coroutine");
        return null;
    }

    @Override // com.vuitton.android.domain.repository.WishlistRepository
    public final Object e(InAppDispatch inAppDispatch, String str, String str2, String str3, List list, String str4, Continuation continuation) {
        return this.f48214a.a(inAppDispatch, str, str2, str3, str4, list, (ContinuationImpl) continuation);
    }

    @Override // com.vuitton.android.domain.repository.WishlistRepository
    public final ResultStrategyLazy f() {
        return new ResultStrategyLazy(new WishlistRepositoryImpl$getWishlist$2(1, this, WishlistRepositoryImpl.class, "getAndCacheRemoteWishlist", "getAndCacheRemoteWishlist-IoAF18A(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", 0), new WishlistRepositoryImpl$getWishlist$3(1, this.f48216c, WishlistLocalDataSource.class, "getWishlistItemList", "getWishlistItemList-d1pmJ48()Ljava/lang/Object;", 4));
    }

    @Override // com.vuitton.android.domain.repository.WishlistRepository
    public final Object g() {
        return this.f48216c.a();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object h(Continuation continuation) {
        WishlistRepositoryImpl$getAndCacheRemoteWishlist$1 wishlistRepositoryImpl$getAndCacheRemoteWishlist$1;
        Object objC;
        Object failure;
        if (continuation instanceof WishlistRepositoryImpl$getAndCacheRemoteWishlist$1) {
            wishlistRepositoryImpl$getAndCacheRemoteWishlist$1 = (WishlistRepositoryImpl$getAndCacheRemoteWishlist$1) continuation;
            int i2 = wishlistRepositoryImpl$getAndCacheRemoteWishlist$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                wishlistRepositoryImpl$getAndCacheRemoteWishlist$1.d = i2 - Integer.MIN_VALUE;
            } else {
                wishlistRepositoryImpl$getAndCacheRemoteWishlist$1 = new WishlistRepositoryImpl$getAndCacheRemoteWishlist$1(this, continuation);
            }
        } else {
            wishlistRepositoryImpl$getAndCacheRemoteWishlist$1 = new WishlistRepositoryImpl$getAndCacheRemoteWishlist$1(this, continuation);
        }
        Object obj = wishlistRepositoryImpl$getAndCacheRemoteWishlist$1.f48225b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = wishlistRepositoryImpl$getAndCacheRemoteWishlist$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            wishlistRepositoryImpl$getAndCacheRemoteWishlist$1.d = 1;
            objC = this.f48215b.c(wishlistRepositoryImpl$getAndCacheRemoteWishlist$1);
            if (objC == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            objC = ((Result) obj).f71708b;
        }
        Object obj2 = Result.a(objC) == null ? objC : null;
        if (obj2 instanceof Result.Failure) {
            return obj2;
        }
        Wishlist wishlist = (Wishlist) obj2;
        WishlistLocalDataSource wishlistLocalDataSource = this.f48216c;
        wishlistLocalDataSource.getClass();
        try {
            wishlistLocalDataSource.f44273a.setValue(wishlist);
            failure = new Result(Unit.f71739a);
        } catch (Throwable th) {
            Result.Companion companion = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            if (thA instanceof CancellationException) {
                throw thA;
            }
            failure = new Result(new Result.Failure(thA));
        }
        return obj2;
    }
}
