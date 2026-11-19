package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.Arrays;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public class PatternItem extends AbstractSafeParcelable {
    public static final Parcelable.Creator<PatternItem> CREATOR = new zzq();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f31465b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Float f31466c;

    public PatternItem(int i2, Float f2) {
        boolean z = true;
        if (i2 != 1 && (f2 == null || f2.floatValue() < Call.Parameters.DEFAULT_CAMERA_ZOOM)) {
            z = false;
        }
        Preconditions.b(z, "Invalid PatternItem: type=" + i2 + " length=" + f2);
        this.f31465b = i2;
        this.f31466c = f2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PatternItem)) {
            return false;
        }
        PatternItem patternItem = (PatternItem) obj;
        return this.f31465b == patternItem.f31465b && Objects.a(this.f31466c, patternItem.f31466c);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f31465b), this.f31466c});
    }

    public String toString() {
        return "[PatternItem: type=" + this.f31465b + " length=" + this.f31466c + "]";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.p(parcel, 2, 4);
        parcel.writeInt(this.f31465b);
        SafeParcelWriter.e(parcel, 3, this.f31466c);
        SafeParcelWriter.r(iQ, parcel);
    }
}
