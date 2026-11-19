package com.perfectcorp.perfectlib;

import android.graphics.Bitmap;
import com.perfectcorp.common.guava.MoreFutures;
import com.perfectcorp.thirdparty.com.google.common.base.Optional;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class n implements Function {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f41060b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f41061c;
    public final /* synthetic */ Object d;

    public /* synthetic */ n(Object obj, int i2, int i3) {
        this.f41060b = i3;
        this.d = obj;
        this.f41061c = i2;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public final Object apply(Object obj) {
        int i2 = this.f41060b;
        int i3 = this.f41061c;
        Object obj2 = this.d;
        switch (i2) {
            case 0:
                AccessoryVtoApplierImpl accessoryVtoApplierImpl = (AccessoryVtoApplierImpl) obj2;
                accessoryVtoApplierImpl.i(i3);
                com.perfectcorp.perfectlib.ph.utility.a aVarC = AccessoryVtoApplierImpl.c((List) obj);
                accessoryVtoApplierImpl.j(aVarC);
                Bitmap bitmap = (Bitmap) MoreFutures.b(accessoryVtoApplierImpl.d(aVarC));
                accessoryVtoApplierImpl.f39470k = aVarC;
                return Optional.b(bitmap);
            default:
                return ((NailVtoApplierImpl) obj2).m(i3, (List) obj);
        }
    }
}
