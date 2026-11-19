package com.google.android.gms.measurement.internal;

import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public final class zzgu extends zzjf {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public char f31767c;
    public long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f31768e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final zzgs f31769f;
    public final zzgs g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final zzgs f31770h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final zzgs f31771i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final zzgs f31772j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final zzgs f31773k;
    public final zzgs l;
    public final zzgs m;
    public final zzgs n;

    public zzgu(zzic zzicVar) {
        super(zzicVar);
        this.f31767c = (char) 0;
        this.d = -1L;
        this.f31769f = new zzgs(this, 6, false, false);
        this.g = new zzgs(this, 6, true, false);
        this.f31770h = new zzgs(this, 6, false, true);
        this.f31771i = new zzgs(this, 5, false, false);
        this.f31772j = new zzgs(this, 5, true, false);
        this.f31773k = new zzgs(this, 5, false, true);
        this.l = new zzgs(this, 4, false, false);
        this.m = new zzgs(this, 3, false, false);
        this.n = new zzgs(this, 2, false, false);
    }

    public static Object o(String str) {
        if (str == null) {
            return null;
        }
        return new zzgt(str);
    }

    public static String r(boolean z, String str, Object obj, Object obj2, Object obj3) {
        String strS = s(obj, z);
        String strS2 = s(obj2, z);
        String strS3 = s(obj3, z);
        StringBuilder sb = new StringBuilder();
        String str2 = "";
        if (str == null) {
            str = "";
        }
        if (!TextUtils.isEmpty(str)) {
            sb.append(str);
            str2 = ": ";
        }
        String str3 = ", ";
        if (!TextUtils.isEmpty(strS)) {
            sb.append(str2);
            sb.append(strS);
            str2 = ", ";
        }
        if (TextUtils.isEmpty(strS2)) {
            str3 = str2;
        } else {
            sb.append(str2);
            sb.append(strS2);
        }
        if (!TextUtils.isEmpty(strS3)) {
            sb.append(str3);
            sb.append(strS3);
        }
        return sb.toString();
    }

    public static String s(Object obj, boolean z) {
        int iLastIndexOf;
        String className;
        int iLastIndexOf2;
        if (obj == null) {
            return "";
        }
        if (obj instanceof Integer) {
            obj = Long.valueOf(((Integer) obj).intValue());
        }
        if (obj instanceof Long) {
            if (!z) {
                return obj.toString();
            }
            Long l = (Long) obj;
            if (Math.abs(l.longValue()) < 100) {
                return obj.toString();
            }
            char cCharAt = obj.toString().charAt(0);
            String strValueOf = String.valueOf(Math.abs(l.longValue()));
            long jRound = Math.round(Math.pow(10.0d, strValueOf.length() - 1));
            long jRound2 = Math.round(Math.pow(10.0d, strValueOf.length()) - 1.0d);
            int length = String.valueOf(jRound).length();
            String str = cCharAt == '-' ? "-" : "";
            StringBuilder sb = new StringBuilder(str.length() + str.length() + length + 3 + String.valueOf(jRound2).length());
            sb.append(str);
            sb.append(jRound);
            sb.append("...");
            sb.append(str);
            sb.append(jRound2);
            return sb.toString();
        }
        if (obj instanceof Boolean) {
            return obj.toString();
        }
        if (!(obj instanceof Throwable)) {
            if (obj instanceof zzgt) {
                return ((zzgt) obj).f31766a;
            }
            return z ? "-" : obj.toString();
        }
        Throwable th = (Throwable) obj;
        StringBuilder sb2 = new StringBuilder(z ? th.getClass().getName() : th.toString());
        String canonicalName = zzic.class.getCanonicalName();
        String strSubstring = (TextUtils.isEmpty(canonicalName) || (iLastIndexOf = canonicalName.lastIndexOf(46)) == -1) ? "" : canonicalName.substring(0, iLastIndexOf);
        for (StackTraceElement stackTraceElement : th.getStackTrace()) {
            if (!stackTraceElement.isNativeMethod() && (className = stackTraceElement.getClassName()) != null) {
                if (((TextUtils.isEmpty(className) || (iLastIndexOf2 = className.lastIndexOf(46)) == -1) ? "" : className.substring(0, iLastIndexOf2)).equals(strSubstring)) {
                    sb2.append(": ");
                    sb2.append(stackTraceElement);
                    break;
                }
            }
        }
        return sb2.toString();
    }

    @Override // com.google.android.gms.measurement.internal.zzjf
    public final boolean h() {
        return false;
    }

    public final zzgs k() {
        return this.f31769f;
    }

    public final zzgs l() {
        return this.f31771i;
    }

    public final zzgs m() {
        return this.m;
    }

    public final zzgs n() {
        return this.n;
    }

    public final void p(int i2, boolean z, boolean z2, String str, Object obj, Object obj2, Object obj3) {
        if (!z && Log.isLoggable(q(), i2)) {
            Log.println(i2, q(), r(false, str, obj, obj2, obj3));
        }
        if (z2 || i2 < 5) {
            return;
        }
        Preconditions.h(str);
        zzhz zzhzVar = this.f31850a.g;
        if (zzhzVar == null) {
            Log.println(6, q(), "Scheduler not set. Not logging error/warn");
        } else {
            if (!zzhzVar.f31851b) {
                Log.println(6, q(), "Scheduler not initialized. Not logging error/warn");
                return;
            }
            if (i2 >= 9) {
                i2 = 8;
            }
            zzhzVar.p(new zzgr(this, i2, str, obj, obj2, obj3));
        }
    }

    public final String q() {
        String str;
        synchronized (this) {
            try {
                if (this.f31768e == null) {
                    this.f31850a.d.f31850a.getClass();
                    this.f31768e = "FA";
                }
                Preconditions.h(this.f31768e);
                str = this.f31768e;
            } catch (Throwable th) {
                throw th;
            }
        }
        return str;
    }
}
