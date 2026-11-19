package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import java.util.EnumMap;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final class zzba {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final zzba f31581f = new zzba((Boolean) null, 100, (Boolean) null, (String) null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f31582a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f31583b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Boolean f31584c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final EnumMap f31585e;

    public zzba(Boolean bool, int i2, Boolean bool2, String str) {
        EnumMap enumMap = new EnumMap(zzjk.class);
        this.f31585e = enumMap;
        enumMap.put(zzjk.AD_USER_DATA, bool == null ? zzji.UNINITIALIZED : bool.booleanValue() ? zzji.GRANTED : zzji.DENIED);
        this.f31582a = i2;
        this.f31583b = e();
        this.f31584c = bool2;
        this.d = str;
    }

    public static zzba b(String str) {
        if (str == null || str.length() <= 0) {
            return f31581f;
        }
        String[] strArrSplit = str.split(":");
        int i2 = Integer.parseInt(strArrSplit[0]);
        EnumMap enumMap = new EnumMap(zzjk.class);
        zzjk[] zzjkVarArrA = zzjj.DMA.a();
        int length = zzjkVarArrA.length;
        int i3 = 1;
        int i4 = 0;
        while (i4 < length) {
            enumMap.put(zzjkVarArrA[i4], zzjl.e(strArrSplit[i3].charAt(0)));
            i4++;
            i3++;
        }
        return new zzba(enumMap, i2, (Boolean) null, (String) null);
    }

    public static zzba c(int i2, Bundle bundle) {
        if (bundle == null) {
            return new zzba((Boolean) null, i2, (Boolean) null, (String) null);
        }
        EnumMap enumMap = new EnumMap(zzjk.class);
        for (zzjk zzjkVar : zzjj.DMA.a()) {
            enumMap.put(zzjkVar, zzjl.d(bundle.getString(zzjkVar.zze)));
        }
        return new zzba(enumMap, i2, bundle.containsKey("is_dma_region") ? Boolean.valueOf(bundle.getString("is_dma_region")) : null, bundle.getString("cps_display_str"));
    }

    public static Boolean d(Bundle bundle) {
        zzji zzjiVarD;
        if (bundle == null || (zzjiVarD = zzjl.d(bundle.getString("ad_personalization"))) == null) {
            return null;
        }
        int iOrdinal = zzjiVarD.ordinal();
        if (iOrdinal == 2) {
            return Boolean.FALSE;
        }
        if (iOrdinal != 3) {
            return null;
        }
        return Boolean.TRUE;
    }

    public final zzji a() {
        zzji zzjiVar = (zzji) this.f31585e.get(zzjk.AD_USER_DATA);
        return zzjiVar == null ? zzji.UNINITIALIZED : zzjiVar;
    }

    public final String e() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f31582a);
        for (zzjk zzjkVar : zzjj.DMA.a()) {
            sb.append(":");
            sb.append(zzjl.h((zzji) this.f31585e.get(zzjkVar)));
        }
        return sb.toString();
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzba)) {
            return false;
        }
        zzba zzbaVar = (zzba) obj;
        if (this.f31583b.equalsIgnoreCase(zzbaVar.f31583b) && Objects.equals(this.f31584c, zzbaVar.f31584c)) {
            return Objects.equals(this.d, zzbaVar.d);
        }
        return false;
    }

    public final int hashCode() {
        int i2;
        Boolean bool = this.f31584c;
        if (bool == null) {
            i2 = 3;
        } else {
            i2 = true != bool.booleanValue() ? 13 : 7;
        }
        String str = this.d;
        return ((str == null ? 17 : str.hashCode()) * 137) + this.f31583b.hashCode() + (i2 * 29);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("source=");
        sb.append(zzjl.a(this.f31582a));
        for (zzjk zzjkVar : zzjj.DMA.a()) {
            sb.append(",");
            sb.append(zzjkVar.zze);
            sb.append("=");
            zzji zzjiVar = (zzji) this.f31585e.get(zzjkVar);
            if (zzjiVar == null) {
                sb.append("uninitialized");
            } else {
                int iOrdinal = zzjiVar.ordinal();
                if (iOrdinal == 0) {
                    sb.append("uninitialized");
                } else if (iOrdinal == 1) {
                    sb.append("eu_consent_policy");
                } else if (iOrdinal == 2) {
                    sb.append("denied");
                } else if (iOrdinal == 3) {
                    sb.append("granted");
                }
            }
        }
        Boolean bool = this.f31584c;
        if (bool != null) {
            sb.append(",isDmaRegion=");
            sb.append(bool);
        }
        String str = this.d;
        if (str != null) {
            sb.append(",cpsDisplayStr=");
            sb.append(str);
        }
        return sb.toString();
    }

    public zzba(EnumMap enumMap, int i2, Boolean bool, String str) {
        EnumMap enumMap2 = new EnumMap(zzjk.class);
        this.f31585e = enumMap2;
        enumMap2.putAll(enumMap);
        this.f31582a = i2;
        this.f31583b = e();
        this.f31584c = bool;
        this.d = str;
    }
}
