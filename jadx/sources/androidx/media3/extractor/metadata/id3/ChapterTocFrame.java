package androidx.media3.extractor.metadata.id3;

import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class ChapterTocFrame extends Id3Frame {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f16370b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f16371c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String[] f16372e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Id3Frame[] f16373f;

    public ChapterTocFrame(String str, boolean z, boolean z2, String[] strArr, Id3Frame[] id3FrameArr) {
        super("CTOC");
        this.f16370b = str;
        this.f16371c = z;
        this.d = z2;
        this.f16372e = strArr;
        this.f16373f = id3FrameArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && ChapterTocFrame.class == obj.getClass()) {
            ChapterTocFrame chapterTocFrame = (ChapterTocFrame) obj;
            if (this.f16371c == chapterTocFrame.f16371c && this.d == chapterTocFrame.d && Objects.equals(this.f16370b, chapterTocFrame.f16370b) && Arrays.equals(this.f16372e, chapterTocFrame.f16372e) && Arrays.equals(this.f16373f, chapterTocFrame.f16373f)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i2 = (((527 + (this.f16371c ? 1 : 0)) * 31) + (this.d ? 1 : 0)) * 31;
        String str = this.f16370b;
        return i2 + (str != null ? str.hashCode() : 0);
    }
}
