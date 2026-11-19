package android.support.v4.media;

import android.graphics.Bitmap;
import android.media.MediaDescription;
import android.net.Uri;
import android.os.BadParcelableException;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.session.MediaSessionCompat;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public final class MediaDescriptionCompat implements Parcelable {
    public static final Parcelable.Creator<MediaDescriptionCompat> CREATOR = new AnonymousClass1();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f587b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CharSequence f588c;
    public final CharSequence d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final CharSequence f589e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Bitmap f590f;
    public final Uri g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Bundle f591h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Uri f592i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public MediaDescription f593j;

    /* JADX INFO: renamed from: android.support.v4.media.MediaDescriptionCompat$1, reason: invalid class name */
    public class AnonymousClass1 implements Parcelable.Creator<MediaDescriptionCompat> {
        @Override // android.os.Parcelable.Creator
        public final MediaDescriptionCompat createFromParcel(Parcel parcel) {
            return MediaDescriptionCompat.a(MediaDescription.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final MediaDescriptionCompat[] newArray(int i2) {
            return new MediaDescriptionCompat[i2];
        }
    }

    @Deprecated
    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f594a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public CharSequence f595b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public CharSequence f596c;
        public CharSequence d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Bitmap f597e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public Uri f598f;
        public Bundle g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public Uri f599h;
    }

    public MediaDescriptionCompat(String str, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, Bitmap bitmap, Uri uri, Bundle bundle, Uri uri2) {
        this.f587b = str;
        this.f588c = charSequence;
        this.d = charSequence2;
        this.f589e = charSequence3;
        this.f590f = bitmap;
        this.g = uri;
        this.f591h = bundle;
        this.f592i = uri2;
    }

    public static MediaDescriptionCompat a(Object obj) {
        Bundle bundle = null;
        if (obj == null) {
            return null;
        }
        Builder builder = new Builder();
        MediaDescription mediaDescription = (MediaDescription) obj;
        builder.f594a = mediaDescription.getMediaId();
        builder.f595b = mediaDescription.getTitle();
        builder.f596c = mediaDescription.getSubtitle();
        builder.d = mediaDescription.getDescription();
        builder.f597e = mediaDescription.getIconBitmap();
        builder.f598f = mediaDescription.getIconUri();
        Bundle extras = mediaDescription.getExtras();
        if (extras == null) {
            extras = null;
        } else {
            MediaSessionCompat.a(extras);
            try {
                extras.isEmpty();
            } catch (BadParcelableException unused) {
                extras = null;
            }
        }
        if (extras != null) {
            extras = new Bundle(extras);
        }
        Uri uri = extras != null ? (Uri) extras.getParcelable("android.support.v4.media.description.MEDIA_URI") : null;
        if (uri == null) {
            bundle = extras;
        } else if (!extras.containsKey("android.support.v4.media.description.NULL_BUNDLE_FLAG") || extras.size() != 2) {
            extras.remove("android.support.v4.media.description.MEDIA_URI");
            extras.remove("android.support.v4.media.description.NULL_BUNDLE_FLAG");
            bundle = extras;
        }
        builder.g = bundle;
        if (uri != null) {
            builder.f599h = uri;
        } else {
            builder.f599h = mediaDescription.getMediaUri();
        }
        MediaDescriptionCompat mediaDescriptionCompat = new MediaDescriptionCompat(builder.f594a, builder.f595b, builder.f596c, builder.d, builder.f597e, builder.f598f, builder.g, builder.f599h);
        mediaDescriptionCompat.f593j = mediaDescription;
        return mediaDescriptionCompat;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        return ((Object) this.f588c) + ", " + ((Object) this.d) + ", " + ((Object) this.f589e);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        MediaDescription mediaDescriptionBuild = this.f593j;
        if (mediaDescriptionBuild == null) {
            MediaDescription.Builder builder = new MediaDescription.Builder();
            builder.setMediaId(this.f587b);
            builder.setTitle(this.f588c);
            builder.setSubtitle(this.d);
            builder.setDescription(this.f589e);
            builder.setIconBitmap(this.f590f);
            builder.setIconUri(this.g);
            builder.setExtras(this.f591h);
            builder.setMediaUri(this.f592i);
            mediaDescriptionBuild = builder.build();
            this.f593j = mediaDescriptionBuild;
        }
        mediaDescriptionBuild.writeToParcel(parcel, i2);
    }
}
