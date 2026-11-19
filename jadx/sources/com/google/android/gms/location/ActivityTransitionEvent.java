package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class ActivityTransitionEvent extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ActivityTransitionEvent> CREATOR = new zzf();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f31311b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f31312c;
    public final long d;

    public ActivityTransitionEvent(int i2, int i3, long j2) {
        Parcelable.Creator<ActivityTransition> creator = ActivityTransition.CREATOR;
        boolean z = false;
        if (i3 >= 0 && i3 <= 1) {
            z = true;
        }
        StringBuilder sb = new StringBuilder(String.valueOf(i3).length() + 30);
        sb.append("Transition type ");
        sb.append(i3);
        sb.append(" is not valid.");
        Preconditions.b(z, sb.toString());
        this.f31311b = i2;
        this.f31312c = i3;
        this.d = j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ActivityTransitionEvent)) {
            return false;
        }
        ActivityTransitionEvent activityTransitionEvent = (ActivityTransitionEvent) obj;
        return this.f31311b == activityTransitionEvent.f31311b && this.f31312c == activityTransitionEvent.f31312c && this.d == activityTransitionEvent.d;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f31311b), Integer.valueOf(this.f31312c), Long.valueOf(this.d)});
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        int i2 = this.f31311b;
        StringBuilder sb2 = new StringBuilder(String.valueOf(i2).length() + 13);
        sb2.append("ActivityType ");
        sb2.append(i2);
        sb.append(sb2.toString());
        sb.append(" ");
        int i3 = this.f31312c;
        StringBuilder sb3 = new StringBuilder(String.valueOf(i3).length() + 15);
        sb3.append("TransitionType ");
        sb3.append(i3);
        sb.append(sb3.toString());
        sb.append(" ");
        long j2 = this.d;
        StringBuilder sb4 = new StringBuilder(String.valueOf(j2).length() + 21);
        sb4.append("ElapsedRealTimeNanos ");
        sb4.append(j2);
        sb.append(sb4.toString());
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        Preconditions.h(parcel);
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.p(parcel, 1, 4);
        parcel.writeInt(this.f31311b);
        SafeParcelWriter.p(parcel, 2, 4);
        parcel.writeInt(this.f31312c);
        SafeParcelWriter.p(parcel, 3, 8);
        parcel.writeLong(this.d);
        SafeParcelWriter.r(iQ, parcel);
    }
}
