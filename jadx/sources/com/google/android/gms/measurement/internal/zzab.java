package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;

/* JADX INFO: loaded from: classes2.dex */
abstract class zzab {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f31532a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f31533b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Boolean f31534c;
    public Boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Long f31535e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Long f31536f;

    public zzab(String str, int i2) {
        this.f31532a = str;
        this.f31533b = i2;
    }

    public static Boolean d(Boolean bool, boolean z) {
        if (bool == null) {
            return null;
        }
        return Boolean.valueOf(bool.booleanValue() != z);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static Boolean e(String str, com.google.android.gms.internal.measurement.zzfr zzfrVar, zzgu zzguVar) {
        List listF;
        Preconditions.h(zzfrVar);
        if (str != null && zzfrVar.A() && zzfrVar.I() != 1 && (zzfrVar.I() != 7 ? zzfrVar.B() : zzfrVar.G() != 0)) {
            int I = zzfrVar.I();
            boolean zE = zzfrVar.E();
            String strC = (zE || I == 2 || I == 7) ? zzfrVar.C() : zzfrVar.C().toUpperCase(Locale.ENGLISH);
            if (zzfrVar.G() == 0) {
                listF = null;
            } else {
                listF = zzfrVar.F();
                if (!zE) {
                    ArrayList arrayList = new ArrayList(listF.size());
                    Iterator it = listF.iterator();
                    while (it.hasNext()) {
                        arrayList.add(((String) it.next()).toUpperCase(Locale.ENGLISH));
                    }
                    listF = Collections.unmodifiableList(arrayList);
                }
            }
            String str2 = I == 2 ? strC : null;
            if (I != 7 ? strC != null : listF != null && !listF.isEmpty()) {
                if (!zE && I != 2) {
                    str = str.toUpperCase(Locale.ENGLISH);
                }
                switch (I - 1) {
                    case 1:
                        if (str2 != null) {
                            try {
                                return Boolean.valueOf(Pattern.compile(str2, true != zE ? 66 : 0).matcher(str).matches());
                            } catch (PatternSyntaxException unused) {
                                if (zzguVar != null) {
                                    zzguVar.f31771i.b(str2, "Invalid regular expression in REGEXP audience filter. expression");
                                }
                            }
                        }
                        break;
                    case 2:
                        return Boolean.valueOf(str.startsWith(strC));
                    case 3:
                        return Boolean.valueOf(str.endsWith(strC));
                    case 4:
                        return Boolean.valueOf(str.contains(strC));
                    case 5:
                        return Boolean.valueOf(str.equals(strC));
                    case 6:
                        if (listF != null) {
                            return Boolean.valueOf(listF.contains(str));
                        }
                        break;
                }
            }
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:38:0x008a  */
    /* JADX WARN: Code duplicated, block: B:40:0x008d  */
    /* JADX WARN: Code duplicated, block: B:42:0x0090  */
    /* JADX WARN: Code duplicated, block: B:45:0x0095 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:48:0x009d  */
    /* JADX WARN: Code duplicated, block: B:51:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:54:0x00aa A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:56:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:58:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:60:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:63:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:66:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:69:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:72:0x00f8 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:74:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:77:0x0102  */
    /* JADX WARN: Code duplicated, block: B:80:0x0108 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:82:0x010b  */
    /* JADX WARN: Code duplicated, block: B:85:0x0112  */
    public static Boolean f(BigDecimal bigDecimal, com.google.android.gms.internal.measurement.zzfl zzflVar, double d) {
        BigDecimal bigDecimal2;
        BigDecimal bigDecimal3;
        BigDecimal bigDecimal4;
        int i2;
        Preconditions.h(zzflVar);
        if (zzflVar.A()) {
            if (zzflVar.K() != 1 && (zzflVar.K() != 5 ? zzflVar.D() : zzflVar.F() && zzflVar.H())) {
                int iK = zzflVar.K();
                try {
                    if (zzflVar.K() == 5) {
                        if (zzpk.K(zzflVar.G()) && zzpk.K(zzflVar.I())) {
                            BigDecimal bigDecimal5 = new BigDecimal(zzflVar.G());
                            bigDecimal4 = new BigDecimal(zzflVar.I());
                            bigDecimal3 = bigDecimal5;
                            bigDecimal2 = null;
                            if (iK == 5 ? bigDecimal2 != null : bigDecimal3 != null) {
                                i2 = iK - 1;
                                if (i2 != 1) {
                                    if (i2 != 2) {
                                        if (i2 != 3) {
                                            if (i2 == 4 && bigDecimal3 != null) {
                                                return Boolean.valueOf(bigDecimal.compareTo(bigDecimal3) < 0 && bigDecimal.compareTo(bigDecimal4) <= 0);
                                            }
                                        } else if (bigDecimal2 != null) {
                                            if (d != 0.0d) {
                                                return Boolean.valueOf(bigDecimal.compareTo(bigDecimal2.subtract(new BigDecimal(d).multiply(new BigDecimal(2)))) <= 0 && bigDecimal.compareTo(bigDecimal2.add(new BigDecimal(d).multiply(new BigDecimal(2)))) < 0);
                                            }
                                            return Boolean.valueOf(bigDecimal.compareTo(bigDecimal2) == 0);
                                        }
                                    } else if (bigDecimal2 != null) {
                                        return Boolean.valueOf(bigDecimal.compareTo(bigDecimal2) > 0);
                                    }
                                } else if (bigDecimal2 != null) {
                                    return Boolean.valueOf(bigDecimal.compareTo(bigDecimal2) < 0);
                                }
                            }
                        }
                    } else if (zzpk.K(zzflVar.E())) {
                        bigDecimal2 = new BigDecimal(zzflVar.E());
                        bigDecimal3 = null;
                        bigDecimal4 = null;
                        if (iK == 5) {
                            i2 = iK - 1;
                            if (i2 != 1) {
                                if (i2 != 2) {
                                    if (i2 != 3) {
                                        if (i2 == 4) {
                                            return Boolean.valueOf(bigDecimal.compareTo(bigDecimal3) < 0 && bigDecimal.compareTo(bigDecimal4) <= 0);
                                        }
                                    } else if (bigDecimal2 != null) {
                                        if (d != 0.0d) {
                                            return Boolean.valueOf(bigDecimal.compareTo(bigDecimal2.subtract(new BigDecimal(d).multiply(new BigDecimal(2)))) <= 0 && bigDecimal.compareTo(bigDecimal2.add(new BigDecimal(d).multiply(new BigDecimal(2)))) < 0);
                                        }
                                        return Boolean.valueOf(bigDecimal.compareTo(bigDecimal2) == 0);
                                    }
                                } else if (bigDecimal2 != null) {
                                    return Boolean.valueOf(bigDecimal.compareTo(bigDecimal2) > 0);
                                }
                            } else if (bigDecimal2 != null) {
                                return Boolean.valueOf(bigDecimal.compareTo(bigDecimal2) < 0);
                            }
                        } else {
                            i2 = iK - 1;
                            if (i2 != 1) {
                                if (i2 != 2) {
                                    if (i2 != 3) {
                                        if (i2 == 4) {
                                            return Boolean.valueOf(bigDecimal.compareTo(bigDecimal3) < 0 && bigDecimal.compareTo(bigDecimal4) <= 0);
                                        }
                                    } else if (bigDecimal2 != null) {
                                        if (d != 0.0d) {
                                            return Boolean.valueOf(bigDecimal.compareTo(bigDecimal2.subtract(new BigDecimal(d).multiply(new BigDecimal(2)))) <= 0 && bigDecimal.compareTo(bigDecimal2.add(new BigDecimal(d).multiply(new BigDecimal(2)))) < 0);
                                        }
                                        return Boolean.valueOf(bigDecimal.compareTo(bigDecimal2) == 0);
                                    }
                                } else if (bigDecimal2 != null) {
                                    return Boolean.valueOf(bigDecimal.compareTo(bigDecimal2) > 0);
                                }
                            } else if (bigDecimal2 != null) {
                                return Boolean.valueOf(bigDecimal.compareTo(bigDecimal2) < 0);
                            }
                        }
                    }
                } catch (NumberFormatException unused) {
                }
            }
        }
        return null;
    }

    public abstract int a();

    public abstract boolean b();

    public abstract boolean c();
}
