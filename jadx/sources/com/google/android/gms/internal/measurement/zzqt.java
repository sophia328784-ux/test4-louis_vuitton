package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.net.Uri;
import android.os.Process;
import android.os.StrictMode;
import androidx.collection.ArrayMap;
import com.google.common.base.Optional;
import com.google.common.base.Supplier;
import defpackage.md;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.AbstractCollection;
import java.util.List;
import java.util.logging.Level;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public final class zzqt {
    public static Boolean d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzlk f30852a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Uri f30853b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f30854c;

    public zzqt(zzlk zzlkVar, String str, String str2, boolean z) {
        this.f30852a = zzlkVar;
        this.f30854c = str;
        Context context = zzlkVar.f30720b;
        Pattern pattern = zzsa.f30899a;
        zzrz zzrzVar = new zzrz(context);
        zzrzVar.a("phenotype");
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 4);
        sb.append("/");
        sb.append(str);
        sb.append(".pb");
        zzrzVar.b(sb.toString());
        this.f30853b = zzrzVar.c();
    }

    public final zzqs a() {
        String strSubstring;
        int i2;
        zznv zznvVar;
        zznv zznvVar2;
        zzlk zzlkVar = this.f30852a;
        Context context = zzlkVar.f30720b;
        Supplier supplier = zzlkVar.f30723f;
        if (!zzky.b(context)) {
            return new zzqs(zzqv.H(), new zzqr(3, 17));
        }
        if (d == null) {
            d = Boolean.valueOf(Process.isIsolated());
        }
        if (d.booleanValue()) {
            return new zzqs(zzqv.H(), new zzqr(3, 18));
        }
        zzqn zzqnVarB = zzlkVar.g.b();
        zzacr zzacrVar = zzqnVarB.f30838c;
        zzabz zzabzVar = zzabz.FILE;
        ArrayMap arrayMap = zzlg.f30709a;
        String str = this.f30854c;
        int iIndexOf = str.indexOf("#");
        if (iIndexOf >= 0) {
            strSubstring = str.substring(0, iIndexOf);
        } else {
            if (str.contains("@")) {
                md.n("Invalid package name: ".concat(str));
                return null;
            }
            strSubstring = str;
        }
        zzabzVar.getClass();
        if (!zzqnVarB.f30841h) {
            i2 = 14;
        } else if (!zzqnVarB.f30836a || !zzqnVarB.f30837b.contains(zzabzVar)) {
            i2 = 3;
        } else if (zzacrVar.f() != 0) {
            List list = zzqnVarB.f30840f;
            if (list.isEmpty() || list.contains(strSubstring)) {
                i2 = zzqnVarB.g.contains(strSubstring) ? 6 : 0;
            } else {
                i2 = 5;
            }
        } else {
            i2 = 4;
        }
        if (i2 != 0) {
            zznvVar2 = new zznv(null, new zzqr(i2));
        } else {
            try {
                String str2 = zzqnVarB.f30839e;
                if (str2.isEmpty()) {
                    Optional optional = (Optional) zzlkVar.f30724h.get();
                    if (optional.c()) {
                        str2 = ((ApplicationInfo) optional.b()).dataDir;
                    } else {
                        zzlz.a(Level.WARNING, zzlkVar.a(), null, "Unable to get GMS application info, using defaults.", new Object[0]);
                        zznvVar = new zznv(zznd.f30762c, new zzqr(3, 7));
                        zznvVar2 = zznvVar;
                    }
                }
                String str3 = File.separator;
                String str4 = zzqnVarB.d;
                StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + String.valueOf(str3).length() + String.valueOf(str4).length());
                sb.append(str2);
                sb.append(str3);
                sb.append(str4);
                String string = sb.toString();
                zzmz zzmzVar = new zzmz(zzacrVar, str, "");
                Uri.Builder builderScheme = new Uri.Builder().scheme("file");
                String string2 = zzmzVar.a().toString();
                StringBuilder sb2 = new StringBuilder(String.valueOf(str3).length() + string.length() + String.valueOf(str3).length() + string2.length());
                sb2.append(str3);
                sb2.append(string);
                sb2.append(str3);
                sb2.append(string2);
                Uri uriBuild = builderScheme.appendEncodedPath(sb2.toString()).build();
                StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
                StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitDiskReads().build());
                try {
                    try {
                        zznv zznvVar3 = new zznv((zznd) ((zzru) supplier.get()).a(uriBuild, new zzna(zzqnVarB.f30844k.A())), new zzqr(5, 2));
                        StrictMode.setThreadPolicy(threadPolicy);
                        zznvVar2 = zznvVar3;
                    } catch (zzaeh e2) {
                        zzlz.a(Level.SEVERE, zzlkVar.a(), e2, "Failed to parse snapshot from shared storage for %s", str);
                        zznvVar2 = new zznv(null, new zzqr(9));
                        StrictMode.setThreadPolicy(threadPolicy);
                    } catch (FileNotFoundException unused) {
                        zzlz.a(Level.INFO, zzlkVar.a(), null, "Shared storage file not found for %s", str);
                        zznvVar2 = new zznv(null, new zzqr(8));
                        StrictMode.setThreadPolicy(threadPolicy);
                    }
                } catch (Throwable th) {
                    StrictMode.setThreadPolicy(threadPolicy);
                    throw th;
                }
            } catch (Exception e3) {
                zzlz.a(Level.WARNING, zzlkVar.a(), e3, "Failed to read shared file for %s", str);
                zznvVar = new zznv(zznd.f30762c, new zzqr(3, 10));
            }
        }
        zzqr zzqrVar = zznvVar2.f30769b;
        zznd zzndVar = zznvVar2.f30768a;
        if (zzndVar != null) {
            return new zzqs(zzndVar, zzqrVar);
        }
        try {
            return new zzqs((zzqv) ((zzru) supplier.get()).a(this.f30853b, new zzss(zzqv.H().h())), new zzqr(4, zzqrVar.f30847b));
        } catch (IOException | RuntimeException unused2) {
            zzlz.a(Level.INFO, zzlkVar.a(), null, "Unable to retrieve flag snapshot for %s, using defaults.", str);
            return b() ? new zzqs(zznd.f30762c, new zzqr(3, 16)) : new zzqs(zzqv.H(), new zzqr(3, 11));
        }
    }

    public final boolean b() {
        zzrf zzrfVar = this.f30852a.g;
        zzabz zzabzVar = zzabz.FILE;
        zzni zzniVarC = zzrfVar.c();
        return zzniVarC.C() && ((AbstractCollection) zzniVarC.H()).contains(zzabzVar);
    }
}
