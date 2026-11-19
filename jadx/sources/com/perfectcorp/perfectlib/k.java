package com.perfectcorp.perfectlib;

import android.graphics.Bitmap;
import com.perfectcorp.common.guava.MoreFutures;
import com.perfectcorp.thirdparty.com.google.common.base.Optional;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import defpackage.lc0;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class k implements Callable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f40431b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AccessoryVtoApplierImpl f40432c;
    public final /* synthetic */ int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ List f40433e;

    public /* synthetic */ k(AccessoryVtoApplierImpl accessoryVtoApplierImpl, int i2, ImmutableList immutableList, int i3) {
        this.f40431b = i3;
        this.f40432c = accessoryVtoApplierImpl;
        this.d = i2;
        this.f40433e = immutableList;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        com.perfectcorp.perfectlib.ph.utility.a aVar;
        int i2 = this.f40431b;
        List list = this.f40433e;
        int i3 = this.d;
        AccessoryVtoApplierImpl accessoryVtoApplierImpl = this.f40432c;
        switch (i2) {
            case 0:
                accessoryVtoApplierImpl.i(i3);
                com.perfectcorp.perfectlib.ph.utility.a aVarC = AccessoryVtoApplierImpl.c((List) AccessoryVtoApplierImpl.b(list, false).first);
                accessoryVtoApplierImpl.j(aVarC);
                Bitmap bitmap = (Bitmap) MoreFutures.b(accessoryVtoApplierImpl.d(aVarC));
                accessoryVtoApplierImpl.f39470k = aVarC;
                return Optional.b(bitmap);
            default:
                PerfectEffect perfectEffect = accessoryVtoApplierImpl.f39464c;
                accessoryVtoApplierImpl.i(i3);
                Iterator it = list.iterator();
                while (true) {
                    if (it.hasNext()) {
                        EffectId effectId = (EffectId) it.next();
                        VtoSetting.Parameter parameter = effectId.n;
                        if ((parameter instanceof com.perfectcorp.perfectlib.ph.utility.a) && effectId.f39555a == perfectEffect) {
                            aVar = (com.perfectcorp.perfectlib.ph.utility.a) parameter;
                        }
                    } else {
                        aVar = null;
                    }
                }
                if (aVar == null) {
                    lc0.n("No valid ", perfectEffect, " effect id");
                    return null;
                }
                accessoryVtoApplierImpl.j(aVar);
                Bitmap bitmap2 = (Bitmap) MoreFutures.b(accessoryVtoApplierImpl.d(aVar));
                accessoryVtoApplierImpl.f39470k = aVar;
                return Optional.b(bitmap2);
        }
    }
}
