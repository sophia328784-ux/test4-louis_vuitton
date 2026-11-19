package androidx.versionedparcelable;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.SparseIntArray;
import androidx.collection.ArrayMap;
import defpackage.n00;

/* JADX INFO: loaded from: classes.dex */
class VersionedParcelParcel extends VersionedParcel {
    public final SparseIntArray d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Parcel f20121e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f20122f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f20123h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f20124i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f20125j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f20126k;

    public VersionedParcelParcel(Parcel parcel) {
        this(parcel, parcel.dataPosition(), parcel.dataSize(), "", new ArrayMap(), new ArrayMap(), new ArrayMap());
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public final void a() {
        int i2 = this.f20124i;
        if (i2 >= 0) {
            int i3 = this.d.get(i2);
            Parcel parcel = this.f20121e;
            int iDataPosition = parcel.dataPosition();
            parcel.setDataPosition(i3);
            parcel.writeInt(iDataPosition - i3);
            parcel.setDataPosition(iDataPosition);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public final VersionedParcel b() {
        Parcel parcel = this.f20121e;
        int iDataPosition = parcel.dataPosition();
        int i2 = this.f20125j;
        if (i2 == this.f20122f) {
            i2 = this.g;
        }
        return new VersionedParcelParcel(parcel, iDataPosition, i2, n00.r(this.f20123h, "  ", new StringBuilder()), this.f20118a, this.f20119b, this.f20120c);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public final boolean f() {
        return this.f20121e.readInt() != 0;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public final byte[] g() {
        Parcel parcel = this.f20121e;
        int i2 = parcel.readInt();
        if (i2 < 0) {
            return null;
        }
        byte[] bArr = new byte[i2];
        parcel.readByteArray(bArr);
        return bArr;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public final CharSequence h() {
        return (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(this.f20121e);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public final boolean i(int i2) {
        while (true) {
            int i3 = this.f20125j;
            int i4 = this.f20126k;
            if (i3 >= this.g) {
                return i4 == i2;
            }
            if (i4 == i2) {
                return true;
            }
            if (String.valueOf(i4).compareTo(String.valueOf(i2)) > 0) {
                return false;
            }
            int i5 = this.f20125j;
            Parcel parcel = this.f20121e;
            parcel.setDataPosition(i5);
            int i6 = parcel.readInt();
            this.f20126k = parcel.readInt();
            this.f20125j += i6;
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public final int j() {
        return this.f20121e.readInt();
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public final Parcelable l() {
        return this.f20121e.readParcelable(getClass().getClassLoader());
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public final String m() {
        return this.f20121e.readString();
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public final void o(int i2) {
        a();
        this.f20124i = i2;
        this.d.put(i2, this.f20121e.dataPosition());
        s(0);
        s(i2);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public final void p(boolean z) {
        this.f20121e.writeInt(z ? 1 : 0);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public final void q(byte[] bArr) {
        Parcel parcel = this.f20121e;
        if (bArr == null) {
            parcel.writeInt(-1);
        } else {
            parcel.writeInt(bArr.length);
            parcel.writeByteArray(bArr);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public final void r(CharSequence charSequence) {
        TextUtils.writeToParcel(charSequence, this.f20121e, 0);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public final void s(int i2) {
        this.f20121e.writeInt(i2);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public final void u(Parcelable parcelable) {
        this.f20121e.writeParcelable(parcelable, 0);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public final void v(String str) {
        this.f20121e.writeString(str);
    }

    public VersionedParcelParcel(Parcel parcel, int i2, int i3, String str, ArrayMap arrayMap, ArrayMap arrayMap2, ArrayMap arrayMap3) {
        super(arrayMap, arrayMap2, arrayMap3);
        this.d = new SparseIntArray();
        this.f20124i = -1;
        this.f20126k = -1;
        this.f20121e = parcel;
        this.f20122f = i2;
        this.g = i3;
        this.f20125j = i2;
        this.f20123h = str;
    }
}
