package com.sightcall.mediacapture.repo.entities;

import android.util.Size;
import defpackage.fc;
import java.io.InputStream;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0080\b\u0018\u00002\u00020\u0001B!\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0007HÆ\u0003J)\u0010\u0013\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0014\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u0017\u001a\u00020\u0018HÖ\u0081\u0004J\n\u0010\u0019\u001a\u00020\u0005HÖ\u0081\u0004R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u001a"}, d2 = {"Lcom/sightcall/mediacapture/repo/entities/ResizeResult;", "", "stream", "Ljava/io/InputStream;", "mimeType", "", "size", "Landroid/util/Size;", "<init>", "(Ljava/io/InputStream;Ljava/lang/String;Landroid/util/Size;)V", "getStream", "()Ljava/io/InputStream;", "getMimeType", "()Ljava/lang/String;", "getSize", "()Landroid/util/Size;", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "lib_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ResizeResult {
    private final String mimeType;
    private final Size size;
    private final InputStream stream;

    public ResizeResult(InputStream inputStream, String str, Size size) {
        str.getClass();
        size.getClass();
        this.stream = inputStream;
        this.mimeType = str;
        this.size = size;
    }

    public static /* synthetic */ ResizeResult copy$default(ResizeResult resizeResult, InputStream inputStream, String str, Size size, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            inputStream = resizeResult.stream;
        }
        if ((i2 & 2) != 0) {
            str = resizeResult.mimeType;
        }
        if ((i2 & 4) != 0) {
            size = resizeResult.size;
        }
        return resizeResult.copy(inputStream, str, size);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final InputStream getStream() {
        return this.stream;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getMimeType() {
        return this.mimeType;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Size getSize() {
        return this.size;
    }

    public final ResizeResult copy(InputStream stream, String mimeType, Size size) {
        mimeType.getClass();
        size.getClass();
        return new ResizeResult(stream, mimeType, size);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ResizeResult)) {
            return false;
        }
        ResizeResult resizeResult = (ResizeResult) other;
        return Intrinsics.c(this.stream, resizeResult.stream) && Intrinsics.c(this.mimeType, resizeResult.mimeType) && Intrinsics.c(this.size, resizeResult.size);
    }

    public final String getMimeType() {
        return this.mimeType;
    }

    public final Size getSize() {
        return this.size;
    }

    public final InputStream getStream() {
        return this.stream;
    }

    public int hashCode() {
        InputStream inputStream = this.stream;
        return this.size.hashCode() + fc.b((inputStream == null ? 0 : inputStream.hashCode()) * 31, 31, this.mimeType);
    }

    public String toString() {
        return "ResizeResult(stream=" + this.stream + ", mimeType=" + this.mimeType + ", size=" + this.size + ")";
    }
}
