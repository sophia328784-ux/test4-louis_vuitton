package com.google.android.gms.measurement.internal;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.text.TextUtils;
import com.appsflyer.sdk_base.referrer.Payload;
import com.batch.android.s.b;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.internal.measurement.zzadf;
import com.google.android.gms.internal.measurement.zzadp;
import com.google.android.gms.internal.measurement.zzaee;
import com.google.android.gms.internal.measurement.zzaef;
import com.google.android.gms.internal.measurement.zzaeh;
import com.google.android.gms.internal.measurement.zzafb;
import com.google.android.gms.internal.measurement.zzaif;
import com.google.android.gms.internal.measurement.zzair;
import com.google.android.gms.internal.measurement.zzais;
import com.google.android.gms.internal.measurement.zzhv;
import com.linkplay.medialib.ContentTree;
import com.sightcall.universal.media.offline.FileUtils;
import defpackage.n00;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.Serializable;
import java.security.MessageDigest;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;
import java.time.format.DateTimeParseException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.zip.GZIPOutputStream;

/* JADX INFO: loaded from: classes2.dex */
public final class zzpk extends zzos {
    public long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f31998e;

    public static final void A(StringBuilder sb, String str, com.google.android.gms.internal.measurement.zzii zziiVar) {
        if (zziiVar == null) {
            return;
        }
        v(sb, 3);
        sb.append(str);
        sb.append(" {\n");
        if (zziiVar.D() != 0) {
            v(sb, 4);
            sb.append("results: ");
            int i2 = 0;
            for (Long l : zziiVar.C()) {
                int i3 = i2 + 1;
                if (i2 != 0) {
                    sb.append(", ");
                }
                sb.append(l);
                i2 = i3;
            }
            sb.append('\n');
        }
        if (zziiVar.B() != 0) {
            v(sb, 4);
            sb.append("status: ");
            int i4 = 0;
            for (Long l2 : zziiVar.A()) {
                int i5 = i4 + 1;
                if (i4 != 0) {
                    sb.append(", ");
                }
                sb.append(l2);
                i4 = i5;
            }
            sb.append('\n');
        }
        if (zziiVar.F() != 0) {
            v(sb, 4);
            sb.append("dynamic_filter_timestamps: {");
            int i6 = 0;
            for (com.google.android.gms.internal.measurement.zzhq zzhqVar : zziiVar.E()) {
                int i7 = i6 + 1;
                if (i6 != 0) {
                    sb.append(", ");
                }
                sb.append(zzhqVar.A() ? Integer.valueOf(zzhqVar.B()) : null);
                sb.append(":");
                sb.append(zzhqVar.C() ? Long.valueOf(zzhqVar.D()) : null);
                i6 = i7;
            }
            sb.append("}\n");
        }
        if (zziiVar.H() != 0) {
            v(sb, 4);
            sb.append("sequence_filter_timestamps: {");
            int i8 = 0;
            for (com.google.android.gms.internal.measurement.zzik zzikVar : zziiVar.G()) {
                int i9 = i8 + 1;
                if (i8 != 0) {
                    sb.append(", ");
                }
                sb.append(zzikVar.A() ? Integer.valueOf(zzikVar.B()) : null);
                sb.append(": [");
                Iterator it = zzikVar.C().iterator();
                int i10 = 0;
                while (it.hasNext()) {
                    long jLongValue = ((Long) it.next()).longValue();
                    int i11 = i10 + 1;
                    if (i10 != 0) {
                        sb.append(", ");
                    }
                    sb.append(jLongValue);
                    i10 = i11;
                }
                sb.append("]");
                i8 = i9;
            }
            sb.append("}\n");
        }
        v(sb, 3);
        sb.append("}\n");
    }

    public static final void B(StringBuilder sb, int i2, String str, Object obj) {
        if (obj == null) {
            return;
        }
        v(sb, i2 + 1);
        sb.append(str);
        sb.append(": ");
        sb.append(obj);
        sb.append('\n');
    }

    public static final void C(StringBuilder sb, int i2, String str, com.google.android.gms.internal.measurement.zzfl zzflVar) {
        String str2;
        if (zzflVar == null) {
            return;
        }
        v(sb, i2);
        sb.append(str);
        sb.append(" {\n");
        if (zzflVar.A()) {
            int iK = zzflVar.K();
            if (iK == 1) {
                str2 = "UNKNOWN_COMPARISON_TYPE";
            } else if (iK == 2) {
                str2 = "LESS_THAN";
            } else if (iK != 3) {
                str2 = iK != 4 ? "BETWEEN" : "EQUAL";
            } else {
                str2 = "GREATER_THAN";
            }
            B(sb, i2, "comparison_type", str2);
        }
        if (zzflVar.B()) {
            B(sb, i2, "match_as_float", Boolean.valueOf(zzflVar.C()));
        }
        if (zzflVar.D()) {
            B(sb, i2, "comparison_value", zzflVar.E());
        }
        if (zzflVar.F()) {
            B(sb, i2, "min_comparison_value", zzflVar.G());
        }
        if (zzflVar.H()) {
            B(sb, i2, "max_comparison_value", zzflVar.I());
        }
        v(sb, i2);
        sb.append("}\n");
    }

