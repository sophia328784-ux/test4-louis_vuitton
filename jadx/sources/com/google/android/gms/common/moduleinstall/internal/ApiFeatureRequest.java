package com.google.android.gms.common.moduleinstall.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class ApiFeatureRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ApiFeatureRequest> CREATOR = new zac();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f29294b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f29295c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f29296e;

    public ApiFeatureRequest(List list, boolean z, String str, String str2) {
        Preconditions.h(list);
        this.f29294b = list;
        this.f29295c = z;
        this.d = str;
        this.f29296e = str2;
    }

    public final boolean equals(Object obj) {
        if (obj == null || !(obj instanceof ApiFeatureRequest)) {
            return false;
        }
        ApiFeatureRequest apiFeatureRequest = (ApiFeatureRequest) obj;
        return this.f29295c == apiFeatureRequest.f29295c && Objects.a(this.f29294b, apiFeatureRequest.f29294b) && Objects.a(this.d, apiFeatureRequest.d) && Objects.a(this.f29296e, apiFeatureRequest.f29296e);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Boolean.valueOf(this.f29295c), this.f29294b, this.d, this.f29296e});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.o(parcel, 1, this.f29294b, false);
        SafeParcelWriter.p(parcel, 2, 4);
        parcel.writeInt(this.f29295c ? 1 : 0);
        SafeParcelWriter.k(parcel, 3, this.d, false);
        SafeParcelWriter.k(parcel, 4, this.f29296e, false);
        SafeParcelWriter.r(iQ, parcel);
    }
}
