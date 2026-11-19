package androidx.media3.extractor.metadata.id3;

import androidx.media3.common.MediaMetadata;
import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class ApicFrame extends Id3Frame {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f16362b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f16363c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final byte[] f16364e;

    public ApicFrame(String str, String str2, int i2, byte[] bArr) {
        super("APIC");
        this.f16362b = str;
        this.f16363c = str2;
        this.d = i2;
        this.f16364e = bArr;
    }

    @Override // androidx.media3.common.Metadata.Entry
    public final void b(MediaMetadata.Builder builder) {
        builder.a(this.d, this.f16364e);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && ApicFrame.class == obj.getClass()) {
            ApicFrame apicFrame = (ApicFrame) obj;
            if (this.d == apicFrame.d && Objects.equals(this.f16362b, apicFrame.f16362b) && Objects.equals(this.f16363c, apicFrame.f16363c) && Arrays.equals(this.f16364e, apicFrame.f16364e)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i2 = (527 + this.d) * 31;
        String str = this.f16362b;
        int iHashCode = (i2 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f16363c;
        return Arrays.hashCode(this.f16364e) + ((iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31);
    }

    @Override // androidx.media3.extractor.metadata.id3.Id3Frame
    public final String toString() {
        return this.f16384a + ": mimeType=" + this.f16362b + ", description=" + this.f16363c;
    }
}
