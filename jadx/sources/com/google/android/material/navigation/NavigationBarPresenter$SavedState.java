package com.google.android.material.navigation;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.material.internal.ParcelableSparseArray;

/* JADX INFO: loaded from: classes2.dex */
class NavigationBarPresenter$SavedState implements Parcelable {
    public static final Parcelable.Creator<NavigationBarPresenter$SavedState> CREATOR = new AnonymousClass1();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f32774b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ParcelableSparseArray f32775c;

    /* JADX INFO: renamed from: com.google.android.material.navigation.NavigationBarPresenter$SavedState$1, reason: invalid class name */
    public class AnonymousClass1 implements Parcelable.Creator<NavigationBarPresenter$SavedState> {
        @Override // android.os.Parcelable.Creator
        public final NavigationBarPresenter$SavedState createFromParcel(Parcel parcel) {
            NavigationBarPresenter$SavedState navigationBarPresenter$SavedState = new NavigationBarPresenter$SavedState();
            navigationBarPresenter$SavedState.f32774b = parcel.readInt();
            navigationBarPresenter$SavedState.f32775c = (ParcelableSparseArray) parcel.readParcelable(NavigationBarPresenter$SavedState.class.getClassLoader());
            return navigationBarPresenter$SavedState;
        }

        @Override // android.os.Parcelable.Creator
        public final NavigationBarPresenter$SavedState[] newArray(int i2) {
            return new NavigationBarPresenter$SavedState[i2];
        }
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.f32774b);
        parcel.writeParcelable(this.f32775c, 0);
    }
}
