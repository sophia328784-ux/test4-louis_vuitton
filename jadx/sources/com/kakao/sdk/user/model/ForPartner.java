package com.kakao.sdk.user.model;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0019\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0006\u001a\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/kakao/sdk/user/model/ForPartner;", "Landroid/os/Parcelable;", "", "uuid", "<init>", "(Ljava/lang/String;)V", "Ljava/lang/String;", "a", "()Ljava/lang/String;", "user_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final /* data */ class ForPartner implements Parcelable {
    public static final Parcelable.Creator<ForPartner> CREATOR = new Creator();
    private final String uuid;

    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<ForPartner> {
        @Override // android.os.Parcelable.Creator
        public final ForPartner createFromParcel(Parcel parcel) {
            parcel.getClass();
            return new ForPartner(parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final ForPartner[] newArray(int i2) {
            return new ForPartner[i2];
        }
    }

    public ForPartner(String str) {
        this.uuid = str;
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final String getUuid() {
        return this.uuid;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ForPartner) && Intrinsics.c(this.uuid, ((ForPartner) obj).uuid);
    }

    public final int hashCode() {
        String str = this.uuid;
        if (str == null) {
            return 0;
        }
        return str.hashCode();
    }

    public final String toString() {
        return fc.l(new StringBuilder("ForPartner(uuid="), this.uuid, ')');
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        parcel.writeString(this.uuid);
    }
}
