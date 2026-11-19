package com.perfectcorp.perfectlib;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.text.TextUtils;
import com.perfectcorp.common.network.DownloadReport;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.exceptions.ContentIssueException;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.hc.database.ymk.idusage.IdUsageDao;
import com.perfectcorp.perfectlib.internal.AppliedResult;
import com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl;
import com.perfectcorp.perfectlib.makeupcam.camera.LiveSettingCtrl;
import com.perfectcorp.perfectlib.makeupcam.camera.YMKPrimitiveData;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.Sku;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.SkuDao;
import com.perfectcorp.perfectlib.ymk.model.BeautyMode;
import com.perfectcorp.perfectlib.ymk.model.YMKFeatures$EventFeature;
import com.perfectcorp.thirdparty.com.google.common.base.Optional;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.functions.BiFunction;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import defpackage.g8;
import java.util.HashMap;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ThreadPoolExecutor;
import net.rtccloud.sdk.Call;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class a0 implements Function, BiFunction {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f40027b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f40028c;
    public final /* synthetic */ Object d;

    public /* synthetic */ a0(Object obj, Object obj2, int i2) {
        this.f40027b = i2;
        this.f40028c = obj;
        this.d = obj2;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public Object apply(Object obj) {
        MakeupItemStatus makeupItemStatus;
        int i2 = 1;
        switch (this.f40027b) {
            case 0:
                ContentPreloader contentPreloader = (ContentPreloader) this.f40028c;
                com.perfectcorp.perfectlib.ph.database.ymk.sku.h hVar = (com.perfectcorp.perfectlib.ph.database.ymk.sku.h) this.d;
                Throwable th = (Throwable) obj;
                Log.e("ContentPreloader", "[preloadSku] failed, id=" + hVar.skuGUID, th);
                contentPreloader.f39539h.a(hVar.skuGUID, new ContentIssueException(th));
                return Single.h(hVar);
            case 1:
                ContentPreloader contentPreloader2 = (ContentPreloader) this.f40028c;
                com.perfectcorp.perfectlib.ph.database.ymk.makeup.b bVar = (com.perfectcorp.perfectlib.ph.database.ymk.makeup.b) this.d;
                Throwable th2 = (Throwable) obj;
                Log.e("ContentPreloader", "[preloadLook] failed, id=" + bVar.d, th2);
                contentPreloader2.f39539h.a(bVar.d, new ContentIssueException(th2));
                return Single.h(bVar);
            case 2:
                ContentPreloader contentPreloader3 = (ContentPreloader) this.f40028c;
                String str = (String) this.d;
                Throwable th3 = (Throwable) obj;
                Log.e("ContentPreloader", "preload ID system content failed, id=" + str, th3);
                contentPreloader3.f39539h.a(str, new ContentIssueException(th3));
                return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p(new g8(str, 2));
            case 3:
                LookHandler lookHandler = (LookHandler) this.f40028c;
                LookInfo lookInfo = (LookInfo) this.d;
                DownloadReport.CompleteReport completeReport = (DownloadReport.CompleteReport) obj;
                Optional optionalF = ApplyEffectUtility.F(lookInfo.f39670b.d);
                if (optionalF.d()) {
                    (((YMKPrimitiveData.Look) optionalF.c()).g.equals(com.perfectcorp.perfectlib.ph.database.ymk.look.d.b.NAIL.d) ? lookHandler.f39667e.f39718c : ((YMKPrimitiveData.Look) optionalF.c()).g.equals(com.perfectcorp.perfectlib.ph.database.ymk.look.d.b.JEWELRY.d) ? lookHandler.f39668f.f39644c : lookHandler.f39666c).put(lookInfo.getGuid(), (YMKPrimitiveData.Look) optionalF.c());
                }
                return completeReport;
            case 4:
                MakeupCamInternal makeupCamInternal = (MakeupCamInternal) this.f40028c;
                String str2 = (String) this.d;
                ApplyEffectCtrl.Configuration configuration = (ApplyEffectCtrl.Configuration) obj;
                ThreadPoolExecutor threadPoolExecutor = MakeupCamInternal.n;
                makeupCamInternal.getClass();
                IdUsageDao.d(YMKDatabase.c(), str2, System.currentTimeMillis());
                MakeupCamInternal.Logger logger = makeupCamInternal.m;
                LiveSettingCtrl liveSettingCtrl = makeupCamInternal.f39699h;
                List listA = configuration.a().a();
                logger.f39713a = str2;
                com.perfectcorp.perfectlib.ph.clflurry.b bVar2 = new com.perfectcorp.perfectlib.ph.clflurry.b(YMKFeatures$EventFeature.Looks, com.perfectcorp.perfectlib.ph.clflurry.b.a.f41140a);
                bVar2.f41949c.put("look_guid", str2);
                bVar2.f(liveSettingCtrl, listA);
                bVar2.c(bVar2.f41949c);
                bVar2.b();
                return configuration;
            case 5:
                PhotoMakeupInternal photoMakeupInternal = (PhotoMakeupInternal) this.f40028c;
                MakeupCamInternal.ConfigureData configureData = (MakeupCamInternal.ConfigureData) this.d;
                int i3 = PhotoMakeupInternal.n;
                com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.s sVarH = Single.h(configureData);
                MakeupCamInternal.Logger logger2 = photoMakeupInternal.l;
                LiveSettingCtrl liveSettingCtrl2 = photoMakeupInternal.f39789j;
                ThreadPoolExecutor threadPoolExecutor2 = MakeupCamInternal.n;
                ThreadPoolExecutor threadPoolExecutor3 = MakeupCamInternal.n;
                return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t(sVarH, new m1(logger2, liveSettingCtrl2, i2)), new z0((AppliedResult) obj, 4));
            case 6:
            default:
                VtoPattern.PaletteMajor paletteMajor = (VtoPattern.PaletteMajor) this.f40028c;
                SkuInfo skuInfo = (SkuInfo) obj;
                return (((Set) this.d).contains(skuInfo.f39943c) || (paletteMajor.d.f39797b == BeautyMode.HAIR_DYE && "hairdye_pattern_one_color_full".equalsIgnoreCase(paletteMajor.f40006a) && com.perfectcorp.perfectlib.ph.database.ymk.pattern.c.c(YMKDatabase.b(), skuInfo.f39943c, "1").isEmpty())) ? Optional.e(skuInfo) : Optional.a();
            case 7:
                HashMap map = (HashMap) this.f40028c;
                JSONArray jSONArray = (JSONArray) this.d;
                try {
                    for (SkinCareProduct.Inventory inventory : (List) obj) {
                        String str3 = (String) map.get(inventory.getId());
                        if (!TextUtils.isEmpty(str3)) {
                            for (int i4 = 0; i4 < jSONArray.length(); i4++) {
                                JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i4);
                                if (jSONObjectOptJSONObject != null && str3.equals(jSONObjectOptJSONObject.optString("productId"))) {
                                    jSONObjectOptJSONObject.put("inventory", inventory.getQuantity());
                                }
                                break;
                            }
                        }
                    }
                    SkinCare3RecommendationHandler.Preferences.f39889a.edit().putString("RECOMMENDATION_EXTRA_INFO", jSONArray.toString()).apply();
                    return com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.g.f42660b;
                } catch (JSONException e2) {
                    Log.e("SkinCare3RecommendationHandler", "[updateInventory] json parse failed", e2);
                    return com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.g.f42660b;
                }
            case 8:
                ConcurrentHashMap concurrentHashMap = (ConcurrentHashMap) this.f40028c;
                ConcurrentHashMap concurrentHashMap2 = (ConcurrentHashMap) this.d;
                com.perfectcorp.perfectlib.ph.database.ymk.sku.h hVar2 = (com.perfectcorp.perfectlib.ph.database.ymk.sku.h) obj;
                String str4 = (String) concurrentHashMap.get(hVar2.skuGUID);
                Objects.requireNonNull(str4);
                int i5 = SkuHandler.AnonymousClass1.f39939b[com.perfectcorp.perfectlib.ph.database.ymk.sku.h.e.b(hVar2.statusCode).ordinal()];
                if (i5 == 1) {
                    makeupItemStatus = MakeupItemStatus.NOT_FOUND;
                } else if (i5 != 2) {
                    Optional optionalA = SkuDao.a(YMKDatabase.b(), hVar2.skuGUID, false);
                    makeupItemStatus = (!optionalA.d() || ((Sku) optionalA.c()).f41269j < hVar2.lastModified) ? MakeupItemStatus.OUTDATED : MakeupItemStatus.UPDATED;
                } else {
                    makeupItemStatus = MakeupItemStatus.NOT_SUPPORTED;
                }
                concurrentHashMap2.put(str4, makeupItemStatus);
                return str4;
        }
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.BiFunction
    public Object apply(Object obj, Object obj2) {
        PhotoMakeupInternal photoMakeupInternal = (PhotoMakeupInternal) this.f40028c;
        Bitmap bitmap = (Bitmap) this.d;
        int i2 = PhotoMakeupInternal.n;
        Matrix matrix = new Matrix();
        matrix.postScale(0.5f, 0.5f);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
        PhotoMakeupInternal.ApplyEffectIdsInfo applyEffectIdsInfo = (PhotoMakeupInternal.ApplyEffectIdsInfo) photoMakeupInternal.m.get(Integer.valueOf(photoMakeupInternal.f39786f.p));
        Objects.requireNonNull(applyEffectIdsInfo, "applyEffectIdsInfo can't be null");
        applyEffectIdsInfo.f39793c = bitmapCreateBitmap;
        applyEffectIdsInfo.f39791a.clear();
        applyEffectIdsInfo.f39791a.addAll((List) obj);
        applyEffectIdsInfo.f39792b.clear();
        applyEffectIdsInfo.f39792b.addAll((List) obj2);
        photoMakeupInternal.m.put(Integer.valueOf(photoMakeupInternal.f39786f.p), applyEffectIdsInfo);
        if (!photoMakeupInternal.f39786f.q) {
            return bitmap;
        }
        PhotoMakeupInternal.ApplyEffectIdsInfo applyEffectIdsInfo2 = (PhotoMakeupInternal.ApplyEffectIdsInfo) photoMakeupInternal.m.get(0);
        PhotoMakeupInternal.ApplyEffectIdsInfo applyEffectIdsInfo3 = (PhotoMakeupInternal.ApplyEffectIdsInfo) photoMakeupInternal.m.get(1);
        PhotoMakeupInternal.ApplyEffectIdsInfo applyEffectIdsInfo4 = (PhotoMakeupInternal.ApplyEffectIdsInfo) photoMakeupInternal.m.get(2);
        PhotoMakeupInternal.ApplyEffectIdsInfo applyEffectIdsInfo5 = (PhotoMakeupInternal.ApplyEffectIdsInfo) photoMakeupInternal.m.get(3);
        Objects.requireNonNull(applyEffectIdsInfo2, "leftTop can't be null");
        Objects.requireNonNull(applyEffectIdsInfo3, "rightTop can't be null");
        Objects.requireNonNull(applyEffectIdsInfo4, "leftDown can't be null");
        Objects.requireNonNull(applyEffectIdsInfo5, "rightDown can't be null");
        int width = applyEffectIdsInfo2.f39793c.getWidth();
        int height = applyEffectIdsInfo2.f39793c.getHeight();
        Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(width << 1, height << 1, Bitmap.Config.ARGB_4444);
        Canvas canvas = new Canvas(bitmapCreateBitmap2);
        canvas.drawBitmap(applyEffectIdsInfo2.f39793c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, (Paint) null);
        Bitmap bitmap2 = applyEffectIdsInfo3.f39793c;
        float f2 = width;
        canvas.drawBitmap(bitmap2, f2, Call.Parameters.DEFAULT_CAMERA_ZOOM, (Paint) null);
        Bitmap bitmap3 = applyEffectIdsInfo4.f39793c;
        float f3 = height;
        canvas.drawBitmap(bitmap3, Call.Parameters.DEFAULT_CAMERA_ZOOM, f3, (Paint) null);
        canvas.drawBitmap(applyEffectIdsInfo5.f39793c, f2, f3, (Paint) null);
        return bitmapCreateBitmap2;
    }
}
