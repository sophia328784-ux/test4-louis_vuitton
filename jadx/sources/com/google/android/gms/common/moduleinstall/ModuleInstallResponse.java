package com.google.android.gms.common.moduleinstall;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes2.dex */
public class ModuleInstallResponse extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ModuleInstallResponse> CREATOR = new zac();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f29288b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f29289c;

    public ModuleInstallResponse(int i2, boolean z) {
        this.f29288b = i2;
        this.f29289c = z;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.p(parcel, 1, 4);
        parcel.writeInt(this.f29288b);
        SafeParcelWriter.p(parcel, 2, 4);
        parcel.writeInt(this.f29289c ? 1 : 0);
        SafeParcelWriter.r(iQ, parcel);
    }

    public ModuleInstallResponse(int i2) {
        this(i2, false);
    }
}
