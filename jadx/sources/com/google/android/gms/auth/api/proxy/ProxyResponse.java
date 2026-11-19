package com.google.android.gms.auth.api.proxy;

import android.app.PendingIntent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class ProxyResponse extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ProxyResponse> CREATOR = new zzb();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f28799b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final PendingIntent f28800c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final byte[] f28801e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f28802f;
    public final Bundle g;

    public ProxyResponse(int i2, Map<String, String> map, byte[] bArr) {
        Bundle bundle = new Bundle();
        if (map != null) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                bundle.putString(entry.getKey(), entry.getValue());
            }
        }
        this(1, 0, null, i2, bundle, bArr);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.p(parcel, 1, 4);
        parcel.writeInt(this.f28799b);
        SafeParcelWriter.j(parcel, 2, this.f28800c, i2, false);
        SafeParcelWriter.p(parcel, 3, 4);
        parcel.writeInt(this.d);
        SafeParcelWriter.a(parcel, 4, this.g);
        SafeParcelWriter.b(parcel, 5, this.f28801e, false);
        SafeParcelWriter.p(parcel, 1000, 4);
        parcel.writeInt(this.f28802f);
        SafeParcelWriter.r(iQ, parcel);
    }

    public ProxyResponse(int i2, int i3, PendingIntent pendingIntent, int i4, Bundle bundle, byte[] bArr) {
        this.f28802f = i2;
        this.f28799b = i3;
        this.d = i4;
        this.g = bundle;
        this.f28801e = bArr;
        this.f28800c = pendingIntent;
    }

    public ProxyResponse(int i2, PendingIntent pendingIntent, int i3, Bundle bundle, byte[] bArr) {
        this(1, i2, pendingIntent, i3, bundle, bArr);
    }
}
