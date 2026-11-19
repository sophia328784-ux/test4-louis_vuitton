package androidx.databinding;

import android.os.Parcel;
import android.os.Parcelable;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class ObservableShort extends BaseObservableField implements Parcelable, Serializable {
    public static final Parcelable.Creator<ObservableShort> CREATOR = new AnonymousClass1();
    static final long serialVersionUID = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final short f12593c;

    /* JADX INFO: renamed from: androidx.databinding.ObservableShort$1, reason: invalid class name */
    public class AnonymousClass1 implements Parcelable.Creator<ObservableShort> {
        @Override // android.os.Parcelable.Creator
        public final ObservableShort createFromParcel(Parcel parcel) {
            return new ObservableShort((short) parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        public final ObservableShort[] newArray(int i2) {
            return new ObservableShort[i2];
        }
    }

    public ObservableShort(short s) {
        this.f12593c = s;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.f12593c);
    }

    public ObservableShort() {
    }

    public ObservableShort(Observable... observableArr) {
        super(observableArr);
    }
}
