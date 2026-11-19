package com.perfectcorp.perfectlib;

import com.perfectcorp.thirdparty.io.reactivex.Observable;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class o4 implements Callable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f41098b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ VtoDetail.PaletteMajor f41099c;

    public /* synthetic */ o4(VtoDetail.PaletteMajor paletteMajor, int i2) {
        this.f41098b = i2;
        this.f41099c = paletteMajor;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        int i2 = this.f41098b;
        VtoDetail.PaletteMajor paletteMajor = this.f41099c;
        switch (i2) {
            case 0:
                SkuInfo skuInfo = paletteMajor.f40005b;
                return (SubItemInfo.f(skuInfo.f39942b) ? Observable.fromIterable(SubItemInfo.d(skuInfo)).map(new p4(paletteMajor, 1)) : Observable.fromArray(new VtoPalette.PaletteMajor(paletteMajor.f40004a, skuInfo))).cast(VtoPalette.class).toList();
            default:
                return VtoDetail.PaletteMajor.a(paletteMajor.f40004a, paletteMajor.f40005b);
        }
    }
}
