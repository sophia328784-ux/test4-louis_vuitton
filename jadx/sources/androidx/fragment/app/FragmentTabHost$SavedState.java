package androidx.fragment.app;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;
import defpackage.n00;

/* JADX INFO: loaded from: classes.dex */
class FragmentTabHost$SavedState extends View.BaseSavedState {
    public static final Parcelable.Creator<FragmentTabHost$SavedState> CREATOR = new AnonymousClass1();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f13327b;

    /* JADX INFO: renamed from: androidx.fragment.app.FragmentTabHost$SavedState$1, reason: invalid class name */
    public class AnonymousClass1 implements Parcelable.Creator<FragmentTabHost$SavedState> {
        @Override // android.os.Parcelable.Creator
        public final FragmentTabHost$SavedState createFromParcel(Parcel parcel) {
            FragmentTabHost$SavedState fragmentTabHost$SavedState = new FragmentTabHost$SavedState(parcel);
            fragmentTabHost$SavedState.f13327b = parcel.readString();
            return fragmentTabHost$SavedState;
        }

        @Override // android.os.Parcelable.Creator
        public final FragmentTabHost$SavedState[] newArray(int i2) {
            return new FragmentTabHost$SavedState[i2];
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("FragmentTabHost.SavedState{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" curTab=");
        return n00.r(this.f13327b, "}", sb);
    }

    @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        super.writeToParcel(parcel, i2);
        parcel.writeString(this.f13327b);
    }
}
