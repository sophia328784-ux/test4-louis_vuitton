package com.batch.android.messaging.view;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;
import defpackage.o60;

/* JADX INFO: loaded from: classes2.dex */
public class AnimatedCountdownSavedState extends View.BaseSavedState {
    public static final Parcelable.Creator<AnimatedCountdownSavedState> CREATOR = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f23708b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f23709c;
    public long d;

    public AnimatedCountdownSavedState(Parcel parcel) {
        super(parcel);
        this.f23708b = false;
        this.f23709c = 0L;
        this.d = 0L;
        a(parcel, null);
    }

    private void a(Parcel parcel, ClassLoader classLoader) {
        this.f23708b = parcel.readByte() != 0;
        this.f23709c = parcel.readLong();
        this.d = parcel.readLong();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("AnimatedCountdownSavedState { animating: ");
        sb.append(this.f23708b);
        sb.append(", animationEndDate: ");
        sb.append(this.f23709c);
        sb.append(", duration: ");
        return o60.j(this.d, "}", sb);
    }

    @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        super.writeToParcel(parcel, i2);
        parcel.writeByte(this.f23708b ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.f23709c);
        parcel.writeLong(this.d);
    }

    public class a implements Parcelable.Creator<AnimatedCountdownSavedState> {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public AnimatedCountdownSavedState createFromParcel(Parcel parcel) {
            return new AnimatedCountdownSavedState(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public AnimatedCountdownSavedState[] newArray(int i2) {
            return new AnimatedCountdownSavedState[i2];
        }
    }

    public AnimatedCountdownSavedState(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.f23708b = false;
        this.f23709c = 0L;
        this.d = 0L;
        a(parcel, classLoader);
    }

    public AnimatedCountdownSavedState(Parcelable parcelable) {
        super(parcelable);
        this.f23708b = false;
        this.f23709c = 0L;
        this.d = 0L;
    }
}
