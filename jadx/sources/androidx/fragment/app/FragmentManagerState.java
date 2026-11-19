package androidx.fragment.app;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
final class FragmentManagerState implements Parcelable {
    public static final Parcelable.Creator<FragmentManagerState> CREATOR = new AnonymousClass1();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ArrayList f13294b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ArrayList f13295c;
    public BackStackRecordState[] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f13296e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f13297f;
    public final ArrayList g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ArrayList f13298h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public ArrayList f13299i;

    /* JADX INFO: renamed from: androidx.fragment.app.FragmentManagerState$1, reason: invalid class name */
    public class AnonymousClass1 implements Parcelable.Creator<FragmentManagerState> {
        @Override // android.os.Parcelable.Creator
        public final FragmentManagerState createFromParcel(Parcel parcel) {
            return new FragmentManagerState(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final FragmentManagerState[] newArray(int i2) {
            return new FragmentManagerState[i2];
        }
    }

    public FragmentManagerState(Parcel parcel) {
        this.f13297f = null;
        this.g = new ArrayList();
        this.f13298h = new ArrayList();
        this.f13294b = parcel.createStringArrayList();
        this.f13295c = parcel.createStringArrayList();
        this.d = (BackStackRecordState[]) parcel.createTypedArray(BackStackRecordState.CREATOR);
        this.f13296e = parcel.readInt();
        this.f13297f = parcel.readString();
        this.g = parcel.createStringArrayList();
        this.f13298h = parcel.createTypedArrayList(BackStackState.CREATOR);
        this.f13299i = parcel.createTypedArrayList(FragmentManager.LaunchedFragmentInfo.CREATOR);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeStringList(this.f13294b);
        parcel.writeStringList(this.f13295c);
        parcel.writeTypedArray(this.d, i2);
        parcel.writeInt(this.f13296e);
        parcel.writeString(this.f13297f);
        parcel.writeStringList(this.g);
        parcel.writeTypedList(this.f13298h);
        parcel.writeTypedList(this.f13299i);
    }

    public FragmentManagerState() {
        this.f13297f = null;
        this.g = new ArrayList();
        this.f13298h = new ArrayList();
    }
}
