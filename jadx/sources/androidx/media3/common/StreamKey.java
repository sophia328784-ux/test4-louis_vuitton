package androidx.media3.common;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.media3.common.util.Util;
import com.sightcall.universal.media.offline.FileUtils;

/* JADX INFO: loaded from: classes.dex */
public final class StreamKey implements Comparable<StreamKey>, Parcelable {
    public static final Parcelable.Creator<StreamKey> CREATOR = new AnonymousClass1();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f13941e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f13942f;
    public static final String g;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f13943b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f13944c;
    public final int d;

    /* JADX INFO: renamed from: androidx.media3.common.StreamKey$1, reason: invalid class name */
    public class AnonymousClass1 implements Parcelable.Creator<StreamKey> {
        @Override // android.os.Parcelable.Creator
        public final StreamKey createFromParcel(Parcel parcel) {
            return new StreamKey(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final StreamKey[] newArray(int i2) {
            return new StreamKey[i2];
        }
    }

    static {
        String str = Util.f14242a;
        f13941e = Integer.toString(0, 36);
        f13942f = Integer.toString(1, 36);
        g = Integer.toString(2, 36);
    }

    public StreamKey(Parcel parcel) {
        this.f13943b = parcel.readInt();
        this.f13944c = parcel.readInt();
        this.d = parcel.readInt();
    }

    @Override // java.lang.Comparable
    public final int compareTo(StreamKey streamKey) {
        StreamKey streamKey2 = streamKey;
        int i2 = this.f13943b - streamKey2.f13943b;
        return (i2 == 0 && (i2 = this.f13944c - streamKey2.f13944c) == 0) ? this.d - streamKey2.d : i2;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && StreamKey.class == obj.getClass()) {
            StreamKey streamKey = (StreamKey) obj;
            if (this.f13943b == streamKey.f13943b && this.f13944c == streamKey.f13944c && this.d == streamKey.d) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (((this.f13943b * 31) + this.f13944c) * 31) + this.d;
    }

    public final String toString() {
        return this.f13943b + FileUtils.HIDDEN_PREFIX + this.f13944c + FileUtils.HIDDEN_PREFIX + this.d;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.f13943b);
        parcel.writeInt(this.f13944c);
        parcel.writeInt(this.d);
    }

    public StreamKey(int i2, int i3, int i4) {
        this.f13943b = i2;
        this.f13944c = i3;
        this.d = i4;
    }

    public StreamKey(int i2, int i3) {
        this(0, i2, i3);
    }
}
