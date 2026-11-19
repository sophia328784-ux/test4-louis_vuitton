package androidx.media3.session.legacy;

import android.graphics.Bitmap;
import android.media.MediaDescription;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.media3.common.util.Util;

/* JADX INFO: loaded from: classes.dex */
public final class MediaDescriptionCompat implements Parcelable {
    public static final Parcelable.Creator<MediaDescriptionCompat> CREATOR = new AnonymousClass1();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f17780b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CharSequence f17781c;
    public final CharSequence d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final CharSequence f17782e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Bitmap f17783f;
    public byte[] g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Uri f17784h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Bundle f17785i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Uri f17786j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public MediaDescription f17787k;

    /* JADX INFO: renamed from: androidx.media3.session.legacy.MediaDescriptionCompat$1, reason: invalid class name */
    public class AnonymousClass1 implements Parcelable.Creator<MediaDescriptionCompat> {
        @Override // android.os.Parcelable.Creator
        public final MediaDescriptionCompat createFromParcel(Parcel parcel) {
            return MediaDescriptionCompat.a((MediaDescription) MediaDescription.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final MediaDescriptionCompat[] newArray(int i2) {
            return new MediaDescriptionCompat[i2];
        }
    }

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f17788a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public CharSequence f17789b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public CharSequence f17790c;
        public CharSequence d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Bitmap f17791e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public Uri f17792f;
        public Bundle g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public Uri f17793h;
    }

    public MediaDescriptionCompat(String str, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, Bitmap bitmap, Uri uri, Bundle bundle, Uri uri2) {
        this.f17780b = str;
        this.f17781c = charSequence;
        this.d = charSequence2;
        this.f17782e = charSequence3;
        this.f17783f = bitmap;
        this.f17784h = uri;
        this.f17785i = bundle;
        this.f17786j = uri2;
    }

    public static MediaDescriptionCompat a(MediaDescription mediaDescription) {
        Builder builder = new Builder();
        builder.f17788a = mediaDescription.getMediaId();
        builder.f17789b = mediaDescription.getTitle();
        builder.f17790c = mediaDescription.getSubtitle();
        builder.d = mediaDescription.getDescription();
        builder.f17791e = mediaDescription.getIconBitmap();
        builder.f17792f = mediaDescription.getIconUri();
        Bundle bundleP = Util.p(mediaDescription.getExtras());
        if (bundleP != null) {
            bundleP = new Bundle(bundleP);
        }
        Uri uri = null;
        if (bundleP != null) {
            Uri uri2 = (Uri) bundleP.getParcelable("android.support.v4.media.description.MEDIA_URI");
            if (uri2 != null) {
                if (bundleP.containsKey("android.support.v4.media.description.NULL_BUNDLE_FLAG") && bundleP.size() == 2) {
                    bundleP = null;
                } else {
                    bundleP.remove("android.support.v4.media.description.MEDIA_URI");
                    bundleP.remove("android.support.v4.media.description.NULL_BUNDLE_FLAG");
                }
            }
            uri = uri2;
        }
        builder.g = bundleP;
        if (uri != null) {
            builder.f17793h = uri;
        } else {
            builder.f17793h = mediaDescription.getMediaUri();
        }
        MediaDescriptionCompat mediaDescriptionCompat = new MediaDescriptionCompat(builder.f17788a, builder.f17789b, builder.f17790c, builder.d, builder.f17791e, builder.f17792f, builder.g, builder.f17793h);
        mediaDescriptionCompat.f17787k = mediaDescription;
        return mediaDescriptionCompat;
    }

    public final MediaDescription b() {
        MediaDescription mediaDescription = this.f17787k;
        if (mediaDescription != null) {
            return mediaDescription;
        }
        MediaDescription.Builder builder = new MediaDescription.Builder();
        builder.setMediaId(this.f17780b);
        builder.setTitle(this.f17781c);
        builder.setSubtitle(this.d);
        builder.setDescription(this.f17782e);
        builder.setIconBitmap(this.f17783f);
        builder.setIconUri(this.f17784h);
        builder.setExtras(this.f17785i);
        builder.setMediaUri(this.f17786j);
        MediaDescription mediaDescriptionBuild = builder.build();
        this.f17787k = mediaDescriptionBuild;
        return mediaDescriptionBuild;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        return ((Object) this.f17781c) + ", " + ((Object) this.d) + ", " + ((Object) this.f17782e);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        b().writeToParcel(parcel, i2);
    }
}
