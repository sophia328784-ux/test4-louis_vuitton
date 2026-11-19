package com.google.crypto.tink.shaded.protobuf;

import defpackage.r81;

/* JADX INFO: loaded from: classes2.dex */
public class LazyFieldLite {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ByteString f34196a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ExtensionRegistryLite f34197b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile MessageLite f34198c;
    public volatile ByteString d;

    static {
        ExtensionRegistryLite.b();
    }

    public LazyFieldLite(ExtensionRegistryLite extensionRegistryLite, ByteString byteString) {
        if (extensionRegistryLite == null) {
            r81.d("found null ExtensionRegistry");
            throw null;
        }
        if (byteString == null) {
            r81.d("found null ByteString");
            throw null;
        }
        this.f34197b = extensionRegistryLite;
        this.f34196a = byteString;
    }

    public final MessageLite a(MessageLite messageLite) {
        if (this.f34198c == null) {
            synchronized (this) {
                if (this.f34198c == null) {
                    try {
                        if (this.f34196a != null) {
                            this.f34198c = messageLite.g().a(this.f34197b, this.f34196a);
                            this.d = this.f34196a;
                        } else {
                            this.f34198c = messageLite;
                            this.d = ByteString.f34141c;
                        }
                    } catch (InvalidProtocolBufferException unused) {
                        this.f34198c = messageLite;
                        this.d = ByteString.f34141c;
                    }
                }
            }
        }
        return this.f34198c;
    }

    public final ByteString b() {
        if (this.d != null) {
            return this.d;
        }
        ByteString byteString = this.f34196a;
        if (byteString != null) {
            return byteString;
        }
        synchronized (this) {
            try {
                if (this.d != null) {
                    return this.d;
                }
                if (this.f34198c == null) {
                    this.d = ByteString.f34141c;
                } else {
                    this.d = this.f34198c.e();
                }
                return this.d;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LazyFieldLite)) {
            return false;
        }
        LazyFieldLite lazyFieldLite = (LazyFieldLite) obj;
        MessageLite messageLite = this.f34198c;
        MessageLite messageLite2 = lazyFieldLite.f34198c;
        if (messageLite == null && messageLite2 == null) {
            return b().equals(lazyFieldLite.b());
        }
        if (messageLite == null || messageLite2 == null) {
            return messageLite != null ? messageLite.equals(lazyFieldLite.a(messageLite.f())) : a(messageLite2.f()).equals(messageLite2);
        }
        return messageLite.equals(messageLite2);
    }

    public int hashCode() {
        return 1;
    }

    public LazyFieldLite() {
    }
}
