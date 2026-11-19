package androidx.media3.extractor.metadata.icy;

import androidx.media3.common.MediaMetadata;
import androidx.media3.common.Metadata;
import defpackage.a;
import defpackage.fc;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class IcyInfo implements Metadata.Entry {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[] f16359a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f16360b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f16361c;

    public IcyInfo(byte[] bArr, String str, String str2) {
        this.f16359a = bArr;
        this.f16360b = str;
        this.f16361c = str2;
    }

    @Override // androidx.media3.common.Metadata.Entry
    public final void b(MediaMetadata.Builder builder) {
        String str = this.f16360b;
        if (str != null) {
            builder.f13888a = str;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || IcyInfo.class != obj.getClass()) {
            return false;
        }
        return Arrays.equals(this.f16359a, ((IcyInfo) obj).f16359a);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f16359a);
    }

    public final String toString() {
        return a.i(this.f16359a.length, "\"", fc.s("ICY: title=\"", this.f16360b, "\", url=\"", this.f16361c, "\", rawMetadata.length=\""));
    }
}
