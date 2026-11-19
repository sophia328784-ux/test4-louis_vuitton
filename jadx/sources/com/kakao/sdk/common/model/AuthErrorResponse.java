package com.kakao.sdk.common.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.networkbench.agent.impl.NBSSpanMetricUnit;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\t\b\u0087\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0005\u0010\u0006R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0007\u001a\u0004\b\b\u0010\tR\u0019\u0010\u0004\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0007\u001a\u0004\b\n\u0010\t¨\u0006\u000b"}, d2 = {"Lcom/kakao/sdk/common/model/AuthErrorResponse;", "Landroid/os/Parcelable;", "", "error", "errorDescription", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "Ljava/lang/String;", "a", "()Ljava/lang/String;", NBSSpanMetricUnit.Bit, "common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final /* data */ class AuthErrorResponse implements Parcelable {
    public static final Parcelable.Creator<AuthErrorResponse> CREATOR = new Creator();
    private final String error;
    private final String errorDescription;

    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<AuthErrorResponse> {
        @Override // android.os.Parcelable.Creator
        public final AuthErrorResponse createFromParcel(Parcel parcel) {
            parcel.getClass();
            return new AuthErrorResponse(parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final AuthErrorResponse[] newArray(int i2) {
            return new AuthErrorResponse[i2];
        }
    }

    public AuthErrorResponse(String str, String str2) {
        str.getClass();
        this.error = str;
        this.errorDescription = str2;
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final String getError() {
        return this.error;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final String getErrorDescription() {
        return this.errorDescription;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AuthErrorResponse)) {
            return false;
        }
        AuthErrorResponse authErrorResponse = (AuthErrorResponse) obj;
        return Intrinsics.c(this.error, authErrorResponse.error) && Intrinsics.c(this.errorDescription, authErrorResponse.errorDescription);
    }

    public final int hashCode() {
        int iHashCode = this.error.hashCode() * 31;
        String str = this.errorDescription;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AuthErrorResponse(error=");
        sb.append(this.error);
        sb.append(", errorDescription=");
        return fc.l(sb, this.errorDescription, ')');
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        parcel.writeString(this.error);
        parcel.writeString(this.errorDescription);
    }
}
