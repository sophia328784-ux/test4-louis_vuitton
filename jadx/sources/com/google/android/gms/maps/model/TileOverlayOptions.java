package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.internal.maps.zzaz;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public final class TileOverlayOptions extends AbstractSafeParcelable {
    public static final Parcelable.Creator<TileOverlayOptions> CREATOR = new zzaj();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public zzaz f31515b;
    public float d;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f31516c = true;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f31517e = true;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float f31518f = Call.Parameters.DEFAULT_CAMERA_ZOOM;

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        zzaz zzazVar = this.f31515b;
        SafeParcelWriter.f(parcel, 2, zzazVar == null ? null : zzazVar.asBinder());
        boolean z = this.f31516c;
        SafeParcelWriter.p(parcel, 3, 4);
        parcel.writeInt(z ? 1 : 0);
        float f2 = this.d;
        SafeParcelWriter.p(parcel, 4, 4);
        parcel.writeFloat(f2);
        boolean z2 = this.f31517e;
        SafeParcelWriter.p(parcel, 5, 4);
        parcel.writeInt(z2 ? 1 : 0);
        float f3 = this.f31518f;
        SafeParcelWriter.p(parcel, 6, 4);
        parcel.writeFloat(f3);
        SafeParcelWriter.r(iQ, parcel);
    }
}
