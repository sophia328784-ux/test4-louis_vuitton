package com.google.android.gms.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class Feature extends AbstractSafeParcelable {
    public static final Parcelable.Creator<Feature> CREATOR = new zzb();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f28958b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f28959c;
    public final long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f28960e;

    public Feature(String str, int i2, long j2, boolean z) {
        this.f28958b = str;
        this.f28959c = i2;
        this.d = j2;
        this.f28960e = z;
    }

    public final long W1() {
        long j2 = this.d;
        return j2 == -1 ? this.f28959c : j2;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof Feature) {
            Feature feature = (Feature) obj;
            if (Objects.a(this.f28958b, feature.f28958b) && W1() == feature.W1() && this.f28960e == feature.f28960e) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f28958b, Long.valueOf(W1()), Boolean.valueOf(this.f28960e)});
    }

    public final String toString() {
        Objects.ToStringHelper toStringHelper = new Objects.ToStringHelper(this);
        toStringHelper.a(this.f28958b, "name");
        toStringHelper.a(Long.valueOf(W1()), "version");
        toStringHelper.a(Boolean.valueOf(this.f28960e), "is_fully_rolled_out");
        return toStringHelper.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.k(parcel, 1, this.f28958b, false);
        SafeParcelWriter.p(parcel, 2, 4);
        parcel.writeInt(this.f28959c);
        long jW1 = W1();
        SafeParcelWriter.p(parcel, 3, 8);
        parcel.writeLong(jW1);
        SafeParcelWriter.p(parcel, 4, 4);
        parcel.writeInt(this.f28960e ? 1 : 0);
        SafeParcelWriter.r(iQ, parcel);
    }

    public Feature(String str, int i2, long j2) {
        this(str, i2, j2, false);
    }

    public Feature(String str, long j2) {
        this(str, -1, j2, false);
    }

    public Feature(String str, long j2, boolean z) {
        this(str, -1, j2, z);
    }
}
