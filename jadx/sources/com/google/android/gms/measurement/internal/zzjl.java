package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import java.util.EnumMap;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public final class zzjl {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final zzjl f31852c = new zzjl(null, null, 100);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final EnumMap f31853a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f31854b;

    public zzjl(Boolean bool, Boolean bool2, int i2) {
        EnumMap enumMap = new EnumMap(zzjk.class);
        this.f31853a = enumMap;
        zzjk zzjkVar = zzjk.AD_STORAGE;
        zzji zzjiVar = zzji.UNINITIALIZED;
        enumMap.put(zzjkVar, zzjiVar);
        enumMap.put(zzjk.ANALYTICS_STORAGE, zzjiVar);
        this.f31854b = i2;
    }

    public static String a(int i2) {
        if (i2 == -30) {
            return "TCF";
        }
        if (i2 == -20) {
            return "API";
        }
        if (i2 == -10) {
            return "MANIFEST";
        }
        if (i2 == 0) {
            return "1P_API";
        }
        if (i2 == 30) {
            return "1P_INIT";
        }
        if (i2 != 90) {
            return i2 != 100 ? "OTHER" : "UNKNOWN";
        }
        return "REMOTE_CONFIG";
    }

    public static zzjl b(int i2, Bundle bundle) {
        if (bundle == null) {
            return new zzjl(null, null, i2);
        }
        EnumMap enumMap = new EnumMap(zzjk.class);
        for (zzjk zzjkVar : zzjj.STORAGE.b()) {
            enumMap.put(zzjkVar, d(bundle.getString(zzjkVar.zze)));
        }
        return new zzjl(enumMap, i2);
    }

    public static zzjl c(int i2, String str) {
        EnumMap enumMap = new EnumMap(zzjk.class);
        zzjk[] zzjkVarArrA = zzjj.STORAGE.a();
        for (int i3 = 0; i3 < zzjkVarArrA.length; i3++) {
            String str2 = str == null ? "" : str;
            zzjk zzjkVar = zzjkVarArrA[i3];
            int i4 = i3 + 2;
            if (i4 < str2.length()) {
                enumMap.put(zzjkVar, e(str2.charAt(i4)));
            } else {
                enumMap.put(zzjkVar, zzji.UNINITIALIZED);
            }
        }
        return new zzjl(enumMap, i2);
    }

    public static zzji d(String str) {
        if (str == null) {
            return zzji.UNINITIALIZED;
        }
        if (str.equals("granted")) {
            return zzji.GRANTED;
        }
        return str.equals("denied") ? zzji.DENIED : zzji.UNINITIALIZED;
    }

    public static zzji e(char c2) {
        if (c2 == '+') {
            return zzji.POLICY;
        }
        if (c2 != '0') {
            return c2 != '1' ? zzji.UNINITIALIZED : zzji.GRANTED;
        }
        return zzji.DENIED;
    }

    public static char h(zzji zzjiVar) {
        if (zzjiVar == null) {
            return '-';
        }
        int iOrdinal = zzjiVar.ordinal();
        if (iOrdinal == 1) {
            return '+';
        }
        if (iOrdinal != 2) {
            return iOrdinal != 3 ? '-' : '1';
        }
        return '0';
    }

    public static boolean l(int i2, int i3) {
        int i4 = -30;
        if (i2 == -20) {
            if (i3 == -30) {
                return true;
            }
            i2 = -20;
        }
        if (i2 != -30) {
            i4 = i2;
        } else if (i3 == -20) {
            return true;
        }
        return i4 == i3 || i2 < i3;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzjl)) {
            return false;
        }
        zzjl zzjlVar = (zzjl) obj;
        for (zzjk zzjkVar : zzjj.STORAGE.b()) {
            if (this.f31853a.get(zzjkVar) != zzjlVar.f31853a.get(zzjkVar)) {
                return false;
            }
        }
        return this.f31854b == zzjlVar.f31854b;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0032  */
    public final String f() {
        int iOrdinal;
        StringBuilder sb = new StringBuilder("G1");
        for (zzjk zzjkVar : zzjj.STORAGE.a()) {
            zzji zzjiVar = (zzji) this.f31853a.get(zzjkVar);
            char c2 = '-';
            if (zzjiVar != null && (iOrdinal = zzjiVar.ordinal()) != 0) {
                if (iOrdinal == 1) {
                    c2 = '1';
                } else if (iOrdinal == 2) {
                    c2 = '0';
                } else if (iOrdinal == 3) {
                    c2 = '1';
                }
            }
            sb.append(c2);
        }
        return sb.toString();
    }

    public final String g() {
        StringBuilder sb = new StringBuilder("G1");
        for (zzjk zzjkVar : zzjj.STORAGE.a()) {
            sb.append(h((zzji) this.f31853a.get(zzjkVar)));
        }
        return sb.toString();
    }

    public final int hashCode() {
        Iterator it = this.f31853a.values().iterator();
        int iHashCode = this.f31854b * 17;
        while (it.hasNext()) {
            iHashCode = (iHashCode * 31) + ((zzji) it.next()).hashCode();
        }
        return iHashCode;
    }

    public final boolean i(zzjk zzjkVar) {
        return ((zzji) this.f31853a.get(zzjkVar)) != zzji.DENIED;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0033  */
    public final zzjl j(zzjl zzjlVar) {
        EnumMap enumMap = new EnumMap(zzjk.class);
        for (zzjk zzjkVar : zzjj.STORAGE.b()) {
            zzji zzjiVar = (zzji) this.f31853a.get(zzjkVar);
            zzji zzjiVar2 = (zzji) zzjlVar.f31853a.get(zzjkVar);
            if (zzjiVar == null) {
                zzjiVar = zzjiVar2;
            } else if (zzjiVar2 != null) {
                zzji zzjiVar3 = zzji.UNINITIALIZED;
                if (zzjiVar == zzjiVar3) {
                    zzjiVar = zzjiVar2;
                } else if (zzjiVar2 != zzjiVar3) {
                    zzji zzjiVar4 = zzji.POLICY;
                    if (zzjiVar == zzjiVar4) {
                        zzjiVar = zzjiVar2;
                    } else if (zzjiVar2 != zzjiVar4) {
                        zzji zzjiVar5 = zzji.DENIED;
                        zzjiVar = (zzjiVar == zzjiVar5 || zzjiVar2 == zzjiVar5) ? zzjiVar5 : zzji.GRANTED;
                    }
                }
            }
            if (zzjiVar != null) {
                enumMap.put(zzjkVar, zzjiVar);
            }
        }
        return new zzjl(enumMap, 100);
    }

    public final zzjl k(zzjl zzjlVar) {
        EnumMap enumMap = new EnumMap(zzjk.class);
        for (zzjk zzjkVar : zzjj.STORAGE.b()) {
            zzji zzjiVar = (zzji) this.f31853a.get(zzjkVar);
            if (zzjiVar == zzji.UNINITIALIZED) {
                zzjiVar = (zzji) zzjlVar.f31853a.get(zzjkVar);
            }
            if (zzjiVar != null) {
                enumMap.put(zzjkVar, zzjiVar);
            }
        }
        return new zzjl(enumMap, this.f31854b);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("source=");
        sb.append(a(this.f31854b));
        for (zzjk zzjkVar : zzjj.STORAGE.b()) {
            sb.append(",");
            sb.append(zzjkVar.zze);
            sb.append("=");
            zzji zzjiVar = (zzji) this.f31853a.get(zzjkVar);
            if (zzjiVar == null) {
                zzjiVar = zzji.UNINITIALIZED;
            }
            sb.append(zzjiVar);
        }
        return sb.toString();
    }

    public zzjl(EnumMap enumMap, int i2) {
        EnumMap enumMap2 = new EnumMap(zzjk.class);
        this.f31853a = enumMap2;
        enumMap2.putAll(enumMap);
        this.f31854b = i2;
    }
}
