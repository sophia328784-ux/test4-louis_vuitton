package com.google.android.gms.common.api;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import defpackage.tr;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class ComplianceOptions extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ComplianceOptions> CREATOR;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f28982b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f28983c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f28984e;

    public static final class Builder {
    }

    static {
        new Builder();
        new ComplianceOptions(-1, -1, 0, true);
        CREATOR = new zzc();
    }

    public ComplianceOptions(int i2, int i3, int i4, boolean z) {
        this.f28982b = i2;
        this.f28983c = i3;
        this.d = i4;
        this.f28984e = z;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof ComplianceOptions)) {
            return false;
        }
        ComplianceOptions complianceOptions = (ComplianceOptions) obj;
        return this.f28982b == complianceOptions.f28982b && this.f28983c == complianceOptions.f28983c && this.d == complianceOptions.d && this.f28984e == complianceOptions.f28984e;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f28982b), Integer.valueOf(this.f28983c), Integer.valueOf(this.d), Boolean.valueOf(this.f28984e)});
    }

    public final String toString() {
        int i2 = this.f28982b;
        int length = String.valueOf(i2).length();
        int i3 = this.f28983c;
        int length2 = String.valueOf(i3).length();
        int i4 = this.d;
        int length3 = String.valueOf(i4).length();
        boolean z = this.f28984e;
        StringBuilder sb = new StringBuilder(length + 55 + length2 + 19 + length3 + 13 + String.valueOf(z).length() + 1);
        tr.w(i2, i3, "ComplianceOptions{callerProductId=", ", dataOwnerProductId=", sb);
        sb.append(", processingReason=");
        sb.append(i4);
        sb.append(", isUserData=");
        sb.append(z);
        sb.append("}");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.p(parcel, 1, 4);
        parcel.writeInt(this.f28982b);
        SafeParcelWriter.p(parcel, 2, 4);
        parcel.writeInt(this.f28983c);
        SafeParcelWriter.p(parcel, 3, 4);
        parcel.writeInt(this.d);
        SafeParcelWriter.p(parcel, 4, 4);
        parcel.writeInt(this.f28984e ? 1 : 0);
        SafeParcelWriter.r(iQ, parcel);
    }
}
