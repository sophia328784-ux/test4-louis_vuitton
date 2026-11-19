package com.bumptech.glide.load.model;

import android.net.Uri;
import android.text.TextUtils;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.util.Preconditions;
import defpackage.md;
import java.net.URL;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes2.dex */
public class GlideUrl implements Key {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Headers f24656b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final URL f24657c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f24658e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public URL f24659f;
    public volatile byte[] g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f24660h;

    public GlideUrl(String str, Headers headers) {
        this.f24657c = null;
        if (TextUtils.isEmpty(str)) {
            md.n("Must not be null or empty");
            throw null;
        }
        this.d = str;
        Preconditions.c(headers, "Argument must not be null");
        this.f24656b = headers;
    }

    @Override // com.bumptech.glide.load.Key
    public final void b(MessageDigest messageDigest) {
        if (this.g == null) {
            this.g = c().getBytes(Key.f24395a);
        }
        messageDigest.update(this.g);
    }

    public final String c() {
        String str = this.d;
        if (str != null) {
            return str;
        }
        URL url = this.f24657c;
        Preconditions.c(url, "Argument must not be null");
        return url.toString();
    }

    public final URL d() {
        if (this.f24659f == null) {
            if (TextUtils.isEmpty(this.f24658e)) {
                String string = this.d;
                if (TextUtils.isEmpty(string)) {
                    URL url = this.f24657c;
                    Preconditions.c(url, "Argument must not be null");
                    string = url.toString();
                }
                this.f24658e = Uri.encode(string, "@#&=*+-_.,:!?()/~'%;$[]");
            }
            this.f24659f = new URL(this.f24658e);
        }
        return this.f24659f;
    }

    @Override // com.bumptech.glide.load.Key
    public final boolean equals(Object obj) {
        if (obj instanceof GlideUrl) {
            GlideUrl glideUrl = (GlideUrl) obj;
            if (c().equals(glideUrl.c()) && this.f24656b.equals(glideUrl.f24656b)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.bumptech.glide.load.Key
    public final int hashCode() {
        if (this.f24660h == 0) {
            int iHashCode = c().hashCode();
            this.f24660h = iHashCode;
            this.f24660h = this.f24656b.hashCode() + (iHashCode * 31);
        }
        return this.f24660h;
    }

    public final String toString() {
        return c();
    }

    public GlideUrl(String str) {
        this(str, Headers.f24661a);
    }

    public GlideUrl(URL url, Headers headers) {
        Preconditions.c(url, "Argument must not be null");
        this.f24657c = url;
        this.d = null;
        Preconditions.c(headers, "Argument must not be null");
        this.f24656b = headers;
    }

    public GlideUrl(URL url) {
        this(url, Headers.f24661a);
    }
}
