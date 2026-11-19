package com.kakao.sdk.common.model;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\t\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0007\u001a\u0004\b\b\u0010\tR\u0017\u0010\u0004\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0007\u001a\u0004\b\n\u0010\t¨\u0006\u000b"}, d2 = {"Lcom/kakao/sdk/common/model/AppsErrorResponse;", "Landroid/os/Parcelable;", "", "errorCode", "errorMessage", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "Ljava/lang/String;", "getErrorCode", "()Ljava/lang/String;", "a", "common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final /* data */ class AppsErrorResponse implements Parcelable {
    public static final Parcelable.Creator<AppsErrorResponse> CREATOR = new Creator();
    private final String errorCode;
    private final String errorMessage;

    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<AppsErrorResponse> {
        @Override // android.os.Parcelable.Creator
        public final AppsErrorResponse createFromParcel(Parcel parcel) {
            parcel.getClass();
            return new AppsErrorResponse(parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final AppsErrorResponse[] newArray(int i2) {
            return new AppsErrorResponse[i2];
        }
    }

    public AppsErrorResponse(String str, String str2) {
        str.getClass();
        str2.getClass();
        this.errorCode = str;
        this.errorMessage = str2;
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final String getErrorMessage() {
        return this.errorMessage;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AppsErrorResponse)) {
            return false;
        }
        AppsErrorResponse appsErrorResponse = (AppsErrorResponse) obj;
        return Intrinsics.c(this.errorCode, appsErrorResponse.errorCode) && Intrinsics.c(this.errorMessage, appsErrorResponse.errorMessage);
    }

    public final int hashCode() {
        return this.errorMessage.hashCode() + (this.errorCode.hashCode() * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AppsErrorResponse(errorCode=");
        sb.append(this.errorCode);
        sb.append(", errorMessage=");
        return fc.l(sb, this.errorMessage, ')');
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        parcel.writeString(this.errorCode);
        parcel.writeString(this.errorMessage);
    }
}
