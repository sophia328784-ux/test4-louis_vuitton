package com.google.android.material.navigation;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.customview.view.AbsSavedState;

/* JADX INFO: loaded from: classes2.dex */
class NavigationBarView$SavedState extends AbsSavedState {
    public static final Parcelable.Creator<NavigationBarView$SavedState> CREATOR = new AnonymousClass1();
    public final Bundle d;

    public NavigationBarView$SavedState(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.d = parcel.readBundle(classLoader == null ? getClass().getClassLoader() : classLoader);
    }

    @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        super.writeToParcel(parcel, i2);
        parcel.writeBundle(this.d);
    }

    /* JADX INFO: renamed from: com.google.android.material.navigation.NavigationBarView$SavedState$1, reason: invalid class name */
    public class AnonymousClass1 implements Parcelable.ClassLoaderCreator<NavigationBarView$SavedState> {
        @Override // android.os.Parcelable.Creator
        public final Object createFromParcel(Parcel parcel) {
            return new NavigationBarView$SavedState(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        public final Object[] newArray(int i2) {
            return new NavigationBarView$SavedState[i2];
        }

        @Override // android.os.Parcelable.ClassLoaderCreator
        public final NavigationBarView$SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
            return new NavigationBarView$SavedState(parcel, classLoader);
        }
    }

    public NavigationBarView$SavedState(Parcelable parcelable) {
        super(parcelable);
    }
}
