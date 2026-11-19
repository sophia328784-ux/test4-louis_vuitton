package com.perfectcorp.perfectlib;

import android.text.TextUtils;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.Sku;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import java.util.ArrayList;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class w0 implements Function {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f41898b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AtomicReference f41899c;
    public final /* synthetic */ boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ArrayList f41900e;

    public /* synthetic */ w0(AtomicReference atomicReference, boolean z, ArrayList arrayList, int i2) {
        this.f41898b = i2;
        this.f41899c = atomicReference;
        this.d = z;
        this.f41900e = arrayList;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public final Object apply(Object obj) {
        int i2 = this.f41898b;
        ArrayList arrayList = this.f41900e;
        boolean z = this.d;
        AtomicReference atomicReference = this.f41899c;
        Sku sku = (Sku) obj;
        switch (i2) {
            case 0:
                VtoSetting.Builder builder = VtoSetting.builder((VtoSetting) atomicReference.get());
                if (z) {
                    builder.setProductGuid(sku.f41266f);
                    if (TextUtils.isEmpty(((VtoSetting) atomicReference.get()).f40016c)) {
                        String strB = a.b(((VtoSetting) atomicReference.get()).f40015b);
                        if (!TextUtils.isEmpty(strB)) {
                            builder.setSkuGuid(strB);
                        }
                    }
                }
                arrayList.add(builder.build());
                break;
            case 1:
                VtoSetting.Builder builder2 = VtoSetting.builder((VtoSetting) atomicReference.get());
                if (z) {
                    builder2.setProductGuid(sku.f41266f);
                    if (TextUtils.isEmpty(((VtoSetting) atomicReference.get()).f40016c)) {
                        String strB2 = a.b(((VtoSetting) atomicReference.get()).f40015b);
                        if (!TextUtils.isEmpty(strB2)) {
                            builder2.setSkuGuid(strB2);
                        }
                    }
                }
                arrayList.add(builder2.build());
                break;
            case 2:
                ThreadPoolExecutor threadPoolExecutor = MakeupCamInternal.n;
                VtoSetting.Builder builder3 = VtoSetting.builder((VtoSetting) atomicReference.get());
                if (z) {
                    builder3.setProductGuid(sku.f41266f);
                    if (TextUtils.isEmpty(((VtoSetting) atomicReference.get()).f40016c)) {
                        String strB3 = a.b(((VtoSetting) atomicReference.get()).f40015b);
                        if (!TextUtils.isEmpty(strB3)) {
                            builder3.setSkuGuid(strB3);
                        }
                    }
                }
                arrayList.add(builder3.build());
                break;
            default:
                int i3 = PhotoMakeupInternal.n;
                VtoSetting.Builder builder4 = VtoSetting.builder((VtoSetting) atomicReference.get());
                if (z) {
                    builder4.setProductGuid(sku.f41266f);
                    if (TextUtils.isEmpty(((VtoSetting) atomicReference.get()).f40016c)) {
                        String strB4 = a.b(((VtoSetting) atomicReference.get()).f40015b);
                        if (!TextUtils.isEmpty(strB4)) {
                            builder4.setSkuGuid(strB4);
                        }
                    }
                }
                arrayList.add(builder4.build());
                break;
        }
        return sku;
    }
}
