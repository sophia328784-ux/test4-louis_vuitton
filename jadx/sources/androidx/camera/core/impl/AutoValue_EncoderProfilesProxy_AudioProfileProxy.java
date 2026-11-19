package androidx.camera.core.impl;

import defpackage.r81;

/* JADX INFO: loaded from: classes.dex */
final class AutoValue_EncoderProfilesProxy_AudioProfileProxy extends EncoderProfilesProxy.AudioProfileProxy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f2173a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f2174b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f2175c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f2176e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f2177f;

    public AutoValue_EncoderProfilesProxy_AudioProfileProxy(int i2, String str, int i3, int i4, int i5, int i6) {
        this.f2173a = i2;
        if (str == null) {
            r81.d("Null mediaType");
            throw null;
        }
        this.f2174b = str;
        this.f2175c = i3;
        this.d = i4;
        this.f2176e = i5;
        this.f2177f = i6;
    }

    @Override // androidx.camera.core.impl.EncoderProfilesProxy.AudioProfileProxy
    public final int b() {
        return this.f2175c;
    }

    @Override // androidx.camera.core.impl.EncoderProfilesProxy.AudioProfileProxy
    public final int c() {
        return this.f2176e;
    }

    @Override // androidx.camera.core.impl.EncoderProfilesProxy.AudioProfileProxy
    public final int d() {
        return this.f2173a;
    }

    @Override // androidx.camera.core.impl.EncoderProfilesProxy.AudioProfileProxy
    public final String e() {
        return this.f2174b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof EncoderProfilesProxy.AudioProfileProxy)) {
            return false;
        }
        EncoderProfilesProxy.AudioProfileProxy audioProfileProxy = (EncoderProfilesProxy.AudioProfileProxy) obj;
        return this.f2173a == audioProfileProxy.d() && this.f2174b.equals(audioProfileProxy.e()) && this.f2175c == audioProfileProxy.b() && this.d == audioProfileProxy.g() && this.f2176e == audioProfileProxy.c() && this.f2177f == audioProfileProxy.f();
    }

    @Override // androidx.camera.core.impl.EncoderProfilesProxy.AudioProfileProxy
    public final int f() {
        return this.f2177f;
    }

    @Override // androidx.camera.core.impl.EncoderProfilesProxy.AudioProfileProxy
    public final int g() {
        return this.d;
    }

    public final int hashCode() {
        return this.f2177f ^ ((((((((((this.f2173a ^ 1000003) * 1000003) ^ this.f2174b.hashCode()) * 1000003) ^ this.f2175c) * 1000003) ^ this.d) * 1000003) ^ this.f2176e) * 1000003);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AudioProfileProxy{codec=");
        sb.append(this.f2173a);
        sb.append(", mediaType=");
        sb.append(this.f2174b);
        sb.append(", bitrate=");
        sb.append(this.f2175c);
        sb.append(", sampleRate=");
        sb.append(this.d);
        sb.append(", channels=");
        sb.append(this.f2176e);
        sb.append(", profile=");
        return defpackage.a.i(this.f2177f, "}", sb);
    }
}
