package com.perfectcorp.perfectlib;

import com.perfectcorp.perfectlib.VtoSetting;
import com.perfectcorp.perfectlib.ph.database.mcsdk.IdRow;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import java.util.ArrayList;
import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class l implements Function {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f40446b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ArrayList f40447c;

    public /* synthetic */ l(int i2, ArrayList arrayList) {
        this.f40446b = i2;
        this.f40447c = arrayList;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public final Object apply(Object obj) {
        int i2 = this.f40446b;
        final int i3 = 0;
        final int i4 = 1;
        final ArrayList arrayList = this.f40447c;
        final VtoSetting vtoSetting = (VtoSetting) obj;
        switch (i2) {
            case 0:
                return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t(ProductMappingUtility.b(vtoSetting.f40015b, vtoSetting.f40016c), new Function() { // from class: r2
                    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
                    public final Object apply(Object obj2) {
                        int i5 = i3;
                        ArrayList arrayList2 = arrayList;
                        VtoSetting vtoSetting2 = vtoSetting;
                        IdRow idRow = (IdRow) obj2;
                        switch (i5) {
                            case 0:
                                if (IdRow.f41146f != idRow) {
                                    return VtoSetting.builder(vtoSetting2).setProductGuid(idRow.f41148b).setSkuGuid(idRow.d).build();
                                }
                                VtoSetting vtoSettingBuild = VtoSetting.builder().setProductGuid(vtoSetting2.f40016c).build();
                                arrayList2.add(vtoSettingBuild);
                                return vtoSettingBuild;
                            case 1:
                                if (IdRow.f41146f != idRow) {
                                    return VtoSetting.builder(vtoSetting2).setProductGuid(idRow.f41148b).setSkuGuid(idRow.d).build();
                                }
                                VtoSetting vtoSettingBuild2 = VtoSetting.builder().setProductGuid(vtoSetting2.f40016c).build();
                                arrayList2.add(vtoSettingBuild2);
                                return vtoSettingBuild2;
                            case 2:
                                if (IdRow.f41146f != idRow) {
                                    return VtoSetting.builder(vtoSetting2).setProductGuid(idRow.f41148b).setSkuGuid(idRow.d).build();
                                }
                                VtoSetting vtoSettingBuild3 = VtoSetting.builder().setProductGuid(vtoSetting2.f40016c).build();
                                arrayList2.add(vtoSettingBuild3);
                                return vtoSettingBuild3;
                            case 3:
                                if (IdRow.f41146f != idRow) {
                                    return VtoSetting.builder(vtoSetting2).setProductGuid(idRow.f41148b).setSkuGuid(idRow.d).build();
                                }
                                VtoSetting vtoSettingBuild4 = VtoSetting.builder().setProductGuid(vtoSetting2.f40016c).build();
                                arrayList2.add(vtoSettingBuild4);
                                return vtoSettingBuild4;
                            default:
                                if (IdRow.f41146f != idRow) {
                                    return VtoSetting.builder(vtoSetting2).setProductGuid(idRow.f41148b).setSkuGuid(idRow.d).build();
                                }
                                VtoSetting vtoSettingBuild5 = VtoSetting.builder().setProductGuid(vtoSetting2.f40016c).build();
                                arrayList2.add(vtoSettingBuild5);
                                return vtoSettingBuild5;
                        }
                    }
                });
            case 1:
                if (com.perfectcorp.perfectlib.ph.unit.sku.a.f(vtoSetting.f40014a)) {
                    return Single.h(vtoSetting);
                }
                final int i5 = 2;
                return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t(ProductMappingUtility.b(vtoSetting.f40015b, vtoSetting.f40016c), new Function() { // from class: r2
                    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
                    public final Object apply(Object obj2) {
                        int i6 = i5;
                        ArrayList arrayList2 = arrayList;
                        VtoSetting vtoSetting2 = vtoSetting;
                        IdRow idRow = (IdRow) obj2;
                        switch (i6) {
                            case 0:
                                if (IdRow.f41146f != idRow) {
                                    return VtoSetting.builder(vtoSetting2).setProductGuid(idRow.f41148b).setSkuGuid(idRow.d).build();
                                }
                                VtoSetting vtoSettingBuild = VtoSetting.builder().setProductGuid(vtoSetting2.f40016c).build();
                                arrayList2.add(vtoSettingBuild);
                                return vtoSettingBuild;
                            case 1:
                                if (IdRow.f41146f != idRow) {
                                    return VtoSetting.builder(vtoSetting2).setProductGuid(idRow.f41148b).setSkuGuid(idRow.d).build();
                                }
                                VtoSetting vtoSettingBuild2 = VtoSetting.builder().setProductGuid(vtoSetting2.f40016c).build();
                                arrayList2.add(vtoSettingBuild2);
                                return vtoSettingBuild2;
                            case 2:
                                if (IdRow.f41146f != idRow) {
                                    return VtoSetting.builder(vtoSetting2).setProductGuid(idRow.f41148b).setSkuGuid(idRow.d).build();
                                }
                                VtoSetting vtoSettingBuild3 = VtoSetting.builder().setProductGuid(vtoSetting2.f40016c).build();
                                arrayList2.add(vtoSettingBuild3);
                                return vtoSettingBuild3;
                            case 3:
                                if (IdRow.f41146f != idRow) {
                                    return VtoSetting.builder(vtoSetting2).setProductGuid(idRow.f41148b).setSkuGuid(idRow.d).build();
                                }
                                VtoSetting vtoSettingBuild4 = VtoSetting.builder().setProductGuid(vtoSetting2.f40016c).build();
                                arrayList2.add(vtoSettingBuild4);
                                return vtoSettingBuild4;
                            default:
                                if (IdRow.f41146f != idRow) {
                                    return VtoSetting.builder(vtoSetting2).setProductGuid(idRow.f41148b).setSkuGuid(idRow.d).build();
                                }
                                VtoSetting vtoSettingBuild5 = VtoSetting.builder().setProductGuid(vtoSetting2.f40016c).build();
                                arrayList2.add(vtoSettingBuild5);
                                return vtoSettingBuild5;
                        }
                    }
                });
            case 2:
                return com.perfectcorp.perfectlib.ph.unit.sku.a.f(vtoSetting.f40014a) ? Single.h(vtoSetting) : new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t(ProductMappingUtility.b(vtoSetting.f40015b, vtoSetting.f40016c), new Function() { // from class: r2
                    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
                    public final Object apply(Object obj2) {
                        int i6 = i4;
                        ArrayList arrayList2 = arrayList;
                        VtoSetting vtoSetting2 = vtoSetting;
                        IdRow idRow = (IdRow) obj2;
                        switch (i6) {
                            case 0:
                                if (IdRow.f41146f != idRow) {
                                    return VtoSetting.builder(vtoSetting2).setProductGuid(idRow.f41148b).setSkuGuid(idRow.d).build();
                                }
                                VtoSetting vtoSettingBuild = VtoSetting.builder().setProductGuid(vtoSetting2.f40016c).build();
                                arrayList2.add(vtoSettingBuild);
                                return vtoSettingBuild;
                            case 1:
                                if (IdRow.f41146f != idRow) {
                                    return VtoSetting.builder(vtoSetting2).setProductGuid(idRow.f41148b).setSkuGuid(idRow.d).build();
                                }
                                VtoSetting vtoSettingBuild2 = VtoSetting.builder().setProductGuid(vtoSetting2.f40016c).build();
                                arrayList2.add(vtoSettingBuild2);
                                return vtoSettingBuild2;
                            case 2:
                                if (IdRow.f41146f != idRow) {
                                    return VtoSetting.builder(vtoSetting2).setProductGuid(idRow.f41148b).setSkuGuid(idRow.d).build();
                                }
                                VtoSetting vtoSettingBuild3 = VtoSetting.builder().setProductGuid(vtoSetting2.f40016c).build();
                                arrayList2.add(vtoSettingBuild3);
                                return vtoSettingBuild3;
                            case 3:
                                if (IdRow.f41146f != idRow) {
                                    return VtoSetting.builder(vtoSetting2).setProductGuid(idRow.f41148b).setSkuGuid(idRow.d).build();
                                }
                                VtoSetting vtoSettingBuild4 = VtoSetting.builder().setProductGuid(vtoSetting2.f40016c).build();
                                arrayList2.add(vtoSettingBuild4);
                                return vtoSettingBuild4;
                            default:
                                if (IdRow.f41146f != idRow) {
                                    return VtoSetting.builder(vtoSetting2).setProductGuid(idRow.f41148b).setSkuGuid(idRow.d).build();
                                }
                                VtoSetting vtoSettingBuild5 = VtoSetting.builder().setProductGuid(vtoSetting2.f40016c).build();
                                arrayList2.add(vtoSettingBuild5);
                                return vtoSettingBuild5;
                        }
                    }
                });
            case 3:
                if (com.perfectcorp.perfectlib.ph.unit.sku.a.f(vtoSetting.f40014a)) {
                    return Single.h(vtoSetting);
                }
                final int i6 = 3;
                return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t(ProductMappingUtility.b(vtoSetting.f40015b, vtoSetting.f40016c), new Function() { // from class: r2
                    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
                    public final Object apply(Object obj2) {
                        int i7 = i6;
                        ArrayList arrayList2 = arrayList;
                        VtoSetting vtoSetting2 = vtoSetting;
                        IdRow idRow = (IdRow) obj2;
                        switch (i7) {
                            case 0:
                                if (IdRow.f41146f != idRow) {
                                    return VtoSetting.builder(vtoSetting2).setProductGuid(idRow.f41148b).setSkuGuid(idRow.d).build();
                                }
                                VtoSetting vtoSettingBuild = VtoSetting.builder().setProductGuid(vtoSetting2.f40016c).build();
                                arrayList2.add(vtoSettingBuild);
                                return vtoSettingBuild;
                            case 1:
                                if (IdRow.f41146f != idRow) {
                                    return VtoSetting.builder(vtoSetting2).setProductGuid(idRow.f41148b).setSkuGuid(idRow.d).build();
                                }
                                VtoSetting vtoSettingBuild2 = VtoSetting.builder().setProductGuid(vtoSetting2.f40016c).build();
                                arrayList2.add(vtoSettingBuild2);
                                return vtoSettingBuild2;
                            case 2:
                                if (IdRow.f41146f != idRow) {
                                    return VtoSetting.builder(vtoSetting2).setProductGuid(idRow.f41148b).setSkuGuid(idRow.d).build();
                                }
                                VtoSetting vtoSettingBuild3 = VtoSetting.builder().setProductGuid(vtoSetting2.f40016c).build();
                                arrayList2.add(vtoSettingBuild3);
                                return vtoSettingBuild3;
                            case 3:
                                if (IdRow.f41146f != idRow) {
                                    return VtoSetting.builder(vtoSetting2).setProductGuid(idRow.f41148b).setSkuGuid(idRow.d).build();
                                }
                                VtoSetting vtoSettingBuild4 = VtoSetting.builder().setProductGuid(vtoSetting2.f40016c).build();
                                arrayList2.add(vtoSettingBuild4);
                                return vtoSettingBuild4;
                            default:
                                if (IdRow.f41146f != idRow) {
                                    return VtoSetting.builder(vtoSetting2).setProductGuid(idRow.f41148b).setSkuGuid(idRow.d).build();
                                }
                                VtoSetting vtoSettingBuild5 = VtoSetting.builder().setProductGuid(vtoSetting2.f40016c).build();
                                arrayList2.add(vtoSettingBuild5);
                                return vtoSettingBuild5;
                        }
                    }
                });
            case 4:
                ThreadPoolExecutor threadPoolExecutor = MakeupCamInternal.n;
                arrayList.add(vtoSetting);
                return vtoSetting.f40014a;
            case 5:
                ThreadPoolExecutor threadPoolExecutor2 = MakeupCamInternal.n;
                return com.perfectcorp.perfectlib.ph.unit.sku.a.f(vtoSetting.f40014a) ? Single.h(vtoSetting) : new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t(ProductMappingUtility.b(vtoSetting.f40015b, vtoSetting.f40016c), new Function() { // from class: com.perfectcorp.perfectlib.x2
                    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
                    public final Object apply(Object obj2) {
                        int i7 = i3;
                        ArrayList arrayList2 = arrayList;
                        VtoSetting vtoSetting2 = vtoSetting;
                        IdRow idRow = (IdRow) obj2;
                        switch (i7) {
                            case 0:
                                ThreadPoolExecutor threadPoolExecutor3 = MakeupCamInternal.n;
                                if (IdRow.f41146f != idRow) {
                                    return VtoSetting.builder(vtoSetting2).setProductGuid(idRow.f41148b).setSkuGuid(idRow.d).build();
                                }
                                VtoSetting vtoSettingBuild = VtoSetting.builder().setProductGuid(vtoSetting2.f40016c).build();
                                arrayList2.add(vtoSettingBuild);
                                return vtoSettingBuild;
                            default:
                                int i8 = PhotoMakeupInternal.n;
                                if (IdRow.f41146f != idRow) {
                                    return VtoSetting.builder(vtoSetting2).setProductGuid(idRow.f41148b).setSkuGuid(idRow.d).build();
                                }
                                VtoSetting vtoSettingBuild2 = VtoSetting.builder().setProductGuid(vtoSetting2.f40016c).build();
                                arrayList2.add(vtoSettingBuild2);
                                return vtoSettingBuild2;
                        }
                    }
                });
            case 6:
                final int i7 = 4;
                return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t(ProductMappingUtility.b(vtoSetting.f40015b, vtoSetting.f40016c), new Function() { // from class: r2
                    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
                    public final Object apply(Object obj2) {
                        int i8 = i7;
                        ArrayList arrayList2 = arrayList;
                        VtoSetting vtoSetting2 = vtoSetting;
                        IdRow idRow = (IdRow) obj2;
                        switch (i8) {
                            case 0:
                                if (IdRow.f41146f != idRow) {
                                    return VtoSetting.builder(vtoSetting2).setProductGuid(idRow.f41148b).setSkuGuid(idRow.d).build();
                                }
                                VtoSetting vtoSettingBuild = VtoSetting.builder().setProductGuid(vtoSetting2.f40016c).build();
                                arrayList2.add(vtoSettingBuild);
                                return vtoSettingBuild;
                            case 1:
                                if (IdRow.f41146f != idRow) {
                                    return VtoSetting.builder(vtoSetting2).setProductGuid(idRow.f41148b).setSkuGuid(idRow.d).build();
                                }
                                VtoSetting vtoSettingBuild2 = VtoSetting.builder().setProductGuid(vtoSetting2.f40016c).build();
                                arrayList2.add(vtoSettingBuild2);
                                return vtoSettingBuild2;
                            case 2:
                                if (IdRow.f41146f != idRow) {
                                    return VtoSetting.builder(vtoSetting2).setProductGuid(idRow.f41148b).setSkuGuid(idRow.d).build();
                                }
                                VtoSetting vtoSettingBuild3 = VtoSetting.builder().setProductGuid(vtoSetting2.f40016c).build();
                                arrayList2.add(vtoSettingBuild3);
                                return vtoSettingBuild3;
                            case 3:
                                if (IdRow.f41146f != idRow) {
                                    return VtoSetting.builder(vtoSetting2).setProductGuid(idRow.f41148b).setSkuGuid(idRow.d).build();
                                }
                                VtoSetting vtoSettingBuild4 = VtoSetting.builder().setProductGuid(vtoSetting2.f40016c).build();
                                arrayList2.add(vtoSettingBuild4);
                                return vtoSettingBuild4;
                            default:
                                if (IdRow.f41146f != idRow) {
                                    return VtoSetting.builder(vtoSetting2).setProductGuid(idRow.f41148b).setSkuGuid(idRow.d).build();
                                }
                                VtoSetting vtoSettingBuild5 = VtoSetting.builder().setProductGuid(vtoSetting2.f40016c).build();
                                arrayList2.add(vtoSettingBuild5);
                                return vtoSettingBuild5;
                        }
                    }
                });
            case 7:
                int i8 = PhotoMakeupInternal.n;
                arrayList.add(vtoSetting);
                return vtoSetting.f40014a;
            default:
                int i9 = PhotoMakeupInternal.n;
                return com.perfectcorp.perfectlib.ph.unit.sku.a.f(vtoSetting.f40014a) ? Single.h(vtoSetting) : new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t(ProductMappingUtility.b(vtoSetting.f40015b, vtoSetting.f40016c), new Function() { // from class: com.perfectcorp.perfectlib.x2
                    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
                    public final Object apply(Object obj2) {
                        int i10 = i4;
                        ArrayList arrayList2 = arrayList;
                        VtoSetting vtoSetting2 = vtoSetting;
                        IdRow idRow = (IdRow) obj2;
                        switch (i10) {
                            case 0:
                                ThreadPoolExecutor threadPoolExecutor3 = MakeupCamInternal.n;
                                if (IdRow.f41146f != idRow) {
                                    return VtoSetting.builder(vtoSetting2).setProductGuid(idRow.f41148b).setSkuGuid(idRow.d).build();
                                }
                                VtoSetting vtoSettingBuild = VtoSetting.builder().setProductGuid(vtoSetting2.f40016c).build();
                                arrayList2.add(vtoSettingBuild);
                                return vtoSettingBuild;
                            default:
                                int i11 = PhotoMakeupInternal.n;
                                if (IdRow.f41146f != idRow) {
                                    return VtoSetting.builder(vtoSetting2).setProductGuid(idRow.f41148b).setSkuGuid(idRow.d).build();
                                }
                                VtoSetting vtoSettingBuild2 = VtoSetting.builder().setProductGuid(vtoSetting2.f40016c).build();
                                arrayList2.add(vtoSettingBuild2);
                                return vtoSettingBuild2;
                        }
                    }
                });
        }
    }
}
