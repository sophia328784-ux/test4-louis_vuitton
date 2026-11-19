package com.google.android.gms.common.api;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import defpackage.d21;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class ApiMetadata extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ApiMetadata> CREATOR = zza.f29137a;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final ApiMetadata f28975e = new Builder().a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ComplianceOptions f28976b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f28977c;
    public boolean d;

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public ComplianceOptions f28978a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f28979b = false;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f28980c;

        public final ApiMetadata a() {
            ApiMetadata apiMetadata = new ApiMetadata(this.f28978a, this.f28979b);
            apiMetadata.d = this.f28980c;
            return apiMetadata;
        }
    }

    static {
        Builder builder = new Builder();
        builder.f28980c = true;
        builder.a();
    }

    public ApiMetadata(ComplianceOptions complianceOptions, boolean z) {
        this.f28976b = complianceOptions;
        this.f28977c = z;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof ApiMetadata)) {
            return false;
        }
        ApiMetadata apiMetadata = (ApiMetadata) obj;
        return Objects.a(this.f28976b, apiMetadata.f28976b) && this.d == apiMetadata.d && this.f28977c == apiMetadata.f28977c;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f28976b, Boolean.valueOf(this.d), Boolean.valueOf(this.f28977c)});
    }

    public final String toString() {
        String strValueOf = String.valueOf(this.f28976b);
        return d21.p(new StringBuilder(strValueOf.length() + 31), "ApiMetadata(complianceOptions=", strValueOf, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        if (this.d) {
            parcel.setDataPosition(parcel.dataPosition() - 4);
            parcel.setDataSize(parcel.dataSize() - 4);
            return;
        }
        parcel.writeInt(-204102970);
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.j(parcel, 1, this.f28976b, i2, false);
        SafeParcelWriter.p(parcel, 2, 4);
        parcel.writeInt(this.f28977c ? 1 : 0);
        SafeParcelWriter.r(iQ, parcel);
    }
}
