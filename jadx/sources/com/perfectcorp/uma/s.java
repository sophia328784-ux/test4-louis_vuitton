package com.perfectcorp.uma;

import android.content.Context;
import android.util.Base64;
import java.io.FileInputStream;
import java.io.IOException;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes3.dex */
public abstract class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static volatile String f43277a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Pattern f43278b = Pattern.compile("^[0-9a-zA-Z_\\-]+~{0,2}$");

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final SecureRandom f43279a = new SecureRandom();
    }

    public static class b implements c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Context f43280a;

        public b(Context context) {
            this.f43280a = context;
        }

        @Override // com.perfectcorp.uma.s.c
        public final String a() {
            return this.f43280a.getSharedPreferences("UMA_ID", 0).getString("ID", "");
        }
    }

    public interface c {
        String a();
    }

    static {
        Pattern.compile("^TEMP-[0-9a-zA-Z_\\-]+~{0,2}$");
    }

    public static String a(Context context, boolean z) {
        c cVar;
        String str = f43277a;
        if (str != null) {
            return str;
        }
        synchronized (s.class) {
            try {
                String strReplace = f43277a;
                if (strReplace != null) {
                    return strReplace;
                }
                b bVar = new b(context);
                ArrayList arrayList = new ArrayList();
                if (context.getSharedPreferences("UMA_ID", 0).getBoolean("EXTERNAL_SYNC", false)) {
                    arrayList.add(0, bVar);
                } else {
                    arrayList.add(bVar);
                }
                Iterator it = arrayList.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        cVar = null;
                        break;
                    }
                    cVar = (c) it.next();
                    strReplace = cVar.a();
                    if ((strReplace == null || strReplace.length() != 44) ? false : f43278b.matcher(strReplace).matches()) {
                        break;
                    }
                }
                if (cVar == null) {
                    strReplace = Base64.encodeToString(b(), 10).replace('=', '~');
                }
                if (cVar != bVar) {
                    try {
                        bVar.f43280a.getSharedPreferences("UMA_ID", 0).edit().putString("ID", strReplace).apply();
                    } catch (Throwable th) {
                        com.perfectcorp.uma.b.d.f43200a.a("UMAUniqueID", "Failed to write UMA ID to SharedPreference.", th);
                    }
                }
                try {
                    bVar.f43280a.getSharedPreferences("UMA_ID", 0).edit().putBoolean("EXTERNAL_SYNC", true).apply();
                } catch (Throwable unused) {
                }
                if (z && !bVar.f43280a.getSharedPreferences("UMA_ID", 0).getBoolean("EXTERNAL_SYNC", false)) {
                    throw new SecurityException();
                }
                if (bVar.f43280a.getSharedPreferences("UMA_ID", 0).getBoolean("EXTERNAL_SYNC", false)) {
                    f43277a = strReplace;
                } else {
                    strReplace = "TEMP-" + strReplace;
                }
                return strReplace;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static byte[] b() {
        byte[] bArr = new byte[32];
        try {
            FileInputStream fileInputStream = new FileInputStream("/dev/urandom");
            try {
                if (fileInputStream.read(bArr) != 32) {
                    throw new IOException("urandom did not emit enough bytes.");
                }
                fileInputStream.close();
                return bArr;
            } catch (Throwable th) {
                try {
                    fileInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (Throwable unused) {
            a.f43279a.nextBytes(bArr);
            return bArr;
        }
        a.f43279a.nextBytes(bArr);
        return bArr;
    }
}
