package com.perfectcorp.perfectlib;

import android.text.TextUtils;
import android.util.Pair;
import com.perfectcorp.common.network.RequestTask;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.exceptions.NoShadeFinderProductException;
import com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl;
import com.perfectcorp.perfectlib.makeupcam.camera.ColorLab32f;
import com.perfectcorp.perfectlib.ph.database.mcsdk.IdRow;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.Sku;
import com.perfectcorp.perfectlib.ph.template.SkuTemplateUtils;
import com.perfectcorp.perfectlib.ymk.model.BeautyMode;
import com.perfectcorp.perfectlib.ymk.model.ItemSubType;
import com.perfectcorp.thirdparty.com.google.common.base.Optional;
import com.perfectcorp.thirdparty.com.google.common.collect.Collections2;
import com.perfectcorp.thirdparty.io.reactivex.Observable;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.functions.BiConsumer;
import com.perfectcorp.thirdparty.io.reactivex.functions.BiFunction;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import com.perfectcorp.thirdparty.io.reactivex.functions.Predicate;
import defpackage.bq0;
import defpackage.ct0;
import defpackage.ho0;
import defpackage.md;
import defpackage.pv0;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class y implements Predicate, BiConsumer, Function, MakeupCam.OnPictureTakenListener, BiFunction, PhotoMakeup.On4SplitScreenIndexSwitchListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f41922b;

    public /* synthetic */ y(FaceAttributeAnalyzer faceAttributeAnalyzer) {
        this.f41922b = 2;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.BiConsumer
    public void accept(Object obj, Object obj2) {
        ContentPreloader.LookVersions.LookVersion lookVersion = (ContentPreloader.LookVersions.LookVersion) obj2;
        ((HashMap) obj).put(lookVersion.guid, Float.valueOf(lookVersion.makeupVer));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v10, types: [boolean] */
    /* JADX WARN: Type inference failed for: r4v11, types: [int] */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v14, types: [int] */
    /* JADX WARN: Type inference failed for: r4v15 */
    /* JADX WARN: Type inference failed for: r4v22 */
    /* JADX WARN: Type inference failed for: r4v28 */
    /* JADX WARN: Type inference failed for: r4v29 */
    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public Object apply(Object obj) {
        final ?? r4;
        Callable bq0Var;
        Callable ho0Var;
        final ?? r5;
        float[] fArr;
        com.perfectcorp.perfectlib.rh.database.ymk.conditionalinfo.a.b bVarA;
        com.perfectcorp.perfectlib.rh.database.ymk.conditionalinfo.a.b.C0188a c0188a;
        Map<String, com.perfectcorp.perfectlib.rh.database.ymk.conditionalinfo.c> map;
        com.perfectcorp.perfectlib.rh.database.ymk.conditionalinfo.a.b bVarA2;
        com.perfectcorp.perfectlib.rh.database.ymk.conditionalinfo.a.b.C0188a c0188a2;
        Map<String, float[]> map2;
        char c2 = 1;
        switch (this.f41922b) {
            case 2:
                com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.faceattribute.d dVar = (com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.faceattribute.d) ((RequestTask.Response) obj).f39358b;
                Objects.requireNonNull(dVar, "No response from server.");
                com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.faceattribute.d.b bVar = dVar.result;
                Objects.requireNonNull(bVar, "No result in response.");
                com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.faceattribute.d.a aVar = bVar.customFeature;
                if (aVar == null) {
                    return new com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.faceattribute.d.a();
                }
                FaceAttributeAnalyzer.Preferences.f39608a.edit().putString("CUSTOM_FEATURE_BRAND", aVar.brand).putBoolean("CUSTOM_FEATURE_FACE_ATTRIBUTE_LV", TextUtils.equals(aVar.brand, "LV")).commit();
                defpackage.a.A(new StringBuilder("[queryCustomFeatures] queried custom feature="), aVar.brand, 3, "FaceAttributeAnalyzer");
                return aVar;
            case 3:
                com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.makeup.a aVar2 = (com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.makeup.a) ((RequestTask.Response) obj).f39358b;
                Objects.requireNonNull(aVar2, "No response from server.");
                com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.makeup.a.b bVar2 = aVar2.result;
                Objects.requireNonNull(bVar2, "No result in response.");
                com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.makeup.a.C0199a c0199a = bVar2.customFeature;
                if (c0199a == null) {
                    return new com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.makeup.a.C0199a();
                }
                MakeupCam.Preferences.f39693a.edit().putString("CUSTOM_FEATURE_BRAND", c0199a.brand).putBoolean("CUSTOM_FEATURE_BAD_LIGHTING_LV", c0199a.badLightingLV).putBoolean("CUSTOM_FEATURE_SKINSMOOTH_LV", c0199a.skinsmoothLV).putBoolean("CUSTOM_FEATURE_LOOK_COMPARISON_LV", c0199a.lookComparisonLV).commit();
                defpackage.a.A(new StringBuilder("[queryCustomFeatures] queried custom feature="), c0199a.brand, 3, "MakeupCam");
                return c0199a;
            case 4:
            case 12:
            case 18:
            default:
                String str = (String) obj;
                CacheCleaner.d(str, true);
                return str;
            case 5:
                Pair pair = (Pair) obj;
                ThreadPoolExecutor threadPoolExecutor = MakeupCamInternal.n;
                return MakeupCamInternal.c((VtoSetting) pair.first, (Sku) pair.second);
            case 6:
                ThreadPoolExecutor threadPoolExecutor2 = MakeupCamInternal.n;
                VtoSetting vtoSetting = (VtoSetting) ((Pair) obj).first;
                EffectId.Builder builder = new EffectId.Builder(PerfectEffect.of(BeautyMode.EARRINGS, ItemSubType.NONE));
                builder.f39568c = EffectId.c(vtoSetting.f40015b);
                builder.d = EffectId.c(vtoSetting.f40016c);
                builder.f39569e = EffectId.c(vtoSetting.f40017e);
                builder.f39571h = EffectId.c(vtoSetting.f40018f);
                builder.m = vtoSetting.g;
                return builder.a();
            case 7:
                ThreadPoolExecutor threadPoolExecutor3 = MakeupCamInternal.n;
                VtoSetting vtoSetting2 = (VtoSetting) ((Pair) obj).first;
                EffectId.Builder builder2 = new EffectId.Builder(PerfectEffect.of(BeautyMode.EARRINGS, ItemSubType.NONE));
                builder2.f39568c = EffectId.c(vtoSetting2.f40015b);
                builder2.d = EffectId.c(vtoSetting2.f40016c);
                builder2.f39569e = EffectId.c(vtoSetting2.f40017e);
                builder2.f39571h = EffectId.c(vtoSetting2.f40018f);
                builder2.m = vtoSetting2.g;
                return builder2.a();
            case 8:
                final VtoSetting vtoSetting3 = (VtoSetting) obj;
                ThreadPoolExecutor threadPoolExecutor4 = MakeupCamInternal.n;
                if (com.perfectcorp.perfectlib.ph.unit.sku.a.f(vtoSetting3.f40014a)) {
                    return Single.h(vtoSetting3);
                }
                String str2 = vtoSetting3.f40015b;
                String str3 = vtoSetting3.f40016c;
                final int i2 = 0;
                return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p(TextUtils.isEmpty(str2) ? new bq0(str3, true, 0) : TextUtils.isEmpty(str3) ? new bq0(str2, true, 1) : new ho0((Object) str2, (Object) str3, true, (int) (true ? 1 : 0))), new Function() { // from class: com.perfectcorp.perfectlib.a3
                    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
                    public final Object apply(Object obj2) {
                        int i3 = i2;
                        VtoSetting vtoSetting4 = vtoSetting3;
                        IdRow idRow = (IdRow) obj2;
                        switch (i3) {
                            case 0:
                                ThreadPoolExecutor threadPoolExecutor5 = MakeupCamInternal.n;
                                break;
                            default:
                                int i4 = PhotoMakeupInternal.n;
                                break;
                        }
                        return VtoSetting.builder(vtoSetting4).setProductGuid(idRow.f41148b).setSkuGuid(idRow.d).build();
                    }
                });
            case 9:
                ThreadPoolExecutor threadPoolExecutor5 = MakeupCamInternal.n;
                return ((MakeupCamInternal.ConfigureData.EventData) obj).f39711b;
            case 10:
                final EffectId effectId = (EffectId) obj;
                ThreadPoolExecutor threadPoolExecutor6 = MakeupCamInternal.n;
                if (ApplyEffectUtility.f39471a.contains(effectId.f39555a.beautyMode)) {
                    return Single.h(effectId);
                }
                String str4 = effectId.f39557c;
                String str5 = effectId.d;
                final int i3 = 0;
                return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p(TextUtils.isEmpty(str4) ? new bq0(str5, true, 0) : TextUtils.isEmpty(str5) ? new bq0(str4, true, 1) : new ho0((Object) str4, (Object) str5, true, (int) (true ? 1 : 0))), new Function() { // from class: com.perfectcorp.perfectlib.b3
                    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
                    public final Object apply(Object obj2) {
                        int i4 = i3;
                        EffectId effectId2 = effectId;
                        IdRow idRow = (IdRow) obj2;
                        switch (i4) {
                            case 0:
                                ThreadPoolExecutor threadPoolExecutor7 = MakeupCamInternal.n;
                                EffectId.Builder builderA = EffectId.a(effectId2);
                                builderA.f39568c = EffectId.c(idRow.f41148b);
                                builderA.d = EffectId.c(idRow.d);
                                return builderA.a();
                            case 1:
                                int i5 = PhotoMakeupInternal.n;
                                EffectId.Builder builderA2 = EffectId.a(effectId2);
                                builderA2.f39568c = EffectId.c(idRow.f41148b);
                                builderA2.d = EffectId.c(idRow.d);
                                return builderA2.a();
                            default:
                                int i6 = PhotoMakeupInternal.n;
                                EffectId.Builder builderA3 = EffectId.a(effectId2);
                                builderA3.f39568c = EffectId.c(idRow.f41148b);
                                builderA3.d = EffectId.c(idRow.d);
                                return builderA3.a();
                        }
                    }
                });
            case 11:
                ThreadPoolExecutor threadPoolExecutor7 = MakeupCamInternal.n;
                return new ApplyEffectCtrl.ConfigurationWrapper(Collections2.b((List) obj, new c2(7)));
            case 13:
                ThreadPoolExecutor threadPoolExecutor8 = MakeupCamInternal.n;
                return Boolean.valueOf(com.perfectcorp.perfectlib.ph.unit.sku.a.f(((VtoSetting) obj).f40014a));
            case 14:
                VtoSetting vtoSetting4 = (VtoSetting) obj;
                ThreadPoolExecutor threadPoolExecutor9 = MakeupCamInternal.n;
                return new Pair(vtoSetting4, ApplyEffectUtility.d(vtoSetting4));
            case 15:
                ThreadPoolExecutor threadPoolExecutor10 = MakeupCamInternal.n;
                return SkuTemplateUtils.c(((Sku) ((Pair) obj).second).f41263b);
            case 16:
                ThreadPoolExecutor threadPoolExecutor11 = MakeupCamInternal.n;
                return ((EffectId) obj).f39555a.beautyMode;
            case 17:
                List list = (List) obj;
                ThreadPoolExecutor threadPoolExecutor12 = MakeupCamInternal.n;
                if (list.size() == 1) {
                    return (ApplyEffectCtrl.Configuration) list.get(0);
                }
                if (list.size() > 1) {
                    return new ApplyEffectCtrl.ConfigurationWrapper(list);
                }
                md.n("No configuration can be applied.");
                return null;
            case 19:
                final int i4 = 2;
                final EffectId effectId2 = (EffectId) obj;
                int i5 = PhotoMakeupInternal.n;
                if (ApplyEffectUtility.f39471a.contains(effectId2.f39555a.beautyMode)) {
                    return Single.h(effectId2);
                }
                String str6 = effectId2.f39557c;
                String str7 = effectId2.d;
                return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p(TextUtils.isEmpty(str6) ? new bq0(str7, true, 0) : TextUtils.isEmpty(str7) ? new bq0(str6, true, 1) : new ho0((Object) str6, (Object) str7, true, (int) (true ? 1 : 0))), new Function() { // from class: com.perfectcorp.perfectlib.b3
                    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
                    public final Object apply(Object obj2) {
                        int i6 = i4;
                        EffectId effectId3 = effectId2;
                        IdRow idRow = (IdRow) obj2;
                        switch (i6) {
                            case 0:
                                ThreadPoolExecutor threadPoolExecutor13 = MakeupCamInternal.n;
                                EffectId.Builder builderA = EffectId.a(effectId3);
                                builderA.f39568c = EffectId.c(idRow.f41148b);
                                builderA.d = EffectId.c(idRow.d);
                                return builderA.a();
                            case 1:
                                int i7 = PhotoMakeupInternal.n;
                                EffectId.Builder builderA2 = EffectId.a(effectId3);
                                builderA2.f39568c = EffectId.c(idRow.f41148b);
                                builderA2.d = EffectId.c(idRow.d);
                                return builderA2.a();
                            default:
                                int i8 = PhotoMakeupInternal.n;
                                EffectId.Builder builderA3 = EffectId.a(effectId3);
                                builderA3.f39568c = EffectId.c(idRow.f41148b);
                                builderA3.d = EffectId.c(idRow.d);
                                return builderA3.a();
                        }
                    }
                });
            case 20:
                int i6 = PhotoMakeupInternal.n;
                return new ApplyEffectCtrl.ConfigurationWrapper(Collections2.b((List) obj, new c2(10)));
            case 21:
                final VtoSetting vtoSetting5 = (VtoSetting) obj;
                int i7 = PhotoMakeupInternal.n;
                if (com.perfectcorp.perfectlib.ph.unit.sku.a.f(vtoSetting5.f40014a)) {
                    return Single.h(vtoSetting5);
                }
                String str8 = vtoSetting5.f40015b;
                String str9 = vtoSetting5.f40016c;
                if (TextUtils.isEmpty(str8)) {
                    r4 = 1;
                    bq0Var = new bq0(str9, true, 0);
                } else {
                    r4 = 1;
                    r4 = 1;
                    bq0Var = TextUtils.isEmpty(str9) ? new bq0(str8, true, 1) : new ho0(str8, str9, (boolean) r4, r4 == true ? 1 : 0);
                }
                return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p(bq0Var), new Function() { // from class: com.perfectcorp.perfectlib.a3
                    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
                    public final Object apply(Object obj2) {
                        int i8 = r4;
                        VtoSetting vtoSetting6 = vtoSetting5;
                        IdRow idRow = (IdRow) obj2;
                        switch (i8) {
                            case 0:
                                ThreadPoolExecutor threadPoolExecutor13 = MakeupCamInternal.n;
                                break;
                            default:
                                int i9 = PhotoMakeupInternal.n;
                                break;
                        }
                        return VtoSetting.builder(vtoSetting6).setProductGuid(idRow.f41148b).setSkuGuid(idRow.d).build();
                    }
                });
            case 22:
                int i8 = PhotoMakeupInternal.n;
                return Boolean.valueOf(com.perfectcorp.perfectlib.ph.unit.sku.a.f(((VtoSetting) obj).f40014a));
            case 23:
                final EffectId effectId3 = (EffectId) obj;
                int i9 = PhotoMakeupInternal.n;
                if (ApplyEffectUtility.f39471a.contains(effectId3.f39555a.beautyMode)) {
                    return Single.h(effectId3);
                }
                String str10 = effectId3.f39557c;
                String str11 = effectId3.d;
                if (TextUtils.isEmpty(str10)) {
                    r5 = 1;
                    ho0Var = new bq0(str11, true, 0);
                } else {
                    boolean z = true;
                    if (TextUtils.isEmpty(str11)) {
                        ho0Var = new bq0(str10, true, 1);
                        r5 = z;
                    } else {
                        ho0Var = new ho0(str10, str11, z, z ? 1 : 0);
                        r5 = z;
                    }
                }
                return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p(ho0Var), new Function() { // from class: com.perfectcorp.perfectlib.b3
                    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
                    public final Object apply(Object obj2) {
                        int i10 = r5;
                        EffectId effectId4 = effectId3;
                        IdRow idRow = (IdRow) obj2;
                        switch (i10) {
                            case 0:
                                ThreadPoolExecutor threadPoolExecutor13 = MakeupCamInternal.n;
                                EffectId.Builder builderA = EffectId.a(effectId4);
                                builderA.f39568c = EffectId.c(idRow.f41148b);
                                builderA.d = EffectId.c(idRow.d);
                                return builderA.a();
                            case 1:
                                int i11 = PhotoMakeupInternal.n;
                                EffectId.Builder builderA2 = EffectId.a(effectId4);
                                builderA2.f39568c = EffectId.c(idRow.f41148b);
                                builderA2.d = EffectId.c(idRow.d);
                                return builderA2.a();
                            default:
                                int i12 = PhotoMakeupInternal.n;
                                EffectId.Builder builderA3 = EffectId.a(effectId4);
                                builderA3.f39568c = EffectId.c(idRow.f41148b);
                                builderA3.d = EffectId.c(idRow.d);
                                return builderA3.a();
                        }
                    }
                });
            case 24:
                com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.shadefinder.b bVar3 = (com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.shadefinder.b) ((RequestTask.Response) obj).f39358b;
                Objects.requireNonNull(bVar3, "No response from server.");
                com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.shadefinder.b.C0201b c0201b = bVar3.result;
                Objects.requireNonNull(c0201b, "No result in response.");
                com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.shadefinder.b.a aVar3 = c0201b.customFeature;
                if (aVar3 == null) {
                    return new com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.shadefinder.b.a();
                }
                ShadeFinder.Preferences.f39839a.edit().putString("CUSTOM_FEATURE_BRAND", aVar3.brand).putBoolean("CUSTOM_FEATURE_SHADE_FINDER_LV", TextUtils.equals(aVar3.brand, "LV")).commit();
                defpackage.a.A(new StringBuilder("[queryCustomFeatures] queried custom feature="), aVar3.brand, 3, "ShadeFinder");
                return aVar3;
            case 25:
                List<ProductInfo> list2 = (List) obj;
                Log.g(3, "ShadeFinderRecommendationHandler", "[flattenSkuItems] Flatten all items. productInfos#size()=" + list2.size());
                if (list2.isEmpty()) {
                    throw new NoShadeFinderProductException("productInfos is empty.");
                }
                Single list3 = Observable.fromIterable(list2).map(new ct0(20)).toList();
                ct0 ct0Var = new ct0(21);
                list3.getClass();
                Map map3 = (Map) new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t(list3, ct0Var).c();
                ArrayList arrayList = new ArrayList();
                HashSet hashSet = new HashSet();
                for (ProductInfo productInfo : list2) {
                    com.perfectcorp.perfectlib.rh.database.ymk.conditionalinfo.a aVar4 = (com.perfectcorp.perfectlib.rh.database.ymk.conditionalinfo.a) map3.get(productInfo.f39799e);
                    Optional optionalA = (aVar4 == null || (bVarA2 = aVar4.a()) == null || (c0188a2 = bVarA2.shadeFinder) == null || (map2 = c0188a2.shadeFinderV4ItemGuidLabMapping) == null) ? Optional.a() : Optional.e(map2);
                    if (optionalA.d()) {
                        Map map4 = (Map) optionalA.c();
                        AbstractSet abstractSetM = SkuHandler.m(productInfo.f39799e);
                        for (SkuInfo skuInfo : productInfo.getSkus()) {
                            String str12 = skuInfo.f39943c;
                            if (abstractSetM.contains(str12) && hashSet.add(str12) && (fArr = (float[]) map4.get(str12)) != null) {
                                char c3 = c2;
                                arrayList.add(new ShadeFinderRecommendationHandler.SkuData(productInfo, skuInfo, new ColorLab32f(fArr[0], fArr[c3], fArr[2]), (aVar4 == null || (bVarA = aVar4.a()) == null || (c0188a = bVarA.shadeFinder) == null || (map = c0188a.shadeFinderV4ItemGuidWcldMapping) == null) ? null : map.get(str12)));
                                c2 = c3;
                            }
                        }
                    }
                }
                Log.g(3, "ShadeFinderRecommendationHandler", "[flattenSkuItems] All items are flattened. skuDatas#size()=" + arrayList.size());
                if (arrayList.isEmpty()) {
                    throw new NoShadeFinderProductException("skuDatas is empty.");
                }
                return arrayList;
            case 26:
                return Long.toString(((SkinCare3RecommendationHandler.RecommendationResult.Results.Product) obj).productId);
            case 27:
                if (((Boolean) obj).booleanValue()) {
                    return Single.h(Boolean.TRUE);
                }
                Log.g(3, "ProductMaskHelper", "[checkNeedToUpdate] start");
                return ProductMaskHelper.a(com.perfectcorp.perfectlib.ph.kernelctrl.sku.h.f41570b).f(new pv0(13));
        }
    }

    @Override // com.perfectcorp.perfectlib.PhotoMakeup.On4SplitScreenIndexSwitchListener
    public Single onIndexSwitched(int i2) {
        return null;
    }

    @Override // com.perfectcorp.perfectlib.MakeupCam.OnPictureTakenListener
    public void onTaken() {
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Predicate
    public boolean test(Object obj) {
        return !TextUtils.isEmpty(((ContentPreloader.FunStickerMetadata.Template) obj).guid);
    }

    public /* synthetic */ y(int i2) {
        this.f41922b = i2;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.BiFunction
    public Object apply(Object obj, Object obj2) {
        ApplyEffectCtrl.Configuration configuration = (ApplyEffectCtrl.Configuration) obj;
        ThreadPoolExecutor threadPoolExecutor = MakeupCamInternal.n;
        return configuration;
    }
}
