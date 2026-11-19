package com.google.android.exoplayer2.drm;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.util.Util;
import defpackage.fc;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public final class DrmInitData implements Comparator<SchemeData>, Parcelable {
    public static final Parcelable.Creator<DrmInitData> CREATOR = new AnonymousClass1();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SchemeData[] f28205b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f28206c;
    public final String d;

    /* JADX INFO: renamed from: com.google.android.exoplayer2.drm.DrmInitData$1, reason: invalid class name */
    public class AnonymousClass1 implements Parcelable.Creator<DrmInitData> {
        @Override // android.os.Parcelable.Creator
        public final DrmInitData createFromParcel(Parcel parcel) {
            return new DrmInitData(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final DrmInitData[] newArray(int i2) {
            return new DrmInitData[i2];
        }
    }

    public DrmInitData(Parcel parcel) {
        this.d = parcel.readString();
        SchemeData[] schemeDataArr = (SchemeData[]) parcel.createTypedArray(SchemeData.CREATOR);
        int i2 = Util.f28451a;
        this.f28205b = schemeDataArr;
        int length = schemeDataArr.length;
    }

    @Override // java.util.Comparator
    public final int compare(SchemeData schemeData, SchemeData schemeData2) {
        SchemeData schemeData3 = schemeData;
        SchemeData schemeData4 = schemeData2;
        UUID uuid = C.f28140a;
        if (uuid.equals(schemeData3.f28208c)) {
            return uuid.equals(schemeData4.f28208c) ? 0 : 1;
        }
        return schemeData3.f28208c.compareTo(schemeData4.f28208c);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // java.util.Comparator
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && DrmInitData.class == obj.getClass()) {
            DrmInitData drmInitData = (DrmInitData) obj;
            if (Util.a(this.d, drmInitData.d) && Arrays.equals(this.f28205b, drmInitData.f28205b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        if (this.f28206c == 0) {
            String str = this.d;
            this.f28206c = ((str == null ? 0 : str.hashCode()) * 31) + Arrays.hashCode(this.f28205b);
        }
        return this.f28206c;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.d);
        parcel.writeTypedArray(this.f28205b, 0);
    }

    public DrmInitData(String str, List<SchemeData> list) {
        this(str, false, (SchemeData[]) list.toArray(new SchemeData[0]));
    }

    public DrmInitData(SchemeData... schemeDataArr) {
        this((String) null, schemeDataArr);
    }

    public DrmInitData(String str, SchemeData... schemeDataArr) {
        this(str, true, schemeDataArr);
    }

    public DrmInitData(String str, boolean z, SchemeData... schemeDataArr) {
        this.d = str;
        schemeDataArr = z ? (SchemeData[]) schemeDataArr.clone() : schemeDataArr;
        this.f28205b = schemeDataArr;
        int length = schemeDataArr.length;
        Arrays.sort(schemeDataArr, this);
    }

    public DrmInitData(List<SchemeData> list) {
        this(null, false, (SchemeData[]) list.toArray(new SchemeData[0]));
    }

    public static final class SchemeData implements Parcelable {
        public static final Parcelable.Creator<SchemeData> CREATOR = new AnonymousClass1();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f28207b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final UUID f28208c;
        public final String d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final String f28209e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final byte[] f28210f;

        /* JADX INFO: renamed from: com.google.android.exoplayer2.drm.DrmInitData$SchemeData$1, reason: invalid class name */
        public class AnonymousClass1 implements Parcelable.Creator<SchemeData> {
            @Override // android.os.Parcelable.Creator
            public final SchemeData createFromParcel(Parcel parcel) {
                return new SchemeData(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final SchemeData[] newArray(int i2) {
                return new SchemeData[i2];
            }
        }

        public SchemeData(Parcel parcel) {
            this.f28208c = new UUID(parcel.readLong(), parcel.readLong());
            this.d = parcel.readString();
            String string = parcel.readString();
            int i2 = Util.f28451a;
            this.f28209e = string;
            this.f28210f = parcel.createByteArray();
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof SchemeData)) {
                return false;
            }
            if (obj == this) {
                return true;
            }
            SchemeData schemeData = (SchemeData) obj;
            return Util.a(this.d, schemeData.d) && Util.a(this.f28209e, schemeData.f28209e) && Util.a(this.f28208c, schemeData.f28208c) && Arrays.equals(this.f28210f, schemeData.f28210f);
        }

        public final int hashCode() {
            if (this.f28207b == 0) {
                int iHashCode = this.f28208c.hashCode() * 31;
                String str = this.d;
                this.f28207b = Arrays.hashCode(this.f28210f) + fc.b((iHashCode + (str == null ? 0 : str.hashCode())) * 31, 31, this.f28209e);
            }
            return this.f28207b;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            UUID uuid = this.f28208c;
            parcel.writeLong(uuid.getMostSignificantBits());
            parcel.writeLong(uuid.getLeastSignificantBits());
            parcel.writeString(this.d);
            parcel.writeString(this.f28209e);
            parcel.writeByteArray(this.f28210f);
        }

        public SchemeData(UUID uuid, String str, String str2, byte[] bArr) {
            uuid.getClass();
            this.f28208c = uuid;
            this.d = str;
            str2.getClass();
            this.f28209e = str2;
            this.f28210f = bArr;
        }

        public SchemeData(UUID uuid, String str, byte[] bArr) {
            this(uuid, null, str, bArr);
        }
    }
}
