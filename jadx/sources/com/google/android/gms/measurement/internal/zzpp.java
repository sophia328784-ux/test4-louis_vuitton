package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.content.pm.Signature;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.os.ext.SdkExtensions;
import android.text.TextUtils;
import androidx.privacysandbox.ads.adservices.java.measurement.MeasurementManagerFutures;
import com.appsflyer.sdk_base.referrer.Payload;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.wrappers.Wrappers;
import defpackage.ct0;
import java.io.ByteArrayInputStream;
import java.math.BigInteger;
import java.net.MalformedURLException;
import java.net.URL;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.Random;
import java.util.TreeSet;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicLong;
import javax.security.auth.x500.X500Principal;
import org.squirrelframework.foundation.fsm.MvelScriptManager;
import org.teleal.cling.support.contentdirectory.callback.Browse;

/* JADX INFO: loaded from: classes2.dex */
public final class zzpp extends zzjf {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final String[] f32008i = {"firebase_", "google_", "ga_"};

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final String[] f32009j = {"_err"};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public SecureRandom f32010c;
    public final AtomicLong d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f32011e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public MeasurementManagerFutures f32012f;
    public Boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Integer f32013h;

    public zzpp(zzic zzicVar) {
        super(zzicVar);
        this.f32013h = null;
        this.d = new AtomicLong(0L);
    }

    public static long A(byte[] bArr) {
        Preconditions.h(bArr);
        int length = bArr.length;
        int i2 = 0;
        Preconditions.k(length > 0);
        long j2 = 0;
        for (int i3 = length - 1; i3 >= 0 && i3 >= bArr.length - 8; i3--) {
            j2 += (((long) bArr[i3]) & 255) << i2;
            i2 += 8;
        }
        return j2;
    }

    public static boolean B(Context context) {
        ServiceInfo serviceInfo;
        try {
            PackageManager packageManager = context.getPackageManager();
            return (packageManager == null || (serviceInfo = packageManager.getServiceInfo(new ComponentName(context, "com.google.android.gms.measurement.AppMeasurementJobService"), 0)) == null || !serviceInfo.enabled) ? false : true;
        } catch (PackageManager.NameNotFoundException unused) {
        }
    }

    public static int C() {
        if (Build.VERSION.SDK_INT < 30 || SdkExtensions.getExtensionVersion(30) <= 3) {
            return 0;
        }
        return SdkExtensions.getExtensionVersion(1000000);
    }

    public static final boolean E(int i2, Bundle bundle) {
        if (bundle == null || bundle.getLong("_err") != 0) {
            return false;
        }
        bundle.putLong("_err", i2);
        return true;
    }

    public static boolean H(String str, String[] strArr) {
        Preconditions.h(strArr);
        for (String str2 : strArr) {
            if (Objects.equals(str, str2)) {
                return true;
            }
        }
        return false;
    }

    public static final boolean I(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.equals(Browse.CAPS_WILDCARD) || Arrays.asList(str.split(",")).contains(str2);
    }

    public static boolean K(String str) {
        return !TextUtils.isEmpty(str) && str.startsWith("_");
    }

    public static byte[] P(Parcelable parcelable) {
        if (parcelable == null) {
            return null;
        }
        Parcel parcelObtain = Parcel.obtain();
        try {
            parcelable.writeToParcel(parcelObtain, 0);
            return parcelObtain.marshall();
        } finally {
            parcelObtain.recycle();
        }
    }

    public static ArrayList a0(List list) {
        if (list == null) {
            return new ArrayList(0);
        }
        ArrayList arrayList = new ArrayList(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            zzah zzahVar = (zzah) it.next();
            Bundle bundle = new Bundle();
            bundle.putString("app_id", zzahVar.f31543b);
            bundle.putString("origin", zzahVar.f31544c);
            bundle.putLong("creation_timestamp", zzahVar.f31545e);
            bundle.putString("name", zzahVar.d.f32000c);
            Object objW1 = zzahVar.d.W1();
            Preconditions.h(objW1);
            zzjh.a(bundle, objW1);
            bundle.putBoolean("active", zzahVar.f31546f);
            String str = zzahVar.g;
            if (str != null) {
                bundle.putString("trigger_event_name", str);
            }
            zzbh zzbhVar = zzahVar.f31547h;
            if (zzbhVar != null) {
                bundle.putString("timed_out_event_name", zzbhVar.f31603b);
                zzbf zzbfVar = zzbhVar.f31604c;
                if (zzbfVar != null) {
                    bundle.putBundle("timed_out_event_params", zzbfVar.Z1());
                }
            }
            bundle.putLong("trigger_timeout", zzahVar.f31548i);
            zzbh zzbhVar2 = zzahVar.f31549j;
            if (zzbhVar2 != null) {
                bundle.putString("triggered_event_name", zzbhVar2.f31603b);
                zzbf zzbfVar2 = zzbhVar2.f31604c;
                if (zzbfVar2 != null) {
                    bundle.putBundle("triggered_event_params", zzbfVar2.Z1());
                }
            }
            bundle.putLong("triggered_timestamp", zzahVar.d.d);
            bundle.putLong("time_to_live", zzahVar.f31550k);
            zzbh zzbhVar3 = zzahVar.l;
            if (zzbhVar3 != null) {
                bundle.putString("expired_event_name", zzbhVar3.f31603b);
                zzbf zzbfVar3 = zzbhVar3.f31604c;
                if (zzbfVar3 != null) {
                    bundle.putBundle("expired_event_params", zzbfVar3.Z1());
                }
            }
            arrayList.add(bundle);
        }
        return arrayList;
    }

    public static boolean b0(Context context) {
        ActivityInfo receiverInfo;
        Preconditions.h(context);
        try {
            PackageManager packageManager = context.getPackageManager();
            return (packageManager == null || (receiverInfo = packageManager.getReceiverInfo(new ComponentName(context, "com.google.android.gms.measurement.AppMeasurementReceiver"), 0)) == null || !receiverInfo.enabled) ? false : true;
        } catch (PackageManager.NameNotFoundException unused) {
        }
    }

