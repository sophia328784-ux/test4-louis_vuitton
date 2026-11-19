package com.perfectcorp.perfectlib;

import com.perfectcorp.common.utility.Log;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import com.perfectcorp.thirdparty.com.google.common.collect.bz;
import defpackage.fc;
import java.util.List;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class j3 implements Callable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f40384b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ NailVtoApplierImpl f40385c;
    public final /* synthetic */ boolean d;

    public /* synthetic */ j3(NailVtoApplierImpl nailVtoApplierImpl, boolean z, int i2) {
        this.f40384b = i2;
        this.f40385c = nailVtoApplierImpl;
        this.d = z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.concurrent.Callable
    public final Object call() {
        int i2 = this.f40384b;
        boolean z = this.d;
        NailVtoApplierImpl nailVtoApplierImpl = this.f40385c;
        switch (i2) {
            case 0:
                List listQ = NailVtoApplierImpl.q(z, nailVtoApplierImpl.f39731j);
                ImmutableList.Builder builder = new ImmutableList.Builder();
                bz bzVarListIterator = ((ImmutableList) listQ).listIterator(0);
                while (bzVarListIterator.hasNext()) {
                    EffectId effectId = (EffectId) bzVarListIterator.next();
                    String str = effectId.f39557c;
                    String str2 = effectId.d;
                    if (!EffectId.INVALID_ID.equals(str)) {
                        if (SkuHandler.m(str).contains(str2)) {
                            builder.f(new ProductId(effectId));
                        } else {
                            Log.g(3, nailVtoApplierImpl.f39724a, fc.i("[getProductIds] Filter out SKU by product mask. productGuid=", str, ", skuGuid=", str2));
                        }
                    }
                }
                return builder.i();
            default:
                return NailVtoApplierImpl.q(z, nailVtoApplierImpl.f39731j);
        }
    }
}
