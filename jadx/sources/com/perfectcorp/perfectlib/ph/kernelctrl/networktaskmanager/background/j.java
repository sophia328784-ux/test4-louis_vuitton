package com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.background;

import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.perfectcorp.common.gson.GsonHelper;
import com.perfectcorp.common.utility.FileUtils;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.common.utility.MoreCollections;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.hc.database.DBUtility;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.DownloadFolderHelper;
import com.perfectcorp.perfectlib.ymk.utility.FileDownloader;
import com.perfectcorp.thirdparty.com.google.common.hash.Hashing;
import com.perfectcorp.thirdparty.com.google.common.io.Files;
import com.perfectcorp.thirdparty.com.google.gson.Gson;
import com.perfectcorp.thirdparty.com.google.gson.JsonElement;
import com.perfectcorp.thirdparty.com.google.gson.JsonParser;
import com.perfectcorp.thirdparty.io.reactivex.functions.Action;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.k;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.n;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.x;
import com.perfectcorp.thirdparty.io.reactivex.schedulers.Schedulers;
import defpackage.az;
import defpackage.d21;
import defpackage.d81;
import defpackage.h8;
import defpackage.la0;
import defpackage.md;
import defpackage.na0;
import defpackage.o2;
import defpackage.o7;
import defpackage.tr;
import defpackage.w21;
import defpackage.xw;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class j implements Function {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f41443b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ a.c f41444c;
    public final /* synthetic */ AtomicReference d;

    public /* synthetic */ j(a.c cVar, AtomicReference atomicReference) {
        this.f41444c = cVar;
        this.d = atomicReference;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public final Object apply(Object obj) {
        int i2 = this.f41443b;
        final int i3 = 2;
        AtomicReference atomicReference = this.d;
        final int i4 = 1;
        switch (i2) {
            case 0:
                final b bVar = (b) obj;
                atomicReference.set(bVar);
                Objects.requireNonNull(bVar);
                final a.c cVar = this.f41444c;
                return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.h(new t(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.c(new a(cVar, bVar, i4)).j(Schedulers.f43170c), new Function() { // from class: com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.background.e
                    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
                    public final Object apply(Object obj2) throws IOException {
                        int i5 = i4;
                        Object obj3 = bVar;
                        final a.c cVar2 = cVar;
                        switch (i5) {
                            case 0:
                                final b bVar2 = (b) obj3;
                                final File file = (File) obj2;
                                Objects.requireNonNull(file);
                                return new n(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.h(new p(new Callable() { // from class: com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.background.f
                                    @Override // java.util.concurrent.Callable
                                    public final Object call() throws IOException {
                                        StringBuilder sb = new StringBuilder("[parseTemplate] start. guid=");
                                        b bVar3 = bVar2;
                                        String str = bVar3.f41423a;
                                        sb.append(str);
                                        Log.g(3, "BackgroundDownloader", sb.toString());
                                        com.perfectcorp.perfectlib.ph.database.ymk.background.a.C0135a c0135a = new com.perfectcorp.perfectlib.ph.database.ymk.background.a.C0135a();
                                        c0135a.f41155a = str;
                                        c0135a.f41157c = bVar3.f41424b.f41164b;
                                        c0135a.f41158e = bVar3.f41426e;
                                        File file2 = file;
                                        c0135a.f41159f = file2.getCanonicalPath();
                                        File file3 = new File(file2, "background_template.json");
                                        if (file3.exists()) {
                                            FileReader fileReader = new FileReader(file3);
                                            try {
                                                new JsonParser();
                                                JsonElement jsonElementB = JsonParser.b(fileReader);
                                                fileReader.close();
                                                c0135a.d = 2;
                                                Objects.requireNonNull(jsonElementB);
                                                Gson gson = GsonHelper.f39260a;
                                                c0135a.g = gson.l(gson.h(jsonElementB, com.perfectcorp.perfectlib.ph.database.ymk.background.a.b.class), com.perfectcorp.perfectlib.ph.database.ymk.background.a.b.class);
                                            } catch (Throwable th) {
                                                try {
                                                    fileReader.close();
                                                } catch (Throwable th2) {
                                                    th.addSuppressed(th2);
                                                }
                                                throw th;
                                            }
                                        } else {
                                            c0135a.d = 1;
                                        }
                                        com.perfectcorp.perfectlib.ph.database.ymk.background.a aVar = new com.perfectcorp.perfectlib.ph.database.ymk.background.a(c0135a);
                                        List listE = aVar.e();
                                        List listD = aVar.d();
                                        File file4 = new File(aVar.c());
                                        if ((MoreCollections.a(listE) && MoreCollections.a(listD)) || !file4.exists()) {
                                            md.k(tr.g("Parse background failed, some files not exists, please check guid=", str));
                                            return null;
                                        }
                                        a.c cVar3 = cVar2;
                                        cVar3.b();
                                        cVar3.f41421c.onNext(Double.valueOf(0.95d));
                                        return aVar;
                                    }
                                }).f(new d81(bVar2, 0)), new d81(bVar2, 1)), new Function() { // from class: com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.background.g
                                    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
                                    public final Object apply(Object obj4) {
                                        final com.perfectcorp.perfectlib.ph.database.ymk.background.a aVar = (com.perfectcorp.perfectlib.ph.database.ymk.background.a) obj4;
                                        final a.c cVar3 = cVar2;
                                        return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.i(new Action() { // from class: com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.background.i
                                            @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Action
                                            public final void run() {
                                                StringBuilder sb = new StringBuilder("[insertToDb] start. guid=");
                                                com.perfectcorp.perfectlib.ph.database.ymk.background.a aVar2 = aVar;
                                                sb.append(aVar2.guid);
                                                Log.g(3, "BackgroundDownloader", sb.toString());
                                                SQLiteDatabase sQLiteDatabaseC = YMKDatabase.c();
                                                DBUtility.i(sQLiteDatabaseC, new w21(sQLiteDatabaseC, aVar2, 24));
                                                cVar3.f41421c.onNext(Double.valueOf(1.0d));
                                            }
                                        }).e(new xw(aVar, 14)).g(new o2(aVar, 25));
                                    }
                                });
                            case 1:
                                b bVar3 = (b) obj3;
                                File file2 = (File) obj2;
                                if (!TextUtils.isEmpty(bVar3.d)) {
                                    if (!TextUtils.equals(bVar3.d, Files.a(file2).a(Hashing.b()).toString())) {
                                        az.o("MD5 check failed");
                                        return null;
                                    }
                                }
                                cVar2.b();
                                cVar2.f41421c.onNext(Double.valueOf(0.8500000000000001d));
                                return file2;
                            default:
                                File file3 = (File) obj3;
                                cVar2.b();
                                return file3;
                        }
                    }
                }).f(new d81(bVar, 2)), new d81(bVar, 3));
            default:
                File file = (File) obj;
                final b bVar2 = (b) atomicReference.get();
                String str = bVar2.f41423a;
                Objects.requireNonNull(str);
                Objects.requireNonNull(file);
                Log.g(3, "BackgroundDownloader", "[createUnzipSingle] start. guid=".concat(str));
                final String str2 = DownloadFolderHelper.b().concat("/background") + "/" + str;
                final String strConcat = str2.concat("_temp");
                final File file2 = new File(str2);
                final File file3 = new File(strConcat);
                ExecutorService executorService = FileDownloader.f42037a;
                x xVarJ = new p(new o7(file, file3, 5)).j(FileDownloader.f42038b);
                final a.c cVar2 = this.f41444c;
                com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.h hVar = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.h(new k(new t(new t(xVarJ, new Function() { // from class: com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.background.e
                    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
                    public final Object apply(Object obj2) throws IOException {
                        int i5 = i3;
                        Object obj3 = file2;
                        final a.c cVar3 = cVar2;
                        switch (i5) {
                            case 0:
                                final b bVar3 = (b) obj3;
                                final File file4 = (File) obj2;
                                Objects.requireNonNull(file4);
                                return new n(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.h(new p(new Callable() { // from class: com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.background.f
                                    @Override // java.util.concurrent.Callable
                                    public final Object call() throws IOException {
                                        StringBuilder sb = new StringBuilder("[parseTemplate] start. guid=");
                                        b bVar4 = bVar3;
                                        String str3 = bVar4.f41423a;
                                        sb.append(str3);
                                        Log.g(3, "BackgroundDownloader", sb.toString());
                                        com.perfectcorp.perfectlib.ph.database.ymk.background.a.C0135a c0135a = new com.perfectcorp.perfectlib.ph.database.ymk.background.a.C0135a();
                                        c0135a.f41155a = str3;
                                        c0135a.f41157c = bVar4.f41424b.f41164b;
                                        c0135a.f41158e = bVar4.f41426e;
                                        File file5 = file4;
                                        c0135a.f41159f = file5.getCanonicalPath();
                                        File file6 = new File(file5, "background_template.json");
                                        if (file6.exists()) {
                                            FileReader fileReader = new FileReader(file6);
                                            try {
                                                new JsonParser();
                                                JsonElement jsonElementB = JsonParser.b(fileReader);
                                                fileReader.close();
                                                c0135a.d = 2;
                                                Objects.requireNonNull(jsonElementB);
                                                Gson gson = GsonHelper.f39260a;
                                                c0135a.g = gson.l(gson.h(jsonElementB, com.perfectcorp.perfectlib.ph.database.ymk.background.a.b.class), com.perfectcorp.perfectlib.ph.database.ymk.background.a.b.class);
                                            } catch (Throwable th) {
                                                try {
                                                    fileReader.close();
                                                } catch (Throwable th2) {
                                                    th.addSuppressed(th2);
                                                }
                                                throw th;
                                            }
                                        } else {
                                            c0135a.d = 1;
                                        }
                                        com.perfectcorp.perfectlib.ph.database.ymk.background.a aVar = new com.perfectcorp.perfectlib.ph.database.ymk.background.a(c0135a);
                                        List listE = aVar.e();
                                        List listD = aVar.d();
                                        File file7 = new File(aVar.c());
                                        if ((MoreCollections.a(listE) && MoreCollections.a(listD)) || !file7.exists()) {
                                            md.k(tr.g("Parse background failed, some files not exists, please check guid=", str3));
                                            return null;
                                        }
                                        a.c cVar4 = cVar3;
                                        cVar4.b();
                                        cVar4.f41421c.onNext(Double.valueOf(0.95d));
                                        return aVar;
                                    }
                                }).f(new d81(bVar3, 0)), new d81(bVar3, 1)), new Function() { // from class: com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.background.g
                                    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
                                    public final Object apply(Object obj4) {
                                        final com.perfectcorp.perfectlib.ph.database.ymk.background.a aVar = (com.perfectcorp.perfectlib.ph.database.ymk.background.a) obj4;
                                        final a.c cVar4 = cVar3;
                                        return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.i(new Action() { // from class: com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.background.i
                                            @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Action
                                            public final void run() {
                                                StringBuilder sb = new StringBuilder("[insertToDb] start. guid=");
                                                com.perfectcorp.perfectlib.ph.database.ymk.background.a aVar2 = aVar;
                                                sb.append(aVar2.guid);
                                                Log.g(3, "BackgroundDownloader", sb.toString());
                                                SQLiteDatabase sQLiteDatabaseC = YMKDatabase.c();
                                                DBUtility.i(sQLiteDatabaseC, new w21(sQLiteDatabaseC, aVar2, 24));
                                                cVar4.f41421c.onNext(Double.valueOf(1.0d));
                                            }
                                        }).e(new xw(aVar, 14)).g(new o2(aVar, 25));
                                    }
                                });
                            case 1:
                                b bVar4 = (b) obj3;
                                File file5 = (File) obj2;
                                if (!TextUtils.isEmpty(bVar4.d)) {
                                    if (!TextUtils.equals(bVar4.d, Files.a(file5).a(Hashing.b()).toString())) {
                                        az.o("MD5 check failed");
                                        return null;
                                    }
                                }
                                cVar3.b();
                                cVar3.f41421c.onNext(Double.valueOf(0.8500000000000001d));
                                return file5;
                            default:
                                File file6 = (File) obj3;
                                cVar3.b();
                                return file6;
                        }
                    }
                }).i(Schedulers.f43170c), new Function() { // from class: com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.background.d
                    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
                    public final Object apply(Object obj2) throws IOException {
                        File file4 = file2;
                        boolean zExists = file4.exists();
                        File file5 = file3;
                        if (zExists) {
                            FileUtils.a(file5, file4);
                        } else if (!file5.renameTo(file4)) {
                            az.o(d21.l("Can't rename src='", strConcat, "' to dst='", str2, "'"));
                            return null;
                        }
                        a.c cVar3 = cVar2;
                        cVar3.b();
                        cVar3.f41421c.onNext(Double.valueOf(0.9d));
                        return file4;
                    }
                }), new la0(file, file3, 1)).f(new h8(str, 7)), new na0(str, file2, 10));
                final int i5 = 0;
                return new n(hVar, new Function() { // from class: com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.background.e
                    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
                    public final Object apply(Object obj2) throws IOException {
                        int i6 = i5;
                        Object obj3 = bVar2;
                        final a.c cVar3 = cVar2;
                        switch (i6) {
                            case 0:
                                final b bVar3 = (b) obj3;
                                final File file4 = (File) obj2;
                                Objects.requireNonNull(file4);
                                return new n(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.h(new p(new Callable() { // from class: com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.background.f
                                    @Override // java.util.concurrent.Callable
                                    public final Object call() throws IOException {
                                        StringBuilder sb = new StringBuilder("[parseTemplate] start. guid=");
                                        b bVar4 = bVar3;
                                        String str3 = bVar4.f41423a;
                                        sb.append(str3);
                                        Log.g(3, "BackgroundDownloader", sb.toString());
                                        com.perfectcorp.perfectlib.ph.database.ymk.background.a.C0135a c0135a = new com.perfectcorp.perfectlib.ph.database.ymk.background.a.C0135a();
                                        c0135a.f41155a = str3;
                                        c0135a.f41157c = bVar4.f41424b.f41164b;
                                        c0135a.f41158e = bVar4.f41426e;
                                        File file5 = file4;
                                        c0135a.f41159f = file5.getCanonicalPath();
                                        File file6 = new File(file5, "background_template.json");
                                        if (file6.exists()) {
                                            FileReader fileReader = new FileReader(file6);
                                            try {
                                                new JsonParser();
                                                JsonElement jsonElementB = JsonParser.b(fileReader);
                                                fileReader.close();
                                                c0135a.d = 2;
                                                Objects.requireNonNull(jsonElementB);
                                                Gson gson = GsonHelper.f39260a;
                                                c0135a.g = gson.l(gson.h(jsonElementB, com.perfectcorp.perfectlib.ph.database.ymk.background.a.b.class), com.perfectcorp.perfectlib.ph.database.ymk.background.a.b.class);
                                            } catch (Throwable th) {
                                                try {
                                                    fileReader.close();
                                                } catch (Throwable th2) {
                                                    th.addSuppressed(th2);
                                                }
                                                throw th;
                                            }
                                        } else {
                                            c0135a.d = 1;
                                        }
                                        com.perfectcorp.perfectlib.ph.database.ymk.background.a aVar = new com.perfectcorp.perfectlib.ph.database.ymk.background.a(c0135a);
                                        List listE = aVar.e();
                                        List listD = aVar.d();
                                        File file7 = new File(aVar.c());
                                        if ((MoreCollections.a(listE) && MoreCollections.a(listD)) || !file7.exists()) {
                                            md.k(tr.g("Parse background failed, some files not exists, please check guid=", str3));
                                            return null;
                                        }
                                        a.c cVar4 = cVar3;
                                        cVar4.b();
                                        cVar4.f41421c.onNext(Double.valueOf(0.95d));
                                        return aVar;
                                    }
                                }).f(new d81(bVar3, 0)), new d81(bVar3, 1)), new Function() { // from class: com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.background.g
                                    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
                                    public final Object apply(Object obj4) {
                                        final com.perfectcorp.perfectlib.ph.database.ymk.background.a aVar = (com.perfectcorp.perfectlib.ph.database.ymk.background.a) obj4;
                                        final a.c cVar4 = cVar3;
                                        return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.i(new Action() { // from class: com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.background.i
                                            @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Action
                                            public final void run() {
                                                StringBuilder sb = new StringBuilder("[insertToDb] start. guid=");
                                                com.perfectcorp.perfectlib.ph.database.ymk.background.a aVar2 = aVar;
                                                sb.append(aVar2.guid);
                                                Log.g(3, "BackgroundDownloader", sb.toString());
                                                SQLiteDatabase sQLiteDatabaseC = YMKDatabase.c();
                                                DBUtility.i(sQLiteDatabaseC, new w21(sQLiteDatabaseC, aVar2, 24));
                                                cVar4.f41421c.onNext(Double.valueOf(1.0d));
                                            }
                                        }).e(new xw(aVar, 14)).g(new o2(aVar, 25));
                                    }
                                });
                            case 1:
                                b bVar4 = (b) obj3;
                                File file5 = (File) obj2;
                                if (!TextUtils.isEmpty(bVar4.d)) {
                                    if (!TextUtils.equals(bVar4.d, Files.a(file5).a(Hashing.b()).toString())) {
                                        az.o("MD5 check failed");
                                        return null;
                                    }
                                }
                                cVar3.b();
                                cVar3.f41421c.onNext(Double.valueOf(0.8500000000000001d));
                                return file5;
                            default:
                                File file6 = (File) obj3;
                                cVar3.b();
                                return file6;
                        }
                    }
                }).g(new na0(bVar2, file, 11));
        }
    }

    public /* synthetic */ j(a.c cVar, AtomicReference atomicReference, a.C0164a c0164a) {
        this.f41444c = cVar;
        this.d = atomicReference;
    }
}
