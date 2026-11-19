package com.google.android.gms.auth.api.accounttransfer;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.server.response.FastJsonResponse;
import com.google.android.gms.internal.auth.zzbz;
import defpackage.md;
import defpackage.pq0;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class zzo extends zzbz {
    public static final Parcelable.Creator<zzo> CREATOR = new zzp();
    public static final HashMap g;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HashSet f28700b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f28701c;
    public final ArrayList d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f28702e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final zzs f28703f;

    static {
        HashMap map = new HashMap();
        g = map;
        map.put("authenticatorData", new FastJsonResponse.Field(11, true, 11, true, "authenticatorData", 2, zzu.class));
        map.put("progress", new FastJsonResponse.Field(11, false, 11, false, "progress", 4, zzs.class));
    }

    public zzo() {
        this.f28700b = new HashSet(1);
        this.f28701c = 1;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final /* synthetic */ Map a() {
        return g;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final Object b(FastJsonResponse.Field field) {
        int i2 = field.f29309h;
        if (i2 == 1) {
            return Integer.valueOf(this.f28701c);
        }
        if (i2 == 2) {
            return this.d;
        }
        if (i2 == 4) {
            return this.f28703f;
        }
        md.k(pq0.k(i2, "Unknown SafeParcelable id="));
        return null;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final boolean d(FastJsonResponse.Field field) {
        return this.f28700b.contains(Integer.valueOf(field.f29309h));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        HashSet hashSet = this.f28700b;
        if (hashSet.contains(1)) {
            SafeParcelWriter.p(parcel, 1, 4);
            parcel.writeInt(this.f28701c);
        }
        if (hashSet.contains(2)) {
            SafeParcelWriter.o(parcel, 2, this.d, true);
        }
        if (hashSet.contains(3)) {
            SafeParcelWriter.p(parcel, 3, 4);
            parcel.writeInt(this.f28702e);
        }
        if (hashSet.contains(4)) {
            SafeParcelWriter.j(parcel, 4, this.f28703f, i2, true);
        }
        SafeParcelWriter.r(iQ, parcel);
    }

    public zzo(HashSet hashSet, int i2, ArrayList arrayList, int i3, zzs zzsVar) {
        this.f28700b = hashSet;
        this.f28701c = i2;
        this.d = arrayList;
        this.f28702e = i3;
        this.f28703f = zzsVar;
    }
}