    public static void c0(zzlu zzluVar, Bundle bundle, boolean z) {
        if (bundle != null && zzluVar != null) {
            if (!bundle.containsKey("_sc") || z) {
                String str = zzluVar.f31895a;
                if (str != null) {
                    bundle.putString("_sn", str);
                } else {
                    bundle.remove("_sn");
                }
                String str2 = zzluVar.f31896b;
                if (str2 != null) {
                    bundle.putString("_sc", str2);
                } else {
                    bundle.remove("_sc");
                }
                bundle.putLong("_si", zzluVar.f31897c);
                return;
            }
            z = false;
        }
        if (bundle != null && zzluVar == null && z) {
            bundle.remove("_sn");
            bundle.remove("_sc");
            bundle.remove("_si");
        }
    }

    public static boolean g0(String str) {
        Preconditions.e(str);
        return str.charAt(0) != '_' || str.equals("_ep");
    }

    public static boolean i0(Intent intent) {
        String stringExtra = intent.getStringExtra("android.intent.extra.REFERRER_NAME");
        if ("android-app://com.google.android.googlequicksearchbox/https/www.google.com".equals(stringExtra) || "android-app://com.google.appcrawler".equals(stringExtra)) {
            return true;
        }
        if (TextUtils.isEmpty(stringExtra)) {
            return false;
        }
        try {
            String host = new URL(stringExtra).getHost();
            if (TextUtils.isEmpty(host)) {
                return false;
            }
            return host.matches("^(www\\.)?google(\\.com?)?(\\.[a-z]{2}t?)?$");
        } catch (MalformedURLException unused) {
            return false;
        }
    }

    public static String n(int i2, String str, boolean z) {
        if (str == null) {
            return null;
        }
        if (str.codePointCount(0, str.length()) <= i2) {
            return str;
        }
        if (z) {
            return str.substring(0, str.offsetByCodePoints(0, i2)).concat("...");
        }
        return null;
    }

    public static boolean s0(Object obj) {
        return (obj instanceof Parcelable[]) || (obj instanceof ArrayList) || (obj instanceof Bundle);
    }

