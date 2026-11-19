package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import defpackage.cj;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.TreeSet;

/* JADX INFO: loaded from: classes2.dex */
public class ActivityTransitionRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ActivityTransitionRequest> CREATOR = new zzh();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Comparator f31313f = new zzg();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f31314b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f31315c;
    public final List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f31316e;

    public ActivityTransitionRequest(List list, String str, List list2, String str2) {
        Preconditions.i(list, "transitions can't be null");
        Preconditions.b(!list.isEmpty(), "transitions can't be empty.");
        TreeSet treeSet = new TreeSet(f31313f);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ActivityTransition activityTransition = (ActivityTransition) it.next();
            Preconditions.b(treeSet.add(activityTransition), String.format("Found duplicated transition: %s.", activityTransition));
        }
        this.f31314b = Collections.unmodifiableList(list);
        this.f31315c = str;
        this.d = list2 == null ? Collections.EMPTY_LIST : Collections.unmodifiableList(list2);
        this.f31316e = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            ActivityTransitionRequest activityTransitionRequest = (ActivityTransitionRequest) obj;
            if (Objects.a(this.f31314b, activityTransitionRequest.f31314b) && Objects.a(this.f31315c, activityTransitionRequest.f31315c) && Objects.a(this.f31316e, activityTransitionRequest.f31316e) && Objects.a(this.d, activityTransitionRequest.d)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = this.f31314b.hashCode() * 31;
        String str = this.f31315c;
        int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 31;
        List list = this.d;
        int iHashCode3 = (iHashCode2 + (list != null ? list.hashCode() : 0)) * 31;
        String str2 = this.f31316e;
        return iHashCode3 + (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        String strValueOf = String.valueOf(this.f31314b);
        String strValueOf2 = String.valueOf(this.d);
        int length = strValueOf.length();
        String str = this.f31315c;
        int length2 = String.valueOf(str).length();
        int length3 = strValueOf2.length();
        String str2 = this.f31316e;
        StringBuilder sb = new StringBuilder(length + 48 + length2 + 12 + length3 + 18 + String.valueOf(str2).length() + 1);
        cj.C(sb, "ActivityTransitionRequest [mTransitions=", strValueOf, ", mTag='", str);
        cj.C(sb, "', mClients=", strValueOf2, ", mAttributionTag=", str2);
        sb.append("]");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        Preconditions.h(parcel);
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.o(parcel, 1, this.f31314b, false);
        SafeParcelWriter.k(parcel, 2, this.f31315c, false);
        SafeParcelWriter.o(parcel, 3, this.d, false);
        SafeParcelWriter.k(parcel, 4, this.f31316e, false);
        SafeParcelWriter.r(iQ, parcel);
    }

    public ActivityTransitionRequest(List<ActivityTransition> list) {
        this(list, null, null, null);
    }
}
