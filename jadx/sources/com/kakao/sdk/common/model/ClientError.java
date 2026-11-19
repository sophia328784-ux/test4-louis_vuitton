package com.kakao.sdk.common.model;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\b\u0087\b\u0018\u00002\u00020\u00012\u00020\u0002B\u0019\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bR\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\t\u001a\u0004\b\n\u0010\u000bR\u001a\u0010\u0006\u001a\u00020\u00058\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0006\u0010\f\u001a\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/kakao/sdk/common/model/ClientError;", "Lcom/kakao/sdk/common/model/KakaoSdkError;", "Landroid/os/Parcelable;", "Lcom/kakao/sdk/common/model/ClientErrorCause;", "reason", "", "msg", "<init>", "(Lcom/kakao/sdk/common/model/ClientErrorCause;Ljava/lang/String;)V", "Lcom/kakao/sdk/common/model/ClientErrorCause;", "a", "()Lcom/kakao/sdk/common/model/ClientErrorCause;", "Ljava/lang/String;", "getMsg", "()Ljava/lang/String;", "common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final /* data */ class ClientError extends KakaoSdkError implements Parcelable {
    public static final Parcelable.Creator<ClientError> CREATOR = new Creator();
    private final String msg;
    private final ClientErrorCause reason;

    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<ClientError> {
        @Override // android.os.Parcelable.Creator
        public final ClientError createFromParcel(Parcel parcel) {
            parcel.getClass();
            return new ClientError(ClientErrorCause.valueOf(parcel.readString()), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final ClientError[] newArray(int i2) {
            return new ClientError[i2];
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ ClientError(ClientErrorCause clientErrorCause, String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        Description description;
        if ((i2 & 2) != 0 && ((description = (Description) clientErrorCause.getClass().getField(clientErrorCause.name()).getAnnotation(Description.class)) == null || (str = description.value()) == null)) {
            str = "Client-side error";
        }
        this(clientErrorCause, str);
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final ClientErrorCause getReason() {
        return this.reason;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ClientError)) {
            return false;
        }
        ClientError clientError = (ClientError) obj;
        return this.reason == clientError.reason && Intrinsics.c(this.msg, clientError.msg);
    }

    public final int hashCode() {
        return this.msg.hashCode() + (this.reason.hashCode() * 31);
    }

    @Override // java.lang.Throwable
    public final String toString() {
        StringBuilder sb = new StringBuilder("ClientError(reason=");
        sb.append(this.reason);
        sb.append(", msg=");
        return fc.l(sb, this.msg, ')');
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        parcel.writeString(this.reason.name());
        parcel.writeString(this.msg);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ClientError(ClientErrorCause clientErrorCause, String str) {
        super(str, null);
        clientErrorCause.getClass();
        str.getClass();
        this.reason = clientErrorCause;
        this.msg = str;
    }
}
