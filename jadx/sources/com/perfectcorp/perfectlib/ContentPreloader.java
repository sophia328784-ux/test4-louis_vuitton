package com.perfectcorp.perfectlib;

import android.text.TextUtils;
import com.perfectcorp.common.PfCommons;
import com.perfectcorp.common.android.Apk;
import com.perfectcorp.common.downloader.UnzipHelper;
import com.perfectcorp.common.io.IO;
import com.perfectcorp.common.utility.FileUtils;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.exceptions.LookNotSupportedException;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.hc.database.DBUtility;
import com.perfectcorp.perfectlib.makeupcam.camera.YMKPrimitiveData;
import com.perfectcorp.perfectlib.ph.template.TemplateUtils;
import com.perfectcorp.perfectlib.ymk.kernelctrl.BaseConfigHelper;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.DownloadFolderHelper;
import com.perfectcorp.thirdparty.com.google.common.base.Preconditions;
import com.perfectcorp.thirdparty.com.google.common.io.ByteStreams;
import com.perfectcorp.thirdparty.io.reactivex.Completable;
import defpackage.a8;
import defpackage.ct0;
import defpackage.d21;
import defpackage.d8;
import defpackage.mt;
import defpackage.n00;
import defpackage.r6;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes3.dex */
final class ContentPreloader {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f39534a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f39535b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f39536c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f39537e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f39538f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final PerfectLib.InitialCallbackWrapper f39539h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Configuration.ImageSource f39540i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Set f39541j = Collections.newSetFromMap(new ConcurrentHashMap());

    public static final class FunStickerMetadata {
        final List<Template> templates = Collections.EMPTY_LIST;

        public static final class Template {
            final String guid = "";
            final String downloadURL = "";
        }
    }

    public static final class LookVersions {
        List<LookVersion> looks;

        public static final class LookVersion {
            String guid;
            float makeupVer;
        }
    }

    public static final class SkuSetIds {
        List<SkuSetId> skuSets;

        public static final class SkuSetId {
            String guid;
            float makeupVer;
        }
    }

    public static final class SkuVersions {
        List<SkuVersion> skus;

        public static final class SkuVersion {
            String guid;
            float makeupVer;
            float skuFormatVer;
        }
    }

    public ContentPreloader(Path path, PerfectLib.InitialCallbackWrapper initialCallbackWrapper, Configuration.ImageSource imageSource, Configuration.FunStickerQuality funStickerQuality) {
        String strConcat;
        String strR = n00.r(BaseConfigHelper.f41974c, "preload/", new StringBuilder());
        File file = new File(strR);
        String str = funStickerQuality == Configuration.FunStickerQuality.SD ? "SD" : "HD";
        if (file.isDirectory()) {
            Log.g(3, "ContentPreloader", "preload test folder exist! use this folder to preload content");
            this.f39534a = true;
            this.f39535b = strR.concat("Built-in");
            this.f39536c = d21.k(strR, "FunSticker/", str, "/");
            this.d = strR.concat("SKU/");
            this.f39537e = strR.concat("SKU_SET/");
            this.f39538f = strR.concat("LOOK/");
            strConcat = strR.concat("MAPPING/");
        } else {
            if (!path.f39735a) {
                mt.i("External path isn't supported.");
                throw null;
            }
            Log.g(3, "ContentPreloader", "use assets folder to preload content");
            this.f39534a = false;
            String strD = IO.d(path.f39736b);
            this.f39535b = strD.concat("Built-in");
            this.f39536c = d21.k(strD, "FunSticker/", str, "/");
            this.d = strD.concat("SKU/");
            this.f39537e = strD.concat("SKU_SET/");
            this.f39538f = strD.concat("LOOK/");
            strConcat = strD.concat("MAPPING/");
        }
        this.g = strConcat;
        this.f39539h = initialCallbackWrapper;
        this.f39540i = imageSource;
    }

    public static String b(String str) {
        return TextUtils.isEmpty(str) ? "" : str.substring(str.lastIndexOf("/") + 1);
    }