    public static boolean K(String str) {
        return str != null && str.matches("([+-])?([0-9]+\\.?[0-9]*|[0-9]*\\.?[0-9]+)") && str.length() <= 310;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean L(zzaee zzaeeVar, int i2) {
        if (i2 < zzaeeVar.size() * 64) {
            return ((1 << (i2 % 64)) & ((Long) zzaeeVar.get(i2 / 64)).longValue()) != 0;
        }
        return false;
    }

    public static ArrayList M(BitSet bitSet) {
        int length = (bitSet.length() + 63) / 64;
        ArrayList arrayList = new ArrayList(length);
        for (int i2 = 0; i2 < length; i2++) {
            long j2 = 0;
            for (int i3 = 0; i3 < 64; i3++) {
                int i4 = (i2 * 64) + i3;
                if (i4 >= bitSet.length()) {
                    break;
                }
                if (bitSet.get(i4)) {
                    j2 |= 1 << i3;
                }
            }
            arrayList.add(Long.valueOf(j2));
        }
        return arrayList;
    }

    public static zzafb R(zzadp zzadpVar, byte[] bArr) throws zzaeh {
        zzadf zzadfVarA = zzadf.a();
        if (zzadfVarA != null) {
            zzadpVar.getClass();
            zzadpVar.x(bArr, bArr.length, zzadfVarA);
            return zzadpVar;
        }
        zzadpVar.getClass();
        zzadpVar.k(bArr.length, bArr);
        return zzadpVar;
    }

    public static int S(com.google.android.gms.internal.measurement.zzic zzicVar, String str) {
        for (int i2 = 0; i2 < ((com.google.android.gms.internal.measurement.zzid) zzicVar.f30406c).h2(); i2++) {
            if (str.equals(((com.google.android.gms.internal.measurement.zzid) zzicVar.f30406c).i2(i2).C())) {
                return i2;
            }
        }
        return -1;
    }

    public static Bundle[] T(zzaef zzaefVar) {
        ArrayList arrayList = new ArrayList();
        Iterator<E> it = zzaefVar.iterator();
        while (it.hasNext()) {
            com.google.android.gms.internal.measurement.zzhw zzhwVar = (com.google.android.gms.internal.measurement.zzhw) it.next();
            if (zzhwVar != null) {
                Bundle bundle = new Bundle();
                for (com.google.android.gms.internal.measurement.zzhw zzhwVar2 : zzhwVar.K()) {
                    if (zzhwVar2.C()) {
                        bundle.putString(zzhwVar2.B(), zzhwVar2.D());
                    } else if (zzhwVar2.E()) {
                        bundle.putLong(zzhwVar2.B(), zzhwVar2.F());
                    } else if (zzhwVar2.I()) {
                        bundle.putDouble(zzhwVar2.B(), zzhwVar2.J());
                    }
                }
                if (!bundle.isEmpty()) {
                    arrayList.add(bundle);
                }
            }
        }
        return (Bundle[]) arrayList.toArray(new Bundle[arrayList.size()]);
    }

    public static HashMap U(Bundle bundle, boolean z) {
        HashMap map = new HashMap();
        for (String str : bundle.keySet()) {
            Object obj = bundle.get(str);
            boolean z2 = obj instanceof Parcelable[];
            if (z2 || (obj instanceof ArrayList) || (obj instanceof Bundle)) {
                if (z) {
                    ArrayList arrayList = new ArrayList();
                    if (z2) {
                        for (Parcelable parcelable : (Parcelable[]) obj) {
                            if (parcelable instanceof Bundle) {
                                arrayList.add(U((Bundle) parcelable, false));
                            }
                        }
                    } else if (obj instanceof ArrayList) {
                        ArrayList arrayList2 = (ArrayList) obj;
                        int size = arrayList2.size();
                        for (int i2 = 0; i2 < size; i2++) {
                            Object obj2 = arrayList2.get(i2);
                            if (obj2 instanceof Bundle) {
                                arrayList.add(U((Bundle) obj2, false));
                            }
                        }
                    } else if (obj instanceof Bundle) {
                        arrayList.add(U((Bundle) obj, false));
                    }
                    map.put(str, arrayList);
                }
            } else if (obj != null) {
                map.put(str, obj);
            }
        }
        return map;
    }

    public static zzbh k(com.google.android.gms.internal.measurement.zzaa zzaaVar) {
        Object obj;
        Bundle bundleL = l(zzaaVar.f30296c, true);
        String string = (!bundleL.containsKey("_o") || (obj = bundleL.get("_o")) == null) ? Payload.TYPE_APP : obj.toString();
        String strB = zzlt.b(zzaaVar.f30294a, zzjm.f31855a, zzjm.f31859f);
        if (strB == null) {
            strB = zzaaVar.f30294a;
        }
        return new zzbh(strB, new zzbf(bundleL), string, zzaaVar.f30295b, 0L);
    }

    public static Bundle l(Map map, boolean z) {
        Bundle bundle = new Bundle();
        for (String str : map.keySet()) {
            Object obj = map.get(str);
            if (obj == null) {
                bundle.putString(str, null);
            } else if (obj instanceof Long) {
                bundle.putLong(str, ((Long) obj).longValue());
            } else if (obj instanceof Double) {
                bundle.putDouble(str, ((Double) obj).doubleValue());
            } else if (!(obj instanceof ArrayList)) {
                bundle.putString(str, obj.toString());
            } else if (z) {
                ArrayList arrayList = (ArrayList) obj;
                ArrayList arrayList2 = new ArrayList();
                int size = arrayList.size();
                for (int i2 = 0; i2 < size; i2++) {
                    arrayList2.add(l((Map) arrayList.get(i2), false));
                }
                bundle.putParcelableArray(str, (Parcelable[]) arrayList2.toArray(new Parcelable[0]));
            }
        }
        return bundle;
    }

    public static final void o(com.google.android.gms.internal.measurement.zzhr zzhrVar, String str, Long l) {
        List listY = zzhrVar.y();
        int i2 = 0;
        while (true) {
            if (i2 >= listY.size()) {
                i2 = -1;
                break;
            } else if (str.equals(((com.google.android.gms.internal.measurement.zzhw) listY.get(i2)).B())) {
                break;
            } else {
                i2++;
            }
        }
        zzhv zzhvVarM = com.google.android.gms.internal.measurement.zzhw.M();
        zzhvVarM.y(str);
        zzhvVarM.A(l.longValue());
        if (i2 < 0) {
            zzhrVar.C(zzhvVarM);
        } else {
            zzhrVar.l();
            ((com.google.android.gms.internal.measurement.zzhs) zzhrVar.f30406c).R(i2, (com.google.android.gms.internal.measurement.zzhw) zzhvVarM.v());
        }
    }

    public static final Bundle p(List list) {
        Bundle bundle = new Bundle();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            com.google.android.gms.internal.measurement.zzhw zzhwVar = (com.google.android.gms.internal.measurement.zzhw) it.next();
            String strB = zzhwVar.B();
            if (zzhwVar.I()) {
                bundle.putDouble(strB, zzhwVar.J());
            } else if (zzhwVar.G()) {
                bundle.putFloat(strB, zzhwVar.H());
            } else if (zzhwVar.C()) {
                bundle.putString(strB, zzhwVar.D());
            } else if (zzhwVar.E()) {
                bundle.putLong(strB, zzhwVar.F());
            }
        }
        return bundle;
    }

    public static final com.google.android.gms.internal.measurement.zzhw q(com.google.android.gms.internal.measurement.zzhs zzhsVar, String str) {
        for (com.google.android.gms.internal.measurement.zzhw zzhwVar : zzhsVar.C()) {
            if (zzhwVar.B().equals(str)) {
                return zzhwVar;
            }
        }
        return null;
    }

