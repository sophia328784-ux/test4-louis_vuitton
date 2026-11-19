package com.vuitton.android.presentation.screen.connectivity.watch.tutorial.detail;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/detail/WatchTutorialUi;", "Landroid/os/Parcelable;", "", "title", "videoUrl", "videoSubtitlesUrl", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class WatchTutorialUi implements Parcelable {
    public static final Parcelable.Creator<WatchTutorialUi> CREATOR = new Creator();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f56808b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f56809c;
    public final String d;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<WatchTutorialUi> {
        @Override // android.os.Parcelable.Creator
        public final WatchTutorialUi createFromParcel(Parcel parcel) {
            parcel.getClass();
            return new WatchTutorialUi(parcel.readString(), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final WatchTutorialUi[] newArray(int i2) {
            return new WatchTutorialUi[i2];
        }
    }

    public WatchTutorialUi(String str, String str2, String str3) {
        cj.z(str, str2, str3);
        this.f56808b = str;
        this.f56809c = str2;
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
        if (!(obj instanceof WatchTutorialUi)) {
            return false;
        }
        WatchTutorialUi watchTutorialUi = (WatchTutorialUi) obj;
        return Intrinsics.c(this.f56808b, watchTutorialUi.f56808b) && Intrinsics.c(this.f56809c, watchTutorialUi.f56809c) && Intrinsics.c(this.d, watchTutorialUi.d);
    }

    public final int hashCode() {
        return this.d.hashCode() + fc.b(this.f56808b.hashCode() * 31, 31, this.f56809c);
    }

    public final String toString() {
        return n00.r(this.d, ")", fc.s("WatchTutorialUi(title=", this.f56808b, ", videoUrl=", this.f56809c, ", videoSubtitlesUrl="));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        parcel.writeString(this.f56808b);
        parcel.writeString(this.f56809c);
        parcel.writeString(this.d);
    }
}