    public final File a(com.perfectcorp.perfectlib.ph.database.ymk.sku.h hVar, boolean z, boolean z2) {
        String strConcat = IO.d(this.d).concat(IO.d(hVar.skuGUID));
        String strB = b(hVar.content_zip);
        String strA = DownloadFolderHelper.a(com.perfectcorp.perfectlib.ph.kernelctrl.sku.f.a(hVar, com.perfectcorp.perfectlib.ph.kernelctrl.sku.f.a.f41563a));
        try {
            d(strConcat, strB, strA);
            if (!new File(strA).exists()) {
                ct0.o(hVar.skuGUID, "No content ZIP. SKU guid=");
                return null;
            }
            com.perfectcorp.perfectlib.ph.kernelctrl.sku.e.a aVar = new com.perfectcorp.perfectlib.ph.kernelctrl.sku.e.a(hVar, z);
            Preconditions.i(aVar.c());
            aVar.b();
            File file = new File(aVar.d());
            if (file.exists()) {
                return file;
            }
            ct0.o(hVar.skuGUID, "Content ZIP file unzip failed. SKU guid=");
            return null;
        } catch (FileNotFoundException e2) {
            if (!z2) {
                throw e2;
            }
            Log.d("ContentPreloader", "content zip is not in asset folder. SKU guid=" + hVar.skuGUID);
            return null;
        }
    }

    public final void c(String str, String str2) {
        Log.g(3, "ContentPreloader", "[preloadIdSystemContent] copy component id=" + str);
        File file = new File(DownloadFolderHelper.d(), str);
        if (this.f39534a) {
            UnzipHelper.c(new File(str2), file);
        } else {
            UnzipHelper.d(Apk.c(PfCommons.b(), str2), file);
        }
        Log.g(3, "ContentPreloader", "[preloadIdSystemContent] unzip from ".concat(str2));
        Log.g(3, "ContentPreloader", "[preloadIdSystemContent] to " + file);
        Log.g(3, "ContentPreloader", "[preloadIdSystemContent] parse and insert component id=" + str);
        DBUtility.i(YMKDatabase.c(), new r6(TemplateUtils.d(IO.d(file.getAbsolutePath()), YMKPrimitiveData.SourceType.DOWNLOAD, null, null), str, 21));
        this.f39541j.add(str);
    }

    public final void d(String str, String str2, String str3) {
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        File parentFile = new File(str3).getParentFile();
        Objects.requireNonNull(parentFile);
        parentFile.mkdirs();
        if (this.f39534a) {
            FileUtils.a(new File(str, str2), new File(str3));
            return;
        }
        String str4 = IO.d(str) + str2;
        try {
            InputStream inputStreamC = Apk.c(PfCommons.b(), str4);
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(str3);
                try {
                    ByteStreams.a(inputStreamC, fileOutputStream);
                    fileOutputStream.close();
                    inputStreamC.close();
                } catch (Throwable th) {
                    try {
                        fileOutputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                if (inputStreamC != null) {
                    try {
                        inputStreamC.close();
                    } catch (Throwable th4) {
                        th3.addSuppressed(th4);
                    }
                }
                throw th3;
            }
        } catch (Throwable th5) {
            Log.e("ContentPreloader", "Copy asset files failed, file=".concat(str4), th5);
            throw th5;
        }
    }

    public final void e(HashMap map, com.perfectcorp.perfectlib.ph.database.ymk.makeup.b bVar, Float f2, Float f3) {
        String str = bVar.d;
        if (Float.compare(f2.floatValue(), 1.0f) >= 0 && Float.compare(f3.floatValue(), f2.floatValue()) >= 0) {
            map.put(str, bVar);
            return;
        }
        String str2 = str + " makeupVer is " + f2 + ", it's out of version, current is " + f3;
        Log.d("ContentPreloader", "[putValidMetadata] ".concat(str2));
        this.f39539h.a(str, new LookNotSupportedException(str2));
    }

    public final String f(String str) {
        return FileUtils.e(this.f39534a ? new FileInputStream(str) : Apk.c(PfCommons.b(), str));
    }

    public final void g(String str, String str2) {
        Log.g(3, "ContentPreloader", "reloading ");
        c(str, IO.d(this.d) + str2);
    }

    public final Completable preload() {
        return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.s(new a8(2), new x(this, 2), new d8(3), true);
    }
}