    public static final String r(String str, Map map) {
        if (map == null) {
            return null;
        }
        for (Map.Entry entry : map.entrySet()) {
            if (str.equalsIgnoreCase((String) entry.getKey())) {
                if (entry.getValue() == null || ((List) entry.getValue()).isEmpty()) {
                    return null;
                }
                return (String) ((List) entry.getValue()).get(0);
            }
        }
        return null;
    }

    public static final Serializable s(com.google.android.gms.internal.measurement.zzhs zzhsVar, String str) {
        com.google.android.gms.internal.measurement.zzhw zzhwVarQ = q(zzhsVar, str);
        if (zzhwVarQ == null) {
            return null;
        }
        return y(zzhwVarQ);
    }

    public static final void v(StringBuilder sb, int i2) {
        for (int i3 = 0; i3 < i2; i3++) {
            sb.append("  ");
        }
    }

    public static final void w(Uri.Builder builder, String str, String str2, HashSet hashSet) {
        if (hashSet.contains(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        builder.appendQueryParameter(str, str2);
    }

    public static final String x(boolean z, boolean z2, boolean z3) {
        StringBuilder sb = new StringBuilder();
        if (z) {
            sb.append("Dynamic ");
        }
        if (z2) {
            sb.append("Sequence ");
        }
        if (z3) {
            sb.append("Session-Scoped ");
        }
        return sb.toString();
    }

    /* JADX WARN: Type inference failed for: r2v3, types: [android.os.Bundle[], java.io.Serializable] */
    public static final Serializable y(com.google.android.gms.internal.measurement.zzhw zzhwVar) {
        if (zzhwVar.C()) {
            return zzhwVar.D();
        }
        if (zzhwVar.E()) {
            return Long.valueOf(zzhwVar.F());
        }
        if (zzhwVar.I()) {
            return Double.valueOf(zzhwVar.J());
        }
        if (zzhwVar.L() > 0) {
            return T(zzhwVar.K());
        }
        return null;
    }

    public static final void z(Uri.Builder builder, String[] strArr, Bundle bundle, HashSet hashSet) {
        for (String str : strArr) {
            String[] strArrSplit = str.split(",");
            String str2 = strArrSplit[0];
            String str3 = strArrSplit[strArrSplit.length - 1];
            String string = bundle.getString(str2);
            if (string != null) {
                w(builder, str3, string, hashSet);
            }
        }
    }

    public final void D(com.google.android.gms.internal.measurement.zzit zzitVar, Object obj) {
        Preconditions.h(obj);
        zzitVar.l();
        ((com.google.android.gms.internal.measurement.zziu) zzitVar.f30406c).P();
        zzitVar.l();
        ((com.google.android.gms.internal.measurement.zziu) zzitVar.f30406c).R();
        zzitVar.l();
        ((com.google.android.gms.internal.measurement.zziu) zzitVar.f30406c).T();
        if (obj instanceof String) {
            zzitVar.l();
            ((com.google.android.gms.internal.measurement.zziu) zzitVar.f30406c).O((String) obj);
        } else if (obj instanceof Long) {
            long jLongValue = ((Long) obj).longValue();
            zzitVar.l();
            ((com.google.android.gms.internal.measurement.zziu) zzitVar.f30406c).Q(jLongValue);
        } else if (obj instanceof Double) {
            double dDoubleValue = ((Double) obj).doubleValue();
            zzitVar.l();
            ((com.google.android.gms.internal.measurement.zziu) zzitVar.f30406c).S(dDoubleValue);
        } else {
            zzgu zzguVar = this.f31850a.f31842f;
            zzic.m(zzguVar);
            zzguVar.f31769f.b(obj, "Ignoring invalid (type) user attribute value");
        }
    }

    public final void E(zzhv zzhvVar, Object obj) {
        zzhvVar.l();
        ((com.google.android.gms.internal.measurement.zzhw) zzhvVar.f30406c).P();
        zzhvVar.l();
        ((com.google.android.gms.internal.measurement.zzhw) zzhvVar.f30406c).R();
        zzhvVar.l();
        ((com.google.android.gms.internal.measurement.zzhw) zzhvVar.f30406c).T();
        zzhvVar.l();
        ((com.google.android.gms.internal.measurement.zzhw) zzhvVar.f30406c).W();
        if (obj instanceof String) {
            zzhvVar.z((String) obj);
            return;
        }
        if (obj instanceof Long) {
            zzhvVar.A(((Long) obj).longValue());
            return;
        }
        if (obj instanceof Double) {
            double dDoubleValue = ((Double) obj).doubleValue();
            zzhvVar.l();
            ((com.google.android.gms.internal.measurement.zzhw) zzhvVar.f30406c).S(dDoubleValue);
            return;
        }
        if (!(obj instanceof Bundle[])) {
            zzgu zzguVar = this.f31850a.f31842f;
            zzic.m(zzguVar);
            zzguVar.f31769f.b(obj, "Ignoring invalid (type) event param value");
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (Bundle bundle : (Bundle[]) obj) {
            if (bundle != null) {
                zzhv zzhvVarM = com.google.android.gms.internal.measurement.zzhw.M();
                for (String str : bundle.keySet()) {
                    zzhv zzhvVarM2 = com.google.android.gms.internal.measurement.zzhw.M();
                    zzhvVarM2.y(str);
                    Object obj2 = bundle.get(str);
                    if (obj2 instanceof Long) {
                        zzhvVarM2.A(((Long) obj2).longValue());
                    } else if (obj2 instanceof String) {
                        zzhvVarM2.z((String) obj2);
                    } else if (obj2 instanceof Double) {
                        double dDoubleValue2 = ((Double) obj2).doubleValue();
                        zzhvVarM2.l();
                        ((com.google.android.gms.internal.measurement.zzhw) zzhvVarM2.f30406c).S(dDoubleValue2);
                    }
                    zzhvVarM.l();
                    ((com.google.android.gms.internal.measurement.zzhw) zzhvVarM.f30406c).U((com.google.android.gms.internal.measurement.zzhw) zzhvVarM2.v());
                }
                if (((com.google.android.gms.internal.measurement.zzhw) zzhvVarM.f30406c).L() > 0) {
                    arrayList.add((com.google.android.gms.internal.measurement.zzhw) zzhvVarM.v());
                }
            }
        }
        zzhvVar.l();
        ((com.google.android.gms.internal.measurement.zzhw) zzhvVar.f30406c).V(arrayList);
    }

    public final zzoh F(String str, com.google.android.gms.internal.measurement.zzic zzicVar, com.google.android.gms.internal.measurement.zzhr zzhrVar, String str2) {
        int iIndexOf;
        zzaif.a();
        zzic zzicVar2 = this.f31850a;
        zzal zzalVar = zzicVar2.d;
        if (!zzalVar.r(str, zzfy.O0)) {
            return null;
        }
        zzicVar2.f31846k.getClass();
        long jCurrentTimeMillis = System.currentTimeMillis();
        HashSet hashSet = new HashSet(Arrays.asList(zzalVar.n(str, zzfy.t0).split(",")));
        zzpg zzpgVar = this.f31948b;
        zzou zzouVar = zzpgVar.f31987j;
        zzht zzhtVar = zzpgVar.f31980a;
        zzht zzhtVar2 = zzouVar.f31948b.f31980a;
        zzpg.U(zzhtVar2);
        String strT = zzhtVar2.t(str);
        Uri.Builder builder = new Uri.Builder();
        zzal zzalVar2 = zzouVar.f31850a.d;
        builder.scheme(zzalVar2.n(str, zzfy.m0));
        if (TextUtils.isEmpty(strT)) {
            builder.authority(zzalVar2.n(str, zzfy.n0));
        } else {
            String strN = zzalVar2.n(str, zzfy.n0);
            StringBuilder sb = new StringBuilder(String.valueOf(strT).length() + 1 + String.valueOf(strN).length());
            sb.append(strT);
            sb.append(FileUtils.HIDDEN_PREFIX);
            sb.append(strN);
            builder.authority(sb.toString());
        }
        builder.path(zzalVar2.n(str, zzfy.o0));
        w(builder, "gmp_app_id", ((com.google.android.gms.internal.measurement.zzid) zzicVar.f30406c).P(), hashSet);
        zzalVar.m();
        w(builder, "gmp_version", String.valueOf(161000L), hashSet);
        String strJ = ((com.google.android.gms.internal.measurement.zzid) zzicVar.f30406c).J();
        zzfx zzfxVar = zzfy.R0;
        if (zzalVar.r(str, zzfxVar)) {
            zzpg.U(zzhtVar);
            if (zzhtVar.A(str)) {
                strJ = "";
            }
        }
        w(builder, "app_instance_id", strJ, hashSet);
        w(builder, "rdid", ((com.google.android.gms.internal.measurement.zzid) zzicVar.f30406c).G(), hashSet);
        w(builder, "bundle_id", zzicVar.F(), hashSet);
        String strE = zzhrVar.E();
        String strB = zzlt.b(strE, zzjm.f31859f, zzjm.f31855a);
        if (true != TextUtils.isEmpty(strB)) {
            strE = strB;
        }
        w(builder, "app_event_name", strE, hashSet);
        w(builder, "app_version", String.valueOf(((com.google.android.gms.internal.measurement.zzid) zzicVar.f30406c).V()), hashSet);
        String strU2 = ((com.google.android.gms.internal.measurement.zzid) zzicVar.f30406c).u2();
        if (zzalVar.r(str, zzfxVar)) {
            zzpg.U(zzhtVar);
            if (zzhtVar.z(str) && !TextUtils.isEmpty(strU2) && (iIndexOf = strU2.indexOf(FileUtils.HIDDEN_PREFIX)) != -1) {
                strU2 = strU2.substring(0, iIndexOf);
            }
        }
        w(builder, "os_version", strU2, hashSet);
        w(builder, "timestamp", String.valueOf(zzhrVar.G()), hashSet);
        if (((com.google.android.gms.internal.measurement.zzid) zzicVar.f30406c).I()) {
            w(builder, "lat", "1", hashSet);
        }
        w(builder, "privacy_sandbox_version", String.valueOf(((com.google.android.gms.internal.measurement.zzid) zzicVar.f30406c).R0()), hashSet);
        w(builder, "trigger_uri_source", "1", hashSet);
        w(builder, "trigger_uri_timestamp", String.valueOf(jCurrentTimeMillis), hashSet);
        w(builder, "request_uuid", str2, hashSet);
        List<com.google.android.gms.internal.measurement.zzhw> listY = zzhrVar.y();
        Bundle bundle = new Bundle();
        for (com.google.android.gms.internal.measurement.zzhw zzhwVar : listY) {
            String strB2 = zzhwVar.B();
            if (zzhwVar.I()) {
                bundle.putString(strB2, String.valueOf(zzhwVar.J()));
            } else if (zzhwVar.G()) {
                bundle.putString(strB2, String.valueOf(zzhwVar.H()));
            } else if (zzhwVar.C()) {
                bundle.putString(strB2, zzhwVar.D());
            } else if (zzhwVar.E()) {
                bundle.putString(strB2, String.valueOf(zzhwVar.F()));
            }
        }
        z(builder, zzalVar.n(str, zzfy.s0).split("\\|"), bundle, hashSet);
        List<com.google.android.gms.internal.measurement.zziu> listUnmodifiableList = Collections.unmodifiableList(((com.google.android.gms.internal.measurement.zzid) zzicVar.f30406c).g2());
        Bundle bundle2 = new Bundle();
        for (com.google.android.gms.internal.measurement.zziu zziuVar : listUnmodifiableList) {
            String strC = zziuVar.C();
            if (zziuVar.J()) {
                bundle2.putString(strC, String.valueOf(zziuVar.K()));
            } else if (zziuVar.H()) {
                bundle2.putString(strC, String.valueOf(zziuVar.I()));
            } else if (zziuVar.D()) {
                bundle2.putString(strC, zziuVar.E());
            } else if (zziuVar.F()) {
                bundle2.putString(strC, String.valueOf(zziuVar.G()));
            }
        }
        z(builder, zzalVar.n(str, zzfy.r0).split("\\|"), bundle2, hashSet);
        w(builder, "dma", true != ((com.google.android.gms.internal.measurement.zzid) zzicVar.f30406c).O0() ? ContentTree.ROOT_ID : "1", hashSet);
        if (!((com.google.android.gms.internal.measurement.zzid) zzicVar.f30406c).Q0().isEmpty()) {
            w(builder, "dma_cps", ((com.google.android.gms.internal.measurement.zzid) zzicVar.f30406c).Q0(), hashSet);
        }
        if (((com.google.android.gms.internal.measurement.zzid) zzicVar.f30406c).W0()) {
            com.google.android.gms.internal.measurement.zzha zzhaVarX0 = ((com.google.android.gms.internal.measurement.zzid) zzicVar.f30406c).X0();
            if (!zzhaVarX0.O().isEmpty()) {
                w(builder, "dl_gclid", zzhaVarX0.O(), hashSet);
            }
            if (!zzhaVarX0.Q().isEmpty()) {
                w(builder, "dl_gbraid", zzhaVarX0.Q(), hashSet);
            }
            if (!zzhaVarX0.S().isEmpty()) {
                w(builder, "dl_gs", zzhaVarX0.S(), hashSet);
            }
            if (zzhaVarX0.U() > 0) {
                w(builder, "dl_ss_ts", String.valueOf(zzhaVarX0.U()), hashSet);
            }
            if (!zzhaVarX0.W().isEmpty()) {
                w(builder, "mr_gclid", zzhaVarX0.W(), hashSet);
            }
            if (!zzhaVarX0.Y().isEmpty()) {
                w(builder, "mr_gbraid", zzhaVarX0.Y(), hashSet);
            }
            if (!zzhaVarX0.a0().isEmpty()) {
                w(builder, "mr_gs", zzhaVarX0.a0(), hashSet);
            }
            if (zzhaVarX0.c0() > 0) {
                w(builder, "mr_click_ts", String.valueOf(zzhaVarX0.c0()), hashSet);
            }
        }
        return new zzoh(1, builder.build().toString(), jCurrentTimeMillis);
    }

    public final com.google.android.gms.internal.measurement.zzhs G(zzbc zzbcVar) {
        com.google.android.gms.internal.measurement.zzhr zzhrVarQ = com.google.android.gms.internal.measurement.zzhs.Q();
        long j2 = zzbcVar.f31591f;
        zzhrVarQ.l();
        ((com.google.android.gms.internal.measurement.zzhs) zzhrVarQ.f30406c).Y(j2);
        long j3 = zzbcVar.f31590e;
        zzhrVarQ.l();
        ((com.google.android.gms.internal.measurement.zzhs) zzhrVarQ.f30406c).A(j3);
        zzbf zzbfVar = zzbcVar.g;
        zzbe zzbeVar = new zzbe(zzbfVar);
        Bundle bundle = zzbfVar.f31602b;
        while (true) {
            Iterator it = zzbeVar.f31601b;
            if (!it.hasNext()) {
                break;
            }
            String str = (String) it.next();
            zzhv zzhvVarM = com.google.android.gms.internal.measurement.zzhw.M();
            zzhvVarM.y(str);
            Object obj = bundle.get(str);
            Preconditions.h(obj);
            E(zzhvVarM, obj);
            zzhrVarQ.C(zzhvVarM);
        }
        String str2 = zzbcVar.f31589c;
        if (!TextUtils.isEmpty(str2) && bundle.get("_o") == null) {
            zzhv zzhvVarM2 = com.google.android.gms.internal.measurement.zzhw.M();
            zzhvVarM2.y("_o");
            zzhvVarM2.z(str2);
            zzhrVarQ.B((com.google.android.gms.internal.measurement.zzhw) zzhvVarM2.v());
        }
        return (com.google.android.gms.internal.measurement.zzhs) zzhrVarQ.v();
    }

    public final String H(com.google.android.gms.internal.measurement.zzib zzibVar) {
        String str;
        String str2;
        String str3;
        com.google.android.gms.internal.measurement.zzhe zzheVarT0;
        if (zzibVar == null) {
            return "";
        }
        StringBuilder sbT = n00.t("\nbatch {\n");
        if (zzibVar.F()) {
            B(sbT, 0, "upload_subdomain", zzibVar.G());
        }
        if (zzibVar.D()) {
            B(sbT, 0, "sgtm_join_id", zzibVar.E());
        }
        for (com.google.android.gms.internal.measurement.zzid zzidVar : zzibVar.A()) {
            if (zzidVar != null) {
                v(sbT, 1);
                sbT.append("bundle {\n");
                if (zzidVar.a0()) {
                    B(sbT, 1, "protocol_version", Integer.valueOf(zzidVar.a1()));
                }
                ((zzais) zzair.f30547c.f30548b.get()).getClass();
                zzic zzicVar = this.f31850a;
                zzal zzalVar = zzicVar.d;
                zzgn zzgnVar = zzicVar.f31845j;
                if (zzalVar.r(zzidVar.A(), zzfy.M0) && zzidVar.G0()) {
                    B(sbT, 1, "session_stitching_token", zzidVar.H0());
                }
                B(sbT, 1, "platform", zzidVar.t2());
                if (zzidVar.C()) {
                    B(sbT, 1, "gmp_version", Long.valueOf(zzidVar.D()));
                }
                if (zzidVar.E()) {
                    B(sbT, 1, "uploading_gmp_version", Long.valueOf(zzidVar.F()));
                }
                if (zzidVar.C0()) {
                    B(sbT, 1, "dynamite_version", Long.valueOf(zzidVar.D0()));
                }
                if (zzidVar.W()) {
                    B(sbT, 1, "config_version", Long.valueOf(zzidVar.X()));
                }
                B(sbT, 1, "gmp_app_id", zzidVar.P());
                B(sbT, 1, "app_id", zzidVar.A());
                B(sbT, 1, "app_version", zzidVar.B());
                if (zzidVar.U()) {
                    B(sbT, 1, "app_version_major", Integer.valueOf(zzidVar.V()));
                }
                B(sbT, 1, "firebase_instance_id", zzidVar.T());
                if (zzidVar.K()) {
                    B(sbT, 1, "dev_cert_hash", Long.valueOf(zzidVar.L()));
                }
                B(sbT, 1, "app_store", zzidVar.z2());
                if (zzidVar.j2()) {
                    B(sbT, 1, "upload_timestamp_millis", Long.valueOf(zzidVar.k2()));
                }
                if (zzidVar.l2()) {
                    B(sbT, 1, "start_timestamp_millis", Long.valueOf(zzidVar.m2()));
                }
                if (zzidVar.n2()) {
                    B(sbT, 1, "end_timestamp_millis", Long.valueOf(zzidVar.o2()));
                }
                if (zzidVar.p2()) {
                    B(sbT, 1, "previous_bundle_start_timestamp_millis", Long.valueOf(zzidVar.q2()));
                }
                if (zzidVar.r2()) {
                    B(sbT, 1, "previous_bundle_end_timestamp_millis", Long.valueOf(zzidVar.s2()));
                }
                B(sbT, 1, "app_instance_id", zzidVar.J());
                B(sbT, 1, "resettable_device_id", zzidVar.G());
                B(sbT, 1, "ds_id", zzidVar.Z());
                if (zzidVar.H()) {
                    B(sbT, 1, "limited_ad_tracking", Boolean.valueOf(zzidVar.I()));
                }
                B(sbT, 1, "os_version", zzidVar.u2());
                B(sbT, 1, Payload.DEVICE_MODEL, zzidVar.v2());
                B(sbT, 1, "user_default_language", zzidVar.w2());
                if (zzidVar.x2()) {
                    B(sbT, 1, "time_zone_offset_minutes", Integer.valueOf(zzidVar.y2()));
                }
                if (zzidVar.M()) {
                    B(sbT, 1, "bundle_sequential_index", Integer.valueOf(zzidVar.N()));
                }
                if (zzidVar.U0()) {
                    B(sbT, 1, "delivery_index", Integer.valueOf(zzidVar.V0()));
                }
                if (zzidVar.Q()) {
                    B(sbT, 1, "service_upload", Boolean.valueOf(zzidVar.R()));
                }
                B(sbT, 1, "health_monitor", zzidVar.O());
                if (zzidVar.A0()) {
                    B(sbT, 1, "retry_counter", Integer.valueOf(zzidVar.B0()));
                }
                if (zzidVar.E0()) {
                    B(sbT, 1, "consent_signals", zzidVar.F0());
                }
                if (zzidVar.N0()) {
                    B(sbT, 1, "is_dma_region", Boolean.valueOf(zzidVar.O0()));
                }
                if (zzidVar.P0()) {
                    B(sbT, 1, "core_platform_services", zzidVar.Q0());
                }
                if (zzidVar.L0()) {
                    B(sbT, 1, "consent_diagnostics", zzidVar.M0());
                }
                if (zzidVar.I0()) {
                    B(sbT, 1, "target_os_version", Long.valueOf(zzidVar.J0()));
                }
                zzaif.a();
                if (zzalVar.r(zzidVar.A(), zzfy.O0)) {
                    B(sbT, 1, "ad_services_version", Integer.valueOf(zzidVar.R0()));
                    if (zzidVar.S0() && (zzheVarT0 = zzidVar.T0()) != null) {
                        v(sbT, 2);
                        sbT.append("attribution_eligibility_status {\n");
                        B(sbT, 2, "eligible", Boolean.valueOf(zzheVarT0.A()));
                        B(sbT, 2, "no_access_adservices_attribution_permission", Boolean.valueOf(zzheVarT0.B()));
                        B(sbT, 2, "pre_r", Boolean.valueOf(zzheVarT0.C()));
                        B(sbT, 2, "r_extensions_too_old", Boolean.valueOf(zzheVarT0.D()));
                        B(sbT, 2, "adservices_extension_too_old", Boolean.valueOf(zzheVarT0.E()));
                        B(sbT, 2, "ad_storage_not_allowed", Boolean.valueOf(zzheVarT0.F()));
                        B(sbT, 2, "measurement_manager_disabled", Boolean.valueOf(zzheVarT0.G()));
                        v(sbT, 2);
                        sbT.append("}\n");
                    }
                }
                if (zzidVar.W0()) {
                    com.google.android.gms.internal.measurement.zzha zzhaVarX0 = zzidVar.X0();
                    v(sbT, 2);
                    sbT.append("ad_campaign_info {\n");
                    if (zzhaVarX0.N()) {
                        B(sbT, 2, "deep_link_gclid", zzhaVarX0.O());
                    }
                    if (zzhaVarX0.P()) {
                        B(sbT, 2, "deep_link_gbraid", zzhaVarX0.Q());
                    }
                    if (zzhaVarX0.R()) {
                        B(sbT, 2, "deep_link_gad_source", zzhaVarX0.S());
                    }
                    if (zzhaVarX0.d0()) {
                        B(sbT, 2, "deep_link_url", zzhaVarX0.e0());
                    }
                    if (zzhaVarX0.T()) {
                        B(sbT, 2, "deep_link_session_millis", Long.valueOf(zzhaVarX0.U()));
                    }
                    if (zzhaVarX0.V()) {
                        B(sbT, 2, "market_referrer_gclid", zzhaVarX0.W());
                    }
                    if (zzhaVarX0.X()) {
                        B(sbT, 2, "market_referrer_gbraid", zzhaVarX0.Y());
                    }
                    if (zzhaVarX0.Z()) {
                        B(sbT, 2, "market_referrer_gad_source", zzhaVarX0.a0());
                    }
                    if (zzhaVarX0.b0()) {
                        B(sbT, 2, "market_referrer_click_millis", Long.valueOf(zzhaVarX0.c0()));
                    }
                    v(sbT, 2);
                    sbT.append("}\n");
                }
                if (zzidVar.b0()) {
                    B(sbT, 1, "batching_timestamp_millis", Long.valueOf(zzidVar.c0()));
                }
                if (zzidVar.Y0()) {
                    com.google.android.gms.internal.measurement.zzis zzisVarZ0 = zzidVar.Z0();
                    v(sbT, 2);
                    sbT.append("sgtm_diagnostics {\n");
                    int iE = zzisVarZ0.E();
                    if (iE == 1) {
                        str2 = "UPLOAD_TYPE_UNKNOWN";
                    } else if (iE == 2) {
                        str2 = "GA_UPLOAD";
                    } else if (iE != 3) {
                        str2 = iE != 4 ? "SDK_SERVICE_UPLOAD" : "PACKAGE_SERVICE_UPLOAD";
                    } else {
                        str2 = "SDK_CLIENT_UPLOAD";
                    }
                    B(sbT, 2, "upload_type", str2);
                    B(sbT, 2, "client_upload_eligibility", zzisVarZ0.A().name());
                    int iF = zzisVarZ0.F();
                    if (iF == 1) {
                        str3 = "SERVICE_UPLOAD_ELIGIBILITY_UNKNOWN";
                    } else if (iF == 2) {
                        str3 = "SERVICE_UPLOAD_ELIGIBLE";
                    } else if (iF == 3) {
                        str3 = "NOT_IN_ROLLOUT";
                    } else if (iF != 4) {
                        str3 = iF != 5 ? "NON_PLAY_MISSING_SGTM_SERVER_URL" : "MISSING_SGTM_PROXY_INFO";
                    } else {
                        str3 = "MISSING_SGTM_SETTINGS";
                    }
                    B(sbT, 2, "service_upload_eligibility", str3);
                    v(sbT, 2);
                    sbT.append("}\n");
                }
                if (zzidVar.d0()) {
                    com.google.android.gms.internal.measurement.zzho zzhoVarE0 = zzidVar.e0();
                    v(sbT, 2);
                    sbT.append("consent_info_extra {\n");
                    for (com.google.android.gms.internal.measurement.zzhl zzhlVar : zzhoVarE0.A()) {
                        v(sbT, 3);
                        sbT.append("limited_data_modes {\n");
                        int iB = zzhlVar.B();
                        if (iB == 1) {
                            str = "CONSENT_TYPE_UNSPECIFIED";
                        } else if (iB == 2) {
                            str = "AD_STORAGE";
                        } else if (iB != 3) {
                            str = iB != 4 ? "AD_PERSONALIZATION" : "AD_USER_DATA";
                        } else {
                            str = "ANALYTICS_STORAGE";
                        }
                        B(sbT, 3, "type", str);
                        int iC = zzhlVar.C();
                        B(sbT, 3, "mode", iC != 1 ? iC != 2 ? "NO_DATA_MODE" : "LIMITED_MODE" : "NOT_LIMITED");
                        v(sbT, 3);
                        sbT.append("}\n");
                    }
                    v(sbT, 2);
                    sbT.append("}\n");
                }
                zzaef<com.google.android.gms.internal.measurement.zziu> zzaefVarG2 = zzidVar.g2();
                if (zzaefVarG2 != null) {
                    for (com.google.android.gms.internal.measurement.zziu zziuVar : zzaefVarG2) {
                        if (zziuVar != null) {
                            v(sbT, 2);
                            sbT.append("user_property {\n");
                            B(sbT, 2, "set_timestamp_millis", zziuVar.A() ? Long.valueOf(zziuVar.B()) : null);
                            B(sbT, 2, "name", zzgnVar.c(zziuVar.C()));
                            B(sbT, 2, "string_value", zziuVar.E());
                            B(sbT, 2, "int_value", zziuVar.F() ? Long.valueOf(zziuVar.G()) : null);
                            B(sbT, 2, "double_value", zziuVar.J() ? Double.valueOf(zziuVar.K()) : null);
                            v(sbT, 2);
                            sbT.append("}\n");
                        }
                    }
                }
                zzaef<com.google.android.gms.internal.measurement.zzhg> zzaefVarS = zzidVar.S();
                if (zzaefVarS != null) {
                    for (com.google.android.gms.internal.measurement.zzhg zzhgVar : zzaefVarS) {
                        if (zzhgVar != null) {
                            v(sbT, 2);
                            sbT.append("audience_membership {\n");
                            if (zzhgVar.A()) {
                                B(sbT, 2, "audience_id", Integer.valueOf(zzhgVar.B()));
                            }
                            if (zzhgVar.F()) {
                                B(sbT, 2, "new_audience", Boolean.valueOf(zzhgVar.G()));
                            }
                            A(sbT, "current_data", zzhgVar.C());
                            if (zzhgVar.D()) {
                                A(sbT, "previous_data", zzhgVar.E());
                            }
                            v(sbT, 2);
                            sbT.append("}\n");
                        }
                    }
                }
                List<com.google.android.gms.internal.measurement.zzhs> listA2 = zzidVar.a2();
                if (listA2 != null) {
                    for (com.google.android.gms.internal.measurement.zzhs zzhsVar : listA2) {
                        if (zzhsVar != null) {
                            v(sbT, 2);
                            sbT.append("event {\n");
                            B(sbT, 2, "name", zzgnVar.a(zzhsVar.F()));
                            if (zzhsVar.G()) {
                                B(sbT, 2, "timestamp_millis", Long.valueOf(zzhsVar.H()));
                            }
                            if (zzalVar.r(null, zzfy.e1) && zzhsVar.M()) {
                                B(sbT, 2, "corrected_timestamp_millis", Long.valueOf(zzhsVar.N()));
                            }
                            if (zzhsVar.I()) {
                                B(sbT, 2, "previous_timestamp_millis", Long.valueOf(zzhsVar.J()));
                            }
                            if (zzhsVar.K()) {
                                B(sbT, 2, b.a.f24018f, Integer.valueOf(zzhsVar.L()));
                            }
                            if (zzhsVar.D() != 0) {
                                t(sbT, 2, (zzaef) zzhsVar.C());
                            }
                            v(sbT, 2);
                            sbT.append("}\n");
                        }
                    }
                }
                v(sbT, 1);
                sbT.append("}\n");
            }
        }
        sbT.append("} // End-of-batch\n");
        return sbT.toString();
    }

    public final String I(com.google.android.gms.internal.measurement.zzfn zzfnVar) {
        StringBuilder sbT = n00.t("\nproperty_filter {\n");
        if (zzfnVar.A()) {
            B(sbT, 0, "filter_id", Integer.valueOf(zzfnVar.B()));
        }
        B(sbT, 0, "property_name", this.f31850a.f31845j.c(zzfnVar.C()));
        String strX = x(zzfnVar.E(), zzfnVar.F(), zzfnVar.H());
        if (!strX.isEmpty()) {
            B(sbT, 0, "filter_type", strX);
        }
        u(sbT, 1, zzfnVar.D());
        sbT.append("}\n");
        return sbT.toString();
    }

    public final Parcelable J(byte[] bArr, Parcelable.Creator creator) {
        Parcelable parcelable = null;
        if (bArr == null) {
            return null;
        }
        Parcel parcelObtain = Parcel.obtain();
        try {
            parcelObtain.unmarshall(bArr, 0, bArr.length);
            parcelObtain.setDataPosition(0);
            parcelable = (Parcelable) creator.createFromParcel(parcelObtain);
        } catch (SafeParcelReader.ParseException unused) {
            zzgu zzguVar = this.f31850a.f31842f;
            zzic.m(zzguVar);
            zzguVar.f31769f.a("Failed to load parcelable from buffer");
        } finally {
            parcelObtain.recycle();
        }
        return parcelable;
    }

    public final List N(zzaee zzaeeVar, List list) {
        int i2;
        ArrayList arrayList = new ArrayList(zzaeeVar);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Integer num = (Integer) it.next();
            int iIntValue = num.intValue();
            zzic zzicVar = this.f31850a;
            if (iIntValue < 0) {
                zzgu zzguVar = zzicVar.f31842f;
                zzic.m(zzguVar);
                zzguVar.f31771i.b(num, "Ignoring negative bit index to be cleared");
            } else {
                int iIntValue2 = num.intValue() / 64;
                if (iIntValue2 >= arrayList.size()) {
                    zzgu zzguVar2 = zzicVar.f31842f;
                    zzic.m(zzguVar2);
                    zzguVar2.f31771i.c("Ignoring bit index greater than bitSet size", num, Integer.valueOf(arrayList.size()));
                } else {
                    arrayList.set(iIntValue2, Long.valueOf(((Long) arrayList.get(iIntValue2)).longValue() & (~(1 << (num.intValue() % 64)))));
                }
            }
        }
        int size = arrayList.size();
        int size2 = arrayList.size() - 1;
        while (true) {
            int i3 = size2;
            i2 = size;
            size = i3;
            if (size < 0 || ((Long) arrayList.get(size)).longValue() != 0) {
                break;
            }
            size2 = size - 1;
        }
        return arrayList.subList(0, i2);
    }

    public final boolean O(long j2, long j3) {
        if (j2 == 0 || j3 <= 0) {
            return true;
        }
        this.f31850a.f31846k.getClass();
        return Math.abs(System.currentTimeMillis() - j2) > j3;
    }

    public final long P(byte[] bArr) {
        Preconditions.h(bArr);
        zzic zzicVar = this.f31850a;
        zzpp zzppVar = zzicVar.f31844i;
        zzic.k(zzppVar);
        zzppVar.g();
        MessageDigest messageDigestZ = zzpp.z();
        if (messageDigestZ != null) {
            return zzpp.A(messageDigestZ.digest(bArr));
        }
        zzgu zzguVar = zzicVar.f31842f;
        zzic.m(zzguVar);
        zzguVar.f31769f.a("Failed to get MD5");
        return 0L;
    }

    public final byte[] Q(byte[] bArr) {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            gZIPOutputStream.write(bArr);
            gZIPOutputStream.close();
            byteArrayOutputStream.close();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e2) {
            zzgu zzguVar = this.f31850a.f31842f;
            zzic.m(zzguVar);
            zzguVar.f31769f.b(e2, "Failed to gzip content");
            throw e2;
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzos
    public final void j() {
    }

    public final void m(Map map) {
        long epochMilli;
        zzic zzicVar = this.f31850a;
        String strR = r("Date", map);
        if (TextUtils.isEmpty(strR)) {
            return;
        }
        try {
            epochMilli = ZonedDateTime.parse(strR, DateTimeFormatter.RFC_1123_DATE_TIME).toInstant().toEpochMilli();
        } catch (DateTimeParseException unused) {
            zzgu zzguVar = zzicVar.f31842f;
            zzic.m(zzguVar);
            zzguVar.f31771i.b(strR, "Unable to parse header time, time");
            epochMilli = 0;
        }
        if (epochMilli > 0) {
            zzicVar.f31846k.getClass();
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            g();
            if (this.f31998e == 0) {
                this.d = jElapsedRealtime;
                this.f31998e = epochMilli;
            }
        }
    }

    public final long n(long j2) {
        g();
        long j3 = this.f31998e;
        if (j3 == 0 || j2 == 0) {
            return 0L;
        }
        return (j3 - this.d) + j2;
    }

    public final void t(StringBuilder sb, int i2, zzaef zzaefVar) {
        if (zzaefVar == null) {
            return;
        }
        int i3 = i2 + 1;
        Iterator<E> it = zzaefVar.iterator();
        while (it.hasNext()) {
            com.google.android.gms.internal.measurement.zzhw zzhwVar = (com.google.android.gms.internal.measurement.zzhw) it.next();
            if (zzhwVar != null) {
                v(sb, i3);
                sb.append("param {\n");
                B(sb, i3, "name", zzhwVar.A() ? this.f31850a.f31845j.b(zzhwVar.B()) : null);
                B(sb, i3, "string_value", zzhwVar.C() ? zzhwVar.D() : null);
                B(sb, i3, "int_value", zzhwVar.E() ? Long.valueOf(zzhwVar.F()) : null);
                B(sb, i3, "double_value", zzhwVar.I() ? Double.valueOf(zzhwVar.J()) : null);
                if (zzhwVar.L() > 0) {
                    t(sb, i3, zzhwVar.K());
                }
                v(sb, i3);
                sb.append("}\n");
            }
        }
    }

    public final void u(StringBuilder sb, int i2, com.google.android.gms.internal.measurement.zzfh zzfhVar) {
        String str;
        if (zzfhVar == null) {
            return;
        }
        v(sb, i2);
        sb.append("filter {\n");
        if (zzfhVar.E()) {
            B(sb, i2, "complement", Boolean.valueOf(zzfhVar.F()));
        }
        if (zzfhVar.G()) {
            B(sb, i2, "param_name", this.f31850a.f31845j.b(zzfhVar.H()));
        }
        if (zzfhVar.A()) {
            int i3 = i2 + 1;
            com.google.android.gms.internal.measurement.zzfr zzfrVarB = zzfhVar.B();
            if (zzfrVarB != null) {
                v(sb, i3);
                sb.append("string_filter {\n");
                if (zzfrVarB.A()) {
                    switch (zzfrVarB.I()) {
                        case 1:
                            str = "UNKNOWN_MATCH_TYPE";
                            break;
                        case 2:
                            str = "REGEXP";
                            break;
                        case 3:
                            str = "BEGINS_WITH";
                            break;
                        case 4:
                            str = "ENDS_WITH";
                            break;
                        case 5:
                            str = "PARTIAL";
                            break;
                        case 6:
                            str = "EXACT";
                            break;
                        default:
                            str = "IN_LIST";
                            break;
                    }
                    B(sb, i3, "match_type", str);
                }
                if (zzfrVarB.B()) {
                    B(sb, i3, "expression", zzfrVarB.C());
                }
                if (zzfrVarB.D()) {
                    B(sb, i3, "case_sensitive", Boolean.valueOf(zzfrVarB.E()));
                }
                if (zzfrVarB.G() > 0) {
                    v(sb, i2 + 2);
                    sb.append("expression_list {\n");
                    for (String str2 : zzfrVarB.F()) {
                        v(sb, i2 + 3);
                        sb.append(str2);
                        sb.append("\n");
                    }
                    sb.append("}\n");
                }
                v(sb, i3);
                sb.append("}\n");
            }
        }
        if (zzfhVar.C()) {
            C(sb, i2 + 1, "number_filter", zzfhVar.D());
        }
        v(sb, i2);
        sb.append("}\n");
    }
}
