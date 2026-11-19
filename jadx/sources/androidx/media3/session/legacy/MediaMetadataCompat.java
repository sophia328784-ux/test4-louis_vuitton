package androidx.media3.session.legacy;

import android.graphics.Bitmap;
import android.media.MediaMetadata;
import android.media.Rating;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.collection.ArrayMap;
import androidx.media3.common.util.Log;
import defpackage.fc;
import defpackage.md;

/* JADX INFO: loaded from: classes.dex */
public final class MediaMetadataCompat implements Parcelable {
    public static final Parcelable.Creator<MediaMetadataCompat> CREATOR;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final ArrayMap f17794e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String[] f17795f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Bundle f17796b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public MediaMetadata f17797c;
    public byte[] d;

    /* JADX INFO: renamed from: androidx.media3.session.legacy.MediaMetadataCompat$1, reason: invalid class name */
    public class AnonymousClass1 implements Parcelable.Creator<MediaMetadataCompat> {
        @Override // android.os.Parcelable.Creator
        public final MediaMetadataCompat createFromParcel(Parcel parcel) {
            return new MediaMetadataCompat(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final MediaMetadataCompat[] newArray(int i2) {
            return new MediaMetadataCompat[i2];
        }
    }

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Bundle f17798a = new Bundle();

        public final void a(Bitmap bitmap, String str) {
            Integer num = (Integer) MediaMetadataCompat.f17794e.get(str);
            if (num == null || num.intValue() == 2) {
                this.f17798a.putParcelable(str, bitmap);
            } else {
                md.n(fc.h("The ", str, " key cannot be used to put a Bitmap"));
            }
        }

        public final void b(long j2, String str) {
            Integer num = (Integer) MediaMetadataCompat.f17794e.get(str);
            if (num == null || num.intValue() == 0) {
                this.f17798a.putLong(str, j2);
            } else {
                md.n(fc.h("The ", str, " key cannot be used to put a long"));
            }
        }

        public final void c(String str, RatingCompat ratingCompat) {
            Object obj;
            float f2 = ratingCompat.f17855c;
            Integer num = (Integer) MediaMetadataCompat.f17794e.get(str);
            if (num != null && num.intValue() != 3) {
                md.n(fc.h("The ", str, " key cannot be used to put a Rating"));
                return;
            }
            if (ratingCompat.d == null) {
                boolean zC = ratingCompat.c();
                int i2 = ratingCompat.f17854b;
                if (zC) {
                    switch (i2) {
                        case 1:
                            ratingCompat.d = Rating.newHeartRating(i2 == 1 && f2 == 1.0f);
                            break;
                        case 2:
                            ratingCompat.d = Rating.newThumbRating(i2 == 2 && f2 == 1.0f);
                            break;
                        case 3:
                        case 4:
                        case 5:
                            ratingCompat.d = Rating.newStarRating(i2, ratingCompat.b());
                            break;
                        case 6:
                            if (i2 != 6 || !ratingCompat.c()) {
                                f2 = -1.0f;
                            }
                            ratingCompat.d = Rating.newPercentageRating(f2);
                            break;
                        default:
                            obj = null;
                            break;
                    }
                } else {
                    ratingCompat.d = Rating.newUnratedRating(i2);
                }
                obj = ratingCompat.d;
            } else {
                obj = ratingCompat.d;
            }
            this.f17798a.putParcelable(str, (Parcelable) obj);
        }

        public final void d(String str, String str2) {
            Integer num = (Integer) MediaMetadataCompat.f17794e.get(str);
            if (num == null || num.intValue() == 1) {
                this.f17798a.putCharSequence(str, str2);
            } else {
                md.n(fc.h("The ", str, " key cannot be used to put a String"));
            }
        }

        public final void e(CharSequence charSequence, String str) {
            Integer num = (Integer) MediaMetadataCompat.f17794e.get(str);
            if (num == null || num.intValue() == 1) {
                this.f17798a.putCharSequence(str, charSequence);
            } else {
                md.n(fc.h("The ", str, " key cannot be used to put a CharSequence"));
            }
        }
    }

