package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import defpackage.tr;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class ActivityTransition extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ActivityTransition> CREATOR = new zze();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f31309b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f31310c;

    @Retention(RetentionPolicy.SOURCE)
    public @interface SupportedActivityTransition {
    }

    public ActivityTransition(int i2, int i3) {
        this.f31309b = i2;
        this.f31310c = i3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ActivityTransition)) {
            return false;
        }
        ActivityTransition activityTransition = (ActivityTransition) obj;
        return this.f31309b == activityTransition.f31309b && this.f31310c == activityTransition.f31310c;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f31309b), Integer.valueOf(this.f31310c)});
    }

    public final String toString() {
        int i2 = this.f31309b;
        int length = String.valueOf(i2).length();
        int i3 = this.f31310c;
        StringBuilder sb = new StringBuilder(length + 52 + String.valueOf(i3).length() + 1);
        tr.w(i2, i3, "ActivityTransition [mActivityType=", ", mTransitionType=", sb);
        sb.append("]");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        Preconditions.h(parcel);
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.p(parcel, 1, 4);
        parcel.writeInt(this.f31309b);
        SafeParcelWriter.p(parcel, 2, 4);
        parcel.writeInt(this.f31310c);
        SafeParcelWriter.r(iQ, parcel);
    }
}
