package com.perfectcorp.thirdparty.com.getkeepsafe.relinker;

import android.content.Context;
import android.os.Build;
import android.util.Log;
import com.sensorsdata.analytics.android.sdk.plugin.property.beans.SAPropertyFilter;
import com.sightcall.universal.media.offline.FileUtils;
import defpackage.md;
import defpackage.tr;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashSet;
import java.util.Locale;
import java.util.zip.ZipFile;

/* JADX INFO: loaded from: classes3.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HashSet f42065a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ReLinker.b f42066b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final a f42067c;

    public c() {
        f fVar = new f();
        a aVar = new a();
        this.f42065a = new HashSet();
        this.f42066b = fVar;
        this.f42067c = aVar;
    }

    public static void b(String str, Object... objArr) {
        String.format(Locale.US, str, objArr);
    }

    public final void a(Context context, String str) throws Throwable {
        String str2;
        a.C0204a c0204a;
        String[] strArrE;
        InputStream inputStream;
        InputStream inputStream2;
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2;
        if (context == null) {
            str2 = "Given context is null";
        } else {
            if (str != null && str.length() != 0) {
                b("Beginning load of %s...", str);
                ReLinker.b bVar = this.f42066b;
                HashSet hashSet = this.f42065a;
                if (hashSet.contains(str)) {
                    b("%s already loaded previously!", str);
                    return;
                }
                try {
                    ((f) bVar).getClass();
                    System.loadLibrary(str);
                    hashSet.add(str);
                    b("%s (%s) was loaded normally!", str, null);
                    return;
                } catch (UnsatisfiedLinkError e2) {
                    b("Loading the library normally failed: %s", Log.getStackTraceString(e2));
                    b("%s (%s) was not loaded normally, re-linking...", str, null);
                    File fileC = c(context, str, null);
                    if (!fileC.exists()) {
                        File dir = context.getDir(SAPropertyFilter.LIB, 0);
                        File fileC2 = c(context, str, null);
                        f fVar = (f) bVar;
                        String strA = fVar.a(str);
                        e eVar = new e();
                        eVar.f42068a = strA;
                        File[] fileArrListFiles = dir.listFiles(eVar);
                        if (fileArrListFiles != null) {
                            for (File file : fileArrListFiles) {
                                if (!file.getAbsolutePath().equals(fileC2.getAbsolutePath())) {
                                    file.delete();
                                }
                            }
                        }
                        String[] strArr = Build.SUPPORTED_ABIS;
                        if (strArr.length <= 0) {
                            String str3 = Build.CPU_ABI2;
                            strArr = (str3 == null || str3.length() == 0) ? new String[]{Build.CPU_ABI} : new String[]{Build.CPU_ABI, str3};
                        }
                        String strA2 = fVar.a(str);
                        this.f42067c.getClass();
                        try {
                            a.C0204a c0204aB = a.b(context, strArr, strA2);
                            try {
                                if (c0204aB == null) {
                                    try {
                                        strArrE = a.e(context, strA2);
                                    } catch (Exception e3) {
                                        strArrE = new String[]{e3.toString()};
                                    }
                                    throw new b(strA2, strArr, strArrE);
                                }
                                ZipFile zipFile = c0204aB.f42063a;
                                int i2 = 0;
                                while (true) {
                                    int i3 = i2 + 1;
                                    if (i2 < 5) {
                                        b("Found %s! Extracting...", strA2);
                                        try {
                                            File dir2 = context.getDir(SAPropertyFilter.LIB, 0);
                                            String canonicalPath = fileC.getCanonicalPath();
                                            if (!canonicalPath.startsWith(dir2.getCanonicalPath())) {
                                                throw new SecurityException("zip file contains unsafe unzipping patterns, dstFile canonicalPath=" + canonicalPath);
                                            }
                                            if (fileC.exists() || fileC.createNewFile()) {
                                                try {
                                                    inputStream2 = zipFile.getInputStream(c0204aB.f42064b);
                                                    try {
                                                        fileOutputStream2 = new FileOutputStream(fileC);
                                                        try {
                                                            long jA = a.a(inputStream2, fileOutputStream2);
                                                            fileOutputStream2.getFD().sync();
                                                            if (jA == fileC.length()) {
                                                                a.c(inputStream2);
                                                                a.c(fileOutputStream2);
                                                                fileC.setReadable(true, false);
                                                                fileC.setExecutable(true, false);
                                                                fileC.setWritable(true);
                                                                break;
                                                            }
                                                        } catch (FileNotFoundException | IOException unused) {
                                                        } catch (Throwable th) {
                                                            th = th;
                                                            inputStream = inputStream2;
                                                            fileOutputStream = fileOutputStream2;
                                                            a.c(inputStream);
                                                            a.c(fileOutputStream);
                                                            throw th;
                                                        }
                                                    } catch (FileNotFoundException unused2) {
                                                        fileOutputStream2 = null;
                                                        a.c(inputStream2);
                                                        a.c(fileOutputStream2);
                                                        i2 = i3;
                                                    } catch (IOException unused3) {
                                                        fileOutputStream2 = null;
                                                        a.c(inputStream2);
                                                        a.c(fileOutputStream2);
                                                        i2 = i3;
                                                    } catch (Throwable th2) {
                                                        th = th2;
                                                        inputStream = inputStream2;
                                                        fileOutputStream = null;
                                                        a.c(inputStream);
                                                        a.c(fileOutputStream);
                                                        throw th;
                                                    }
                                                } catch (FileNotFoundException unused4) {
                                                    inputStream2 = null;
                                                } catch (IOException unused5) {
                                                    inputStream2 = null;
                                                } catch (Throwable th3) {
                                                    th = th3;
                                                    inputStream = null;
                                                }
                                                a.c(inputStream2);
                                                a.c(fileOutputStream2);
                                            }
                                        } catch (IOException unused6) {
                                        }
                                        i2 = i3;
                                    } else if (zipFile != null) {
                                        break;
                                    }
                                }
                                try {
                                    zipFile.close();
                                } catch (IOException unused7) {
                                }
                            } catch (Throwable th4) {
                                th = th4;
                                c0204a = c0204aB;
                                if (c0204a != null) {
                                    try {
                                        ZipFile zipFile2 = c0204a.f42063a;
                                        if (zipFile2 != null) {
                                            zipFile2.close();
                                        }
                                    } catch (IOException unused8) {
                                    }
                                }
                                throw th;
                            }
                        } catch (Throwable th5) {
                            th = th5;
                            c0204a = null;
                        }
                    }
                    String absolutePath = fileC.getAbsolutePath();
                    ((f) bVar).getClass();
                    System.load(absolutePath);
                    hashSet.add(str);
                    b("%s (%s) was re-linked!", str, null);
                    return;
                }
            }
            str2 = "Given library is either null or empty";
        }
        md.n(str2);
    }

    public final File c(Context context, String str, String str2) {
        String strA = ((f) this.f42066b).a(str);
        return (str2 == null || str2.length() == 0) ? new File(context.getDir(SAPropertyFilter.LIB, 0), strA) : new File(context.getDir(SAPropertyFilter.LIB, 0), tr.h(strA, FileUtils.HIDDEN_PREFIX, str2));
    }
}
