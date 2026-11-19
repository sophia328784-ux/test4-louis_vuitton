package androidx.camera.core.impl;

import defpackage.r81;

/* JADX INFO: loaded from: classes.dex */
final class AutoValue_EncoderProfilesProxy_VideoProfileProxy extends EncoderProfilesProxy.VideoProfileProxy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f2181a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f2182b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f2183c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f2184e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f2185f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f2186h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f2187i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f2188j;

    public AutoValue_EncoderProfilesProxy_VideoProfileProxy(int i2, String str, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
        this.f2181a = i2;
        if (str == null) {
            r81.d("Null mediaType");
            throw null;
        }
        this.f2182b = str;
        this.f2183c = i3;
        this.d = i4;
        this.f2184e = i5;
        this.f2185f = i6;
        this.g = i7;
        this.f2186h = i8;
        this.f2187i = i9;
        this.f2188j = i10;
    }

    @Override // androidx.camera.core.impl.EncoderProfilesProxy.VideoProfileProxy
    public final int b() {
        return this.f2186h;
    }

    @Override // androidx.camera.core.impl.EncoderProfilesProxy.VideoProfileProxy
    public final int c() {
        return this.f2183c;
    }

    @Override // androidx.camera.core.impl.EncoderProfilesProxy.VideoProfileProxy
    public final int d() {
        return this.f2187i;
    }

    @Override // androidx.camera.core.impl.EncoderProfilesProxy.VideoProfileProxy
    public final int e() {
        return this.f2181a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof EncoderProfilesProxy.VideoProfileProxy)) {
            return false;
        }
        EncoderProfilesProxy.VideoProfileProxy videoProfileProxy = (EncoderProfilesProxy.VideoProfileProxy) obj;
        return this.f2181a == videoProfileProxy.e() && this.f2182b.equals(videoProfileProxy.i()) && this.f2183c == videoProfileProxy.c() && this.d == videoProfileProxy.f() && this.f2184e == videoProfileProxy.l() && this.f2185f == videoProfileProxy.h() && this.g == videoProfileProxy.j() && this.f2186h == videoProfileProxy.b() && this.f2187i == videoProfileProxy.d() && this.f2188j == videoProfileProxy.g();
    }

    @Override // androidx.camera.core.impl.EncoderProfilesProxy.VideoProfileProxy
    public final int f() {
        return this.d;
    }

    @Override // androidx.camera.core.impl.EncoderProfilesProxy.VideoProfileProxy
    public final int g() {
        return this.f2188j;
    }

    @Override // androidx.camera.core.impl.EncoderProfilesProxy.VideoProfileProxy
    public final int h() {
        return this.f2185f;
    }

    public final int hashCode() {
        return this.f2188j ^ ((((((((((((((((((this.f2181a ^ 1000003) * 1000003) ^ this.f2182b.hashCode()) * 1000003) ^ this.f2183c) * 1000003) ^ this.d) * 1000003) ^ this.f2184e) * 1000003) ^ this.f2185f) * 1000003) ^ this.g) * 1000003) ^ this.f2186h) * 1000003) ^ this.f2187i) * 1000003);
    }

    @Override // androidx.camera.core.impl.EncoderProfilesProxy.VideoProfileProxy
    public final String i() {
        return this.f2182b;
    }

    @Override // androidx.camera.core.impl.EncoderProfilesProxy.VideoProfileProxy
    public final int j() {
        return this.g;
    }

    @Override // androidx.camera.core.impl.EncoderProfilesProxy.VideoProfileProxy
    public final int l() {
        return this.f2184e;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("VideoProfileProxy{codec=");
        sb.append(this.f2181a);
        sb.append(", mediaType=");
        sb.append(this.f2182b);
        sb.append(", bitrate=");
        sb.append(this.f2183c);
        sb.append(", frameRate=");
        sb.append(this.d);
        sb.append(", width=");
        sb.append(this.f2184e);
        sb.append(", height=");
        sb.append(this.f2185f);
        sb.append(", profile=");
        sb.append(this.g);
        sb.append(", bitDepth=");
        sb.append(this.f2186h);
        sb.append(", chromaSubsampling=");
        sb.append(this.f2187i);
        sb.append(", hdrFormat=");
        return defpackage.a.i(this.f2188j, "}", sb);
    }
}
