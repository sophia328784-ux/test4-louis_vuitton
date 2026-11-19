package com.google.android.gms.auth.api.accounttransfer;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.server.response.FastJsonResponse;
import com.google.android.gms.internal.auth.zzbz;
import defpackage.md;
import defpackage.pq0;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class zzu extends zzbz {
    public static final Parcelable.Creator<zzu> CREATOR = new zzv();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final HashMap f28709h;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HashSet f28710b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f28711c;
    public final zzw d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f28712e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f28713f;
    public final String g;

    static {
        HashMap map = new HashMap();
        f28709h = map;
        map.put("authenticatorInfo", new FastJsonResponse.Field(11, false, 11, false, "authenticatorInfo", 2, zzw.class));
        map.put("signature", new FastJsonResponse.Field(7, false, 7, false, "signature", 3, null));
        map.put("package", new FastJsonResponse.Field(7, false, 7, false, "package", 4, null));
    }

    public zzu(HashSet hashSet, int i2, zzw zzwVar, String str, String str2, String str3) {
        this.f28710b = hashSet;
        this.f28711c = i2;
        this.d = zzwVar;
        this.f28712e = str;
        this.f28713f = str2;
        this.g = str3;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final /* synthetic */ Map a() {
        return f28709h;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final Object b(FastJsonResponse.Field field) {
        int i2 = field.f29309h;
        if (i2 == 1) {
            return Integer.valueOf(this.f28711c);
        }
        if (i2 == 2) {
            return this.d;
        }
        if (i2 == 3) {
            return this.f28712e;
        }
        if (i2 == 4) {
            return this.f28713f;
        }
        md.k(pq0.k(i2, "Unknown SafeParcelable id="));
        return null;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final boolean d(FastJsonResponse.Field field) {
        return this.f28710b.contains(Integer.valueOf(field.f29309h));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        HashSet hashSet = this.f28710b;
        if (hashSet.contains(1)) {
            SafeParcelWriter.p(parcel, 1, 4);
            parcel.writeInt(this.f28711c);
        }
        if (hashSet.contains(2)) {
            SafeParcelWriter.j(parcel, 2, this.d, i2, true);
        }
        if (hashSet.contains(3)) {
            SafeParcelWriter.k(parcel, 3, this.f28712e, true);
        }
        if (hashSet.contains(4)) {
            SafeParcelWriter.k(parcel, 4, this.f28713f, true);
        }
        if (hashSet.contains(5)) {
            SafeParcelWriter.k(parcel, 5, this.g, true);
        }
        SafeParcelWriter.r(iQ, parcel);
    }

    public zzu() {
        this.f28710b = new HashSet(3);
        this.f28711c = 1;
    }
}
