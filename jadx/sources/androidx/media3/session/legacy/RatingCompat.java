package androidx.media3.session.legacy;

import android.media.Rating;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.media3.common.util.Log;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public final class RatingCompat implements Parcelable {
    public static final Parcelable.Creator<RatingCompat> CREATOR = new AnonymousClass1();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f17854b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f17855c;
    public Object d;

    /* JADX INFO: renamed from: androidx.media3.session.legacy.RatingCompat$1, reason: invalid class name */
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
        this.f17854b = i2;
        this.f17855c = f2;
    }

    public static RatingCompat a(Parcelable parcelable) {
        RatingCompat ratingCompat;
        RatingCompat ratingCompat2 = null;
        if (parcelable != null) {
            Rating rating = (Rating) parcelable;
            int ratingStyle = rating.getRatingStyle();
            if (!rating.isRated()) {
                switch (ratingStyle) {
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                        ratingCompat2 = new RatingCompat(ratingStyle, -1.0f);
                        break;
                }
            } else {
                float f2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                switch (ratingStyle) {
                    case 1:
                        if (rating.hasHeart()) {
                            f2 = 1.0f;
                        }
                        ratingCompat = new RatingCompat(1, f2);
                        break;
                    case 2:
                        if (rating.isThumbUp()) {
                            f2 = 1.0f;
                        }
                        ratingCompat = new RatingCompat(2, f2);
                        break;
                    case 3:
                    case 4:
                    case 5:
                        ratingCompat2 = e(rating.getStarRating(), ratingStyle);
                        break;
                    case 6:
                        ratingCompat2 = d(rating.getPercentRating());
                        break;
                }
                ratingCompat2 = ratingCompat;
            }
            ratingCompat2.getClass();
            ratingCompat2.d = parcelable;
        }
        return ratingCompat2;
    }

    public static RatingCompat d(float f2) {
        if (f2 >= Call.Parameters.DEFAULT_CAMERA_ZOOM && f2 <= 100.0f) {
            return new RatingCompat(6, f2);
        }
        Log.d("Invalid percentage-based rating value");
        return null;
    }

    public static RatingCompat e(float f2, int i2) {
        float f3;
        if (i2 == 3) {
            f3 = 3.0f;
        } else if (i2 == 4) {
            f3 = 4.0f;
        } else {
            if (i2 != 5) {
                Log.d("Invalid rating style (" + i2 + ") for a star rating");
                return null;
            }
            f3 = 5.0f;
        }
        if (f2 >= Call.Parameters.DEFAULT_CAMERA_ZOOM && f2 <= f3) {
            return new RatingCompat(i2, f2);
        }
        Log.d("Trying to set out of range star-based rating");
        return null;
    }

    public final float b() {
        int i2 = this.f17854b;
        if ((i2 == 3 || i2 == 4 || i2 == 5) && c()) {
            return this.f17855c;
        }
        return -1.0f;
    }

    public final boolean c() {
        return this.f17855c >= Call.Parameters.DEFAULT_CAMERA_ZOOM;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return this.f17854b;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Rating:style=");
        sb.append(this.f17854b);
        sb.append(" rating=");
        float f2 = this.f17855c;
        sb.append(f2 < Call.Parameters.DEFAULT_CAMERA_ZOOM ? "unrated" : String.valueOf(f2));
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.f17854b);
        parcel.writeFloat(this.f17855c);
    }
}
