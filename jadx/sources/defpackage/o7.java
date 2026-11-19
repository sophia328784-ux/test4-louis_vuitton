package defpackage;

import android.database.sqlite.SQLiteDatabase;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Pair;
import androidx.media3.datasource.BitmapUtil;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DataSourceBitmapLoader;
import androidx.media3.datasource.DataSpec;
import com.batch.android.e.s;
import com.perfectcorp.common.concurrent.Threads;
import com.perfectcorp.common.downloader.UnzipHelper;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.AccessoryCamWrapper;
import com.perfectcorp.perfectlib.ApplyEffectUtility;
import com.perfectcorp.perfectlib.CameraView;
import com.perfectcorp.perfectlib.MakeupCam;
import com.perfectcorp.perfectlib.PerfectEffect;
import com.perfectcorp.perfectlib.RecommendationHandler;
import com.perfectcorp.perfectlib.SkuHandler;
import com.perfectcorp.perfectlib.TagHandler;
import com.perfectcorp.perfectlib.TagType;
import com.perfectcorp.perfectlib.exceptions.ProductMappingFailedException;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.hc.database.ymk.downloadimage.DownloadImageDao;
import com.perfectcorp.perfectlib.internal.DownloadTaskCancelable;
import com.perfectcorp.perfectlib.ph.database.mcsdk.IdRow;
import com.perfectcorp.perfectlib.ph.database.mcsdk.ProductMappingDatabase;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.Sku;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.SkuDao;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.h;
import com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.sdk.a;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.GsonBaseResponse;
import com.perfectcorp.perfectlib.ymk.utility.FileDownloader;
import com.perfectcorp.thirdparty.com.google.common.base.Optional;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableSet;
import com.perfectcorp.thirdparty.com.google.gson.Gson;
import com.perfectcorp.thirdparty.com.google.gson.internal.y;
import com.perfectcorp.thirdparty.io.reactivex.Observable;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.k;
import com.sightcall.libraries.archi.nucleus.Action;
import com.sightcall.libraries.archi.nucleus.CommandsKt;
import java.io.File;
import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class o7 implements Callable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76710b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f76711c;
    public final /* synthetic */ Object d;

    public /* synthetic */ o7(Object obj, Object obj2, int i2) {
        this.f76710b = i2;
        this.f76711c = obj;
        this.d = obj2;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() throws IOException {
        int i2 = this.f76710b;
        int i3 = 0;
        Object obj = this.d;
        Object obj2 = this.f76711c;
        switch (i2) {
            case 0:
                SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
                ImmutableSet immutableSet = ApplyEffectUtility.f39471a;
                ArrayList arrayList = new ArrayList();
                for (h hVar : (Iterable) obj2) {
                    Optional optionalA = SkuDao.a(sQLiteDatabase, hVar.skuGUID, false);
                    if (optionalA.d()) {
                        Sku sku = (Sku) optionalA.c();
                        if (sku.f41269j < hVar.lastModified) {
                            ApplyEffectUtility.cacheCleanerDeleteById(sku.f41266f, true);
                        }
                    }
                    arrayList.add(hVar);
                }
                return arrayList;
            case 1:
                return CommandsKt.C03751.execute$lambda$0((Function0) obj2, (Action) obj);
            case 2:
                String str = (String) obj;
                Reader reader = (Reader) ((Callable) obj2).call();
                try {
                    Gson gson = GsonBaseResponse.f41999a;
                    Class<a> cls = a.class;
                    gson.getClass();
                    com.perfectcorp.thirdparty.com.google.gson.stream.a aVar = new com.perfectcorp.thirdparty.com.google.gson.stream.a(reader);
                    aVar.f42559c = false;
                    Object objC = gson.c(aVar, cls);
                    Gson.f(objC, aVar);
                    Class<a> cls2 = (Class) y.f42554a.get(cls);
                    if (cls2 != null) {
                        cls = cls2;
                    }
                    a aVarCast = cls.cast(objC);
                    if (reader != null) {
                        reader.close();
                    }
                    Log.g(3, "ContentPreloader", "Feature type \"" + str + "\" mapping file preloaded.");
                    return Pair.create(str, aVarCast.a());
                } catch (Throwable th) {
                    if (reader != null) {
                        try {
                            reader.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        break;
                    }
                    throw th;
                }
            case 3:
                DataSourceBitmapLoader dataSourceBitmapLoader = (DataSourceBitmapLoader) obj2;
                byte[] bArr = (byte[]) obj;
                boolean z = dataSourceBitmapLoader.f14380e;
                Bitmap bitmapA = BitmapUtil.a(bArr, bArr.length, dataSourceBitmapLoader.d, dataSourceBitmapLoader.f14379c);
                return z ? BitmapUtil.b(bitmapA) : bitmapA;
            case 4:
                DataSourceBitmapLoader dataSourceBitmapLoader2 = (DataSourceBitmapLoader) obj2;
                Uri uri = (Uri) obj;
                DataSource dataSourceA = dataSourceBitmapLoader2.f14378b.b();
                BitmapFactory.Options options = dataSourceBitmapLoader2.f14379c;
                int i4 = dataSourceBitmapLoader2.d;
                boolean z2 = dataSourceBitmapLoader2.f14380e;
                try {
                    dataSourceA.a(new DataSpec(uri));
                    byte[] bArrCopyOf = new byte[1024];
                    int i5 = 0;
                    while (i3 != -1) {
                        if (i5 == bArrCopyOf.length) {
                            bArrCopyOf = Arrays.copyOf(bArrCopyOf, bArrCopyOf.length * 2);
                        }
                        i3 = dataSourceA.read(bArrCopyOf, i5, bArrCopyOf.length - i5);
                        if (i3 != -1) {
                            i5 += i3;
                        }
                    }
                    byte[] bArrCopyOf2 = Arrays.copyOf(bArrCopyOf, i5);
                    Bitmap bitmapA2 = BitmapUtil.a(bArrCopyOf2, bArrCopyOf2.length, i4, options);
                    if (z2) {
                        bitmapA2 = BitmapUtil.b(bitmapA2);
                        break;
                    }
                    return bitmapA2;
                } finally {
                    dataSourceA.close();
                }
            case 5:
                File file = (File) obj;
                ExecutorService executorService = FileDownloader.f42037a;
                UnzipHelper.c((File) obj2, file);
                return file;
            case 6:
                return new MakeupCam((CameraView) obj2, false, (AccessoryCamWrapper) obj);
            case 7:
                String str2 = (String) obj2;
                String str3 = (String) obj;
                Threads.b();
                if (TextUtils.isEmpty(str2) || TextUtils.isEmpty(str3)) {
                    throw new ProductMappingFailedException("Product GUID and SKU GUID can not be empty");
                }
                ProductMappingDatabase productMappingDatabaseH = ProductMappingDatabase.h();
                productMappingDatabaseH.getClass();
                Objects.requireNonNull(str2, "skuGuid can't be null");
                Objects.requireNonNull(str3, "skuItemGuid can't be null");
                Optional optionalJ = productMappingDatabaseH.j("skuGuid=? AND skuItemGuid=?", new String[]{str2, str3});
                if (!optionalJ.d()) {
                    Log.g(5, "ProductMappingUtility", "Can not get mapped id, continue to try SkuAndShadeIdMapping");
                    com.perfectcorp.perfectlib.ph.database.mcsdk.a aVarH = com.perfectcorp.perfectlib.ph.database.mcsdk.a.h();
                    aVarH.getClass();
                    optionalJ = aVarH.j("skuGuid=?", new String[]{str2});
                    if (!optionalJ.d()) {
                        throw new ProductMappingFailedException("can not get mapped id, skuGuid = ".concat(str2));
                    }
                }
                return (IdRow) optionalJ.c();
            case 8:
                DownloadTaskCancelable downloadTaskCancelable = (DownloadTaskCancelable) obj2;
                downloadTaskCancelable.c();
                Log.g(3, "SkinCare3RecommendationHandler", "[downloadThumbnailsForOlderRecords] Start download the images that haven't downloaded");
                List listQ = DownloadImageDao.d.q(YMKDatabase.b(), DownloadImageDao.Type.SKIN_CARE_3);
                int size = listQ.size();
                Log.g(3, "SkinCare3RecommendationHandler", "[downloadThumbnailsForOlderRecords] " + size + " images need to be downloaded");
                return new k(Observable.fromIterable(listQ).flatMapSingle(new pc(downloadTaskCancelable, new AtomicInteger(), size, (RecommendationHandler.SyncServerCallback) obj)).toList().f(new pv0(9)));
            case 9:
                Log.g(3, "SkuHandler", "[checkNeedToUpdateByEffect] query status. effect=" + ((PerfectEffect) obj2));
                return SkuHandler.d(Collections.singleton((String) obj));
            case 10:
                return TagHandler.c((TagType) obj2, (String) obj);
            default:
                return ((s) obj2).c((String) obj);
        }
    }
}
