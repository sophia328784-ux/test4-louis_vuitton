package com.google.android.gms.fido.u2f.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.internal.fido.zzbi;
import com.google.android.gms.internal.fido.zzbj;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public class ErrorResponseData extends ResponseData {
    public static final Parcelable.Creator<ErrorResponseData> CREATOR = new zzd();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ErrorCode f29521b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f29522c;

    public ErrorResponseData(int i2, String str) {
        this.f29521b = ErrorCode.b(i2);
        this.f29522c = str;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof ErrorResponseData)) {
            return false;
        }
        ErrorResponseData errorResponseData = (ErrorResponseData) obj;
        return Objects.a(this.f29521b, errorResponseData.f29521b) && Objects.a(this.f29522c, errorResponseData.f29522c);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f29521b, this.f29522c});
    }

    public final String toString() {
        zzbi zzbiVarA = zzbj.a(this);
        zzbiVarA.a(this.f29521b.a());
        String str = this.f29522c;
        if (str != null) {
            zzbiVarA.b(str, "errorMessage");
        }
        return zzbiVarA.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        int iA = this.f29521b.a();
        SafeParcelWriter.p(parcel, 2, 4);
        parcel.writeInt(iA);
        SafeParcelWriter.k(parcel, 3, this.f29522c, false);
        SafeParcelWriter.r(iQ, parcel);
    }

    public ErrorResponseData(ErrorCode errorCode) {
        Preconditions.h(errorCode);
        this.f29521b = errorCode;
        this.f29522c = null;
    }

    public ErrorResponseData(ErrorCode errorCode, String str) {
        Preconditions.h(errorCode);
        this.f29521b = errorCode;
        this.f29522c = str;
    }
}
