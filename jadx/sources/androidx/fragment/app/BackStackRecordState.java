package androidx.fragment.app;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.lifecycle.Lifecycle;
import defpackage.md;
import java.util.ArrayList;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
final class BackStackRecordState implements Parcelable {
    public static final Parcelable.Creator<BackStackRecordState> CREATOR = new AnonymousClass1();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int[] f13179b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f13180c;
    public final int[] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int[] f13181e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f13182f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f13183h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f13184i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final CharSequence f13185j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f13186k;
    public final CharSequence l;
    public final ArrayList m;
    public final ArrayList n;
    public final boolean o;

    /* JADX INFO: renamed from: androidx.fragment.app.BackStackRecordState$1, reason: invalid class name */
    public class AnonymousClass1 implements Parcelable.Creator<BackStackRecordState> {
        @Override // android.os.Parcelable.Creator
        public final BackStackRecordState createFromParcel(Parcel parcel) {
            return new BackStackRecordState(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final BackStackRecordState[] newArray(int i2) {
            return new BackStackRecordState[i2];
        }
    }

    public BackStackRecordState(BackStackRecord backStackRecord) {
        int size = backStackRecord.f13328a.size();
        this.f13179b = new int[size * 6];
        if (!backStackRecord.g) {
            md.k("Not on back stack");
            throw null;
        }
        this.f13180c = new ArrayList(size);
        this.d = new int[size];
        this.f13181e = new int[size];
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            FragmentTransaction.Op op = (FragmentTransaction.Op) backStackRecord.f13328a.get(i3);
            int i4 = i2 + 1;
            this.f13179b[i2] = op.f13337a;
            ArrayList arrayList = this.f13180c;
            Fragment fragment = op.f13338b;
            arrayList.add(fragment != null ? fragment.mWho : null);
            int[] iArr = this.f13179b;
            iArr[i4] = op.f13339c ? 1 : 0;
            iArr[i2 + 2] = op.d;
            iArr[i2 + 3] = op.f13340e;
            int i5 = i2 + 5;
            iArr[i2 + 4] = op.f13341f;
            i2 += 6;
            iArr[i5] = op.g;
            this.d[i3] = op.f13342h.ordinal();
            this.f13181e[i3] = op.f13343i.ordinal();
        }
        this.f13182f = backStackRecord.f13332f;
        this.g = backStackRecord.f13334i;
        this.f13183h = backStackRecord.t;
        this.f13184i = backStackRecord.f13335j;
        this.f13185j = backStackRecord.f13336k;
        this.f13186k = backStackRecord.l;
        this.l = backStackRecord.m;
        this.m = backStackRecord.n;
        this.n = backStackRecord.o;
        this.o = backStackRecord.p;
    }

    public final void a(BackStackRecord backStackRecord) {
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int[] iArr = this.f13179b;
            boolean z = true;
            if (i2 >= iArr.length) {
                backStackRecord.f13332f = this.f13182f;
                backStackRecord.f13334i = this.g;
                backStackRecord.g = true;
                backStackRecord.f13335j = this.f13184i;
                backStackRecord.f13336k = this.f13185j;
                backStackRecord.l = this.f13186k;
                backStackRecord.m = this.l;
                backStackRecord.n = this.m;
                backStackRecord.o = this.n;
                backStackRecord.p = this.o;
                return;
            }
            FragmentTransaction.Op op = new FragmentTransaction.Op();
            int i4 = i2 + 1;
            op.f13337a = iArr[i2];
            if (FragmentManager.O(2)) {
                Objects.toString(backStackRecord);
                int i5 = iArr[i4];
            }
            op.f13342h = Lifecycle.State.values()[this.d[i3]];
            op.f13343i = Lifecycle.State.values()[this.f13181e[i3]];
            int i6 = i2 + 2;
            if (iArr[i4] == 0) {
                z = false;
            }
            op.f13339c = z;
            int i7 = iArr[i6];
            op.d = i7;
            int i8 = iArr[i2 + 3];
            op.f13340e = i8;
            int i9 = i2 + 5;
            int i10 = iArr[i2 + 4];
            op.f13341f = i10;
            i2 += 6;
            int i11 = iArr[i9];
            op.g = i11;
            backStackRecord.f13329b = i7;
            backStackRecord.f13330c = i8;
            backStackRecord.d = i10;
            backStackRecord.f13331e = i11;
            backStackRecord.c(op);
            i3++;
        }
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeIntArray(this.f13179b);
        parcel.writeStringList(this.f13180c);
        parcel.writeIntArray(this.d);
        parcel.writeIntArray(this.f13181e);
        parcel.writeInt(this.f13182f);
        parcel.writeString(this.g);
        parcel.writeInt(this.f13183h);
        parcel.writeInt(this.f13184i);
        TextUtils.writeToParcel(this.f13185j, parcel, 0);
        parcel.writeInt(this.f13186k);
        TextUtils.writeToParcel(this.l, parcel, 0);
        parcel.writeStringList(this.m);
        parcel.writeStringList(this.n);
        parcel.writeInt(this.o ? 1 : 0);
    }

    public BackStackRecordState(Parcel parcel) {
        this.f13179b = parcel.createIntArray();
        this.f13180c = parcel.createStringArrayList();
        this.d = parcel.createIntArray();
        this.f13181e = parcel.createIntArray();
        this.f13182f = parcel.readInt();
        this.g = parcel.readString();
        this.f13183h = parcel.readInt();
        this.f13184i = parcel.readInt();
        Parcelable.Creator creator = TextUtils.CHAR_SEQUENCE_CREATOR;
        this.f13185j = (CharSequence) creator.createFromParcel(parcel);
        this.f13186k = parcel.readInt();
        this.l = (CharSequence) creator.createFromParcel(parcel);
        this.m = parcel.createStringArrayList();
        this.n = parcel.createStringArrayList();
        this.o = parcel.readInt() != 0;
    }
}
