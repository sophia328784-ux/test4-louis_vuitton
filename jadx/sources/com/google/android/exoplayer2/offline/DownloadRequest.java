package com.google.android.exoplayer2.offline;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.util.Util;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public final class DownloadRequest implements Parcelable {
    public static final Parcelable.Creator<DownloadRequest> CREATOR = new AnonymousClass1();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f28298b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Uri f28299c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f28300e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final byte[] f28301f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final byte[] f28302h;

    /* JADX INFO: renamed from: com.google.android.exoplayer2.offline.DownloadRequest$1, reason: invalid class name */
    public class AnonymousClass1 implements Parcelable.Creator<DownloadRequest> {
        @Override // android.os.Parcelable.Creator
        public final DownloadRequest createFromParcel(Parcel parcel) {
            return new DownloadRequest(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final DownloadRequest[] newArray(int i2) {
            return new DownloadRequest[i2];
        }
    }

    public static class UnsupportedRequestException extends IOException {
    }

    public DownloadRequest(Parcel parcel) {
        String string = parcel.readString();
        int i2 = Util.f28451a;
        this.f28298b = string;
        this.f28299c = Uri.parse(parcel.readString());
        this.d = parcel.readString();
        int i3 = parcel.readInt();
        ArrayList arrayList = new ArrayList(i3);
        for (int i4 = 0; i4 < i3; i4++) {
            arrayList.add((StreamKey) parcel.readParcelable(StreamKey.class.getClassLoader()));
        }
        this.f28300e = Collections.unmodifiableList(arrayList);
        this.f28301f = parcel.createByteArray();
        this.g = parcel.readString();
        this.f28302h = parcel.createByteArray();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof DownloadRequest)) {
            return false;
        }
        DownloadRequest downloadRequest = (DownloadRequest) obj;
        return this.f28298b.equals(downloadRequest.f28298b) && this.f28299c.equals(downloadRequest.f28299c) && Util.a(this.d, downloadRequest.d) && this.f28300e.equals(downloadRequest.f28300e) && Arrays.equals(this.f28301f, downloadRequest.f28301f) && Util.a(this.g, downloadRequest.g) && Arrays.equals(this.f28302h, downloadRequest.f28302h);
    }

    public final int hashCode() {
        int iHashCode = (this.f28299c.hashCode() + (this.f28298b.hashCode() * 961)) * 31;
        String str = this.d;
        int iHashCode2 = (Arrays.hashCode(this.f28301f) + ((this.f28300e.hashCode() + ((iHashCode + (str != null ? str.hashCode() : 0)) * 31)) * 31)) * 31;
        String str2 = this.g;
        return Arrays.hashCode(this.f28302h) + ((iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31);
    }

    public final String toString() {
        return this.d + ":" + this.f28298b;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.f28298b);
        parcel.writeString(this.f28299c.toString());
        parcel.writeString(this.d);
        List list = this.f28300e;
        parcel.writeInt(list.size());
        for (int i3 = 0; i3 < list.size(); i3++) {
            parcel.writeParcelable((Parcelable) list.get(i3), 0);
        }
        parcel.writeByteArray(this.f28301f);
        parcel.writeString(this.g);
        parcel.writeByteArray(this.f28302h);
    }
}
