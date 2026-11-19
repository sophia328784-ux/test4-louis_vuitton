package com.perfectcorp.perfectlib;

import com.perfectcorp.common.utility.Log;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import com.perfectcorp.thirdparty.com.google.common.collect.bz;
import defpackage.fc;
import java.util.List;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class h0 implements Callable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f40183b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ HandVtoApplierImpl f40184c;
    public final /* synthetic */ boolean d;

    public /* synthetic */ h0(HandVtoApplierImpl handVtoApplierImpl, boolean z, int i2) {
        this.f40183b = i2;
        this.f40184c = handVtoApplierImpl;
        this.d = z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.concurrent.Callable
    public final Object call() {
        int i2 = this.f40183b;
        boolean z = this.d;
        HandVtoApplierImpl handVtoApplierImpl = this.f40184c;
        switch (i2) {
            case 0:
                List listG = handVtoApplierImpl.g(handVtoApplierImpl.f39641k, z);
                ImmutableList.Builder builder = new ImmutableList.Builder();
                bz bzVarListIterator = ((ImmutableList) listG).listIterator(0);
                while (bzVarListIterator.hasNext()) {
                    EffectId effectId = (EffectId) bzVarListIterator.next();
                    String str = effectId.f39557c;
                    String str2 = effectId.d;
                    if (!EffectId.INVALID_ID.equals(str)) {
                        if (SkuHandler.m(str).contains(str2)) {
                            builder.f(new ProductId(effectId));
                        } else {
                            Log.g(3, handVtoApplierImpl.f39633a, fc.i("[getProductIds] Filter out SKU by product mask. productGuid=", str, ", skuGuid=", str2));
                        }
                    }
                }
                return builder.i();
            default:
                return handVtoApplierImpl.g(handVtoApplierImpl.f39641k, z);
        }
    }
}
