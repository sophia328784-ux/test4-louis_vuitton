package androidx.media3.extractor.metadata.emsg;

import androidx.media3.common.Format;
import androidx.media3.common.Metadata;
import androidx.media3.common.MimeTypes;
import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class EventMessage implements Metadata.Entry {
    public static final Format g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Format f16337h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f16338a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f16339b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f16340c;
    public final long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final byte[] f16341e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f16342f;

    static {
        Format.Builder builder = new Format.Builder();
        builder.n = MimeTypes.p("application/id3");
        g = new Format(builder);
        Format.Builder builder2 = new Format.Builder();
        builder2.n = MimeTypes.p("application/x-scte35");
        f16337h = new Format(builder2);
    }

    public EventMessage(String str, String str2, long j2, long j3, byte[] bArr) {
        this.f16338a = str;
        this.f16339b = str2;
        this.f16340c = j2;
        this.d = j3;
        this.f16341e = bArr;
    }

    @Override // androidx.media3.common.Metadata.Entry
    public final Format a() {
        String str = this.f16338a;
        str.getClass();
        switch (str) {
            case "urn:scte:scte35:2014:bin":
                return f16337h;
            case "https://aomedia.org/emsg/ID3":
            case "https://developer.apple.com/streaming/emsg-id3":
                return g;
            default:
                return null;
        }
    }

    @Override // androidx.media3.common.Metadata.Entry
    public final byte[] c() {
        if (a() != null) {
            return this.f16341e;
        }
        return null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && EventMessage.class == obj.getClass()) {
            EventMessage eventMessage = (EventMessage) obj;
            if (this.f16340c == eventMessage.f16340c && this.d == eventMessage.d && Objects.equals(this.f16338a, eventMessage.f16338a) && Objects.equals(this.f16339b, eventMessage.f16339b) && Arrays.equals(this.f16341e, eventMessage.f16341e)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        if (this.f16342f == 0) {
            String str = this.f16338a;
            int iHashCode = (527 + (str != null ? str.hashCode() : 0)) * 31;
            String str2 = this.f16339b;
            int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
            long j2 = this.f16340c;
            int i2 = (iHashCode2 + ((int) (j2 ^ (j2 >>> 32)))) * 31;
            long j3 = this.d;
            this.f16342f = Arrays.hashCode(this.f16341e) + ((i2 + ((int) (j3 ^ (j3 >>> 32)))) * 31);
        }
        return this.f16342f;
    }

    public final String toString() {
        return "EMSG: scheme=" + this.f16338a + ", id=" + this.d + ", durationMs=" + this.f16340c + ", value=" + this.f16339b;
    }
}
