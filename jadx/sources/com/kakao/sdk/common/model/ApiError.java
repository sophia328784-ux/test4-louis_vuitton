package com.kakao.sdk.common.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.appsflyer.sdk_base.referrer.Payload;
import com.networkbench.agent.impl.NBSSpanMetricUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\b\u0087\b\u0018\u0000 \u00142\u00020\u00012\u00020\u0002:\u0001\u0014B\u001f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nR\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u000b\u001a\u0004\b\f\u0010\rR\u0017\u0010\u0006\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\u0017\u0010\b\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u0015"}, d2 = {"Lcom/kakao/sdk/common/model/ApiError;", "Lcom/kakao/sdk/common/model/KakaoSdkError;", "Landroid/os/Parcelable;", "", "statusCode", "Lcom/kakao/sdk/common/model/ApiErrorCause;", "reason", "Lcom/kakao/sdk/common/model/ApiErrorResponse;", Payload.RESPONSE, "<init>", "(ILcom/kakao/sdk/common/model/ApiErrorCause;Lcom/kakao/sdk/common/model/ApiErrorResponse;)V", "I", "c", "()I", "Lcom/kakao/sdk/common/model/ApiErrorCause;", "a", "()Lcom/kakao/sdk/common/model/ApiErrorCause;", "Lcom/kakao/sdk/common/model/ApiErrorResponse;", NBSSpanMetricUnit.Bit, "()Lcom/kakao/sdk/common/model/ApiErrorResponse;", "Companion", "common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final /* data */ class ApiError extends KakaoSdkError implements Parcelable {
    private final ApiErrorCause reason;
    private final ApiErrorResponse response;
    private final int statusCode;
    public static final Parcelable.Creator<ApiError> CREATOR = new Creator();

    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<ApiError> {
        @Override // android.os.Parcelable.Creator
        public final ApiError createFromParcel(Parcel parcel) {
            parcel.getClass();
            return new ApiError(parcel.readInt(), ApiErrorCause.valueOf(parcel.readString()), ApiErrorResponse.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final ApiError[] newArray(int i2) {
            return new ApiError[i2];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ApiError(int i2, ApiErrorCause apiErrorCause, ApiErrorResponse apiErrorResponse) {
        super(apiErrorResponse.getMsg(), null);
        apiErrorCause.getClass();
        apiErrorResponse.getClass();
        this.statusCode = i2;
        this.reason = apiErrorCause;
        this.response = apiErrorResponse;
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final ApiErrorCause getReason() {
        return this.reason;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final ApiErrorResponse getResponse() {
        return this.response;
    }

    /* JADX INFO: renamed from: c, reason: from getter */
    public final int getStatusCode() {
        return this.statusCode;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ApiError)) {
            return false;
        }
        ApiError apiError = (ApiError) obj;
        return this.statusCode == apiError.statusCode && this.reason == apiError.reason && Intrinsics.c(this.response, apiError.response);
    }

    public final int hashCode() {
        return this.response.hashCode() + ((this.reason.hashCode() + (Integer.hashCode(this.statusCode) * 31)) * 31);
    }

    @Override // java.lang.Throwable
    public final String toString() {
        return "ApiError(statusCode=" + this.statusCode + ", reason=" + this.reason + ", response=" + this.response + ')';
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        parcel.writeInt(this.statusCode);
        parcel.writeString(this.reason.name());
        this.response.writeToParcel(parcel, i2);
    }
}
