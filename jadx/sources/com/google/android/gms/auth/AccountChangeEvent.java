package com.google.android.gms.auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import defpackage.fc;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class AccountChangeEvent extends AbstractSafeParcelable {
    public static final Parcelable.Creator<AccountChangeEvent> CREATOR = new zza();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f28681b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f28682c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f28683e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f28684f;
    public final String g;

    public AccountChangeEvent(long j2, String str, int i2, int i3, String str2) {
        this.f28681b = 1;
        this.f28682c = j2;
        Preconditions.h(str);
        this.d = str;
        this.f28683e = i2;
        this.f28684f = i3;
        this.g = str2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof AccountChangeEvent)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        AccountChangeEvent accountChangeEvent = (AccountChangeEvent) obj;
        return this.f28681b == accountChangeEvent.f28681b && this.f28682c == accountChangeEvent.f28682c && Objects.a(this.d, accountChangeEvent.d) && this.f28683e == accountChangeEvent.f28683e && this.f28684f == accountChangeEvent.f28684f && Objects.a(this.g, accountChangeEvent.g);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f28681b), Long.valueOf(this.f28682c), this.d, Integer.valueOf(this.f28683e), Integer.valueOf(this.f28684f), this.g});
    }

    public final String toString() {
        String str;
        int i2 = this.f28683e;
        if (i2 == 1) {
            str = "ADDED";
        } else if (i2 == 2) {
            str = "REMOVED";
        } else if (i2 != 3) {
            str = i2 != 4 ? "UNKNOWN" : "RENAMED_TO";
        } else {
            str = "RENAMED_FROM";
        }
        StringBuilder sbS = fc.s("AccountChangeEvent {accountName = ", this.d, ", changeType = ", str, ", changeData = ");
        sbS.append(this.g);
        sbS.append(", eventIndex = ");
        sbS.append(this.f28684f);
        sbS.append("}");
        return sbS.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.p(parcel, 1, 4);
        parcel.writeInt(this.f28681b);
        SafeParcelWriter.p(parcel, 2, 8);
        parcel.writeLong(this.f28682c);
        SafeParcelWriter.k(parcel, 3, this.d, false);
        SafeParcelWriter.p(parcel, 4, 4);
        parcel.writeInt(this.f28683e);
        SafeParcelWriter.p(parcel, 5, 4);
        parcel.writeInt(this.f28684f);
        SafeParcelWriter.k(parcel, 6, this.g, false);
        SafeParcelWriter.r(iQ, parcel);
    }

    public AccountChangeEvent(int i2, long j2, String str, int i3, int i4, String str2) {
        this.f28681b = i2;
        this.f28682c = j2;
        Preconditions.h(str);
        this.d = str;
        this.f28683e = i3;
        this.f28684f = i4;
        this.g = str2;
    }
}
