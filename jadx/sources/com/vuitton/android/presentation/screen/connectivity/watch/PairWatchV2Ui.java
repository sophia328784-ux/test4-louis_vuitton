package com.vuitton.android.presentation.screen.connectivity.watch;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/watch/PairWatchV2Ui;", "Landroid/os/Parcelable;", "", "serialNumber", "iotKey", "watchPublicKey", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class PairWatchV2Ui implements Parcelable {
    public static final Parcelable.Creator<PairWatchV2Ui> CREATOR = new Creator();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f56700b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f56701c;
    public final String d;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<PairWatchV2Ui> {
        @Override // android.os.Parcelable.Creator
        public final PairWatchV2Ui createFromParcel(Parcel parcel) {
            parcel.getClass();
            return new PairWatchV2Ui(parcel.readString(), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final PairWatchV2Ui[] newArray(int i2) {
            return new PairWatchV2Ui[i2];
        }
    }

    public PairWatchV2Ui(String str, String str2, String str3) {
        cj.z(str, str2, str3);
        this.f56700b = str;
        this.f56701c = str2;
        this.d = str3;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PairWatchV2Ui)) {
            return false;
        }
        PairWatchV2Ui pairWatchV2Ui = (PairWatchV2Ui) obj;
        return Intrinsics.c(this.f56700b, pairWatchV2Ui.f56700b) && Intrinsics.c(this.f56701c, pairWatchV2Ui.f56701c) && Intrinsics.c(this.d, pairWatchV2Ui.d);
    }

    public final int hashCode() {
        return this.d.hashCode() + fc.b(this.f56700b.hashCode() * 31, 31, this.f56701c);
    }

    public final String toString() {
        return n00.r(this.d, ")", fc.s("PairWatchV2Ui(serialNumber=", this.f56700b, ", iotKey=", this.f56701c, ", watchPublicKey="));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        parcel.writeString(this.f56700b);
        parcel.writeString(this.f56701c);
        parcel.writeString(this.d);
    }
}
