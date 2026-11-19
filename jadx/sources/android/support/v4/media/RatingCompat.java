package android.support.v4.media;

import android.os.Parcel;
import android.os.Parcelable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public final class RatingCompat implements Parcelable {
    public static final Parcelable.Creator<RatingCompat> CREATOR = new AnonymousClass1();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f601b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f602c;

    /* JADX INFO: renamed from: android.support.v4.media.RatingCompat$1, reason: invalid class name */
    public class AnonymousClass1 implements Parcelable.Creator<RatingCompat> {
        @Override // android.os.Parcelable.Creator
        public final RatingCompat createFromParcel(Parcel parcel) {
            return new RatingCompat(parcel.readInt(), parcel.readFloat());
        }

        @Override // android.os.Parcelable.Creator
        public final RatingCompat[] newArray(int i2) {
            return new RatingCompat[i2];
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface StarStyle {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface Style {
    }

    public RatingCompat(int i2, float f2) {
        this.f601b = i2;
        this.f602c = f2;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return this.f601b;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Rating:style=");
        sb.append(this.f601b);
        sb.append(" rating=");
        float f2 = this.f602c;
        sb.append(f2 < Call.Parameters.DEFAULT_CAMERA_ZOOM ? "unrated" : String.valueOf(f2));
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.f601b);
        parcel.writeFloat(this.f602c);
    }
}
