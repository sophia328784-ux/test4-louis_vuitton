package com.perfectcorp.perfectlib;

import com.perfectcorp.common.utility.Log;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import com.perfectcorp.thirdparty.com.google.common.collect.bz;
import defpackage.fc;
import java.util.List;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class g implements Callable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f40157b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AccessoryVtoApplierImpl f40158c;
    public final /* synthetic */ boolean d;

    public /* synthetic */ g(AccessoryVtoApplierImpl accessoryVtoApplierImpl, boolean z, int i2) {
        this.f40157b = i2;
        this.f40158c = accessoryVtoApplierImpl;
        this.d = z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.concurrent.Callable
    public final Object call() {
        int i2 = this.f40157b;
        boolean z = this.d;
        AccessoryVtoApplierImpl accessoryVtoApplierImpl = this.f40158c;
        switch (i2) {
            case 0:
                return AccessoryVtoApplierImpl.e(z, accessoryVtoApplierImpl.f39470k);
            default:
                List listE = AccessoryVtoApplierImpl.e(z, accessoryVtoApplierImpl.f39470k);
                ImmutableList.Builder builder = new ImmutableList.Builder();
                bz bzVarListIterator = ((ImmutableList) listE).listIterator(0);
                while (bzVarListIterator.hasNext()) {
                    EffectId effectId = (EffectId) bzVarListIterator.next();
                    String str = effectId.f39557c;
                    String str2 = effectId.d;
                    if (!EffectId.INVALID_ID.equals(str)) {
                        if (SkuHandler.m(str).contains(str2)) {
                            builder.f(new ProductId(effectId));
                        } else {
                            Log.g(3, accessoryVtoApplierImpl.f39462a, fc.i("[getProductIds] Filter out SKU by product mask. productGuid=", str, ", skuGuid=", str2));
                        }
                    }
                }
                return builder.i();
        }
    }
}
