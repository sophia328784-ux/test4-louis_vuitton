package com.perfectcorp.perfectlib;

import android.database.sqlite.SQLiteDatabase;
import com.perfectcorp.common.PfCommons;
import com.perfectcorp.common.android.Apk;
import com.perfectcorp.common.downloader.UnzipHelper;
import com.perfectcorp.common.io.IO;
import com.perfectcorp.common.network.ProgressCallback;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.exceptions.FunStickerNotSupportedException;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.hc.database.DBUtility;
import com.perfectcorp.perfectlib.internal.DownloadTaskCancelable;
import com.perfectcorp.perfectlib.makeupcam.camera.FunStickerTemplate;
import com.perfectcorp.perfectlib.ymk.model.SkuBeautyMode$FeatureType;
import com.perfectcorp.thirdparty.io.reactivex.android.schedulers.AndroidSchedulers;
import com.perfectcorp.thirdparty.io.reactivex.functions.Action;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;
import com.perfectcorp.thirdparty.io.reactivex.internal.functions.Functions;
import defpackage.pq0;
import defpackage.s40;
import defpackage.xy0;
import defpackage.yp;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class b0 implements Callable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f40036b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f40037c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f40038e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f40039f;

    public /* synthetic */ b0(Object obj, Object obj2, Object obj3, Object obj4, int i2) {
        this.f40036b = i2;
        this.f40037c = obj;
        this.d = obj2;
        this.f40038e = obj3;
        this.f40039f = obj4;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        switch (this.f40036b) {
            case 0:
                ContentPreloader contentPreloader = (ContentPreloader) this.f40037c;
                String str = (String) this.d;
                ContentPreloader.FunStickerMetadata.Template template = (ContentPreloader.FunStickerMetadata.Template) this.f40038e;
                File file = (File) this.f40039f;
                Log.g(3, "ContentPreloader", "[preloadFunStickerContent] copy component id=" + str);
                String str2 = IO.d(contentPreloader.f39536c) + IO.d(str) + template.downloadURL;
                if (contentPreloader.f39534a) {
                    UnzipHelper.c(new File(str2), file);
                } else {
                    UnzipHelper.d(Apk.c(PfCommons.b(), str2), file);
                }
                defpackage.a.v(3, "[preloadFunStickerContent] validate version id=", str, "ContentPreloader");
                FunStickerTemplate funStickerTemplateA = com.perfectcorp.perfectlib.ph.template.e.a(str, false);
                if (!funStickerTemplateA.o()) {
                    StringBuilder sbR = pq0.r("SDK supports version 5 but template \"", str, "\" is version ");
                    sbR.append(funStickerTemplateA.m());
                    throw new FunStickerNotSupportedException(sbR.toString());
                }
                Log.g(3, "ContentPreloader", "[preloadFunStickerContent] insert component id=" + str);
                SQLiteDatabase sQLiteDatabaseC = YMKDatabase.c();
                DBUtility.i(sQLiteDatabaseC, new yp(0, sQLiteDatabaseC, str));
                contentPreloader.f39541j.add(str);
                return str;
            default:
                final SkuHandler skuHandler = (SkuHandler) this.f40037c;
                final DownloadTaskCancelable downloadTaskCancelable = (DownloadTaskCancelable) this.d;
                final List list = (List) this.f40038e;
                final ProgressCallback progressCallback = (ProgressCallback) this.f40039f;
                if (!PerfectLib.g.f39519h) {
                    Objects.requireNonNull(progressCallback);
                    return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.k(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.i(skuHandler.c(list, false, new s40(progressCallback, 4), downloadTaskCancelable).i(AndroidSchedulers.a()), new xy0(downloadTaskCancelable, 1)));
                }
                final SkuBeautyMode$FeatureType featureType = PerfectEffect.FOUNDATION.beautyMode.getFeatureType();
                com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.k kVarA = ProductMappingUtility.a(Collections.singleton(featureType.toString()));
                xy0 xy0Var = new xy0(downloadTaskCancelable, 0);
                Consumer consumer = Functions.d;
                Action action = Functions.f42607c;
                return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.a(kVarA.b(xy0Var, consumer, action, action, action, action), new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.e(new Callable() { // from class: com.perfectcorp.perfectlib.j4
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        DownloadTaskCancelable downloadTaskCancelable2 = downloadTaskCancelable;
                        if (downloadTaskCancelable2.isCanceled()) {
                            return com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.g.f42660b;
                        }
                        ProductMappingUtility.SkuToProductMapper skuToProductMapper = new ProductMappingUtility.SkuToProductMapper(featureType);
                        ArrayList arrayList = new ArrayList();
                        Iterator it = list.iterator();
                        while (it.hasNext()) {
                            String strA = skuToProductMapper.a((String) it.next());
                            if (!strA.equals(EffectId.INVALID_ID)) {
                                arrayList.add(strA);
                            }
                        }
                        ProgressCallback progressCallback2 = progressCallback;
                        Objects.requireNonNull(progressCallback2);
                        return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.k(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.i(skuHandler.c(arrayList, true, new s40(progressCallback2, 4), downloadTaskCancelable2).i(AndroidSchedulers.a()), new xy0(downloadTaskCancelable2, 2)));
                    }
                }));
        }
    }
}