    static {
        ArrayMap arrayMap = new ArrayMap();
        f17794e = arrayMap;
        arrayMap.put("android.media.metadata.TITLE", 1);
        arrayMap.put("android.media.metadata.ARTIST", 1);
        arrayMap.put("android.media.metadata.DURATION", 0);
        arrayMap.put("android.media.metadata.ALBUM", 1);
        arrayMap.put("android.media.metadata.AUTHOR", 1);
        arrayMap.put("android.media.metadata.WRITER", 1);
        arrayMap.put("android.media.metadata.COMPOSER", 1);
        arrayMap.put("android.media.metadata.COMPILATION", 1);
        arrayMap.put("android.media.metadata.DATE", 1);
        arrayMap.put("android.media.metadata.YEAR", 0);
        arrayMap.put("android.media.metadata.GENRE", 1);
        arrayMap.put("android.media.metadata.TRACK_NUMBER", 0);
        arrayMap.put("android.media.metadata.NUM_TRACKS", 0);
        arrayMap.put("android.media.metadata.DISC_NUMBER", 0);
        arrayMap.put("android.media.metadata.ALBUM_ARTIST", 1);
        arrayMap.put("android.media.metadata.ART", 2);
        arrayMap.put("android.media.metadata.ART_URI", 1);
        arrayMap.put("android.media.metadata.ALBUM_ART", 2);
        arrayMap.put("android.media.metadata.ALBUM_ART_URI", 1);
        arrayMap.put("android.media.metadata.USER_RATING", 3);
        arrayMap.put("android.media.metadata.RATING", 3);
        arrayMap.put("android.media.metadata.DISPLAY_TITLE", 1);
        arrayMap.put("android.media.metadata.DISPLAY_SUBTITLE", 1);
        arrayMap.put("android.media.metadata.DISPLAY_DESCRIPTION", 1);
        arrayMap.put("android.media.metadata.DISPLAY_ICON", 2);
        arrayMap.put("android.media.metadata.DISPLAY_ICON_URI", 1);
        arrayMap.put("android.media.metadata.MEDIA_ID", 1);
        arrayMap.put("android.media.metadata.BT_FOLDER_TYPE", 0);
        arrayMap.put("android.media.metadata.MEDIA_URI", 1);
        arrayMap.put("android.media.metadata.ADVERTISEMENT", 0);
        arrayMap.put("android.media.metadata.DOWNLOAD_STATUS", 0);
        f17795f = new String[]{"android.media.metadata.TITLE", "android.media.metadata.ARTIST", "android.media.metadata.ALBUM", "android.media.metadata.ALBUM_ARTIST", "android.media.metadata.WRITER", "android.media.metadata.AUTHOR", "android.media.metadata.COMPOSER", "android.media.metadata.DISPLAY_SUBTITLE", "android.media.metadata.DISPLAY_DESCRIPTION"};
        CREATOR = new AnonymousClass1();
    }

    public MediaMetadataCompat(Bundle bundle) {
        Bundle bundle2 = new Bundle(bundle);
        this.f17796b = bundle2;
        ClassLoader classLoader = MediaSessionCompat.class.getClassLoader();
        classLoader.getClass();
        bundle2.setClassLoader(classLoader);
    }

    public final long a(String str) {
        return this.f17796b.getLong(str, 0L);
    }

    public final Bitmap b() {
        String[] strArr = {"android.media.metadata.DISPLAY_ICON", "android.media.metadata.ALBUM_ART", "android.media.metadata.ART"};
        for (int i2 = 0; i2 < 3; i2++) {
            String str = strArr[i2];
            Bundle bundle = this.f17796b;
            if (bundle.containsKey(str)) {
                try {
                    return (Bitmap) bundle.getParcelable(str);
                } catch (Exception e2) {
                    Log.h("Failed to retrieve a key as Bitmap.", e2);
                    return null;
                }
            }
        }
        return null;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeBundle(this.f17796b);
    }

    public MediaMetadataCompat(Parcel parcel) {
        Bundle bundle = parcel.readBundle(MediaSessionCompat.class.getClassLoader());
        bundle.getClass();
        this.f17796b = bundle;
    }
}
