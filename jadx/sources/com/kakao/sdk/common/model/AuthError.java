package com.kakao.sdk.common.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.appsflyer.sdk_base.referrer.Payload;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\b\u0087\b\u0018\u00002\u00020\u00012\u00020\u0002B\u001f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nR\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u000b\u001a\u0004\b\f\u0010\rR\u0017\u0010\u0006\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\u0017\u0010\b\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u0014"}, d2 = {"Lcom/kakao/sdk/common/model/AuthError;", "Lcom/kakao/sdk/common/model/KakaoSdkError;", "Landroid/os/Parcelable;", "", "statusCode", "Lcom/kakao/sdk/common/model/AuthErrorCause;", "reason", "Lcom/kakao/sdk/common/model/AuthErrorResponse;", Payload.RESPONSE, "<init>", "(ILcom/kakao/sdk/common/model/AuthErrorCause;Lcom/kakao/sdk/common/model/AuthErrorResponse;)V", "I", "getStatusCode", "()I", "Lcom/kakao/sdk/common/model/AuthErrorCause;", "getReason", "()Lcom/kakao/sdk/common/model/AuthErrorCause;", "Lcom/kakao/sdk/common/model/AuthErrorResponse;", "getResponse", "()Lcom/kakao/sdk/common/model/AuthErrorResponse;", "common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final /* data */ class AuthError extends KakaoSdkError implements Parcelable {
    public static final Parcelable.Creator<AuthError> CREATOR = new Creator();
    private final AuthErrorCause reason;
    private final AuthErrorResponse response;
    private final int statusCode;

    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<AuthError> {
        @Override // android.os.Parcelable.Creator
        public final AuthError createFromParcel(Parcel parcel) {
            parcel.getClass();
            return new AuthError(parcel.readInt(), AuthErrorCause.valueOf(parcel.readString()), AuthErrorResponse.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final AuthError[] newArray(int i2) {
            return new AuthError[i2];
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public AuthError(int i2, AuthErrorCause authErrorCause, AuthErrorResponse authErrorResponse) {
        authErrorCause.getClass();
        authErrorResponse.getClass();
        String errorDescription = authErrorResponse.getErrorDescription();
        super(errorDescription == null ? authErrorResponse.getError() : errorDescription, null);
        this.statusCode = i2;
        this.reason = authErrorCause;
        this.response = authErrorResponse;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AuthError)) {
            return false;
        }
        AuthError authError = (AuthError) obj;
        return this.statusCode == authError.statusCode && this.reason == authError.reason && Intrinsics.c(this.response, authError.response);
    }

    public final int hashCode() {
        return this.response.hashCode() + ((this.reason.hashCode() + (Integer.hashCode(this.statusCode) * 31)) * 31);
    }

    @Override // java.lang.Throwable
    public final String toString() {
        return "AuthError(statusCode=" + this.statusCode + ", reason=" + this.reason + ", response=" + this.response + ')';
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        parcel.writeInt(this.statusCode);
        parcel.writeString(this.reason.name());
        this.response.writeToParcel(parcel, i2);
    }
}
