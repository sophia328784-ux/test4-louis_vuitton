package com.sightcall.mediacapture.domain.entities;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Size;
import com.appsflyer.sdk_base.referrer.Payload;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\f¢\u0006\u0004\b\r\u0010\u000eJ\t\u0010\u001a\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001d\u001a\u00020\bHÆ\u0003J\t\u0010\u001e\u001a\u00020\nHÆ\u0003J\t\u0010\u001f\u001a\u00020\fHÆ\u0003JE\u0010 \u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\fHÆ\u0001J\u0006\u0010!\u001a\u00020\"J\u0014\u0010#\u001a\u00020$2\b\u0010%\u001a\u0004\u0018\u00010&HÖ\u0083\u0004J\n\u0010'\u001a\u00020\"HÖ\u0081\u0004J\n\u0010(\u001a\u00020\u0005HÖ\u0081\u0004J\u0016\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020\"R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0012R\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0011\u0010\t\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0011\u0010\u000b\u001a\u00020\f¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019¨\u0006."}, d2 = {"Lcom/sightcall/mediacapture/domain/entities/Media;", "Landroid/os/Parcelable;", "uri", "Landroid/net/Uri;", "mimeType", "", "extension", "size", "Landroid/util/Size;", "type", "Lcom/sightcall/mediacapture/domain/entities/MediaType;", Payload.SOURCE, "Lcom/sightcall/mediacapture/domain/entities/MediaSource;", "<init>", "(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/util/Size;Lcom/sightcall/mediacapture/domain/entities/MediaType;Lcom/sightcall/mediacapture/domain/entities/MediaSource;)V", "getUri", "()Landroid/net/Uri;", "getMimeType", "()Ljava/lang/String;", "getExtension", "getSize", "()Landroid/util/Size;", "getType", "()Lcom/sightcall/mediacapture/domain/entities/MediaType;", "getSource", "()Lcom/sightcall/mediacapture/domain/entities/MediaSource;", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "describeContents", "", "equals", "", "other", "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "lib_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class Media implements Parcelable {
    public static final Parcelable.Creator<Media> CREATOR = new Creator();
    private final String extension;
    private final String mimeType;
    private final Size size;
    private final MediaSource source;
    private final MediaType type;
    private final Uri uri;

    public Media(Uri uri, String str, String str2, Size size, MediaType mediaType, MediaSource mediaSource) {
        uri.getClass();
        str.getClass();
        str2.getClass();
        size.getClass();
        mediaType.getClass();
        mediaSource.getClass();
        this.uri = uri;
        this.mimeType = str;
        this.extension = str2;
        this.size = size;
        this.type = mediaType;
        this.source = mediaSource;
    }

    public static /* synthetic */ Media copy$default(Media media, Uri uri, String str, String str2, Size size, MediaType mediaType, MediaSource mediaSource, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            uri = media.uri;
        }
        if ((i2 & 2) != 0) {
            str = media.mimeType;
        }
        if ((i2 & 4) != 0) {
            str2 = media.extension;
        }
        if ((i2 & 8) != 0) {
            size = media.size;
        }
        if ((i2 & 16) != 0) {
            mediaType = media.type;
        }
        if ((i2 & 32) != 0) {
            mediaSource = media.source;
        }
        MediaType mediaType2 = mediaType;
        MediaSource mediaSource2 = mediaSource;
        return media.copy(uri, str, str2, size, mediaType2, mediaSource2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Uri getUri() {
        return this.uri;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getMimeType() {
        return this.mimeType;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getExtension() {
        return this.extension;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Size getSize() {
        return this.size;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final MediaType getType() {
        return this.type;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final MediaSource getSource() {
        return this.source;
    }

    public final Media copy(Uri uri, String mimeType, String extension, Size size, MediaType type, MediaSource source) {
        uri.getClass();
        mimeType.getClass();
        extension.getClass();
        size.getClass();
        type.getClass();
        source.getClass();
        return new Media(uri, mimeType, extension, size, type, source);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Media)) {
            return false;
        }
        Media media = (Media) other;
        return Intrinsics.c(this.uri, media.uri) && Intrinsics.c(this.mimeType, media.mimeType) && Intrinsics.c(this.extension, media.extension) && Intrinsics.c(this.size, media.size) && this.type == media.type && this.source == media.source;
    }

    public final String getExtension() {
        return this.extension;
    }

    public final String getMimeType() {
        return this.mimeType;
    }

    public final Size getSize() {
        return this.size;
    }

    public final MediaSource getSource() {
        return this.source;
    }

    public final MediaType getType() {
        return this.type;
    }

    public final Uri getUri() {
        return this.uri;
    }

    public int hashCode() {
        return this.source.hashCode() + ((this.type.hashCode() + ((this.size.hashCode() + fc.b(fc.b(this.uri.hashCode() * 31, 31, this.mimeType), 31, this.extension)) * 31)) * 31);
    }

    public String toString() {
        return "Media(uri=" + this.uri + ", mimeType=" + this.mimeType + ", extension=" + this.extension + ", size=" + this.size + ", type=" + this.type + ", source=" + this.source + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        dest.getClass();
        dest.writeParcelable(this.uri, flags);
        dest.writeString(this.mimeType);
        dest.writeString(this.extension);
        dest.writeSize(this.size);
        this.type.writeToParcel(dest, flags);
        this.source.writeToParcel(dest, flags);
    }

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<Media> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final Media createFromParcel(Parcel parcel) {
            parcel.getClass();
            return new Media((Uri) parcel.readParcelable(Media.class.getClassLoader()), parcel.readString(), parcel.readString(), parcel.readSize(), MediaType.CREATOR.createFromParcel(parcel), MediaSource.CREATOR.createFromParcel(parcel));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final Media[] newArray(int i2) {
            return new Media[i2];
        }
    }
}
