package com.perfectcorp.perfectlib;

import com.perfectcorp.thirdparty.io.reactivex.functions.Function;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class p4 implements Function {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f41114b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ VtoDetail.PaletteMajor f41115c;

    public /* synthetic */ p4(VtoDetail.PaletteMajor paletteMajor, int i2) {
        this.f41114b = i2;
        this.f41115c = paletteMajor;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public final Object apply(Object obj) {
        int i2 = this.f41114b;
        VtoDetail.PaletteMajor paletteMajor = this.f41115c;
        SubItemInfo subItemInfo = (SubItemInfo) obj;
        switch (i2) {
            case 0:
                boolean zF = SubItemInfo.f(paletteMajor.f40005b.f39942b);
                ProductInfo productInfo = paletteMajor.f40004a;
                return zF ? new VtoPattern.SubPalette(productInfo, subItemInfo) : new VtoPattern.PaletteMajor(productInfo, subItemInfo);
            default:
                return new VtoPalette.SubPalette(paletteMajor.f40004a, paletteMajor.f40005b, subItemInfo);
        }
    }
}
