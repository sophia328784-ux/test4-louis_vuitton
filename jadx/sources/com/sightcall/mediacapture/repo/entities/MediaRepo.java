package com.sightcall.mediacapture.repo.entities;

import android.net.Uri;
import android.util.Size;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0080\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0007HÆ\u0003J'\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0014\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u0017\u001a\u00020\u0018HÖ\u0081\u0004J\n\u0010\u0019\u001a\u00020\u0005HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u001a"}, d2 = {"Lcom/sightcall/mediacapture/repo/entities/MediaRepo;", "", "uri", "Landroid/net/Uri;", "mimeType", "", "size", "Landroid/util/Size;", "<init>", "(Landroid/net/Uri;Ljava/lang/String;Landroid/util/Size;)V", "getUri", "()Landroid/net/Uri;", "getMimeType", "()Ljava/lang/String;", "getSize", "()Landroid/util/Size;", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "lib_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class MediaRepo {
    private final String mimeType;
    private final Size size;
    private final Uri uri;

    public MediaRepo(Uri uri, String str, Size size) {
        uri.getClass();
        str.getClass();
        size.getClass();
        this.uri = uri;
        this.mimeType = str;
        this.size = size;
    }

    public static /* synthetic */ MediaRepo copy$default(MediaRepo mediaRepo, Uri uri, String str, Size size, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            uri = mediaRepo.uri;
        }
        if ((i2 & 2) != 0) {
            str = mediaRepo.mimeType;
        }
        if ((i2 & 4) != 0) {
            size = mediaRepo.size;
        }
        return mediaRepo.copy(uri, str, size);
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
    public final Size getSize() {
        return this.size;
    }

    public final MediaRepo copy(Uri uri, String mimeType, Size size) {
        uri.getClass();
        mimeType.getClass();
        size.getClass();
        return new MediaRepo(uri, mimeType, size);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof MediaRepo)) {
            return false;
        }
        MediaRepo mediaRepo = (MediaRepo) other;
        return Intrinsics.c(this.uri, mediaRepo.uri) && Intrinsics.c(this.mimeType, mediaRepo.mimeType) && Intrinsics.c(this.size, mediaRepo.size);
    }

    public final String getMimeType() {
        return this.mimeType;
    }

    public final Size getSize() {
        return this.size;
    }

    public final Uri getUri() {
        return this.uri;
    }

    public int hashCode() {
        return this.size.hashCode() + fc.b(this.uri.hashCode() * 31, 31, this.mimeType);
    }

    public String toString() {
        return "MediaRepo(uri=" + this.uri + ", mimeType=" + this.mimeType + ", size=" + this.size + ")";
    }
}
