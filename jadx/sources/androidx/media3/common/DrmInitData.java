package androidx.media3.common;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.media3.common.util.Util;
import defpackage.fc;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.Objects;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public final class DrmInitData implements Comparator<SchemeData>, Parcelable {
    public static final Parcelable.Creator<DrmInitData> CREATOR = new AnonymousClass1();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SchemeData[] f13745b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f13746c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f13747e;

    /* JADX INFO: renamed from: androidx.media3.common.DrmInitData$1, reason: invalid class name */
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
        String str = Util.f14242a;
        this.f13745b = schemeDataArr;
        this.f13747e = schemeDataArr.length;
    }

    public final DrmInitData a(String str) {
        return Objects.equals(this.d, str) ? this : new DrmInitData(str, false, this.f13745b);
    }

    @Override // java.util.Comparator
    public final int compare(SchemeData schemeData, SchemeData schemeData2) {
        SchemeData schemeData3 = schemeData;
        SchemeData schemeData4 = schemeData2;
        UUID uuid = C.f13717b;
        if (uuid.equals(schemeData3.f13749c)) {
            return uuid.equals(schemeData4.f13749c) ? 0 : 1;
        }
        return schemeData3.f13749c.compareTo(schemeData4.f13749c);
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
            if (Objects.equals(this.d, drmInitData.d) && Arrays.equals(this.f13745b, drmInitData.f13745b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        if (this.f13746c == 0) {
            String str = this.d;
            this.f13746c = ((str == null ? 0 : str.hashCode()) * 31) + Arrays.hashCode(this.f13745b);
        }
        return this.f13746c;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.d);
        parcel.writeTypedArray(this.f13745b, 0);
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
        this.f13745b = schemeDataArr;
        this.f13747e = schemeDataArr.length;
        Arrays.sort(schemeDataArr, this);
    }

    public DrmInitData(List<SchemeData> list) {
        this(null, false, (SchemeData[]) list.toArray(new SchemeData[0]));
    }

    public static final class SchemeData implements Parcelable {
        public static final Parcelable.Creator<SchemeData> CREATOR = new AnonymousClass1();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f13748b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final UUID f13749c;
        public final String d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final String f13750e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final byte[] f13751f;

        /* JADX INFO: renamed from: androidx.media3.common.DrmInitData$SchemeData$1, reason: invalid class name */
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
            this.f13749c = new UUID(parcel.readLong(), parcel.readLong());
            this.d = parcel.readString();
            String string = parcel.readString();
            String str = Util.f14242a;
            this.f13750e = string;
            this.f13751f = parcel.createByteArray();
        }

        public final boolean a(UUID uuid) {
            UUID uuid2 = C.f13717b;
            UUID uuid3 = this.f13749c;
            return uuid2.equals(uuid3) || uuid.equals(uuid3);
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
            return Objects.equals(this.d, schemeData.d) && Objects.equals(this.f13750e, schemeData.f13750e) && Objects.equals(this.f13749c, schemeData.f13749c) && Arrays.equals(this.f13751f, schemeData.f13751f);
        }

        public final int hashCode() {
            if (this.f13748b == 0) {
                int iHashCode = this.f13749c.hashCode() * 31;
                String str = this.d;
                this.f13748b = Arrays.hashCode(this.f13751f) + fc.b((iHashCode + (str == null ? 0 : str.hashCode())) * 31, 31, this.f13750e);
            }
            return this.f13748b;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            UUID uuid = this.f13749c;
            parcel.writeLong(uuid.getMostSignificantBits());
            parcel.writeLong(uuid.getLeastSignificantBits());
            parcel.writeString(this.d);
            parcel.writeString(this.f13750e);
            parcel.writeByteArray(this.f13751f);
        }

        public SchemeData(UUID uuid, String str, String str2, byte[] bArr) {
            uuid.getClass();
            this.f13749c = uuid;
            this.d = str;
            str2.getClass();
            this.f13750e = MimeTypes.p(str2);
            this.f13751f = bArr;
        }

        public SchemeData(UUID uuid, String str, byte[] bArr) {
            this(uuid, null, str, bArr);
        }
    }
}
