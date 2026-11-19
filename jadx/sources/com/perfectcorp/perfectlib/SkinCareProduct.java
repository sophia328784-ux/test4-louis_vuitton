package com.perfectcorp.perfectlib;

import com.perfectcorp.common.reflect.Proxies;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.hc.kernelctrl.networktaskmanager.DownloadImageHelper;
import com.perfectcorp.perfectlib.ymk.utility.Nulls;
import com.perfectcorp.thirdparty.com.google.common.base.Strings;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import com.perfectcorp.thirdparty.com.google.common.collect.Lists;
import com.perfectcorp.thirdparty.com.google.gson.JsonElement;
import com.perfectcorp.thirdparty.io.reactivex.Observable;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.android.schedulers.AndroidSchedulers;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;
import com.perfectcorp.thirdparty.io.reactivex.internal.functions.Functions;
import com.perfectcorp.thirdparty.io.reactivex.internal.observers.ConsumerSingleObserver;
import defpackage.ct0;
import defpackage.yw0;
import defpackage.zw0;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes3.dex */
public final class SkinCareProduct {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f39891a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f39892b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f39893c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f39894e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f39895f;
    public final ImmutableList g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f39896h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f39897i;

    public interface GetInventoryCallback {
        void onFailure(Throwable th);

        void onSuccess(List<Inventory> list);
    }

    public static final class Inventory {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f39898a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f39899b;

        public Inventory(com.perfectcorp.perfectlib.rh.kernelctrl.networktaskmanager.skincare.a.C0191a c0191a) {
            this.f39898a = c0191a.skuId;
            this.f39899b = c0191a.qty;
        }

        public final String getId() {
            return this.f39898a;
        }

        public final int getQuantity() {
            return this.f39899b;
        }
    }

    public SkinCareProduct(com.perfectcorp.perfectlib.rh.database.ymk.skincare.c cVar, List list, boolean z, Configuration.ImageSource imageSource) {
        com.perfectcorp.perfectlib.rh.database.ymk.skincare.c.b bVarA = cVar.a();
        String str = bVarA.productName;
        int i2 = Nulls.f42040a;
        this.f39891a = Strings.b(str);
        this.f39892b = DownloadImageHelper.b(imageSource, bVarA.imageUrl);
        this.f39893c = Strings.b(z ? bVarA.upc : bVarA.productId);
        this.d = Strings.b(bVarA.detailUrl);
        this.f39894e = Strings.b(bVarA.productType);
        this.f39895f = Strings.b(bVarA.brandName);
        this.g = ImmutableList.u(list);
        JsonElement jsonElement = bVarA.customInfo;
        this.f39896h = Strings.b(jsonElement == null ? "" : jsonElement.toString());
        this.f39897i = Strings.b(bVarA.upc);
    }

    public static void getInventory(List<String> list, GetInventoryCallback getInventoryCallback) {
        Objects.requireNonNull(list, "ids can't be null");
        Objects.requireNonNull(getInventoryCallback, "getInventoryCallback can't be null");
        ImmutableList immutableListU = ImmutableList.u(list);
        Log.g(3, "SkinCareProduct", "[getInventory] start");
        final GetInventoryCallback getInventoryCallback2 = (GetInventoryCallback) Proxies.a(GetInventoryCallback.class, getInventoryCallback);
        final int i2 = 0;
        Single singleCollectInto = Observable.fromIterable(Lists.b(50, immutableListU)).flatMapSingle(new ct0(28)).map(new ct0(29)).flatMapIterable(Functions.f42605a).collectInto(new ConcurrentHashMap(), new yw0(i2));
        zw0 zw0Var = new zw0(immutableListU, i2);
        singleCollectInto.getClass();
        com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.m(singleCollectInto, zw0Var).i(AndroidSchedulers.a());
        final int i3 = 1;
        ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new Consumer() { // from class: ax0
            @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                switch (i2) {
                    case 0:
                        Log.g(3, "SkinCareProduct", "[getInventory] success");
                        getInventoryCallback2.onSuccess((List) obj);
                        break;
                    default:
                        Throwable th = (Throwable) obj;
                        Log.e("SkinCareProduct", "[getInventory] failed", th);
                        getInventoryCallback2.onFailure(th);
                        break;
                }
            }
        }, new Consumer() { // from class: ax0
            @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                switch (i3) {
                    case 0:
                        Log.g(3, "SkinCareProduct", "[getInventory] success");
                        getInventoryCallback2.onSuccess((List) obj);
                        break;
                    default:
                        Throwable th = (Throwable) obj;
                        Log.e("SkinCareProduct", "[getInventory] failed", th);
                        getInventoryCallback2.onFailure(th);
                        break;
                }
            }
        });
        uVarI.a(consumerSingleObserver);
        PerfectLib.f39744i.b(consumerSingleObserver);
    }

    public final String getActionUrl() {
        return this.d;
    }

    public final String getBrandName() {
        return this.f39895f;
    }

    public final String getCustomerInfo() {
        return this.f39896h;
    }

    public final String getImageUrl() {
        return this.f39892b;
    }

    public final String getProductId() {
        return this.f39893c;
    }

    public final String getProductName() {
        return this.f39891a;
    }

    public final List<SkinCareProduct> getProducts() {
        return this.g;
    }

    public final String getSkuType() {
        return this.f39894e;
    }

    public final String getUpc() {
        return this.f39897i;
    }
}
