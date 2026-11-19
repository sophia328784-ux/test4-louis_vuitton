package com.perfectcorp.perfectlib;

import android.text.TextUtils;
import android.util.Pair;
import com.perfectcorp.common.network.RequestTask;
import com.perfectcorp.common.utility.BasicPreferences;
import com.perfectcorp.common.utility.DatabaseSharedPreferences;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.exceptions.NoShadeFinderProductException;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.internal.AppliedResult;
import com.perfectcorp.perfectlib.internal.DownloadTaskCancelable;
import com.perfectcorp.perfectlib.jniproxy.CUIShadeFinder;
import com.perfectcorp.perfectlib.jniproxy.UIShadeFinderJNI;
import com.perfectcorp.perfectlib.makeupcam.camera.ColorLab32f;
import com.perfectcorp.perfectlib.makeupcam.camera.YMKPrimitiveData;
import com.perfectcorp.perfectlib.ph.template.TemplateUtils;
import com.perfectcorp.perfectlib.ymk.utility.Nulls;
import com.perfectcorp.thirdparty.com.google.common.base.Optional;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import com.perfectcorp.thirdparty.com.google.common.collect.Lists;
import com.perfectcorp.thirdparty.com.google.gson.JsonElement;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function3;
import defpackage.h8;
import defpackage.v7;
import defpackage.xx0;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class z0 implements Function, Function3 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f42056b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f42057c;

    public /* synthetic */ z0(Object obj, int i2) {
        this.f42056b = i2;
        this.f42057c = obj;
    }

    public com.perfectcorp.perfectlib.rh.kernelctrl.networktaskmanager.skincare.d a(Object obj, Object obj2, Object obj3) {
        JsonElement jsonElement;
        RequestTask.Response response = (RequestTask.Response) obj;
        RequestTask.Response response2 = (RequestTask.Response) obj3;
        ((DownloadTaskCancelable) this.f42057c).c();
        com.perfectcorp.perfectlib.rh.kernelctrl.networktaskmanager.skincare.c cVar = (com.perfectcorp.perfectlib.rh.kernelctrl.networktaskmanager.skincare.c) ((RequestTask.Response) obj2).f39358b;
        Objects.requireNonNull(cVar);
        com.perfectcorp.perfectlib.rh.kernelctrl.networktaskmanager.skincare.c.a aVar = cVar.result;
        String string = (aVar == null || (jsonElement = aVar.products) == null) ? null : jsonElement.toString();
        com.perfectcorp.perfectlib.rh.kernelctrl.networktaskmanager.skincare.b.a aVar2 = ((com.perfectcorp.perfectlib.rh.kernelctrl.networktaskmanager.skincare.b) response2.f39358b).result;
        Log.g(3, "SkinCare3RecommendationHandler", "[syncServerInternal] Check inventory status : ".concat(aVar2 != null && "true".equalsIgnoreCase(aVar2.CheckInventory) ? "true" : "false"));
        BasicPreferences basicPreferences = new BasicPreferences(DatabaseSharedPreferences.a("SkinCare3Preferences"));
        ((aVar2 == null || TextUtils.isEmpty(aVar2.CheckInventory)) ? basicPreferences.edit().putString("FEATURE_CHECK_INVENTORY", "false") : basicPreferences.edit().putString("FEATURE_CHECK_INVENTORY", aVar2.CheckInventory)).commit();
        SkinCare3RecommendationHandler.Preferences.f39889a.edit().putString("RECOMMENDATION_EXTRA_INFO", string).commit();
        com.perfectcorp.perfectlib.rh.kernelctrl.networktaskmanager.skincare.d dVar = (com.perfectcorp.perfectlib.rh.kernelctrl.networktaskmanager.skincare.d) response.f39358b;
        Objects.requireNonNull(dVar);
        return dVar;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public Object apply(Object obj) {
        int i2 = this.f42056b;
        Object obj2 = this.f42057c;
        switch (i2) {
            case 0:
                JewelryLookHandler jewelryLookHandler = (JewelryLookHandler) obj2;
                com.perfectcorp.perfectlib.ph.database.ymk.makeup.b bVar = (com.perfectcorp.perfectlib.ph.database.ymk.makeup.b) obj;
                ConcurrentHashMap concurrentHashMap = jewelryLookHandler.f39644c;
                String str = bVar.d;
                Optional optionalF = ApplyEffectUtility.F(str);
                if (optionalF.d()) {
                    concurrentHashMap.put(str, (YMKPrimitiveData.Look) optionalF.c());
                }
                return new LookInfo(concurrentHashMap, bVar, (YMKPrimitiveData.Look) optionalF.g(), jewelryLookHandler.f39643b);
            case 1:
                MakeupCamInternal.ConfigureData configureData = (MakeupCamInternal.ConfigureData) obj2;
                ThreadPoolExecutor threadPoolExecutor = MakeupCamInternal.n;
                return configureData;
            case 2:
                NailLookHandler nailLookHandler = (NailLookHandler) obj2;
                com.perfectcorp.perfectlib.ph.database.ymk.makeup.b bVar2 = (com.perfectcorp.perfectlib.ph.database.ymk.makeup.b) obj;
                ConcurrentHashMap concurrentHashMap2 = nailLookHandler.f39718c;
                String str2 = bVar2.d;
                Optional optionalF2 = ApplyEffectUtility.F(str2);
                if (optionalF2.d()) {
                    concurrentHashMap2.put(str2, (YMKPrimitiveData.Look) optionalF2.c());
                }
                return new LookInfo(concurrentHashMap2, bVar2, (YMKPrimitiveData.Look) optionalF2.g(), nailLookHandler.f39717b);
            case 3:
                AppliedResult appliedResult = (AppliedResult) obj;
                int i3 = PhotoMakeupInternal.n;
                ((AtomicReference) obj2).set(appliedResult.getConfiguration().a().a());
                return appliedResult.getBitmap();
            case 4:
                int i4 = PhotoMakeupInternal.n;
                return ((AppliedResult) obj2).getBitmap();
            case 5:
                ShadeFinderData shadeFinderData = (ShadeFinderData) obj2;
                List list = (List) obj;
                if (list.isEmpty()) {
                    Log.g(3, "ShadeFinderRecommendationHandler", "[sortSkuDatas] skuDatas is empty");
                    throw new NoShadeFinderProductException("skuDatas is empty.");
                }
                Log.g(3, "ShadeFinderRecommendationHandler", "[sortSkuDatas] Collect color array for Venus. skuDatas#size()=" + list.size());
                int size = list.size();
                ColorLab32f[] colorLab32fArr = new ColorLab32f[size];
                for (int i5 = 0; i5 < size; i5++) {
                    colorLab32fArr[i5] = ((ShadeFinderRecommendationHandler.SkuData) list.get(i5)).f39876c;
                }
                LabColorSpace labSkinTone = shadeFinderData.getLabSkinTone();
                ColorLab32f colorLab32f = new ColorLab32f(labSkinTone.getL(), labSkinTone.getA(), labSkinTone.getB());
                Log.g(3, "ShadeFinderRecommendationHandler", "[sortSkuDatas] Get matching results.");
                ShadeFinderRecommendationHandler.SkuData[] skuDataArr = (ShadeFinderRecommendationHandler.SkuData[]) list.toArray(new ShadeFinderRecommendationHandler.SkuData[0]);
                CUIShadeFinder cUIShadeFinder = ShadeFinderRecommendationHandler.ShadeFinderSingleton.f39872a;
                if (!UIShadeFinderJNI.CUIShadeFinder_GetShadeFinderShadeMatching(cUIShadeFinder.f40400a, cUIShadeFinder, colorLab32f, colorLab32fArr, skuDataArr)) {
                    Log.d("ShadeFinderRecommendationHandler", "Get shade finder matching result (L*a*b*) failed.");
                    v7.h("Can't get shade finder matching result.");
                    return null;
                }
                Log.g(3, "ShadeFinderRecommendationHandler", "[sortSkuDatas] skuDatas=" + list);
                Log.g(3, "ShadeFinderRecommendationHandler", "[sortSkuDatas] Sort data by order.");
                Collections.sort(list, new z3());
                Log.g(3, "ShadeFinderRecommendationHandler", "[sortSkuDatas] skuDatas=" + list);
                Log.g(3, "ShadeFinderRecommendationHandler", "[sortSkuDatas] Return result.");
                return list;
            case 6:
            default:
                Pair pair = (Pair) obj;
                return new VtoPalette.SubPalette(((VtoPattern.SubPalette) obj2).d, (SkuInfo) pair.first, (SubItemInfo) pair.second);
            case 7:
                PerfectEffect perfectEffect = (PerfectEffect) obj2;
                if (((Boolean) obj).booleanValue()) {
                    return Single.h(Boolean.TRUE);
                }
                String string = perfectEffect.beautyMode.getFeatureType().toString();
                return ProductMaskHelper.a(Collections.singletonList(string)).f(new h8(string, 4));
            case 8:
                Configuration.ImageSource imageSource = (Configuration.ImageSource) obj2;
                com.perfectcorp.perfectlib.ph.database.ymk.generictag.f fVar = (com.perfectcorp.perfectlib.ph.database.ymk.generictag.f) obj;
                Tag.Builder builder = new Tag.Builder();
                String string2 = Long.toString(fVar.f41190b);
                Objects.requireNonNull(string2);
                builder.f39973a = string2;
                String str3 = fVar.f41191c;
                Objects.requireNonNull(str3);
                builder.f39974b = str3;
                String str4 = fVar.d;
                Objects.requireNonNull(str4);
                builder.f39975c = str4;
                Objects.requireNonNull(imageSource);
                builder.d = imageSource;
                return new Tag(builder);
            case 9:
                VtoDetail.PatternEarringsOrNail patternEarringsOrNail = (VtoDetail.PatternEarringsOrNail) obj2;
                String str5 = (String) obj;
                com.perfectcorp.perfectlib.ph.template.m mVarD = com.perfectcorp.perfectlib.ph.database.ymk.pattern.a.d(YMKDatabase.b(), str5);
                if (mVarD == null) {
                    Log.d("VtoDetailPatternEarrings", "[getPatterns] can not get pattern, ID=" + str5);
                    return Optional.a();
                }
                String strC = SubItemInfo.c(mVarD.a());
                ProductInfo productInfo = patternEarringsOrNail.f40004a;
                Objects.requireNonNull(productInfo);
                Objects.requireNonNull(str5);
                Objects.requireNonNull(strC);
                return Optional.e(new VtoPattern.PatternEarrings(productInfo, str5, strC));
            case 10:
                return new VtoPattern.PaletteMajor(((VtoPalette.PaletteMajor) obj2).d, (SubItemInfo) obj);
            case 11:
                return new VtoPattern.SubPalette(((VtoPalette.SubPalette) obj2).d, (SubItemInfo) obj);
            case 12:
                return new VtoPalette.PaletteMajor(((VtoPattern.PaletteMajor) obj2).d, (SkuInfo) obj);
            case 13:
                VtoPattern.PatternMajor patternMajor = (VtoPattern.PatternMajor) obj2;
                com.perfectcorp.perfectlib.ph.database.ymk.pattern.b bVar3 = (com.perfectcorp.perfectlib.ph.database.ymk.pattern.b) obj;
                ImmutableList immutableListU = ImmutableList.u(Lists.c(com.perfectcorp.perfectlib.ph.template.e.f(TemplateUtils.x(bVar3.f41252b)), new xx0(15)));
                SubItemInfo.Builder builder2 = new SubItemInfo.Builder();
                builder2.a(bVar3.f41252b);
                builder2.f39965c = Nulls.b(immutableListU);
                return new VtoPalette.PatternMajor(patternMajor.d, patternMajor.f40013e, new SubItemInfo(builder2));
        }
    }
}
