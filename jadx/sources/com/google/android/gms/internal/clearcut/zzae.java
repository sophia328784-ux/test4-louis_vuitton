package com.google.android.gms.internal.clearcut;

import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import android.os.Binder;
import android.os.Process;
import androidx.core.content.PermissionChecker;
import defpackage.md;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzae<T> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Object f29632f = new Object();
    public static Context g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static volatile Boolean f29633h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzao f29634a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f29635b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f29636c;
    public final Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public volatile zzab f29637e = null;

    public zzae(zzao zzaoVar, String str, Object obj) {
        zzaoVar.getClass();
        if (zzaoVar.f29645a == null) {
            md.n("Must pass a valid SharedPreferences file name or ContentProvider URI");
            throw null;
        }
        this.f29634a = zzaoVar;
        String strValueOf = String.valueOf(zzaoVar.f29646b);
        this.f29636c = str.length() != 0 ? strValueOf.concat(str) : new String(strValueOf);
        String strValueOf2 = String.valueOf(zzaoVar.f29647c);
        this.f29635b = str.length() != 0 ? strValueOf2.concat(str) : new String(strValueOf2);
        this.d = obj;
    }

    public static Object b(zzam zzamVar) {
        try {
            return zzamVar.d();
        } catch (SecurityException unused) {
            long jClearCallingIdentity = Binder.clearCallingIdentity();
            try {
                return zzamVar.d();
            } finally {
                Binder.restoreCallingIdentity(jClearCallingIdentity);
            }
        }
    }

    public static boolean d() {
        if (f29633h == null) {
            Context context = g;
            if (context == null) {
                return false;
            }
            f29633h = Boolean.valueOf(PermissionChecker.a(context, "com.google.android.providers.gsf.permission.READ_GSERVICES", Binder.getCallingPid(), Binder.getCallingUid(), Binder.getCallingPid() == Process.myPid() ? context.getPackageName() : null) == 0);
        }
        return f29633h.booleanValue();
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0088 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:29:0x0089  */
    /* JADX WARN: Code duplicated, block: B:35:0x00a7 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:36:0x00a8  */
    public final Object a() {
        Object objC;
        String str;
        Object objC2 = null;
        if (g == null) {
            md.k("Must call PhenotypeFlag.init() first");
            return null;
        }
        this.f29634a.getClass();
        if (!(d() ? ((Boolean) b(new zzah("gms:phenotype:phenotype_flag:debug_bypass_phenotype"))).booleanValue() : false)) {
            if (this.f29634a.f29645a != null) {
                if (this.f29637e == null) {
                    ContentResolver contentResolver = g.getContentResolver();
                    Uri uri = this.f29634a.f29645a;
                    ConcurrentHashMap concurrentHashMap = zzab.f29624h;
                    zzab zzabVar = (zzab) concurrentHashMap.get(uri);
                    if (zzabVar == null) {
                        zzabVar = new zzab(contentResolver, uri);
                        zzab zzabVar2 = (zzab) concurrentHashMap.putIfAbsent(uri, zzabVar);
                        if (zzabVar2 == null) {
                            zzabVar.f29626a.registerContentObserver(zzabVar.f29627b, false, zzabVar.f29628c);
                        } else {
                            zzabVar = zzabVar2;
                        }
                    }
                    this.f29637e = zzabVar;
                }
                final zzab zzabVar3 = this.f29637e;
                String str2 = (String) b(new zzam(this, zzabVar3) { // from class: com.google.android.gms.internal.clearcut.zzaf

                    /* JADX INFO: renamed from: a, reason: collision with root package name */
                    public final zzae f29638a;

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public final zzab f29639b;

                    {
                        this.f29638a = this;
                        this.f29639b = zzabVar3;
                    }

                    @Override // com.google.android.gms.internal.clearcut.zzam
                    public final Object d() {
                        HashMap map;
                        Map map2;
                        HashMap mapA;
                        zzae zzaeVar = this.f29638a;
                        zzab zzabVar4 = this.f29639b;
                        zzabVar4.getClass();
                        if (zzae.d() ? ((Boolean) zzae.b(new zzah("gms:phenotype:phenotype_flag:debug_disable_caching"))).booleanValue() : false) {
                            mapA = zzabVar4.a();
                        } else {
                            map = zzabVar4.f29629e;
                        }
                        if (map2 == null) {
                            map2 = map;
                            map2 = mapA;
                            synchronized (zzabVar4.d) {
                                try {
                                    HashMap map3 = zzabVar4.f29629e;
                                    map2 = map3;
                                    if (map3 == null) {
                                        HashMap mapA2 = zzabVar4.a();
                                        zzabVar4.f29629e = mapA2;
                                        map2 = mapA2;
                                    }
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                        }
                        if (map2 == null) {
                            map2 = Collections.EMPTY_MAP;
                        }
                        return (String) map2.get(zzaeVar.f29635b);
                    }
                });
                if (str2 != null) {
                    objC = c(str2);
                }
            }
            if (objC != null) {
                return objC;
            }
            this.f29634a.getClass();
            if (d() && (str = (String) b(new zzam(this) { // from class: com.google.android.gms.internal.clearcut.zzag

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                public final zzae f29640a;

                {
                    this.f29640a = this;
                }

                @Override // com.google.android.gms.internal.clearcut.zzam
                public final Object d() {
                    return zzy.b(zzae.g.getContentResolver(), this.f29640a.f29636c);
                }
            })) != null) {
                objC2 = c(str);
            }
            if (objC2 != null) {
                return objC2;
            }
            return this.d;
        }
        String strValueOf = String.valueOf(this.f29635b);
        if (strValueOf.length() != 0) {
            "Bypass reading Phenotype values for flag: ".concat(strValueOf);
        }
        objC = null;
        if (objC != null) {
            return objC;
        }
        this.f29634a.getClass();
        if (d()) {
            objC2 = c(str);
        }
        if (objC2 != null) {
            return objC2;
        }
        return this.d;
    }

    public abstract Object c(String str);
}
