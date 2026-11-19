package androidx.databinding;

import android.os.Parcel;
import android.os.Parcelable;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class ObservableFloat extends BaseObservableField implements Parcelable, Serializable {
    public static final Parcelable.Creator<ObservableFloat> CREATOR = new AnonymousClass1();
    static final long serialVersionUID = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f12590c;

    /* JADX INFO: renamed from: androidx.databinding.ObservableFloat$1, reason: invalid class name */
    public class AnonymousClass1 implements Parcelable.Creator<ObservableFloat> {
        @Override // android.os.Parcelable.Creator
        public final ObservableFloat createFromParcel(Parcel parcel) {
            return new ObservableFloat(parcel.readFloat());
        }

        @Override // android.os.Parcelable.Creator
        public final ObservableFloat[] newArray(int i2) {
            return new ObservableFloat[i2];
        }
    }

    public ObservableFloat(float f2) {
        this.f12590c = f2;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeFloat(this.f12590c);
    }

    public ObservableFloat() {
    }

    public ObservableFloat(Observable... observableArr) {
        super(observableArr);
    }
}
