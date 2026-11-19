package androidx.media3.exoplayer.offline;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.media3.common.StreamKey;
import androidx.media3.common.util.Util;
import com.google.common.base.Preconditions;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class DownloadRequest implements Parcelable {
    public static final Parcelable.Creator<DownloadRequest> CREATOR = new AnonymousClass1();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f15416b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Uri f15417c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f15418e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final byte[] f15419f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final byte[] f15420h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ByteRange f15421i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final TimeRange f15422j;

    /* JADX INFO: renamed from: androidx.media3.exoplayer.offline.DownloadRequest$1, reason: invalid class name */
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

    public static final class ByteRange implements Parcelable {
        public static final Parcelable.Creator<ByteRange> CREATOR = new AnonymousClass1();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f15423b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f15424c;

        /* JADX INFO: renamed from: androidx.media3.exoplayer.offline.DownloadRequest$ByteRange$1, reason: invalid class name */
        public class AnonymousClass1 implements Parcelable.Creator<ByteRange> {
            @Override // android.os.Parcelable.Creator
            public final ByteRange createFromParcel(Parcel parcel) {
                return new ByteRange(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final ByteRange[] newArray(int i2) {
                return new ByteRange[i2];
            }
        }

        public ByteRange(Parcel parcel) {
            long j2 = parcel.readLong();
            long j3 = parcel.readLong();
            Preconditions.g(j2 >= 0);
            Preconditions.g(j3 >= 0 || j3 == -1);
            this.f15423b = j2;
            this.f15424c = j3;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof ByteRange)) {
                return false;
            }
            ByteRange byteRange = (ByteRange) obj;
            return this.f15423b == byteRange.f15423b && this.f15424c == byteRange.f15424c;
        }

        public final int hashCode() {
            return (((int) this.f15423b) * 961) + ((int) this.f15424c);
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.writeLong(this.f15423b);
            parcel.writeLong(this.f15424c);
        }
    }

    public static final class TimeRange implements Parcelable {
        public static final Parcelable.Creator<TimeRange> CREATOR = new AnonymousClass1();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f15425b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f15426c;

        /* JADX INFO: renamed from: androidx.media3.exoplayer.offline.DownloadRequest$TimeRange$1, reason: invalid class name */
        public class AnonymousClass1 implements Parcelable.Creator<TimeRange> {
            @Override // android.os.Parcelable.Creator
            public final TimeRange createFromParcel(Parcel parcel) {
                return new TimeRange(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final TimeRange[] newArray(int i2) {
                return new TimeRange[i2];
            }
        }

        public TimeRange(Parcel parcel) {
            long j2 = parcel.readLong();
            long j3 = parcel.readLong();
            Preconditions.g(j3 >= 0 || j3 == -9223372036854775807L);
            this.f15425b = j2;
            this.f15426c = j3;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof TimeRange)) {
                return false;
            }
            TimeRange timeRange = (TimeRange) obj;
            return this.f15425b == timeRange.f15425b && this.f15426c == timeRange.f15426c;
        }

        public final int hashCode() {
            return (((int) this.f15425b) * 961) + ((int) this.f15426c);
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.writeLong(this.f15425b);
            parcel.writeLong(this.f15426c);
        }
    }

    public static class UnsupportedRequestException extends IOException {
    }

    public DownloadRequest(Parcel parcel) {
        String string = parcel.readString();
        String str = Util.f14242a;
        this.f15416b = string;
        this.f15417c = Uri.parse(parcel.readString());
        this.d = parcel.readString();
        int i2 = parcel.readInt();
        ArrayList arrayList = new ArrayList(i2);
        for (int i3 = 0; i3 < i2; i3++) {
            arrayList.add((StreamKey) parcel.readParcelable(StreamKey.class.getClassLoader()));
        }
        this.f15418e = Collections.unmodifiableList(arrayList);
        this.f15419f = parcel.createByteArray();
        this.g = parcel.readString();
        this.f15420h = parcel.createByteArray();
        this.f15421i = (ByteRange) parcel.readParcelable(ByteRange.class.getClassLoader());
        this.f15422j = (TimeRange) parcel.readParcelable(TimeRange.class.getClassLoader());
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
        return this.f15416b.equals(downloadRequest.f15416b) && this.f15417c.equals(downloadRequest.f15417c) && Objects.equals(this.d, downloadRequest.d) && this.f15418e.equals(downloadRequest.f15418e) && Arrays.equals(this.f15419f, downloadRequest.f15419f) && Objects.equals(this.g, downloadRequest.g) && Arrays.equals(this.f15420h, downloadRequest.f15420h) && Objects.equals(this.f15421i, downloadRequest.f15421i) && Objects.equals(this.f15422j, downloadRequest.f15422j);
    }

    public final int hashCode() {
        int iHashCode = (this.f15417c.hashCode() + (this.f15416b.hashCode() * 961)) * 31;
        String str = this.d;
        int iHashCode2 = (Arrays.hashCode(this.f15419f) + ((this.f15418e.hashCode() + ((iHashCode + (str != null ? str.hashCode() : 0)) * 31)) * 31)) * 31;
        String str2 = this.g;
        int iHashCode3 = (Arrays.hashCode(this.f15420h) + ((iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31)) * 31;
        ByteRange byteRange = this.f15421i;
        int iHashCode4 = (iHashCode3 + (byteRange != null ? byteRange.hashCode() : 0)) * 31;
        TimeRange timeRange = this.f15422j;
        return iHashCode4 + (timeRange != null ? timeRange.hashCode() : 0);
    }

    public final String toString() {
        return this.d + ":" + this.f15416b;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.f15416b);
        parcel.writeString(this.f15417c.toString());
        parcel.writeString(this.d);
        List list = this.f15418e;
        parcel.writeInt(list.size());
        for (int i3 = 0; i3 < list.size(); i3++) {
            parcel.writeParcelable((Parcelable) list.get(i3), 0);
        }
        parcel.writeByteArray(this.f15419f);
        parcel.writeString(this.g);
        parcel.writeByteArray(this.f15420h);
        parcel.writeParcelable(this.f15421i, 0);
        parcel.writeParcelable(this.f15422j, 0);
    }
}
