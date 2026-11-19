package com.perfectcorp.perfectlib;

import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import com.perfectcorp.thirdparty.com.google.common.collect.bz;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class r4 implements Callable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f41814b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f41815c;
    public final /* synthetic */ VtoPattern d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f41816e;

    public /* synthetic */ r4(VtoPattern.PaletteMajor paletteMajor, Set set, boolean z) {
        this.d = paletteMajor;
        this.f41816e = set;
        this.f41815c = z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.concurrent.Callable
    public final Object call() {
        int i2 = this.f41814b;
        Object obj = this.f41816e;
        boolean z = this.f41815c;
        VtoPattern vtoPattern = this.d;
        switch (i2) {
            case 0:
                VtoPattern.PaletteMajor paletteMajor = (VtoPattern.PaletteMajor) vtoPattern;
                ((Set) obj).addAll(com.perfectcorp.perfectlib.ph.database.ymk.pattern.c.e(YMKDatabase.b(), Collections.singletonList(paletteMajor.f40006a), false));
                return SkuHandler.f(paletteMajor.d, z);
            default:
                VtoPattern.SubPalette subPalette = (VtoPattern.SubPalette) vtoPattern;
                ConcurrentHashMap concurrentHashMap = (ConcurrentHashMap) obj;
                bz bzVarListIterator = ((ImmutableList) SkuHandler.f(subPalette.d, z)).listIterator(0);
                while (bzVarListIterator.hasNext()) {
                    SkuInfo skuInfo = (SkuInfo) bzVarListIterator.next();
                    concurrentHashMap.put(skuInfo.f39943c, skuInfo);
                }
                return com.perfectcorp.perfectlib.ph.database.ymk.pattern.c.b(YMKDatabase.b(), subPalette.f40006a);
        }
    }

    public /* synthetic */ r4(VtoPattern.SubPalette subPalette, boolean z, ConcurrentHashMap concurrentHashMap) {
        this.d = subPalette;
        this.f41815c = z;
        this.f41816e = concurrentHashMap;
    }
}
