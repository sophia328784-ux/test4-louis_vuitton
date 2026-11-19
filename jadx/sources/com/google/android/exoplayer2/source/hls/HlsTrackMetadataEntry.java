package com.google.android.exoplayer2.source.hls;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.exoplayer2.metadata.Metadata;
import defpackage.n00;
import defpackage.pq0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public final class HlsTrackMetadataEntry implements Metadata.Entry {
    public static final Parcelable.Creator<HlsTrackMetadataEntry> CREATOR = new AnonymousClass1();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f28327b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f28328c;
    public final List d;

    /* JADX INFO: renamed from: com.google.android.exoplayer2.source.hls.HlsTrackMetadataEntry$1, reason: invalid class name */
    public class AnonymousClass1 implements Parcelable.Creator<HlsTrackMetadataEntry> {
        @Override // android.os.Parcelable.Creator
        public final HlsTrackMetadataEntry createFromParcel(Parcel parcel) {
            return new HlsTrackMetadataEntry(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final HlsTrackMetadataEntry[] newArray(int i2) {
            return new HlsTrackMetadataEntry[i2];
        }
    }

    public HlsTrackMetadataEntry(Parcel parcel) {
        this.f28327b = parcel.readString();
        this.f28328c = parcel.readString();
        int i2 = parcel.readInt();
        ArrayList arrayList = new ArrayList(i2);
        for (int i3 = 0; i3 < i2; i3++) {
            arrayList.add((VariantInfo) parcel.readParcelable(VariantInfo.class.getClassLoader()));
        }
        this.d = Collections.unmodifiableList(arrayList);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && HlsTrackMetadataEntry.class == obj.getClass()) {
            HlsTrackMetadataEntry hlsTrackMetadataEntry = (HlsTrackMetadataEntry) obj;
            if (TextUtils.equals(this.f28327b, hlsTrackMetadataEntry.f28327b) && TextUtils.equals(this.f28328c, hlsTrackMetadataEntry.f28328c) && this.d.equals(hlsTrackMetadataEntry.d)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.f28327b;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.f28328c;
        return this.d.hashCode() + ((iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31);
    }

    public final String toString() {
        String strR;
        String str = this.f28327b;
        if (str != null) {
            strR = n00.r(this.f28328c, "]", pq0.r(" [", str, ", "));
        } else {
            strR = "";
        }
        return "HlsTrackMetadataEntry".concat(strR);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.f28327b);
        parcel.writeString(this.f28328c);
        List list = this.d;
        int size = list.size();
        parcel.writeInt(size);
        for (int i3 = 0; i3 < size; i3++) {
            parcel.writeParcelable((Parcelable) list.get(i3), 0);
        }
    }

    public static final class VariantInfo implements Parcelable {
        public static final Parcelable.Creator<VariantInfo> CREATOR = new AnonymousClass1();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f28329b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f28330c;
        public final String d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final String f28331e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final String f28332f;
        public final String g;

        /* JADX INFO: renamed from: com.google.android.exoplayer2.source.hls.HlsTrackMetadataEntry$VariantInfo$1, reason: invalid class name */
        public class AnonymousClass1 implements Parcelable.Creator<VariantInfo> {
            @Override // android.os.Parcelable.Creator
            public final VariantInfo createFromParcel(Parcel parcel) {
                return new VariantInfo(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final VariantInfo[] newArray(int i2) {
                return new VariantInfo[i2];
            }
        }

        public VariantInfo(Parcel parcel) {
            this.f28329b = parcel.readInt();
            this.f28330c = parcel.readInt();
            this.d = parcel.readString();
            this.f28331e = parcel.readString();
            this.f28332f = parcel.readString();
            this.g = parcel.readString();
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && VariantInfo.class == obj.getClass()) {
                VariantInfo variantInfo = (VariantInfo) obj;
                if (this.f28329b == variantInfo.f28329b && this.f28330c == variantInfo.f28330c && TextUtils.equals(this.d, variantInfo.d) && TextUtils.equals(this.f28331e, variantInfo.f28331e) && TextUtils.equals(this.f28332f, variantInfo.f28332f) && TextUtils.equals(this.g, variantInfo.g)) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            int i2 = ((this.f28329b * 31) + this.f28330c) * 31;
            String str = this.d;
            int iHashCode = (i2 + (str != null ? str.hashCode() : 0)) * 31;
            String str2 = this.f28331e;
            int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
            String str3 = this.f28332f;
            int iHashCode3 = (iHashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
            String str4 = this.g;
            return iHashCode3 + (str4 != null ? str4.hashCode() : 0);
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.f28329b);
            parcel.writeInt(this.f28330c);
            parcel.writeString(this.d);
            parcel.writeString(this.f28331e);
            parcel.writeString(this.f28332f);
            parcel.writeString(this.g);
        }

        public VariantInfo(int i2, int i3, String str, String str2, String str3, String str4) {
            this.f28329b = i2;
            this.f28330c = i3;
            this.d = str;
            this.f28331e = str2;
            this.f28332f = str3;
            this.g = str4;
        }
    }

    public HlsTrackMetadataEntry(String str, String str2, List<VariantInfo> list) {
        this.f28327b = str;
        this.f28328c = str2;
        this.d = Collections.unmodifiableList(new ArrayList(list));
    }
}
