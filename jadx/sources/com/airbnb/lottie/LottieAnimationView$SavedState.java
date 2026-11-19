package com.airbnb.lottie;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
class LottieAnimationView$SavedState extends View.BaseSavedState {
    public static final Parcelable.Creator<LottieAnimationView$SavedState> CREATOR = new AnonymousClass1();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f21742b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f21743c;
    public boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f21744e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f21745f;
    public int g;

    /* JADX INFO: renamed from: com.airbnb.lottie.LottieAnimationView$SavedState$1, reason: invalid class name */
    public class AnonymousClass1 implements Parcelable.Creator<LottieAnimationView$SavedState> {
        @Override // android.os.Parcelable.Creator
        public final LottieAnimationView$SavedState createFromParcel(Parcel parcel) {
            LottieAnimationView$SavedState lottieAnimationView$SavedState = new LottieAnimationView$SavedState(parcel);
            lottieAnimationView$SavedState.f21742b = parcel.readString();
            lottieAnimationView$SavedState.f21743c = parcel.readFloat();
            lottieAnimationView$SavedState.d = parcel.readInt() == 1;
            lottieAnimationView$SavedState.f21744e = parcel.readString();
            lottieAnimationView$SavedState.f21745f = parcel.readInt();
            lottieAnimationView$SavedState.g = parcel.readInt();
            return lottieAnimationView$SavedState;
        }

        @Override // android.os.Parcelable.Creator
        public final LottieAnimationView$SavedState[] newArray(int i2) {
            return new LottieAnimationView$SavedState[i2];
        }
    }

    @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        super.writeToParcel(parcel, i2);
        parcel.writeString(this.f21742b);
        parcel.writeFloat(this.f21743c);
        parcel.writeInt(this.d ? 1 : 0);
        parcel.writeString(this.f21744e);
        parcel.writeInt(this.f21745f);
        parcel.writeInt(this.g);
    }
}
