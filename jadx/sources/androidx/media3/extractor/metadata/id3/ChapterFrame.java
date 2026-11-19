package androidx.media3.extractor.metadata.id3;

import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class ChapterFrame extends Id3Frame {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f16366b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f16367c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f16368e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f16369f;
    public final Id3Frame[] g;

    public ChapterFrame(String str, int i2, int i3, long j2, long j3, Id3Frame[] id3FrameArr) {
        super("CHAP");
        this.f16366b = str;
        this.f16367c = i2;
        this.d = i3;
        this.f16368e = j2;
        this.f16369f = j3;
        this.g = id3FrameArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && ChapterFrame.class == obj.getClass()) {
            ChapterFrame chapterFrame = (ChapterFrame) obj;
            if (this.f16367c == chapterFrame.f16367c && this.d == chapterFrame.d && this.f16368e == chapterFrame.f16368e && this.f16369f == chapterFrame.f16369f && Objects.equals(this.f16366b, chapterFrame.f16366b) && Arrays.equals(this.g, chapterFrame.g)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i2 = (((((((527 + this.f16367c) * 31) + this.d) * 31) + ((int) this.f16368e)) * 31) + ((int) this.f16369f)) * 31;
        String str = this.f16366b;
        return i2 + (str != null ? str.hashCode() : 0);
    }
}
