package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.List;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public class TelemetryData extends AbstractSafeParcelable {
    public static final Parcelable.Creator<TelemetryData> CREATOR = new zaae();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f29209b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public List f29210c;

    public TelemetryData(int i2, @Nullable List list) {
        this.f29209b = i2;
        this.f29210c = list;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.p(parcel, 1, 4);
        parcel.writeInt(this.f29209b);
        SafeParcelWriter.o(parcel, 2, this.f29210c, false);
        SafeParcelWriter.r(iQ, parcel);
    }
}
