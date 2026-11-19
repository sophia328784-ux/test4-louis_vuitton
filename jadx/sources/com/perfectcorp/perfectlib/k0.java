package com.perfectcorp.perfectlib;

import android.graphics.Bitmap;
import com.perfectcorp.common.guava.MoreFutures;
import com.perfectcorp.thirdparty.com.google.common.base.Optional;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class k0 implements Callable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f40434b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f40435c;
    public final /* synthetic */ Object d;

    public /* synthetic */ k0(Object obj, int i2, int i3) {
        this.f40434b = i3;
        this.d = obj;
        this.f40435c = i2;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        int i2 = this.f40434b;
        int i3 = this.f40435c;
        Object obj = this.d;
        switch (i2) {
            case 0:
                HandVtoApplierImpl handVtoApplierImpl = (HandVtoApplierImpl) obj;
                handVtoApplierImpl.s(i3);
                Bitmap bitmap = (Bitmap) MoreFutures.b(handVtoApplierImpl.q());
                handVtoApplierImpl.f39641k.clear();
                return Optional.b(bitmap);
            default:
                return ((NailVtoApplierImpl) obj).z(i3);
        }
    }
}
