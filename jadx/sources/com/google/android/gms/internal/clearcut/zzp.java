package com.google.android.gms.internal.clearcut;

import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import com.google.android.gms.clearcut.ClearcutLogger;
import com.google.android.gms.common.wrappers.Wrappers;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes2.dex */
public final class zzp implements ClearcutLogger.zza {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Charset f29776b = Charset.forName("UTF-8");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final zzao f29777c;
    public static final zzao d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final ConcurrentHashMap f29778e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final HashMap f29779f;
    public static Boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static Long f29780h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final zzae f29781i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f29782a;

    static {
        String strValueOf = String.valueOf(Uri.encode("com.google.android.gms.clearcut.public"));
        zzao zzaoVar = new zzao(new zzao(Uri.parse(strValueOf.length() != 0 ? "content://com.google.android.gms.phenotype/".concat(strValueOf) : new String("content://com.google.android.gms.phenotype/"))).f29645a, "gms:playlog:service:samplingrules_", "LogSamplingRules__");
        f29777c = zzaoVar;
        String strValueOf2 = String.valueOf(Uri.encode("com.google.android.gms.clearcut.public"));
        d = new zzao(new zzao(Uri.parse(strValueOf2.length() != 0 ? "content://com.google.android.gms.phenotype/".concat(strValueOf2) : new String("content://com.google.android.gms.phenotype/"))).f29645a, "gms:playlog:service:sampling_", "LogSampling__");
        f29778e = new ConcurrentHashMap();
        f29779f = new HashMap();
        g = null;
        f29780h = null;
        f29781i = new zzaj(zzaoVar, "enable_log_sampling_rules", Boolean.FALSE);
    }

