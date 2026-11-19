package com.google.android.gms.internal.gtm;

import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import com.linkplay.medialib.ContentTree;
import com.sightcall.universal.media.offline.FileUtils;
import defpackage.md;
import defpackage.tr;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzdj {
    public static double a(zzkk zzkkVar) {
        double dB = b(zzkkVar);
        if (Double.isNaN(dB)) {
            return 0.0d;
        }
        if (dB == 0.0d || dB == 0.0d || Double.isInfinite(dB)) {
            return dB;
        }
        return Math.floor(Math.abs(dB)) * Math.signum(dB);
    }

    public static double b(zzkk zzkkVar) {
        Preconditions.a(zzkkVar != null);
        if (zzkkVar == zzko.f30172h) {
            return Double.NaN;
        }
        if (zzkkVar == zzko.g) {
            return 0.0d;
        }
        if (zzkkVar instanceof zzkl) {
            return ((zzkl) zzkkVar).f30165b.booleanValue() ? 1.0d : 0.0d;
        }
        if (zzkkVar instanceof zzkm) {
            return ((zzkm) zzkkVar).f30167b.doubleValue();
        }
        if (zzkkVar instanceof zzkr) {
            zzkr zzkrVar = (zzkr) zzkkVar;
            ArrayList arrayList = zzkrVar.f30180b;
            if (arrayList.isEmpty()) {
                return 0.0d;
            }
            if (arrayList.size() == 1) {
                return b(new zzkv(d(zzkrVar.h(0))));
            }
        } else if (zzkkVar instanceof zzkv) {
            String str = ((zzkv) zzkkVar).f30188b;
            if (str.isEmpty()) {
                return 0.0d;
            }
            try {
                return Double.parseDouble(str);
            } catch (NumberFormatException unused) {
                return Double.NaN;
            }
        }
        if (!j(zzkkVar)) {
            return Double.NaN;
        }
        md.n(k(zzkkVar, "Illegal type given to numberEquivalent: "));
        return 0.0d;
    }

    public static double c(zzkk zzkkVar, zzkk zzkkVar2) {
        Preconditions.a(zzkkVar != null);
        Preconditions.a(zzkkVar2 != null);
        double dB = b(zzkkVar);
        double dB2 = b(zzkkVar2);
        if (Double.isNaN(dB) || Double.isNaN(dB2)) {
            return Double.NaN;
        }
        if ((dB == Double.POSITIVE_INFINITY && dB2 == Double.NEGATIVE_INFINITY) || (dB == Double.NEGATIVE_INFINITY && dB2 == Double.POSITIVE_INFINITY)) {
            return Double.NaN;
        }
        if (!Double.isInfinite(dB) || Double.isInfinite(dB2)) {
            return (Double.isInfinite(dB) || !Double.isInfinite(dB2)) ? dB + dB2 : dB2;
        }
        return dB;
    }

    public static String d(zzkk zzkkVar) {
        Preconditions.a(zzkkVar != null);
        zzko zzkoVar = zzko.f30172h;
        if (zzkkVar == zzkoVar) {
            return "undefined";
        }
        zzko zzkoVar2 = zzko.g;
        if (zzkkVar == zzkoVar2) {
            return "null";
        }
        if (zzkkVar instanceof zzkl) {
            return true != ((zzkl) zzkkVar).f30165b.booleanValue() ? "false" : "true";
        }
        if (!(zzkkVar instanceof zzkm)) {
            if (zzkkVar instanceof zzkn) {
                zzdi zzdiVar = ((zzkn) zzkkVar).f30169b;
                if (zzdiVar instanceof zzdh) {
                    return ((zzdh) zzdiVar).f30059b;
                }
            } else {
                if (zzkkVar instanceof zzkr) {
                    ArrayList arrayList = new ArrayList();
                    for (zzkk zzkkVar2 : ((zzkr) zzkkVar).f30180b) {
                        if (zzkkVar2 == zzkoVar2 || zzkkVar2 == zzkoVar) {
                            arrayList.add("");
                        } else {
                            arrayList.add(d(zzkkVar2));
                        }
                    }
                    return TextUtils.join(",", arrayList);
                }
                if (zzkkVar instanceof zzks) {
                    return "[object Object]";
                }
                if (zzkkVar instanceof zzkv) {
                    return ((zzkv) zzkkVar).f30188b;
                }
            }
            md.n(j(zzkkVar) ? k(zzkkVar, "Illegal type given to stringEquivalent: ") : "Unknown type in stringEquivalent.");
            return null;
        }
        String string = Double.toString(((zzkm) zzkkVar).f30167b.doubleValue());
        int iIndexOf = string.indexOf("E");
        if (iIndexOf <= 0) {
            if (string.endsWith(".0")) {
                string = string.substring(0, string.length() - 2);
                if (string.equals("-0")) {
                    return ContentTree.ROOT_ID;
                }
            }
            return string;
        }
        int i2 = Integer.parseInt(string.substring(iIndexOf + 1, string.length()));
        if (i2 >= 0) {
            if (i2 >= 21) {
                return string.replace("E", "e+");
            }
            String strReplace = string.substring(0, iIndexOf).replace(FileUtils.HIDDEN_PREFIX, "");
            int length = strReplace.length() - (strReplace.startsWith("-") ? 1 : 0);
            StringBuilder sb = new StringBuilder();
            int i3 = (i2 + 1) - length;
            if (i3 < 0) {
                int length2 = strReplace.length() + i3;
                sb.append(strReplace.substring(0, length2));
                sb.append(FileUtils.HIDDEN_PREFIX);
                sb.append(strReplace.substring(length2, strReplace.length()));
            } else {
                sb.append(strReplace);
                while (i3 > 0) {
                    sb.append(ContentTree.ROOT_ID);
                    i3--;
                }
            }
            return sb.toString();
        }
        if (i2 <= -7) {
            return string.replace("E", "e");
        }
        String strReplace2 = string.substring(0, iIndexOf).replace(FileUtils.HIDDEN_PREFIX, "");
        StringBuilder sb2 = new StringBuilder("0.");
        while (true) {
            i2++;
            if (i2 >= 0) {
                sb2.append(strReplace2);
                return sb2.toString();
            }
            sb2.append(ContentTree.ROOT_ID);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:28:0x0062 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:48:0x00a8 A[ADDED_TO_REGION, RETURN] */
    public static boolean e(zzkk zzkkVar, zzkk zzkkVar2) {
        Preconditions.a(zzkkVar != null);
        Preconditions.a(zzkkVar2 != null);
        if (j(zzkkVar)) {
            md.n(k(zzkkVar, "Illegal type given to abstractEqualityCompare: "));
            return false;
        }
        if (j(zzkkVar2)) {
            md.n(k(zzkkVar2, "Illegal type given to abstractEqualityCompare: "));
            return false;
        }
        String strI = i(zzkkVar);
        String strI2 = i(zzkkVar2);
        if (strI.equals(strI2)) {
            switch (strI.hashCode()) {
                case -1950496919:
                    if (strI.equals("Number")) {
                        double dDoubleValue = ((zzkm) zzkkVar).f30167b.doubleValue();
                        double dDoubleValue2 = ((zzkm) zzkkVar2).f30167b.doubleValue();
                        if (!Double.isNaN(dDoubleValue) && !Double.isNaN(dDoubleValue2) && dDoubleValue == dDoubleValue2) {
                            return true;
                        }
                    }
                    return false;
                case -1939501217:
                    return strI.equals("Object") && zzkkVar == zzkkVar2;
                case -1808118735:
                    if (strI.equals("String")) {
                        return ((zzkv) zzkkVar).f30188b.equals(((zzkv) zzkkVar2).f30188b);
                    }
                    return false;
                case 2439591:
                    if (strI.equals("Null")) {
                        return true;
                    }
                    return false;
                case 965837104:
                    if (strI.equals("Undefined")) {
                        return true;
                    }
                    return false;
                case 1729365000:
                    if (strI.equals("Boolean")) {
                        return ((zzkl) zzkkVar).f30165b.equals(((zzkl) zzkkVar2).f30165b);
                    }
                    return false;
                default:
                    return false;
            }
        }
        zzko zzkoVar = zzko.f30172h;
        if ((zzkkVar == zzkoVar || zzkkVar == zzko.g) && (zzkkVar2 == zzkoVar || zzkkVar2 == zzko.g)) {
            return true;
        }
        if (strI.equals("Number") && strI2.equals("String")) {
            return e(zzkkVar, new zzkm(Double.valueOf(b(zzkkVar2))));
        }
        if ((!strI.equals("String") || !strI2.equals("Number")) && !strI.equals("Boolean")) {
            if (strI2.equals("Boolean")) {
                return e(zzkkVar, new zzkm(Double.valueOf(b(zzkkVar2))));
            }
            if ((strI.equals("String") || strI.equals("Number")) && strI2.equals("Object")) {
                return e(zzkkVar, new zzkv(d(zzkkVar2)));
            }
            if (strI.equals("Object") && (strI2.equals("String") || strI2.equals("Number"))) {
                return e(new zzkv(d(zzkkVar)), zzkkVar2);
            }
            return false;
        }
        return e(new zzkm(Double.valueOf(b(zzkkVar))), zzkkVar2);
    }

    public static boolean f(zzkk zzkkVar, zzkk zzkkVar2) {
        Preconditions.a(zzkkVar != null);
        Preconditions.a(zzkkVar2 != null);
        if (j(zzkkVar)) {
            md.n(k(zzkkVar, "Illegal type given to abstractRelationalCompare: "));
            return false;
        }
        if (j(zzkkVar2)) {
            md.n(k(zzkkVar2, "Illegal type given to abstractRelationalCompare: "));
            return false;
        }
        if ((zzkkVar instanceof zzks) || (zzkkVar instanceof zzkr) || (zzkkVar instanceof zzkn)) {
            zzkkVar = new zzkv(d(zzkkVar));
        }
        if ((zzkkVar2 instanceof zzks) || (zzkkVar2 instanceof zzkr) || (zzkkVar2 instanceof zzkn)) {
            zzkkVar2 = new zzkv(d(zzkkVar2));
        }
        if ((zzkkVar instanceof zzkv) && (zzkkVar2 instanceof zzkv)) {
            return ((zzkv) zzkkVar).f30188b.compareTo(((zzkv) zzkkVar2).f30188b) < 0;
        }
        double dB = b(zzkkVar);
        double dB2 = b(zzkkVar2);
        if (Double.isNaN(dB) || Double.isNaN(dB2) || ((dB == 0.0d && dB2 == 0.0d) || ((dB == 0.0d && dB2 == 0.0d) || dB == Double.POSITIVE_INFINITY))) {
            return false;
        }
        if (dB2 == Double.POSITIVE_INFINITY) {
            return true;
        }
        if (dB2 == Double.NEGATIVE_INFINITY) {
            return false;
        }
        return dB == Double.NEGATIVE_INFINITY || Double.compare(dB, dB2) < 0;
    }

    public static boolean g(zzkk zzkkVar) {
        Preconditions.a(zzkkVar != null);
        if (zzkkVar != zzko.f30172h && zzkkVar != zzko.g) {
            if (zzkkVar instanceof zzkl) {
                return ((zzkl) zzkkVar).f30165b.booleanValue();
            }
            if (zzkkVar instanceof zzkm) {
                Double d = ((zzkm) zzkkVar).f30167b;
                if (d.doubleValue() == 0.0d || d.doubleValue() == 0.0d || Double.isNaN(d.doubleValue())) {
                    return false;
                }
            } else if (zzkkVar instanceof zzkv) {
                if (((zzkv) zzkkVar).f30188b.isEmpty()) {
                    return false;
                }
            } else if (j(zzkkVar)) {
                md.n(k(zzkkVar, "Illegal type given to isTruthy: "));
            }
            return true;
        }
        return false;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:48:0x00a3 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:49:0x00a4 A[RETURN] */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0052, code lost:
    
        if (r2.equals("Undefined") != false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x005b, code lost:
    
        if (r2.equals("Null") != false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x005d, code lost:
    
        return true;
     */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean h(com.google.android.gms.internal.gtm.zzkk r5, com.google.android.gms.internal.gtm.zzkk r6) {
        /*
            Method dump skipped, instruction units count: 204
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.gtm.zzdj.h(com.google.android.gms.internal.gtm.zzkk, com.google.android.gms.internal.gtm.zzkk):boolean");
    }

    public static String i(zzkk zzkkVar) {
        if (zzkkVar == zzko.f30172h) {
            return "Undefined";
        }
        if (zzkkVar == zzko.g) {
            return "Null";
        }
        if (zzkkVar instanceof zzkl) {
            return "Boolean";
        }
        if (zzkkVar instanceof zzkm) {
            return "Number";
        }
        return zzkkVar instanceof zzkv ? "String" : "Object";
    }

    public static boolean j(zzkk zzkkVar) {
        if (zzkkVar instanceof zzkt) {
            return true;
        }
        return (!(zzkkVar instanceof zzko) || zzkkVar == zzko.f30172h || zzkkVar == zzko.g) ? false : true;
    }

    public static /* synthetic */ String k(zzkk zzkkVar, String str) {
        return tr.h(str, zzkkVar.c(), FileUtils.HIDDEN_PREFIX);
    }
}
