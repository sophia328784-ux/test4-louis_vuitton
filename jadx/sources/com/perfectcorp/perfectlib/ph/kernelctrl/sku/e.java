package com.perfectcorp.perfectlib.ph.kernelctrl.sku;

import android.text.TextUtils;
import com.perfectcorp.common.downloader.UnzipHelper;
import com.perfectcorp.common.utility.FileUtils;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.DownloadFolderHelper;
import com.perfectcorp.thirdparty.com.google.common.hash.Hashing;
import com.perfectcorp.thirdparty.com.google.common.io.Files;
import java.io.File;
import java.io.IOException;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public class e<V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f41559a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Throwable f41560b;

    public static class a extends c {
        public a(com.perfectcorp.perfectlib.ph.database.ymk.sku.h hVar, boolean z) {
            super(f.a(hVar, f.a.f41563a), z);
        }

        @Override // com.perfectcorp.perfectlib.ph.kernelctrl.sku.e.b
        public final String a() {
            return this.f41561a.f41566a.content_zip_md5;
        }

        @Override // com.perfectcorp.perfectlib.ph.kernelctrl.sku.e.c
        public final String d() {
            boolean z = this.f41562b;
            f.c cVar = this.f41561a;
            return z ? DownloadFolderHelper.c(cVar).concat("_temp") : DownloadFolderHelper.c(cVar);
        }
    }

    public interface b {
        String a();
    }

    public static abstract class c implements b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final f.c f41561a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f41562b;

        public c(f.c cVar, boolean z) {
            this.f41561a = cVar;
            this.f41562b = z;
        }

        public void b() {
            boolean z = this.f41562b;
            File file = new File(d());
            f.c cVar = this.f41561a;
            File file2 = new File(DownloadFolderHelper.c(cVar).concat("_temp"));
            File file3 = new File(DownloadFolderHelper.a(cVar));
            try {
                UnzipHelper.c(file3, file2);
                if (!z) {
                    if (file.exists()) {
                        FileUtils.a(file2, file);
                    } else if (!file2.renameTo(file)) {
                        throw new IOException("Can't rename src=\"" + file2 + "\" to dst=\"" + file + "\"");
                    }
                }
                if (!z) {
                    FileUtils.c(file2);
                }
                FileUtils.c(file3);
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    if (!z) {
                        FileUtils.c(file2);
                    }
                    FileUtils.c(file3);
                    throw th2;
                }
            }
        }

        public boolean c() {
            File file = new File(DownloadFolderHelper.a(this.f41561a));
            try {
                if (!file.exists()) {
                    Log.g(3, "SkuDownloadFileHandlers", "[isFileReady] downloadFile=" + file + ", isFileExisting=false");
                    return false;
                }
                String strA = a();
                String string = "";
                try {
                    string = Files.a(new File(file.getPath())).a(Hashing.b()).toString();
                } catch (Throwable th) {
                    Log.e("SkuDownloader", "", th);
                }
                boolean zEquals = TextUtils.equals(strA, string);
                Log.g(3, "SkuDownloadFileHandlers", "[isFileReady] downloadFile=" + file + ", isFileExisting=true, isValidMD5=" + zEquals);
                if (zEquals) {
                    return true;
                }
                throw new RuntimeException("MD5 check failed");
            } catch (Throwable unused) {
                FileUtils.c(file);
                return false;
            }
        }

        public abstract String d();
    }

    public static class d extends c {
        public d(com.perfectcorp.perfectlib.ph.database.ymk.sku.h hVar, boolean z) {
            super(f.a(hVar, f.a.f41564b), true);
        }

        @Override // com.perfectcorp.perfectlib.ph.kernelctrl.sku.e.b
        public final String a() {
            return this.f41561a.f41566a.sku_images_room_zip_md5;
        }

        @Override // com.perfectcorp.perfectlib.ph.kernelctrl.sku.e.c
        public final String d() {
            boolean z = this.f41562b;
            f.c cVar = this.f41561a;
            return z ? DownloadFolderHelper.c(cVar).concat("_temp") : DownloadFolderHelper.c(cVar);
        }
    }

    public e(Object obj) {
        Objects.requireNonNull(obj);
        this.f41559a = obj;
        this.f41560b = null;
    }

    public final Object a() throws Throwable {
        Object obj = this.f41559a;
        if (obj != null) {
            return obj;
        }
        throw this.f41560b;
    }

    public e(Throwable th) {
        Objects.requireNonNull(th);
        this.f41560b = th;
        this.f41559a = null;
    }
}