    public zzp(Context context) {
        Context applicationContext;
        this.f29782a = context;
        if (context == null || zzae.g != null) {
            return;
        }
        synchronized (zzae.f29632f) {
            try {
                if (!context.isDeviceProtectedStorage() && (applicationContext = context.getApplicationContext()) != null) {
                    context = applicationContext;
                }
                if (zzae.g != context) {
                    zzae.f29633h = null;
                }
                zzae.g = context;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static long a(long j2, String str) {
        if (str == null || str.isEmpty()) {
            return zzk.c(ByteBuffer.allocate(8).putLong(j2).array());
        }
        byte[] bytes = str.getBytes(f29776b);
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(bytes.length + 8);
        byteBufferAllocate.put(bytes);
        byteBufferAllocate.putLong(j2);
        return zzk.c(byteBufferAllocate.array());
    }

    public static boolean c(long j2, long j3, long j4) {
        if (j3 < 0 || j4 <= 0) {
            return true;
        }
        if (j2 < 0) {
            j2 = ((j2 & Long.MAX_VALUE) % j4) + (Long.MAX_VALUE % j4) + 1;
        }
        return j2 % j4 < j3;
    }

    public static boolean d(Context context) {
        if (g == null) {
            g = Boolean.valueOf(Wrappers.a(context).f29356a.checkCallingOrSelfPermission("com.google.android.providers.gsf.permission.READ_GSERVICES") == 0);
        }
        return g.booleanValue();
    }

    public static long e(Context context) {
        Object obj;
        long jLongValue = 0;
        if (f29780h == null) {
            if (context == null) {
                return 0L;
            }
            if (d(context)) {
                ContentResolver contentResolver = context.getContentResolver();
                Uri uri = zzy.f29791a;
                synchronized (zzy.class) {
                    zzy.c(contentResolver);
                    obj = zzy.f29799k;
                }
                HashMap map = zzy.f29797i;
                Long lValueOf = (Long) zzy.a(map, "android_id", 0L);
                if (lValueOf != null) {
                    jLongValue = lValueOf.longValue();
                } else {
                    String strB = zzy.b(contentResolver, "android_id");
                    if (strB != null) {
                        try {
                            long j2 = Long.parseLong(strB);
                            lValueOf = Long.valueOf(j2);
                            jLongValue = j2;
                        } catch (NumberFormatException unused) {
                        }
                    }
                    zzy.d(obj, map, "android_id", lValueOf);
                }
                f29780h = Long.valueOf(jLongValue);
            } else {
                f29780h = 0L;
            }
        }
        return f29780h.longValue();
    }

    public final boolean b(com.google.android.gms.clearcut.zze zzeVar) {
        List<zzgw$zza.zzb> listI;
        String str;
        String strSubstring;
        int i2;
        zzr zzrVar = zzeVar.f28892b;
        String strValueOf = zzrVar.f29788h;
        int i3 = zzrVar.d;
        zzha zzhaVar = zzeVar.f28898j;
        boolean zE = false;
        int i4 = zzhaVar != null ? zzhaVar.f29768f : 0;
        boolean zBooleanValue = ((Boolean) f29781i.a()).booleanValue();
        Context context = this.f29782a;
        zzgw$zza.zzb zzbVar = null;
        if (zBooleanValue) {
            if (strValueOf == null || strValueOf.isEmpty()) {
                strValueOf = i3 >= 0 ? String.valueOf(i3) : null;
            }
            if (strValueOf != null) {
                if (context == null) {
                    listI = Collections.EMPTY_LIST;
                } else {
                    ConcurrentHashMap concurrentHashMap = f29778e;
                    zzae zzaeVar = (zzae) concurrentHashMap.get(strValueOf);
                    if (zzaeVar == null) {
                        zzgw$zza zzgw_zzaJ = zzgw$zza.j();
                        zzao zzaoVar = f29777c;
                        zzaoVar.getClass();
                        zzal zzalVar = new zzal(zzaoVar, strValueOf, zzgw_zzaJ);
                        zzaeVar = (zzae) concurrentHashMap.putIfAbsent(strValueOf, zzalVar);
                        if (zzaeVar == null) {
                            zzaeVar = zzalVar;
                        }
                    }
                    listI = ((zzgw$zza) zzaeVar.a()).i();
                }
                for (zzgw$zza.zzb zzbVar2 : listI) {
                    if (!zzbVar2.n() || zzbVar2.i() == 0 || zzbVar2.i() == i4) {
                        if (!c(a(e(context), zzbVar2.o()), zzbVar2.p(), zzbVar2.q())) {
                            return false;
                        }
                    }
                }
            }
        } else {
            if (strValueOf == null || strValueOf.isEmpty()) {
                strValueOf = i3 >= 0 ? String.valueOf(i3) : null;
            }
            if (strValueOf != null) {
                if (context == null || !d(context)) {
                    str = null;
                } else {
                    HashMap map = f29779f;
                    zzae zzaeVar2 = (zzae) map.get(strValueOf);
                    if (zzaeVar2 == null) {
                        zzao zzaoVar2 = d;
                        zzaoVar2.getClass();
                        zzak zzakVar = new zzak(zzaoVar2, strValueOf, null);
                        map.put(strValueOf, zzakVar);
                        zzaeVar2 = zzakVar;
                    }
                    str = (String) zzaeVar2.a();
                }
                if (str != null) {
                    int iIndexOf = str.indexOf(44);
                    if (iIndexOf >= 0) {
                        strSubstring = str.substring(0, iIndexOf);
                        i2 = iIndexOf + 1;
                    } else {
                        strSubstring = "";
                        i2 = 0;
                    }
                    int iIndexOf2 = str.indexOf(47, i2);
                    if (iIndexOf2 > 0) {
                        try {
                            long j2 = Long.parseLong(str.substring(i2, iIndexOf2));
                            long j3 = Long.parseLong(str.substring(iIndexOf2 + 1));
                            if (j2 >= 0 && j3 >= 0) {
                                zzgw$zza.zzb.zza zzaVarR = zzgw$zza.zzb.r();
                                zzaVarR.g();
                                zzgw$zza.zzb.k((zzgw$zza.zzb) zzaVarR.f29675c, strSubstring);
                                zzaVarR.g();
                                zzgw$zza.zzb.j((zzgw$zza.zzb) zzaVarR.f29675c, j2);
                                zzaVarR.g();
                                zzgw$zza.zzb.l((zzgw$zza.zzb) zzaVarR.f29675c, j3);
                                zzcg zzcgVarH = zzaVarR.h();
                                byte bByteValue = ((Byte) zzcgVarH.e(1)).byteValue();
                                if (bByteValue == 1) {
                                    zE = true;
                                } else if (bByteValue != 0) {
                                    zzea zzeaVar = zzea.f29704c;
                                    zzeaVar.getClass();
                                    zE = zzeaVar.a(zzcgVarH.getClass()).e(zzcgVarH);
                                    zzcgVarH.e(2);
                                }
                                if (!zE) {
                                    throw new zzew(zzcgVarH);
                                }
                                zzbVar = (zzgw$zza.zzb) zzcgVarH;
                            }
                        } catch (NumberFormatException unused) {
                            if (str.length() != 0) {
                                "parseLong() failed while parsing: ".concat(str);
                            }
                        }
                    } else if (str.length() != 0) {
                        "Failed to parse the rule: ".concat(str);
                    }
                }
                if (zzbVar != null) {
                    return c(a(e(context), zzbVar.o()), zzbVar.p(), zzbVar.q());
                }
            }
        }
        return true;
    }
}
