package com.vuitton.android.data.datasource.wishlist;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import com.vuitton.foundation.model.domain.model.wishlist.Wishlist;
import com.vuitton.foundation.model.domain.model.wishlist.WishlistItem;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: loaded from: classes3.dex */
@Singleton
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\t\b\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/data/datasource/wishlist/WishlistLocalDataSource;", "", "<init>", "()V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class WishlistLocalDataSource {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MutableStateFlow f44273a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final StateFlow f44274b;

    @Inject
    public WishlistLocalDataSource() {
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(null);
        this.f44273a = mutableStateFlowA;
        this.f44274b = mutableStateFlowA;
    }

    public final Object a() throws Throwable {
        Object failure;
        try {
            Result.Companion companion = Result.INSTANCE;
            this.f44273a.setValue(null);
            failure = new Result(Unit.f71739a);
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
        return ((Result) failure).f71708b;
    }

    public final Object b(String str) throws Throwable {
        Object failure;
        List list;
        str.getClass();
        try {
            Result.Companion companion = Result.INSTANCE;
            Wishlist wishlist = (Wishlist) this.f44273a.getValue();
            Object obj = null;
            if (wishlist != null && (list = wishlist.f68282a) != null) {
                for (Object obj2 : list) {
                    String str2 = ((WishlistItem) obj2).f68285b;
                    SkuId.Companion companion2 = SkuId.INSTANCE;
                    if (str2.equals(str)) {
                        obj = obj2;
                        break;
                    }
                }
                obj = (WishlistItem) obj;
            }
            failure = new Result(obj);
        } catch (Throwable th) {
            Result.Companion companion3 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            if (thA instanceof CancellationException) {
                throw thA;
            }
            failure = new Result(new Result.Failure(thA));
        }
        return ((Result) failure).f71708b;
    }

    public final void c(String str) throws Throwable {
        Object failure;
        List list;
        Wishlist wishlist;
        MutableStateFlow mutableStateFlow = this.f44273a;
        str.getClass();
        try {
            Result.Companion companion = Result.INSTANCE;
            Wishlist wishlist2 = (Wishlist) mutableStateFlow.getValue();
            if (wishlist2 != null && (list = wishlist2.f68282a) != null) {
                Wishlist wishlist3 = (Wishlist) mutableStateFlow.getValue();
                if (wishlist3 != null) {
                    ArrayList arrayList = new ArrayList();
                    for (Object obj : list) {
                        String str2 = ((WishlistItem) obj).f68285b;
                        SkuId.Companion companion2 = SkuId.INSTANCE;
                        if (!str2.equals(str)) {
                            arrayList.add(obj);
                        }
                    }
                    wishlist = new Wishlist(arrayList, wishlist3.f68283b);
                } else {
                    wishlist = null;
                }
                mutableStateFlow.setValue(wishlist);
            }
            failure = new Result(Unit.f71739a);
        } catch (Throwable th) {
            Result.Companion companion3 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            if (thA instanceof CancellationException) {
                throw thA;
            }
            failure = new Result(new Result.Failure(thA));
        }
    }
}
