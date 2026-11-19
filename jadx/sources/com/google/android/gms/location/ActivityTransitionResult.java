package com.google.android.gms.location;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class ActivityTransitionResult extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ActivityTransitionResult> CREATOR = new zzi();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f31317b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Bundle f31318c;

    public ActivityTransitionResult(List<ActivityTransitionEvent> list) {
        this.f31318c = null;
        Preconditions.i(list, "transitionEvents list can't be null.");
        if (!list.isEmpty()) {
            for (int i2 = 1; i2 < list.size(); i2++) {
                int i3 = i2 - 1;
                Preconditions.c(list.get(i2).d >= list.get(i3).d, "Transition out of order: ts1=%d, ts2=%d", Long.valueOf(list.get(i2).d), Long.valueOf(list.get(i3).d));
            }
        }
        this.f31317b = Collections.unmodifiableList(list);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.f31317b.equals(((ActivityTransitionResult) obj).f31317b);
    }

    public final int hashCode() {
        return this.f31317b.hashCode();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        Preconditions.h(parcel);
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.o(parcel, 1, this.f31317b, false);
        SafeParcelWriter.a(parcel, 2, this.f31318c);
        SafeParcelWriter.r(iQ, parcel);
    }

    public ActivityTransitionResult(List list, Bundle bundle) {
        this(list);
        this.f31318c = bundle;
    }
}
