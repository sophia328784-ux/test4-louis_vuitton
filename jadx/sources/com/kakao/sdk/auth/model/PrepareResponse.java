package com.kakao.sdk.auth.model;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0006\u001a\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/kakao/sdk/auth/model/PrepareResponse;", "Landroid/os/Parcelable;", "", "kauthTxId", "<init>", "(Ljava/lang/String;)V", "Ljava/lang/String;", "getKauthTxId", "()Ljava/lang/String;", "auth_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final /* data */ class PrepareResponse implements Parcelable {
    public static final Parcelable.Creator<PrepareResponse> CREATOR = new Creator();
    private final String kauthTxId;

    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<PrepareResponse> {
        @Override // android.os.Parcelable.Creator
        public final PrepareResponse createFromParcel(Parcel parcel) {
            parcel.getClass();
            return new PrepareResponse(parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final PrepareResponse[] newArray(int i2) {
            return new PrepareResponse[i2];
        }
    }

    public PrepareResponse(String str) {
        str.getClass();
        this.kauthTxId = str;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof PrepareResponse) && Intrinsics.c(this.kauthTxId, ((PrepareResponse) obj).kauthTxId);
    }

    public final int hashCode() {
        return this.kauthTxId.hashCode();
    }

    public final String toString() {
        return fc.l(new StringBuilder("PrepareResponse(kauthTxId="), this.kauthTxId, ')');
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        parcel.writeString(this.kauthTxId);
    }
}
