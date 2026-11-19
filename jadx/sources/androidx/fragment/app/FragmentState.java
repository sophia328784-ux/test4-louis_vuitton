package androidx.fragment.app;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.lifecycle.Lifecycle;

/* JADX INFO: loaded from: classes.dex */
final class FragmentState implements Parcelable {
    public static final Parcelable.Creator<FragmentState> CREATOR = new AnonymousClass1();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f13305b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f13306c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f13307e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f13308f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f13309h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f13310i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f13311j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final boolean f13312k;
    public final boolean l;
    public final int m;
    public final String n;
    public final int o;
    public final boolean p;

    /* JADX INFO: renamed from: androidx.fragment.app.FragmentState$1, reason: invalid class name */
    public class AnonymousClass1 implements Parcelable.Creator<FragmentState> {
        @Override // android.os.Parcelable.Creator
        public final FragmentState createFromParcel(Parcel parcel) {
            return new FragmentState(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final FragmentState[] newArray(int i2) {
            return new FragmentState[i2];
        }
    }

    public FragmentState(Parcel parcel) {
        this.f13305b = parcel.readString();
        this.f13306c = parcel.readString();
        this.d = parcel.readInt() != 0;
        this.f13307e = parcel.readInt() != 0;
        this.f13308f = parcel.readInt();
        this.g = parcel.readInt();
        this.f13309h = parcel.readString();
        this.f13310i = parcel.readInt() != 0;
        this.f13311j = parcel.readInt() != 0;
        this.f13312k = parcel.readInt() != 0;
        this.l = parcel.readInt() != 0;
        this.m = parcel.readInt();
        this.n = parcel.readString();
        this.o = parcel.readInt();
        this.p = parcel.readInt() != 0;
    }

    public final Fragment a(FragmentFactory fragmentFactory, ClassLoader classLoader) {
        Fragment fragmentA = fragmentFactory.a(classLoader, this.f13305b);
        fragmentA.mWho = this.f13306c;
        fragmentA.mFromLayout = this.d;
        fragmentA.mInDynamicContainer = this.f13307e;
        fragmentA.mRestored = true;
        fragmentA.mFragmentId = this.f13308f;
        fragmentA.mContainerId = this.g;
        fragmentA.mTag = this.f13309h;
        fragmentA.mRetainInstance = this.f13310i;
        fragmentA.mRemoving = this.f13311j;
        fragmentA.mDetached = this.f13312k;
        fragmentA.mHidden = this.l;
        fragmentA.mMaxState = Lifecycle.State.values()[this.m];
        fragmentA.mTargetWho = this.n;
        fragmentA.mTargetRequestCode = this.o;
        fragmentA.mUserVisibleHint = this.p;
        return fragmentA;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentState{");
        sb.append(this.f13305b);
        sb.append(" (");
        sb.append(this.f13306c);
        sb.append(")}:");
        if (this.d) {
            sb.append(" fromLayout");
        }
        if (this.f13307e) {
            sb.append(" dynamicContainer");
        }
        int i2 = this.g;
        if (i2 != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(i2));
        }
        String str = this.f13309h;
        if (str != null && !str.isEmpty()) {
            sb.append(" tag=");
            sb.append(str);
        }
        if (this.f13310i) {
            sb.append(" retainInstance");
        }
        if (this.f13311j) {
            sb.append(" removing");
        }
        if (this.f13312k) {
            sb.append(" detached");
        }
        if (this.l) {
            sb.append(" hidden");
        }
        String str2 = this.n;
        if (str2 != null) {
            sb.append(" targetWho=");
            sb.append(str2);
            sb.append(" targetRequestCode=");
            sb.append(this.o);
        }
        if (this.p) {
            sb.append(" userVisibleHint");
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.f13305b);
        parcel.writeString(this.f13306c);
        parcel.writeInt(this.d ? 1 : 0);
        parcel.writeInt(this.f13307e ? 1 : 0);
        parcel.writeInt(this.f13308f);
        parcel.writeInt(this.g);
        parcel.writeString(this.f13309h);
        parcel.writeInt(this.f13310i ? 1 : 0);
        parcel.writeInt(this.f13311j ? 1 : 0);
        parcel.writeInt(this.f13312k ? 1 : 0);
        parcel.writeInt(this.l ? 1 : 0);
        parcel.writeInt(this.m);
        parcel.writeString(this.n);
        parcel.writeInt(this.o);
        parcel.writeInt(this.p ? 1 : 0);
    }

    public FragmentState(Fragment fragment) {
        this.f13305b = fragment.getClass().getName();
        this.f13306c = fragment.mWho;
        this.d = fragment.mFromLayout;
        this.f13307e = fragment.mInDynamicContainer;
        this.f13308f = fragment.mFragmentId;
        this.g = fragment.mContainerId;
        this.f13309h = fragment.mTag;
        this.f13310i = fragment.mRetainInstance;
        this.f13311j = fragment.mRemoving;
        this.f13312k = fragment.mDetached;
        this.l = fragment.mHidden;
        this.m = fragment.mMaxState.ordinal();
        this.n = fragment.mTargetWho;
        this.o = fragment.mTargetRequestCode;
        this.p = fragment.mUserVisibleHint;
    }
}