    public static void y(zzpo zzpoVar, String str, int i2, String str2, String str3, int i3) {
        Bundle bundle = new Bundle();
        E(i2, bundle);
        if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
            bundle.putString(str2, str3);
        }
        if (i2 == 6 || i2 == 7 || i2 == 2) {
            bundle.putLong("_el", i3);
        }
        zzpoVar.b(str, "_err", bundle);
    }

    public static MessageDigest z() {
        for (int i2 = 0; i2 < 2; i2++) {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                if (messageDigest != null) {
                    return messageDigest;
                }
            } catch (NoSuchAlgorithmException unused) {
            }
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final long D() {
        long j2;
        boolean zBooleanValue;
        Object e2;
        Integer num;
        g();
        zzic zzicVar = this.f31850a;
        zzgi zzgiVarR = zzicVar.r();
        zzgu zzguVar = zzicVar.f31842f;
        Integer num2 = null;
        if (!I((String) zzfy.q0.a(null), zzgiVarR.m())) {
            return 0L;
        }
        if (Build.VERSION.SDK_INT < 30) {
            j2 = 4;
        } else if (SdkExtensions.getExtensionVersion(30) < 4) {
            j2 = 8;
        } else {
            j2 = C() < ((Integer) zzfy.k0.a(null)).intValue() ? 16L : 0L;
        }
        if (!J("android.permission.ACCESS_ADSERVICES_ATTRIBUTION")) {
            j2 |= 2;
        }
        if (j2 == 0) {
            if (this.g != null) {
                zBooleanValue = this.g.booleanValue();
            } else {
                if (this.f32012f == null) {
                    this.f32012f = MeasurementManagerFutures.a(zzicVar.f31838a);
                }
                MeasurementManagerFutures measurementManagerFutures = this.f32012f;
                zBooleanValue = false;
                if (measurementManagerFutures != null) {
                    try {
                        num = (Integer) measurementManagerFutures.b().get(10000L, TimeUnit.MILLISECONDS);
                        if (num != null) {
                            try {
                                if (num.intValue() == 1) {
                                    zBooleanValue = true;
                                }
                            } catch (InterruptedException | CancellationException | ExecutionException | TimeoutException e3) {
                                e2 = e3;
                                num2 = num;
                                zzic.m(zzguVar);
                                zzguVar.f31771i.b(e2, "Measurement manager api exception");
                                this.g = Boolean.FALSE;
                                num = num2;
                            }
                        }
                        this.g = Boolean.valueOf(zBooleanValue);
                    } catch (InterruptedException | CancellationException | ExecutionException | TimeoutException e4) {
                        e2 = e4;
                    }
                    zzic.m(zzguVar);
                    zzguVar.n.b(num, "Measurement manager api status result");
                    zBooleanValue = this.g.booleanValue();
                }
            }
            if (!zBooleanValue) {
                j2 = 64;
            }
        }
        if (j2 == 0) {
            return 1L;
        }
        return j2;
    }

    public final Object F(int i2, Object obj, boolean z, boolean z2) {
        if (obj == null) {
            return null;
        }
        if ((obj instanceof Long) || (obj instanceof Double)) {
            return obj;
        }
        if (obj instanceof Integer) {
            return Long.valueOf(((Integer) obj).intValue());
        }
        if (obj instanceof Byte) {
            return Long.valueOf(((Byte) obj).byteValue());
        }
        if (obj instanceof Short) {
            return Long.valueOf(((Short) obj).shortValue());
        }
        if (obj instanceof Boolean) {
            return Long.valueOf(true != ((Boolean) obj).booleanValue() ? 0L : 1L);
        }
        if (obj instanceof Float) {
            return Double.valueOf(((Float) obj).doubleValue());
        }
        if ((obj instanceof String) || (obj instanceof Character) || (obj instanceof CharSequence)) {
            return n(i2, obj.toString(), z);
        }
        if (!z2) {
            return null;
        }
        if (!(obj instanceof Bundle[]) && !(obj instanceof Parcelable[])) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (Parcelable parcelable : (Parcelable[]) obj) {
            if (parcelable instanceof Bundle) {
                Bundle bundleM = M((Bundle) parcelable);
                if (!bundleM.isEmpty()) {
                    arrayList.add(bundleM);
                }
            }
        }
        return arrayList.toArray(new Bundle[arrayList.size()]);
    }

    public final int G(String str) {
        boolean zEquals = "_ldl".equals(str);
        zzic zzicVar = this.f31850a;
        if (zEquals) {
            zzicVar.getClass();
            return 2048;
        }
        if ("_id".equals(str)) {
            zzicVar.getClass();
            return 256;
        }
        if ("_lgclid".equals(str)) {
            zzicVar.getClass();
            return 100;
        }
        zzicVar.getClass();
        return 36;
    }

    public final boolean J(String str) {
        g();
        zzic zzicVar = this.f31850a;
        if (Wrappers.a(zzicVar.f31838a).f29356a.checkCallingOrSelfPermission(str) == 0) {
            return true;
        }
        zzgu zzguVar = zzicVar.f31842f;
        zzic.m(zzguVar);
        zzguVar.m.b(str, "Permission not granted");
        return false;
    }

    public final boolean L(String str, String str2) {
        if (!TextUtils.isEmpty(str2)) {
            return true;
        }
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return this.f31850a.d.k("debug.firebase.analytics.app").equals(str);
    }

    public final Bundle M(Bundle bundle) {
        Bundle bundle2 = new Bundle();
        if (bundle != null) {
            for (String str : bundle.keySet()) {
                Object objP = p(bundle.get(str), str);
                if (objP == null) {
                    zzic zzicVar = this.f31850a;
                    zzgu zzguVar = zzicVar.f31842f;
                    zzic.m(zzguVar);
                    zzguVar.f31773k.b(zzicVar.f31845j.b(str), "Param value can't be null");
                } else {
                    x(bundle2, str, objP);
                }
            }
        }
        return bundle2;
    }

    public final zzbh N(String str, Bundle bundle, String str2, long j2, long j3, boolean z) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (n0(str) != 0) {
            zzic zzicVar = this.f31850a;
            zzgu zzguVar = zzicVar.f31842f;
            zzic.m(zzguVar);
            zzguVar.f31769f.b(zzicVar.f31845j.c(str), "Invalid conditional property event name");
            ct0.c();
            return null;
        }
        Bundle bundle2 = bundle != null ? new Bundle(bundle) : new Bundle();
        bundle2.putString("_o", str2);
        Bundle bundleQ = q(str, bundle2, Collections.singletonList("_o"), true);
        if (z) {
            bundleQ = M(bundleQ);
        }
        Preconditions.h(bundleQ);
        return new zzbh(str, new zzbf(bundleQ), str2, j2, j3);
    }

    public final boolean O(Context context, String str) {
        Signature[] signatureArr;
        zzic zzicVar = this.f31850a;
        X500Principal x500Principal = new X500Principal("CN=Android Debug,O=Android,C=US");
        try {
            PackageInfo packageInfoB = Wrappers.a(context).b(64, str);
            if (packageInfoB == null || (signatureArr = packageInfoB.signatures) == null || signatureArr.length <= 0) {
                return true;
            }
            return ((X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(signatureArr[0].toByteArray()))).getSubjectX500Principal().equals(x500Principal);
        } catch (PackageManager.NameNotFoundException e2) {
            zzgu zzguVar = zzicVar.f31842f;
            zzic.m(zzguVar);
            zzguVar.f31769f.b(e2, "Package name not found");
            return true;
        } catch (CertificateException e3) {
            zzgu zzguVar2 = zzicVar.f31842f;
            zzic.m(zzguVar2);
            zzguVar2.f31769f.b(e3, "Error obtaining certificate");
            return true;
        }
    }

    public final boolean Q(int i2) {
        Boolean bool = this.f31850a.p().f31915e;
        if (R() < i2 / 1000) {
            return (bool == null || bool.booleanValue()) ? false : true;
        }
        return true;
    }

    public final int R() {
        if (this.f32013h == null) {
            GoogleApiAvailabilityLight googleApiAvailabilityLight = GoogleApiAvailabilityLight.f28964b;
            Context context = this.f31850a.f31838a;
            googleApiAvailabilityLight.getClass();
            int i2 = GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE;
            int i3 = 0;
            try {
                i3 = context.getPackageManager().getPackageInfo("com.google.android.gms", 0).versionCode;
            } catch (PackageManager.NameNotFoundException unused) {
            }
            this.f32013h = Integer.valueOf(i3 / 1000);
        }
        return this.f32013h.intValue();
    }

    public final void S(Bundle bundle, long j2) {
        long j3 = bundle.getLong("_et");
        if (j3 != 0) {
            zzgu zzguVar = this.f31850a.f31842f;
            zzic.m(zzguVar);
            zzguVar.f31771i.b(Long.valueOf(j3), "Params already contained engagement");
        } else {
            j3 = 0;
        }
        bundle.putLong("_et", j2 + j3);
    }

    public final void T(String str, com.google.android.gms.internal.measurement.zzcs zzcsVar) {
        Bundle bundle = new Bundle();
        bundle.putString("r", str);
        try {
            zzcsVar.V1(bundle);
        } catch (RemoteException e2) {
            zzgu zzguVar = this.f31850a.f31842f;
            zzic.m(zzguVar);
            zzguVar.f31771i.b(e2, "Error returning string value to wrapper");
        }
    }

    public final void U(com.google.android.gms.internal.measurement.zzcs zzcsVar, long j2) {
        Bundle bundle = new Bundle();
        bundle.putLong("r", j2);
        try {
            zzcsVar.V1(bundle);
        } catch (RemoteException e2) {
            zzgu zzguVar = this.f31850a.f31842f;
            zzic.m(zzguVar);
            zzguVar.f31771i.b(e2, "Error returning long value to wrapper");
        }
    }

    public final void V(com.google.android.gms.internal.measurement.zzcs zzcsVar, int i2) {
        Bundle bundle = new Bundle();
        bundle.putInt("r", i2);
        try {
            zzcsVar.V1(bundle);
        } catch (RemoteException e2) {
            zzgu zzguVar = this.f31850a.f31842f;
            zzic.m(zzguVar);
            zzguVar.f31771i.b(e2, "Error returning int value to wrapper");
        }
    }

    public final void W(com.google.android.gms.internal.measurement.zzcs zzcsVar, byte[] bArr) {
        Bundle bundle = new Bundle();
        bundle.putByteArray("r", bArr);
        try {
            zzcsVar.V1(bundle);
        } catch (RemoteException e2) {
            zzgu zzguVar = this.f31850a.f31842f;
            zzic.m(zzguVar);
            zzguVar.f31771i.b(e2, "Error returning byte array to wrapper");
        }
    }

    public final void X(com.google.android.gms.internal.measurement.zzcs zzcsVar, boolean z) {
        Bundle bundle = new Bundle();
        bundle.putBoolean("r", z);
        try {
            zzcsVar.V1(bundle);
        } catch (RemoteException e2) {
            zzgu zzguVar = this.f31850a.f31842f;
            zzic.m(zzguVar);
            zzguVar.f31771i.b(e2, "Error returning boolean value to wrapper");
        }
    }

    public final void Y(com.google.android.gms.internal.measurement.zzcs zzcsVar, Bundle bundle) {
        try {
            zzcsVar.V1(bundle);
        } catch (RemoteException e2) {
            zzgu zzguVar = this.f31850a.f31842f;
            zzic.m(zzguVar);
            zzguVar.f31771i.b(e2, "Error returning bundle value to wrapper");
        }
    }

    public final void Z(com.google.android.gms.internal.measurement.zzcs zzcsVar, ArrayList arrayList) {
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList("r", arrayList);
        try {
            zzcsVar.V1(bundle);
        } catch (RemoteException e2) {
            zzgu zzguVar = this.f31850a.f31842f;
            zzic.m(zzguVar);
            zzguVar.f31771i.b(e2, "Error returning bundle list to wrapper");
        }
    }

    public final String d0() {
        byte[] bArr = new byte[16];
        f0().nextBytes(bArr);
        return String.format(Locale.US, "%032x", new BigInteger(1, bArr));
    }

    public final long e0() {
        long andIncrement;
        long j2;
        AtomicLong atomicLong = this.d;
        if (atomicLong.get() != 0) {
            AtomicLong atomicLong2 = this.d;
            synchronized (atomicLong2) {
                atomicLong2.compareAndSet(-1L, 1L);
                andIncrement = atomicLong2.getAndIncrement();
            }
            return andIncrement;
        }
        synchronized (atomicLong) {
            long jNanoTime = System.nanoTime();
            this.f31850a.f31846k.getClass();
            long jNextLong = new Random(jNanoTime ^ System.currentTimeMillis()).nextLong();
            int i2 = this.f32011e + 1;
            this.f32011e = i2;
            j2 = jNextLong + ((long) i2);
        }
        return j2;
    }

    public final SecureRandom f0() {
        g();
        if (this.f32010c == null) {
            this.f32010c = new SecureRandom();
        }
        return this.f32010c;
    }

    @Override // com.google.android.gms.measurement.internal.zzjf
    public final boolean h() {
        return true;
    }

    public final Bundle h0(Uri uri) {
        String queryParameter;
        String queryParameter2;
        String queryParameter3;
        String queryParameter4;
        String queryParameter5;
        String queryParameter6;
        String queryParameter7;
        String queryParameter8;
        String queryParameter9;
        zzic zzicVar = this.f31850a;
        if (uri != null) {
            try {
                if (uri.isHierarchical()) {
                    queryParameter2 = uri.getQueryParameter("utm_campaign");
                    queryParameter3 = uri.getQueryParameter("utm_source");
                    queryParameter4 = uri.getQueryParameter("utm_medium");
                    queryParameter5 = uri.getQueryParameter("gclid");
                    queryParameter6 = uri.getQueryParameter("gbraid");
                    queryParameter7 = uri.getQueryParameter("utm_id");
                    queryParameter8 = uri.getQueryParameter("dclid");
                    queryParameter9 = uri.getQueryParameter("srsltid");
                    queryParameter = uri.getQueryParameter("sfmc_id");
                } else {
                    queryParameter = null;
                    queryParameter2 = null;
                    queryParameter3 = null;
                    queryParameter4 = null;
                    queryParameter5 = null;
                    queryParameter6 = null;
                    queryParameter7 = null;
                    queryParameter8 = null;
                    queryParameter9 = null;
                }
                if (!TextUtils.isEmpty(queryParameter2) || !TextUtils.isEmpty(queryParameter3) || !TextUtils.isEmpty(queryParameter4) || !TextUtils.isEmpty(queryParameter5) || !TextUtils.isEmpty(queryParameter6) || !TextUtils.isEmpty(queryParameter7) || !TextUtils.isEmpty(queryParameter8) || !TextUtils.isEmpty(queryParameter9) || !TextUtils.isEmpty(queryParameter)) {
                    Bundle bundle = new Bundle();
                    if (!TextUtils.isEmpty(queryParameter2)) {
                        bundle.putString("campaign", queryParameter2);
                    }
                    if (!TextUtils.isEmpty(queryParameter3)) {
                        bundle.putString(Payload.SOURCE, queryParameter3);
                    }
                    if (!TextUtils.isEmpty(queryParameter4)) {
                        bundle.putString("medium", queryParameter4);
                    }
                    if (!TextUtils.isEmpty(queryParameter5)) {
                        bundle.putString("gclid", queryParameter5);
                    }
                    if (!TextUtils.isEmpty(queryParameter6)) {
                        bundle.putString("gbraid", queryParameter6);
                    }
                    String queryParameter10 = uri.getQueryParameter("gad_source");
                    if (!TextUtils.isEmpty(queryParameter10)) {
                        bundle.putString("gad_source", queryParameter10);
                    }
                    String queryParameter11 = uri.getQueryParameter("utm_term");
                    if (!TextUtils.isEmpty(queryParameter11)) {
                        bundle.putString("term", queryParameter11);
                    }
                    String queryParameter12 = uri.getQueryParameter("utm_content");
                    if (!TextUtils.isEmpty(queryParameter12)) {
                        bundle.putString("content", queryParameter12);
                    }
                    String queryParameter13 = uri.getQueryParameter("aclid");
                    if (!TextUtils.isEmpty(queryParameter13)) {
                        bundle.putString("aclid", queryParameter13);
                    }
                    String queryParameter14 = uri.getQueryParameter("cp1");
                    if (!TextUtils.isEmpty(queryParameter14)) {
                        bundle.putString("cp1", queryParameter14);
                    }
                    String queryParameter15 = uri.getQueryParameter("anid");
                    if (!TextUtils.isEmpty(queryParameter15)) {
                        bundle.putString("anid", queryParameter15);
                    }
                    if (!TextUtils.isEmpty(queryParameter7)) {
                        bundle.putString("campaign_id", queryParameter7);
                    }
                    if (!TextUtils.isEmpty(queryParameter8)) {
                        bundle.putString("dclid", queryParameter8);
                    }
                    String queryParameter16 = uri.getQueryParameter("utm_source_platform");
                    if (!TextUtils.isEmpty(queryParameter16)) {
                        bundle.putString("source_platform", queryParameter16);
                    }
                    String queryParameter17 = uri.getQueryParameter("utm_creative_format");
                    if (!TextUtils.isEmpty(queryParameter17)) {
                        bundle.putString("creative_format", queryParameter17);
                    }
                    String queryParameter18 = uri.getQueryParameter("utm_marketing_tactic");
                    if (!TextUtils.isEmpty(queryParameter18)) {
                        bundle.putString("marketing_tactic", queryParameter18);
                    }
                    if (!TextUtils.isEmpty(queryParameter9)) {
                        bundle.putString("srsltid", queryParameter9);
                    }
                    if (!TextUtils.isEmpty(queryParameter)) {
                        bundle.putString("sfmc_id", queryParameter);
                    }
                    for (String str : uri.getQueryParameterNames()) {
                        if (str.startsWith("gad_")) {
                            String queryParameter19 = uri.getQueryParameter(str);
                            if (!TextUtils.isEmpty(queryParameter19)) {
                                bundle.putString(str, queryParameter19);
                            }
                        }
                    }
                    if (zzicVar.d.r(null, zzfy.a1)) {
                        String string = new Uri.Builder().scheme(uri.getScheme()).authority(uri.getAuthority()).path(uri.getPath()).build().toString();
                        zzicVar.d.getClass();
                        int iMax = Math.max(500, 256);
                        if (string.length() > iMax) {
                            string = n(iMax - 3, string, true);
                        }
                        if (!TextUtils.isEmpty(string)) {
                            bundle.putString("deep_link_url", string);
                        }
                    }
                    return bundle;
                }
            } catch (UnsupportedOperationException e2) {
                zzgu zzguVar = zzicVar.f31842f;
                zzic.m(zzguVar);
                zzguVar.f31771i.b(e2, "Install referrer url isn't a hierarchical URI");
                return null;
            }
        }
        return null;
    }

    public final boolean j0(String str, String str2) {
        zzic zzicVar = this.f31850a;
        if (str2 == null) {
            zzgu zzguVar = zzicVar.f31842f;
            zzic.m(zzguVar);
            zzguVar.f31770h.b(str, "Name is required and can't be null. Type");
            return false;
        }
        if (str2.length() == 0) {
            zzgu zzguVar2 = zzicVar.f31842f;
            zzic.m(zzguVar2);
            zzguVar2.f31770h.b(str, "Name is required and can't be empty. Type");
            return false;
        }
        int iCodePointAt = str2.codePointAt(0);
        if (!Character.isLetter(iCodePointAt)) {
            zzgu zzguVar3 = zzicVar.f31842f;
            zzic.m(zzguVar3);
            zzguVar3.f31770h.c("Name must start with a letter. Type, name", str, str2);
            return false;
        }
        int length = str2.length();
        int iCharCount = Character.charCount(iCodePointAt);
        while (iCharCount < length) {
            int iCodePointAt2 = str2.codePointAt(iCharCount);
            if (iCodePointAt2 != 95 && !Character.isLetterOrDigit(iCodePointAt2)) {
                zzgu zzguVar4 = zzicVar.f31842f;
                zzic.m(zzguVar4);
                zzguVar4.f31770h.c("Name must consist of letters, digits or _ (underscores). Type, name", str, str2);
                return false;
            }
            iCharCount += Character.charCount(iCodePointAt2);
        }
        return true;
    }

    public final boolean k(String str, String str2, int i2, Object obj) {
        if (obj == null || (obj instanceof Long) || (obj instanceof Float) || (obj instanceof Integer) || (obj instanceof Byte) || (obj instanceof Short) || (obj instanceof Boolean) || (obj instanceof Double)) {
            return true;
        }
        if (!(obj instanceof String) && !(obj instanceof Character) && !(obj instanceof CharSequence)) {
            return false;
        }
        String string = obj.toString();
        if (string.codePointCount(0, string.length()) <= i2) {
            return true;
        }
        zzgu zzguVar = this.f31850a.f31842f;
        zzic.m(zzguVar);
        zzguVar.f31773k.d("Value is too long; discarded. Value kind, name, value length", str, str2, Integer.valueOf(string.length()));
        return false;
    }

    public final boolean k0(String str, String str2) {
        zzic zzicVar = this.f31850a;
        if (str2 == null) {
            zzgu zzguVar = zzicVar.f31842f;
            zzic.m(zzguVar);
            zzguVar.f31770h.b(str, "Name is required and can't be null. Type");
            return false;
        }
        if (str2.length() == 0) {
            zzgu zzguVar2 = zzicVar.f31842f;
            zzic.m(zzguVar2);
            zzguVar2.f31770h.b(str, "Name is required and can't be empty. Type");
            return false;
        }
        int iCodePointAt = str2.codePointAt(0);
        if (!Character.isLetter(iCodePointAt)) {
            if (iCodePointAt != 95) {
                zzgu zzguVar3 = zzicVar.f31842f;
                zzic.m(zzguVar3);
                zzguVar3.f31770h.c("Name must start with a letter or _ (underscore). Type, name", str, str2);
                return false;
            }
            iCodePointAt = 95;
        }
        int length = str2.length();
        int iCharCount = Character.charCount(iCodePointAt);
        while (iCharCount < length) {
            int iCodePointAt2 = str2.codePointAt(iCharCount);
            if (iCodePointAt2 != 95 && !Character.isLetterOrDigit(iCodePointAt2)) {
                zzgu zzguVar4 = zzicVar.f31842f;
                zzic.m(zzguVar4);
                zzguVar4.f31770h.c("Name must consist of letters, digits or _ (underscores). Type, name", str, str2);
                return false;
            }
            iCharCount += Character.charCount(iCodePointAt2);
        }
        return true;
    }

    public final void l(String str, String str2, Bundle bundle, List list, boolean z) {
        int iQ0;
        int iO;
        list = list;
        if (bundle == null) {
            return;
        }
        zzic zzicVar = this.f31850a;
        zzal zzalVar = zzicVar.d;
        zzgu zzguVar = zzicVar.f31842f;
        zzgn zzgnVar = zzicVar.f31845j;
        zzpp zzppVar = zzalVar.f31850a.f31844i;
        zzic.k(zzppVar);
        int i2 = true != zzppVar.Q(231100000) ? 0 : 35;
        int i3 = 0;
        boolean z2 = false;
        for (String str3 : new TreeSet(bundle.keySet())) {
            if (list == null || !list.contains(str3)) {
                iQ0 = !z ? q0(str3) : 0;
                if (iQ0 == 0) {
                    iQ0 = r0(str3);
                }
            } else {
                iQ0 = 0;
            }
            if (iQ0 != 0) {
                u(bundle, iQ0, str3, iQ0 == 3 ? str3 : null);
                bundle.remove(str3);
            } else {
                if (s0(bundle.get(str3))) {
                    zzic.m(zzguVar);
                    zzguVar.f31773k.d("Nested Bundle parameters are not allowed; discarded. event name, param name, child param name", str, str2, str3);
                    iO = 22;
                } else {
                    iO = o(str, str3, bundle.get(str3), bundle, list, z, false);
                }
                if (iO != 0 && !"_ev".equals(str3)) {
                    u(bundle, iO, str3, bundle.get(str3));
                    bundle.remove(str3);
                } else if (g0(str3) && !H(str3, zzjn.d)) {
                    i3++;
                    if (!Q(231100000)) {
                        zzic.m(zzguVar);
                        zzguVar.f31770h.c("Item array not supported on client's version of Google Play Services (Android Only)", zzgnVar.a(str), zzgnVar.e(bundle));
                        E(23, bundle);
                        bundle.remove(str3);
                    } else if (i3 > i2) {
                        if (!z2) {
                            zzic.m(zzguVar);
                            zzgs zzgsVar = zzguVar.f31770h;
                            StringBuilder sb = new StringBuilder(String.valueOf(i2).length() + 55);
                            sb.append("Item can't contain more than ");
                            sb.append(i2);
                            sb.append(" item-scoped custom params");
                            zzgsVar.c(sb.toString(), zzgnVar.a(str), zzgnVar.e(bundle));
                        }
                        E(28, bundle);
                        bundle.remove(str3);
                        z2 = true;
                    }
                }
            }
        }
    }

    public final boolean l0(String str, String[] strArr, String[] strArr2, String str2) {
        zzic zzicVar = this.f31850a;
        if (str2 == null) {
            zzgu zzguVar = zzicVar.f31842f;
            zzic.m(zzguVar);
            zzguVar.f31770h.b(str, "Name is required and can't be null. Type");
            return false;
        }
        for (int i2 = 0; i2 < 3; i2++) {
            if (str2.startsWith(f32008i[i2])) {
                zzgu zzguVar2 = zzicVar.f31842f;
                zzic.m(zzguVar2);
                zzguVar2.f31770h.c("Name starts with reserved prefix. Type, name", str, str2);
                return false;
            }
        }
        if (strArr == null || !H(str2, strArr)) {
            return true;
        }
        if (strArr2 != null && H(str2, strArr2)) {
            return true;
        }
        zzgu zzguVar3 = zzicVar.f31842f;
        zzic.m(zzguVar3);
        zzguVar3.f31770h.c("Name is reserved. Type, name", str, str2);
        return false;
    }

    public final boolean m(String str) {
        boolean zIsEmpty = TextUtils.isEmpty(str);
        zzic zzicVar = this.f31850a;
        if (zIsEmpty) {
            zzgu zzguVar = zzicVar.f31842f;
            zzic.m(zzguVar);
            zzguVar.f31770h.a("Missing google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI");
            return false;
        }
        Preconditions.h(str);
        if (str.matches("^1:\\d+:android:[a-f0-9]+$")) {
            return true;
        }
        zzgu zzguVar2 = zzicVar.f31842f;
        zzic.m(zzguVar2);
        zzguVar2.f31770h.b(zzgu.o(str), "Invalid google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI. provided id");
        return false;
    }

    public final boolean m0(int i2, String str, String str2) {
        zzic zzicVar = this.f31850a;
        if (str2 == null) {
            zzgu zzguVar = zzicVar.f31842f;
            zzic.m(zzguVar);
            zzguVar.f31770h.b(str, "Name is required and can't be null. Type");
            return false;
        }
        if (str2.codePointCount(0, str2.length()) <= i2) {
            return true;
        }
        zzgu zzguVar2 = zzicVar.f31842f;
        zzic.m(zzguVar2);
        zzguVar2.f31770h.d("Name is too long. Type, maximum supported length, name", str, Integer.valueOf(i2), str2);
        return false;
    }

    public final int n0(String str) {
        if (!k0(MvelScriptManager.VAR_EVENT, str)) {
            return 2;
        }
        if (l0(MvelScriptManager.VAR_EVENT, zzjm.f31855a, this.f31850a.d.r(null, zzfy.f1) ? zzjm.f31857c : zzjm.f31856b, str)) {
            return !m0(40, MvelScriptManager.VAR_EVENT, str) ? 2 : 0;
        }
        return 13;
    }

    /* JADX WARN: Code duplicated, block: B:34:0x0097  */
    public final int o(String str, String str2, Object obj, Bundle bundle, List list, boolean z, boolean z2) {
        int i2;
        int size;
        g();
        boolean zS0 = s0(obj);
        zzic zzicVar = this.f31850a;
        int i3 = 0;
        if (!zS0) {
            i2 = 0;
        } else {
            if (!z2) {
                return 21;
            }
            if (!H(str2, zzjn.f31862c)) {
                return 20;
            }
            zznl zznlVarP = zzicVar.p();
            zznlVarP.g();
            zznlVarP.h();
            if (zznlVarP.n()) {
                zzpp zzppVar = zznlVarP.f31850a.f31844i;
                zzic.k(zzppVar);
                if (zzppVar.R() < 200900) {
                    return 25;
                }
            }
            boolean z3 = obj instanceof Parcelable[];
            if (z3) {
                size = ((Parcelable[]) obj).length;
            } else if (obj instanceof ArrayList) {
                size = ((ArrayList) obj).size();
            } else {
                i2 = 0;
            }
            if (size > 200) {
                zzgu zzguVar = zzicVar.f31842f;
                zzic.m(zzguVar);
                zzguVar.f31773k.d("Parameter array is too long; discarded. Value kind, name, array length", "param", str2, Integer.valueOf(size));
                i2 = 17;
                if (z3) {
                    Parcelable[] parcelableArr = (Parcelable[]) obj;
                    if (parcelableArr.length > 200) {
                        bundle.putParcelableArray(str2, (Parcelable[]) Arrays.copyOf(parcelableArr, 200));
                    }
                } else if (obj instanceof ArrayList) {
                    ArrayList arrayList = (ArrayList) obj;
                    if (arrayList.size() > 200) {
                        bundle.putParcelableArrayList(str2, new ArrayList<>(arrayList.subList(0, 200)));
                    }
                }
            } else {
                i2 = 0;
            }
        }
        int iMax = 500;
        if (K(str) || K(str2)) {
            zzicVar.d.getClass();
            iMax = Math.max(500, 256);
        } else {
            zzicVar.d.getClass();
        }
        if (!k("param", str2, iMax, obj)) {
            if (!z2) {
                return 4;
            }
            if (obj instanceof Bundle) {
                l(str, str2, (Bundle) obj, list, z);
                return i2;
            }
            if (obj instanceof Parcelable[]) {
                Parcelable[] parcelableArr2 = (Parcelable[]) obj;
                int length = parcelableArr2.length;
                while (i3 < length) {
                    Parcelable parcelable = parcelableArr2[i3];
                    if (!(parcelable instanceof Bundle)) {
                        zzgu zzguVar2 = zzicVar.f31842f;
                        zzic.m(zzguVar2);
                        zzguVar2.f31773k.c("All Parcelable[] elements must be of type Bundle. Value type, name", parcelable.getClass(), str2);
                        return 4;
                    }
                    l(str, str2, (Bundle) parcelable, list, z);
                    i3++;
                }
            } else {
                if (!(obj instanceof ArrayList)) {
                    return 4;
                }
                ArrayList arrayList2 = (ArrayList) obj;
                int size2 = arrayList2.size();
                while (i3 < size2) {
                    Object obj2 = arrayList2.get(i3);
                    if (!(obj2 instanceof Bundle)) {
                        zzgu zzguVar3 = zzicVar.f31842f;
                        zzic.m(zzguVar3);
                        zzguVar3.f31773k.c("All ArrayList elements must be of type Bundle. Value type, name", obj2 != null ? obj2.getClass() : "null", str2);
                        return 4;
                    }
                    l(str, str2, (Bundle) obj2, list, z);
                    i3++;
                }
            }
        }
        return i2;
    }

    public final boolean o0(String str) {
        return this.f31850a.d.r(null, zzfy.f1) ? H(str, zzjm.f31858e) : H(str, zzjm.d);
    }

    public final Object p(Object obj, String str) {
        boolean zEquals = "_ev".equals(str);
        int iMax = 500;
        zzic zzicVar = this.f31850a;
        if (zEquals) {
            zzicVar.d.getClass();
            return F(Math.max(500, 256), obj, true, true);
        }
        if (K(str)) {
            zzicVar.d.getClass();
            iMax = Math.max(500, 256);
        } else {
            zzicVar.d.getClass();
        }
        return F(iMax, obj, false, true);
    }

    public final int p0(String str) {
        if (!k0("user property", str)) {
            return 6;
        }
        if (!l0("user property", zzjo.f31863a, null, str)) {
            return 15;
        }
        this.f31850a.getClass();
        return !m0(24, "user property", str) ? 6 : 0;
    }

    public final Bundle q(String str, Bundle bundle, List list, boolean z) {
        int iQ0;
        boolean zH = H(str, zzjm.g);
        if (bundle == null) {
            return null;
        }
        Bundle bundle2 = new Bundle(bundle);
        zzic zzicVar = this.f31850a;
        zzal zzalVar = zzicVar.d;
        zzgn zzgnVar = zzicVar.f31845j;
        zzpp zzppVar = zzalVar.f31850a.f31844i;
        zzic.k(zzppVar);
        int i2 = zzppVar.Q(201500000) ? 100 : 25;
        int i3 = 0;
        boolean z2 = false;
        for (String str2 : new TreeSet(bundle.keySet())) {
            if (list == 0 || !list.contains(str2)) {
                iQ0 = !z ? q0(str2) : 0;
                if (iQ0 == 0) {
                    iQ0 = r0(str2);
                }
            } else {
                iQ0 = 0;
            }
            if (iQ0 != 0) {
                u(bundle2, iQ0, str2, iQ0 == 3 ? str2 : null);
                bundle2.remove(str2);
            } else {
                int iO = o(str, str2, bundle.get(str2), bundle2, list, z, zH);
                if (iO == 17) {
                    u(bundle2, 17, str2, Boolean.FALSE);
                } else if (iO != 0 && !"_ev".equals(str2)) {
                    u(bundle2, iO, iO == 21 ? str : str2, bundle.get(str2));
                    bundle2.remove(str2);
                }
                if (g0(str2)) {
                    i3++;
                    if (i3 > i2) {
                        if (!z2) {
                            StringBuilder sb = new StringBuilder(String.valueOf(i2).length() + 37);
                            sb.append("Event can't contain more than ");
                            sb.append(i2);
                            sb.append(" params");
                            String string = sb.toString();
                            zzgu zzguVar = zzicVar.f31842f;
                            zzic.m(zzguVar);
                            zzguVar.f31770h.c(string, zzgnVar.a(str), zzgnVar.e(bundle));
                        }
                        E(5, bundle2);
                        bundle2.remove(str2);
                        z2 = true;
                    }
                }
            }
        }
        return bundle2;
    }

    public final int q0(String str) {
        if (!j0("event param", str)) {
            return 3;
        }
        if (!l0("event param", null, null, str)) {
            return 14;
        }
        this.f31850a.getClass();
        return !m0(40, "event param", str) ? 3 : 0;
    }

    public final void r(zzgv zzgvVar, int i2) {
        Bundle bundle = zzgvVar.f31777e;
        int i3 = 0;
        boolean z = false;
        for (String str : new TreeSet(bundle.keySet())) {
            if (g0(str) && (i3 = i3 + 1) > i2) {
                if (!z) {
                    StringBuilder sb = new StringBuilder(String.valueOf(i2).length() + 37);
                    sb.append("Event can't contain more than ");
                    sb.append(i2);
                    sb.append(" params");
                    String string = sb.toString();
                    zzic zzicVar = this.f31850a;
                    zzgu zzguVar = zzicVar.f31842f;
                    zzgn zzgnVar = zzicVar.f31845j;
                    zzic.m(zzguVar);
                    zzguVar.f31770h.c(string, zzgnVar.a(zzgvVar.f31774a), zzgnVar.e(bundle));
                    E(5, bundle);
                }
                bundle.remove(str);
                z = true;
            }
        }
    }

    public final int r0(String str) {
        if (!k0("event param", str)) {
            return 3;
        }
        if (!l0("event param", null, null, str)) {
            return 14;
        }
        this.f31850a.getClass();
        return !m0(40, "event param", str) ? 3 : 0;
    }

    public final void s(Parcelable[] parcelableArr, int i2) {
        Preconditions.h(parcelableArr);
        for (Parcelable parcelable : parcelableArr) {
            Bundle bundle = (Bundle) parcelable;
            int i3 = 0;
            boolean z = false;
            for (String str : new TreeSet(bundle.keySet())) {
                if (g0(str) && !H(str, zzjn.d) && (i3 = i3 + 1) > i2) {
                    if (!z) {
                        zzic zzicVar = this.f31850a;
                        zzgu zzguVar = zzicVar.f31842f;
                        zzgn zzgnVar = zzicVar.f31845j;
                        zzic.m(zzguVar);
                        zzgs zzgsVar = zzguVar.f31770h;
                        StringBuilder sb = new StringBuilder(String.valueOf(i2).length() + 60);
                        sb.append("Param can't contain more than ");
                        sb.append(i2);
                        sb.append(" item-scoped custom parameters");
                        zzgsVar.c(sb.toString(), zzgnVar.b(str), zzgnVar.e(bundle));
                    }
                    E(28, bundle);
                    bundle.remove(str);
                    z = true;
                }
            }
        }
    }

    public final void t(Bundle bundle, Bundle bundle2) {
        if (bundle2 == null) {
            return;
        }
        for (String str : bundle2.keySet()) {
            if (!bundle.containsKey(str)) {
                zzpp zzppVar = this.f31850a.f31844i;
                zzic.k(zzppVar);
                zzppVar.x(bundle, str, bundle2.get(str));
            }
        }
    }

    public final void u(Bundle bundle, int i2, String str, Object obj) {
        if (E(i2, bundle)) {
            this.f31850a.getClass();
            bundle.putString("_ev", n(40, str, true));
            if (obj != null) {
                if ((obj instanceof String) || (obj instanceof CharSequence)) {
                    bundle.putLong("_el", obj.toString().length());
                }
            }
        }
    }

    public final int v(Object obj, String str) {
        return "_ldl".equals(str) ? k("user property referrer", str, G(str), obj) : k("user property", str, G(str), obj) ? 0 : 7;
    }

    public final Object w(Object obj, String str) {
        return "_ldl".equals(str) ? F(G(str), obj, true, false) : F(G(str), obj, false, false);
    }

    public final void x(Bundle bundle, String str, Object obj) {
        if (bundle == null) {
            return;
        }
        if (obj instanceof Long) {
            bundle.putLong(str, ((Long) obj).longValue());
            return;
        }
        if (obj instanceof String) {
            bundle.putString(str, String.valueOf(obj));
            return;
        }
        if (obj instanceof Double) {
            bundle.putDouble(str, ((Double) obj).doubleValue());
            return;
        }
        if (obj instanceof Bundle[]) {
            bundle.putParcelableArray(str, (Bundle[]) obj);
            return;
        }
        if (str != null) {
            String simpleName = obj != null ? obj.getClass().getSimpleName() : null;
            zzic zzicVar = this.f31850a;
            zzgu zzguVar = zzicVar.f31842f;
            zzic.m(zzguVar);
            zzguVar.f31773k.c("Not putting event parameter. Invalid value type. name, type", zzicVar.f31845j.b(str), simpleName);
        }
    }
}
