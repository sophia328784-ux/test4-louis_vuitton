package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.wrappers.Wrappers;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: loaded from: classes2.dex */
public final class zzal extends zzje {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Boolean f31552b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f31553c;
    public zzak d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Boolean f31554e;

    public final boolean h(String str) {
        zzic.k(this.f31850a.f31844i);
        if (zzpp.I((String) zzfy.g1.a(null), str) || zzpp.I((String) zzfy.h1.a(null), str) || zzpp.I((String) zzfy.i1.a(null), str)) {
            return true;
        }
        return "1".equals(this.d.f(str, "gaia_collection_enabled"));
    }

    public final boolean i(String str) {
        return "1".equals(this.d.f(str, "measurement.event_sampling_enabled"));
    }

    public final boolean j() {
        if (this.f31552b == null) {
            Boolean boolT = t("app_measurement_lite");
            this.f31552b = boolT;
            if (boolT == null) {
                this.f31552b = Boolean.FALSE;
            }
        }
        return this.f31552b.booleanValue() || !this.f31850a.f31839b;
    }

    public final String k(String str) {
        zzic zzicVar = this.f31850a;
        try {
            String str2 = (String) Class.forName("android.os.SystemProperties").getMethod("get", String.class, String.class).invoke(null, str, "");
            Preconditions.h(str2);
            return str2;
        } catch (ClassNotFoundException e2) {
            zzgu zzguVar = zzicVar.f31842f;
            zzic.m(zzguVar);
            zzguVar.f31769f.b(e2, "Could not find SystemProperties class");
            return "";
        } catch (IllegalAccessException e3) {
            zzgu zzguVar2 = zzicVar.f31842f;
            zzic.m(zzguVar2);
            zzguVar2.f31769f.b(e3, "Could not access SystemProperties.get()");
            return "";
        } catch (NoSuchMethodException e4) {
            zzgu zzguVar3 = zzicVar.f31842f;
            zzic.m(zzguVar3);
            zzguVar3.f31769f.b(e4, "Could not find SystemProperties.get() method");
            return "";
        } catch (InvocationTargetException e5) {
            zzgu zzguVar4 = zzicVar.f31842f;
            zzic.m(zzguVar4);
            zzguVar4.f31769f.b(e5, "SystemProperties.get() threw an exception");
            return "";
        }
    }

    public final int l(String str, boolean z) {
        return Math.max(z ? Math.max(Math.min(p(str, zzfy.g0), 500), 100) : 500, 256);
    }

    public final void m() {
        this.f31850a.getClass();
    }

    public final String n(String str, zzfx zzfxVar) {
        return TextUtils.isEmpty(str) ? (String) zzfxVar.a(null) : (String) zzfxVar.a(this.d.f(str, zzfxVar.f31728a));
    }

    public final long o(String str, zzfx zzfxVar) {
        if (TextUtils.isEmpty(str)) {
            return ((Long) zzfxVar.a(null)).longValue();
        }
        String strF = this.d.f(str, zzfxVar.f31728a);
        if (TextUtils.isEmpty(strF)) {
            return ((Long) zzfxVar.a(null)).longValue();
        }
        try {
            return ((Long) zzfxVar.a(Long.valueOf(Long.parseLong(strF)))).longValue();
        } catch (NumberFormatException unused) {
            return ((Long) zzfxVar.a(null)).longValue();
        }
    }

    public final int p(String str, zzfx zzfxVar) {
        if (TextUtils.isEmpty(str)) {
            return ((Integer) zzfxVar.a(null)).intValue();
        }
        String strF = this.d.f(str, zzfxVar.f31728a);
        if (TextUtils.isEmpty(strF)) {
            return ((Integer) zzfxVar.a(null)).intValue();
        }
        try {
            return ((Integer) zzfxVar.a(Integer.valueOf(Integer.parseInt(strF)))).intValue();
        } catch (NumberFormatException unused) {
            return ((Integer) zzfxVar.a(null)).intValue();
        }
    }

