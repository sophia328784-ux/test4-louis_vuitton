package androidx.datastore.preferences.protobuf;

import defpackage.r81;

/* JADX INFO: loaded from: classes.dex */
public class LazyFieldLite {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ByteString f12953a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ExtensionRegistryLite f12954b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile MessageLite f12955c;
    public volatile ByteString d;

    public LazyFieldLite(ExtensionRegistryLite extensionRegistryLite, ByteString byteString) {
        if (extensionRegistryLite == null) {
            r81.d("found null ExtensionRegistry");
            throw null;
        }
        if (byteString == null) {
            r81.d("found null ByteString");
            throw null;
        }
        this.f12954b = extensionRegistryLite;
        this.f12953a = byteString;
    }

    public final MessageLite a(MessageLite messageLite) {
        if (this.f12955c == null) {
            synchronized (this) {
                if (this.f12955c == null) {
                    try {
                        if (this.f12953a != null) {
                            this.f12955c = messageLite.g().a(this.f12954b, this.f12953a);
                            this.d = this.f12953a;
                        } else {
                            this.f12955c = messageLite;
                            this.d = ByteString.f12895c;
                        }
                    } catch (InvalidProtocolBufferException unused) {
                        this.f12955c = messageLite;
                        this.d = ByteString.f12895c;
                    }
                }
            }
        }
        return this.f12955c;
    }

    public final ByteString b() {
        if (this.d != null) {
            return this.d;
        }
        ByteString byteString = this.f12953a;
        if (byteString != null) {
            return byteString;
        }
        synchronized (this) {
            try {
                if (this.d != null) {
                    return this.d;
                }
                if (this.f12955c == null) {
                    this.d = ByteString.f12895c;
                } else {
                    this.d = this.f12955c.e();
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
        MessageLite messageLite = this.f12955c;
        MessageLite messageLite2 = lazyFieldLite.f12955c;
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
