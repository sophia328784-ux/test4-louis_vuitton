package com.perfectcorp.perfectlib.ymk.kernelctrl;

import android.util.Pair;
import com.perfectcorp.common.PfCommons;
import com.perfectcorp.common.io.IO;
import com.perfectcorp.common.utility.Log;
import defpackage.n00;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Properties;

/* JADX INFO: loaded from: classes3.dex */
public abstract class BaseConfigHelper {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f41974c = IO.d(PfCommons.b().getExternalFilesDir(null).getAbsolutePath());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public a f41975a = a.f41977a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HashMap f41976b = new HashMap();

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final a f41977a = new a("UNDEFINED", 0, false);

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final a f41978b = new a("EXISTENT", 1, true);

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final a f41979c = new a("NONEXISTENT", 2, false);
        final boolean d;

        public a(String str, int i2, boolean z) {
            super(str, i2);
            this.d = z;
        }
    }

    public abstract Pair[] a();

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v13 */
    /* JADX WARN: Type inference failed for: r5v14 */
    /* JADX WARN: Type inference failed for: r5v15 */
    /* JADX WARN: Type inference failed for: r5v2, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v7 */
    public final boolean b() throws Throwable {
        Pair[] pairArrA;
        int i2;
        HashMap map;
        a aVar = this.f41975a;
        if (aVar != a.f41977a) {
            return aVar.d;
        }
        StringBuilder sb = new StringBuilder();
        String str = f41974c;
        if (new File(n00.r(str, "mcsdk.ini", sb)).exists()) {
            this.f41975a = a.f41978b;
            String str2 = "close config input stream failed";
            Properties properties = new Properties();
            ?? r5 = 0;
            FileInputStream fileInputStream = null;
            try {
                try {
                    FileInputStream fileInputStream2 = new FileInputStream(str + "mcsdk.ini");
                    try {
                        properties.load(fileInputStream2);
                        try {
                            fileInputStream2.close();
                            while (true) {
                                map = this.f41976b;
                                r5 = 3;
                                if (i2 >= 3) {
                                    break;
                                }
                                Pair pair = pairArrA[i2];
                                String str3 = (String) pair.first;
                                map.put(str3, properties.getProperty(str3, (String) pair.second));
                                i2++;
                            }
                        } catch (IOException e2) {
                            Log.e("BaseConfigHelper", "close config input stream failed", e2);
                        }
                        pairArrA = a();
                        i2 = 0;
                        str2 = "config=" + map;
                        Log.g(3, "BaseConfigHelper", str2);
                    } catch (Exception e3) {
                        e = e3;
                        fileInputStream = fileInputStream2;
                        Log.e("BaseConfigHelper", "load config failed", e);
                        r5 = fileInputStream;
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                                r5 = fileInputStream;
                            } catch (IOException e4) {
                                Log.e("BaseConfigHelper", "close config input stream failed", e4);
                                r5 = fileInputStream;
                            }
                        }
                    } catch (Throwable th) {
                        th = th;
                        r5 = fileInputStream2;
                        if (r5 != 0) {
                            try {
                                r5.close();
                            } catch (IOException e5) {
                                Log.e("BaseConfigHelper", str2, e5);
                            }
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Exception e6) {
                e = e6;
            }
        } else {
            this.f41975a = a.f41979c;
        }
        return this.f41975a.d;
    }
}