    public final double q(String str, zzfx zzfxVar) {
        if (TextUtils.isEmpty(str)) {
            return ((Double) zzfxVar.a(null)).doubleValue();
        }
        String strF = this.d.f(str, zzfxVar.f31728a);
        if (TextUtils.isEmpty(strF)) {
            return ((Double) zzfxVar.a(null)).doubleValue();
        }
        try {
            return ((Double) zzfxVar.a(Double.valueOf(Double.parseDouble(strF)))).doubleValue();
        } catch (NumberFormatException unused) {
            return ((Double) zzfxVar.a(null)).doubleValue();
        }
    }

    public final boolean r(String str, zzfx zzfxVar) {
        if (TextUtils.isEmpty(str)) {
            return ((Boolean) zzfxVar.a(null)).booleanValue();
        }
        String strF = this.d.f(str, zzfxVar.f31728a);
        return TextUtils.isEmpty(strF) ? ((Boolean) zzfxVar.a(null)).booleanValue() : ((Boolean) zzfxVar.a(Boolean.valueOf("1".equals(strF)))).booleanValue();
    }

    public final Bundle s() {
        zzic zzicVar = this.f31850a;
        try {
            Context context = zzicVar.f31838a;
            Context context2 = zzicVar.f31838a;
            zzgu zzguVar = zzicVar.f31842f;
            if (context.getPackageManager() == null) {
                zzic.m(zzguVar);
                zzguVar.f31769f.a("Failed to load metadata: PackageManager is null");
                return null;
            }
            ApplicationInfo applicationInfoA = Wrappers.a(context2).a(128, context2.getPackageName());
            if (applicationInfoA != null) {
                return applicationInfoA.metaData;
            }
            zzic.m(zzguVar);
            zzguVar.f31769f.a("Failed to load metadata: ApplicationInfo is null");
            return null;
        } catch (PackageManager.NameNotFoundException e2) {
            zzgu zzguVar2 = zzicVar.f31842f;
            zzic.m(zzguVar2);
            zzguVar2.f31769f.b(e2, "Failed to load metadata: Package name not found");
            return null;
        }
    }

    public final Boolean t(String str) {
        Preconditions.e(str);
        Bundle bundleS = s();
        if (bundleS != null) {
            if (bundleS.containsKey(str)) {
                return Boolean.valueOf(bundleS.getBoolean(str));
            }
            return null;
        }
        zzgu zzguVar = this.f31850a.f31842f;
        zzic.m(zzguVar);
        zzguVar.f31769f.a("Failed to load metadata: Metadata bundle is null");
        return null;
    }

    public final boolean u() {
        this.f31850a.getClass();
        Boolean boolT = t("firebase_analytics_collection_deactivated");
        return boolT != null && boolT.booleanValue();
    }

    public final boolean v() {
        Boolean boolT = t("google_analytics_automatic_screen_reporting_enabled");
        return boolT == null || boolT.booleanValue();
    }

    public final zzji w(String str, boolean z) {
        Object obj;
        Preconditions.e(str);
        Bundle bundleS = s();
        zzic zzicVar = this.f31850a;
        if (bundleS == null) {
            zzgu zzguVar = zzicVar.f31842f;
            zzic.m(zzguVar);
            zzguVar.f31769f.a("Failed to load metadata: Metadata bundle is null");
            obj = null;
        } else {
            obj = bundleS.get(str);
        }
        if (obj == null) {
            return zzji.UNINITIALIZED;
        }
        if (Boolean.TRUE.equals(obj)) {
            return zzji.GRANTED;
        }
        if (Boolean.FALSE.equals(obj)) {
            return zzji.DENIED;
        }
        if (z && "eu_consent_policy".equals(obj)) {
            return zzji.POLICY;
        }
        zzgu zzguVar2 = zzicVar.f31842f;
        zzic.m(zzguVar2);
        zzguVar2.f31771i.b(str, "Invalid manifest metadata for");
        return zzji.UNINITIALIZED;
    }
}
