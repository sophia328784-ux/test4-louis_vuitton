package androidx.media3.extractor;

/* JADX INFO: loaded from: classes.dex */
public interface ExtractorOutput {
    public static final ExtractorOutput g0 = new AnonymousClass1();

    /* JADX INFO: renamed from: androidx.media3.extractor.ExtractorOutput$1, reason: invalid class name */
    public class AnonymousClass1 implements ExtractorOutput {
        @Override // androidx.media3.extractor.ExtractorOutput
        public final void j(SeekMap seekMap) {
            throw new UnsupportedOperationException();
        }

        @Override // androidx.media3.extractor.ExtractorOutput
        public final void n() {
            throw new UnsupportedOperationException();
        }

        @Override // androidx.media3.extractor.ExtractorOutput
        public final TrackOutput r(int i2, int i3) {
            throw new UnsupportedOperationException();
        }
    }

    void j(SeekMap seekMap);

    void n();

    TrackOutput r(int i2, int i3);
}
