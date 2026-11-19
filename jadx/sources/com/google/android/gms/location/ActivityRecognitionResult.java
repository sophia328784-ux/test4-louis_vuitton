package com.google.android.gms.location;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import defpackage.a;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class ActivityRecognitionResult extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<ActivityRecognitionResult> CREATOR = new zzd();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f31305b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f31306c;
    public final long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f31307e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Bundle f31308f;

    public ActivityRecognitionResult(List list, long j2, long j3, int i2, Bundle bundle) {
        Preconditions.b((list == null || list.isEmpty()) ? false : true, "Must have at least 1 detected activity");
        Preconditions.b(j2 > 0 && j3 > 0, "Must set times");
        this.f31305b = list;
        this.f31306c = j2;
        this.d = j3;
        this.f31307e = i2;
        this.f31308f = bundle;
    }

    public static boolean W1(Bundle bundle, Bundle bundle2) {
        int length;
        if (bundle == null) {
            return bundle2 == null;
        }
        if (bundle2 == null || bundle.size() != bundle2.size()) {
            return false;
        }
        for (String str : bundle.keySet()) {
            if (!bundle2.containsKey(str)) {
                return false;
            }
            Object obj = bundle.get(str);
            Object obj2 = bundle2.get(str);
            if (obj == null) {
                if (obj2 != null) {
                    return false;
                }
            } else if (obj instanceof Bundle) {
                if (!W1(bundle.getBundle(str), bundle2.getBundle(str))) {
                    return false;
                }
            } else {
                if (obj.getClass().isArray()) {
                    if (obj2 != null && obj2.getClass().isArray() && (length = Array.getLength(obj)) == Array.getLength(obj2)) {
                        for (int i2 = 0; i2 < length; i2++) {
                            if (Objects.a(Array.get(obj, i2), Array.get(obj2, i2))) {
                            }
                        }
                    }
                    return false;
                }
                if (!obj.equals(obj2)) {
                    return false;
                }
            }
        }
        return true;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            ActivityRecognitionResult activityRecognitionResult = (ActivityRecognitionResult) obj;
            if (this.f31306c == activityRecognitionResult.f31306c && this.d == activityRecognitionResult.d && this.f31307e == activityRecognitionResult.f31307e && Objects.a(this.f31305b, activityRecognitionResult.f31305b) && W1(this.f31308f, activityRecognitionResult.f31308f)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.f31306c), Long.valueOf(this.d), Integer.valueOf(this.f31307e), this.f31305b, this.f31308f});
    }

    public final String toString() {
        String strValueOf = String.valueOf(this.f31305b);
        int length = strValueOf.length();
        long j2 = this.f31306c;
        int length2 = String.valueOf(j2).length();
        long j3 = this.d;
        StringBuilder sb = new StringBuilder(length + 59 + length2 + 24 + String.valueOf(j3).length() + 1);
        a.B(sb, "ActivityRecognitionResult [probableActivities=", strValueOf, ", timeMillis=");
        sb.append(j2);
        sb.append(", elapsedRealtimeMillis=");
        sb.append(j3);
        sb.append("]");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.o(parcel, 1, this.f31305b, false);
        SafeParcelWriter.p(parcel, 2, 8);
        parcel.writeLong(this.f31306c);
        SafeParcelWriter.p(parcel, 3, 8);
        parcel.writeLong(this.d);
        SafeParcelWriter.p(parcel, 4, 4);
        parcel.writeInt(this.f31307e);
        SafeParcelWriter.a(parcel, 5, this.f31308f);
        SafeParcelWriter.r(iQ, parcel);
    }

    public ActivityRecognitionResult(List<DetectedActivity> list, long j2, long j3) {
        this(list, j2, j3, 0, null);
    }

    public ActivityRecognitionResult(DetectedActivity detectedActivity, long j2, long j3) {
        this(Collections.singletonList(detectedActivity), j2, j3, 0, null);
    }
}
