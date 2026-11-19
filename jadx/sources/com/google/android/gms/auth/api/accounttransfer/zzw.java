package com.google.android.gms.auth.api.accounttransfer;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.collection.ArraySet;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.server.response.FastJsonResponse;
import com.google.android.gms.internal.auth.zzbz;
import defpackage.md;
import defpackage.pq0;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public final class zzw extends zzbz {
    public static final Parcelable.Creator<zzw> CREATOR = new zzx();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final HashMap f28714i;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Set f28715b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f28716c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f28717e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final byte[] f28718f;
    public final PendingIntent g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final DeviceMetaData f28719h;

    static {
        HashMap map = new HashMap();
        f28714i = map;
        map.put("accountType", new FastJsonResponse.Field(7, false, 7, false, "accountType", 2, null));
        map.put("status", new FastJsonResponse.Field(0, false, 0, false, "status", 3, null));
        map.put("transferBytes", new FastJsonResponse.Field(8, false, 8, false, "transferBytes", 4, null));
    }

    public zzw(HashSet hashSet, int i2, String str, int i3, byte[] bArr, PendingIntent pendingIntent, DeviceMetaData deviceMetaData) {
        this.f28715b = hashSet;
        this.f28716c = i2;
        this.d = str;
        this.f28717e = i3;
        this.f28718f = bArr;
        this.g = pendingIntent;
        this.f28719h = deviceMetaData;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final /* synthetic */ Map a() {
        return f28714i;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final Object b(FastJsonResponse.Field field) {
        int i2 = field.f29309h;
        if (i2 == 1) {
            return Integer.valueOf(this.f28716c);
        }
        if (i2 == 2) {
            return this.d;
        }
        if (i2 == 3) {
            return Integer.valueOf(this.f28717e);
        }
        if (i2 == 4) {
            return this.f28718f;
        }
        md.k(pq0.k(i2, "Unknown SafeParcelable id="));
        return null;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final boolean d(FastJsonResponse.Field field) {
        return this.f28715b.contains(Integer.valueOf(field.f29309h));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        Set set = this.f28715b;
        if (set.contains(1)) {
            SafeParcelWriter.p(parcel, 1, 4);
            parcel.writeInt(this.f28716c);
        }
        if (set.contains(2)) {
            SafeParcelWriter.k(parcel, 2, this.d, true);
        }
        if (set.contains(3)) {
            SafeParcelWriter.p(parcel, 3, 4);
            parcel.writeInt(this.f28717e);
        }
        if (set.contains(4)) {
            SafeParcelWriter.b(parcel, 4, this.f28718f, true);
        }
        if (set.contains(5)) {
            SafeParcelWriter.j(parcel, 5, this.g, i2, true);
        }
        if (set.contains(6)) {
            SafeParcelWriter.j(parcel, 6, this.f28719h, i2, true);
        }
        SafeParcelWriter.r(iQ, parcel);
    }

    public zzw() {
        this.f28715b = new ArraySet(3);
        this.f28716c = 1;
    }
}
