package com.linecorp.linesdk.openchat;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/linecorp/linesdk/openchat/OpenChatRoomInfo;", "Landroid/os/Parcelable;", "", "roomId", "landingPageUrl", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "line-sdk_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final /* data */ class OpenChatRoomInfo implements Parcelable {
    public static final Parcelable.Creator<OpenChatRoomInfo> CREATOR = new Creator();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f36260b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f36261c;

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    public static final class Creator implements Parcelable.Creator<OpenChatRoomInfo> {
        @Override // android.os.Parcelable.Creator
        public final OpenChatRoomInfo createFromParcel(Parcel parcel) {
            parcel.getClass();
            return new OpenChatRoomInfo(parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final OpenChatRoomInfo[] newArray(int i2) {
            return new OpenChatRoomInfo[i2];
        }
    }

    public OpenChatRoomInfo(String str, String str2) {
        str.getClass();
        str2.getClass();
        this.f36260b = str;
        this.f36261c = str2;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof OpenChatRoomInfo)) {
            return false;
        }
        OpenChatRoomInfo openChatRoomInfo = (OpenChatRoomInfo) obj;
        return Intrinsics.c(this.f36260b, openChatRoomInfo.f36260b) && Intrinsics.c(this.f36261c, openChatRoomInfo.f36261c);
    }

    public final int hashCode() {
        return this.f36261c.hashCode() + (this.f36260b.hashCode() * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("OpenChatRoomInfo(roomId=");
        sb.append(this.f36260b);
        sb.append(", landingPageUrl=");
        return fc.l(sb, this.f36261c, ')');
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        parcel.writeString(this.f36260b);
        parcel.writeString(this.f36261c);
    }
}
