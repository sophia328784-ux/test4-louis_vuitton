package androidx.media3.extractor.text;

import androidx.media3.common.Format;
import androidx.media3.common.util.Consumer;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.UnmodifiableListIterator;
import defpackage.ln0;

/* JADX INFO: loaded from: classes.dex */
public interface SubtitleParser {

    public interface Factory {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Factory f16683a = new AnonymousClass1();

        /* JADX INFO: renamed from: androidx.media3.extractor.text.SubtitleParser$Factory$1, reason: invalid class name */
        public class AnonymousClass1 implements Factory {
            @Override // androidx.media3.extractor.text.SubtitleParser.Factory
            public final int a(Format format) {
                return 1;
            }

            @Override // androidx.media3.extractor.text.SubtitleParser.Factory
            public final boolean b(Format format) {
                return false;
            }

            @Override // androidx.media3.extractor.text.SubtitleParser.Factory
            public final SubtitleParser c(Format format) {
                throw new IllegalStateException("This SubtitleParser.Factory doesn't support any formats.");
            }
        }

        int a(Format format);

        boolean b(Format format);

        SubtitleParser c(Format format);
    }

    public static class OutputOptions {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final OutputOptions f16684c = new OutputOptions(-9223372036854775807L, false);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f16685a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f16686b;

        public OutputOptions(long j2, boolean z) {
            this.f16685a = j2;
            this.f16686b = z;
        }
    }

    void a(byte[] bArr, int i2, int i3, OutputOptions outputOptions, Consumer consumer);

    default Subtitle b(int i2, int i3, byte[] bArr) {
        UnmodifiableListIterator unmodifiableListIterator = ImmutableList.f33587c;
        ImmutableList.Builder builder = new ImmutableList.Builder();
        a(bArr, 0, i3, OutputOptions.f16684c, new ln0(builder, 16));
        return new CuesWithTimingSubtitle(builder.j());
    }

    int c();

    default void reset() {
    }
}
