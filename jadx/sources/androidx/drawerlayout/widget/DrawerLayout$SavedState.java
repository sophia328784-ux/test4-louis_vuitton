package androidx.drawerlayout.widget;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.customview.view.AbsSavedState;

/* JADX INFO: loaded from: classes.dex */
public class DrawerLayout$SavedState extends AbsSavedState {
    public static final Parcelable.Creator<DrawerLayout$SavedState> CREATOR = new AnonymousClass1();
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f13024e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f13025f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f13026h;

    public DrawerLayout$SavedState(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.d = 0;
        this.d = parcel.readInt();
        this.f13024e = parcel.readInt();
        this.f13025f = parcel.readInt();
        this.g = parcel.readInt();
        this.f13026h = parcel.readInt();
    }

    @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        super.writeToParcel(parcel, i2);
        parcel.writeInt(this.d);
        parcel.writeInt(this.f13024e);
        parcel.writeInt(this.f13025f);
        parcel.writeInt(this.g);
        parcel.writeInt(this.f13026h);
    }

    /* JADX INFO: renamed from: androidx.drawerlayout.widget.DrawerLayout$SavedState$1, reason: invalid class name */
    public class AnonymousClass1 implements Parcelable.ClassLoaderCreator<DrawerLayout$SavedState> {
        @Override // android.os.Parcelable.Creator
        public final Object createFromParcel(Parcel parcel) {
            return new DrawerLayout$SavedState(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        public final Object[] newArray(int i2) {
            return new DrawerLayout$SavedState[i2];
        }

        @Override // android.os.Parcelable.ClassLoaderCreator
        public final DrawerLayout$SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
            return new DrawerLayout$SavedState(parcel, classLoader);
        }
    }

    public DrawerLayout$SavedState(Parcelable parcelable) {
        super(parcelable);
        this.d = 0;
    }
}
