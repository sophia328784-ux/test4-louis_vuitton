package com.google.android.gms.internal.measurement;

import defpackage.d21;
import defpackage.md;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes2.dex */
public final class zzas implements Iterable, zzao {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f30572b;

    public zzas(String str) {
        if (str != null) {
            this.f30572b = str;
        } else {
            md.n("StringValue cannot be null.");
            throw null;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final Iterator I() {
        return new zzaq(this);
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final zzao Q() {
        return new zzas(this.f30572b);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzas) {
            return this.f30572b.equals(((zzas) obj).f30572b);
        }
        return false;
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final String f0() {
        return this.f30572b;
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final Double g0() {
        String str = this.f30572b;
        if (str.isEmpty()) {
            return Double.valueOf(0.0d);
        }
        try {
            return Double.valueOf(str);
        } catch (NumberFormatException unused) {
            return Double.valueOf(Double.NaN);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:104:0x02d3 A[PHI: r8
      0x02d3: PHI (r8v6 boolean) = (r8v12 boolean), (r8v13 boolean), (r8v16 boolean) binds: [B:100:0x02bf, B:101:0x02c1, B:103:0x02d1] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.measurement.zzao
    public final zzao h(String str, zzg zzgVar, ArrayList arrayList) {
        String str2;
        int i2;
        int i3;
        int i4;
        boolean zIsEmpty;
        zzg zzgVar2;
        if ("charAt".equals(str) || "concat".equals(str) || "hasOwnProperty".equals(str) || "indexOf".equals(str) || "lastIndexOf".equals(str) || "match".equals(str) || "replace".equals(str) || "search".equals(str) || "slice".equals(str) || "split".equals(str) || "substring".equals(str) || "toLowerCase".equals(str) || "toLocaleLowerCase".equals(str) || "toString".equals(str) || "toUpperCase".equals(str) || "toLocaleUpperCase".equals(str)) {
            str2 = "trim";
        } else {
            str2 = "trim";
            if (!str2.equals(str)) {
                md.n(str.concat(" is not a String function"));
                return null;
            }
        }
        int iHashCode = str.hashCode();
        String strF0 = "undefined";
        String str3 = this.f30572b;
        z = false;
        boolean z = false;
        switch (iHashCode) {
            case -1789698943:
                if (str.equals("hasOwnProperty")) {
                    zzh.a(1, arrayList, "hasOwnProperty");
                    zzao zzaoVarB = zzgVar.f30629b.b(zzgVar, (zzao) arrayList.get(0));
                    boolean zEquals = "length".equals(zzaoVarB.f0());
                    zzaf zzafVar = zzao.p0;
                    if (zEquals) {
                        return zzafVar;
                    }
                    double dDoubleValue = zzaoVarB.g0().doubleValue();
                    return (dDoubleValue != Math.floor(dDoubleValue) || (i2 = (int) dDoubleValue) < 0 || i2 >= str3.length()) ? zzao.q0 : zzafVar;
                }
                md.n("Command not supported");
                return null;
            case -1776922004:
                if (str.equals("toString")) {
                    zzh.a(0, arrayList, "toString");
                    return this;
                }
                md.n("Command not supported");
                return null;
            case -1464939364:
                if (str.equals("toLocaleLowerCase")) {
                    zzh.a(0, arrayList, "toLocaleLowerCase");
                    return new zzas(str3.toLowerCase());
                }
                md.n("Command not supported");
                return null;
            case -1361633751:
                if (str.equals("charAt")) {
                    zzh.c(1, "charAt", arrayList);
                    int iH = arrayList.isEmpty() ? 0 : (int) zzh.h(zzgVar.f30629b.b(zzgVar, (zzao) arrayList.get(0)).g0().doubleValue());
                    return (iH < 0 || iH >= str3.length()) ? zzao.r0 : new zzas(String.valueOf(str3.charAt(iH)));
                }
                md.n("Command not supported");
                return null;
            case -1354795244:
                if (str.equals("concat")) {
                    if (!arrayList.isEmpty()) {
                        StringBuilder sb = new StringBuilder(str3);
                        for (int i5 = 0; i5 < arrayList.size(); i5++) {
                            sb.append(zzgVar.f30629b.b(zzgVar, (zzao) arrayList.get(i5)).f0());
                        }
                        return new zzas(sb.toString());
                    }
                    return this;
                }
                md.n("Command not supported");
                return null;
            case -1137582698:
                if (str.equals("toLowerCase")) {
                    zzh.a(0, arrayList, "toLowerCase");
                    return new zzas(str3.toLowerCase(Locale.ENGLISH));
                }
                md.n("Command not supported");
                return null;
            case -906336856:
                if (str.equals("search")) {
                    zzh.c(1, "search", arrayList);
                    Matcher matcher = Pattern.compile(arrayList.isEmpty() ? "undefined" : zzgVar.f30629b.b(zzgVar, (zzao) arrayList.get(0)).f0()).matcher(str3);
                    return matcher.find() ? new zzah(Double.valueOf(matcher.start())) : new zzah(Double.valueOf(-1.0d));
                }
                md.n("Command not supported");
                return null;
            case -726908483:
                if (str.equals("toLocaleUpperCase")) {
                    zzh.a(0, arrayList, "toLocaleUpperCase");
                    return new zzas(str3.toUpperCase());
                }
                md.n("Command not supported");
                return null;
            case -467511597:
                if (str.equals("lastIndexOf")) {
                    zzh.c(2, "lastIndexOf", arrayList);
                    String strF1 = arrayList.size() > 0 ? zzgVar.f30629b.b(zzgVar, (zzao) arrayList.get(0)).f0() : "undefined";
                    double dDoubleValue2 = arrayList.size() < 2 ? Double.NaN : zzgVar.f30629b.b(zzgVar, (zzao) arrayList.get(1)).g0().doubleValue();
                    return new zzah(Double.valueOf(str3.lastIndexOf(strF1, (int) (Double.isNaN(dDoubleValue2) ? Double.POSITIVE_INFINITY : zzh.h(dDoubleValue2)))));
                }
                md.n("Command not supported");
                return null;
            case -399551817:
                if (str.equals("toUpperCase")) {
                    zzh.a(0, arrayList, "toUpperCase");
                    return new zzas(str3.toUpperCase(Locale.ENGLISH));
                }
                md.n("Command not supported");
                return null;
            case 3568674:
                if (str.equals(str2)) {
                    zzh.a(0, arrayList, "toUpperCase");
                    return new zzas(str3.trim());
                }
                md.n("Command not supported");
                return null;
            case 103668165:
                if (str.equals("match")) {
                    zzh.c(1, "match", arrayList);
                    Matcher matcher2 = Pattern.compile(arrayList.size() <= 0 ? "" : zzgVar.f30629b.b(zzgVar, (zzao) arrayList.get(0)).f0()).matcher(str3);
                    return matcher2.find() ? new zzae(Arrays.asList(new zzas(matcher2.group()))) : zzao.l0;
                }
                md.n("Command not supported");
                return null;
            case 109526418:
                if (str.equals("slice")) {
                    zzh.c(2, "slice", arrayList);
                    double dH = zzh.h(!arrayList.isEmpty() ? zzgVar.f30629b.b(zzgVar, (zzao) arrayList.get(0)).g0().doubleValue() : 0.0d);
                    double dMax = dH < 0.0d ? Math.max(((double) str3.length()) + dH, 0.0d) : Math.min(dH, str3.length());
                    double dH2 = zzh.h(arrayList.size() > 1 ? zzgVar.f30629b.b(zzgVar, (zzao) arrayList.get(1)).g0().doubleValue() : str3.length());
                    int i6 = (int) dMax;
                    return new zzas(str3.substring(i6, Math.max(0, ((int) (dH2 < 0.0d ? Math.max(((double) str3.length()) + dH2, 0.0d) : Math.min(dH2, str3.length()))) - i6) + i6));
                }
                md.n("Command not supported");
                return null;
            case 109648666:
                if (str.equals("split")) {
                    zzh.c(2, "split", arrayList);
                    if (str3.length() == 0) {
                        return new zzae(Arrays.asList(this));
                    }
                    ArrayList arrayList2 = new ArrayList();
                    if (arrayList.isEmpty()) {
                        arrayList2.add(this);
                    } else {
                        String strF2 = zzgVar.f30629b.b(zzgVar, (zzao) arrayList.get(0)).f0();
                        long jG = arrayList.size() > 1 ? ((long) zzh.g(zzgVar.f30629b.b(zzgVar, (zzao) arrayList.get(1)).g0().doubleValue())) & BodyPartID.bodyIdMax : 2147483647L;
                        if (jG == 0) {
                            return new zzae();
                        }
                        String[] strArrSplit = str3.split(Pattern.quote(strF2), ((int) jG) + 1);
                        int length = strArrSplit.length;
                        if (!strF2.isEmpty() || length <= 0) {
                            i4 = zIsEmpty;
                            z = zIsEmpty;
                            i3 = length;
                            i4 = z;
                        } else {
                            zIsEmpty = strArrSplit[0].isEmpty();
                            i3 = length - 1;
                            if (!strArrSplit[i3].isEmpty()) {
                                i4 = zIsEmpty;
                                z = zIsEmpty;
                                i3 = length;
                                i4 = z;
                            }
                        }
                        i4 = zIsEmpty;
                        z = zIsEmpty;
                        if (length > jG) {
                            i3--;
                        }
                        while (i4 < i3) {
                            arrayList2.add(new zzas(strArrSplit[i4]));
                            i4++;
                        }
                    }
                    return new zzae(arrayList2);
                }
                md.n("Command not supported");
                return null;
            case 530542161:
                if (str.equals("substring")) {
                    zzh.c(2, "substring", arrayList);
                    int iH2 = !arrayList.isEmpty() ? (int) zzh.h(zzgVar.f30629b.b(zzgVar, (zzao) arrayList.get(0)).g0().doubleValue()) : 0;
                    int iH3 = arrayList.size() > 1 ? (int) zzh.h(zzgVar.f30629b.b(zzgVar, (zzao) arrayList.get(1)).g0().doubleValue()) : str3.length();
                    int iMin = Math.min(Math.max(iH2, 0), str3.length());
                    int iMin2 = Math.min(Math.max(iH3, 0), str3.length());
                    return new zzas(str3.substring(Math.min(iMin, iMin2), Math.max(iMin, iMin2)));
                }
                md.n("Command not supported");
                return null;
            case 1094496948:
                if (str.equals("replace")) {
                    zzh.c(2, "replace", arrayList);
                    boolean zIsEmpty2 = arrayList.isEmpty();
                    zzao zzaoVarC = zzao.k0;
                    if (!zIsEmpty2) {
                        strF0 = zzgVar.f30629b.b(zzgVar, (zzao) arrayList.get(0)).f0();
                        if (arrayList.size() > 1) {
                            zzaoVarC = zzgVar.f30629b.b(zzgVar, (zzao) arrayList.get(1));
                        }
                    }
                    String str4 = strF0;
                    int iIndexOf = str3.indexOf(str4);
                    if (iIndexOf >= 0) {
                        if (zzaoVarC instanceof zzai) {
                            zzaoVarC = ((zzai) zzaoVarC).c(zzgVar, Arrays.asList(new zzas(str4), new zzah(Double.valueOf(iIndexOf)), this));
                        }
                        String strSubstring = str3.substring(0, iIndexOf);
                        String strF3 = zzaoVarC.f0();
                        String strSubstring2 = str3.substring(str4.length() + iIndexOf);
                        return new zzas(d21.p(new StringBuilder(strSubstring.length() + String.valueOf(strF3).length() + strSubstring2.length()), strSubstring, strF3, strSubstring2));
                    }
                    return this;
                }
                md.n("Command not supported");
                return null;
            case 1943291465:
                if (str.equals("indexOf")) {
                    zzh.c(2, "indexOf", arrayList);
                    if (arrayList.size() <= 0) {
                        zzgVar2 = zzgVar;
                    } else {
                        zzgVar2 = zzgVar;
                        strF0 = zzgVar2.f30629b.b(zzgVar2, (zzao) arrayList.get(0)).f0();
                    }
                    return new zzah(Double.valueOf(str3.indexOf(strF0, (int) zzh.h(arrayList.size() < 2 ? 0.0d : zzgVar2.f30629b.b(zzgVar2, (zzao) arrayList.get(1)).g0().doubleValue()))));
                }
                md.n("Command not supported");
                return null;
            default:
                md.n("Command not supported");
                return null;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final Boolean h0() {
        return Boolean.valueOf(!this.f30572b.isEmpty());
    }

    public final int hashCode() {
        return this.f30572b.hashCode();
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new zzar(this);
    }

    public final String toString() {
        String str = this.f30572b;
        return d21.p(new StringBuilder(str.length() + 2), "\"", str, "\"");
    }
}
