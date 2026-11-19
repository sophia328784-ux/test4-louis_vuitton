package androidx.media3.extractor.mp3;

import androidx.media3.extractor.SeekMap;

/* JADX INFO: loaded from: classes.dex */
interface Seeker extends SeekMap {

    public static class UnseekableSeeker extends SeekMap.Unseekable implements Seeker {
        public UnseekableSeeker() {
            super(-9223372036854775807L);
        }

        @Override // androidx.media3.extractor.mp3.Seeker
        public final long a() {
            return 0L;
        }

        @Override // androidx.media3.extractor.mp3.Seeker
        public final long d() {
            return -1L;
        }

        @Override // androidx.media3.extractor.mp3.Seeker
        public final long f(long j2) {
            return 0L;
        }

        @Override // androidx.media3.extractor.mp3.Seeker
        public final int g() {
            return -2147483647;
        }
    }

    long a();

    long d();

    long f(long j2);

    int g();
}
