package net.rtccloud.sdk.util;

import defpackage.d21;
import defpackage.tr;

/* JADX INFO: loaded from: classes4.dex */
public final class EncodingParameters {

    public static final class Video {
        private final boolean noiseSensitivity;
        private final int threads;
        private final int vp8CpuUsage;

        public static final class Builder {
            private int vp8CpuUsage = -4;
            private int threads = 0;
            private boolean noiseSensitivity = false;

            public Video build() {
                return new Video(this.vp8CpuUsage, this.threads, this.noiseSensitivity);
            }

            public Builder noiseSensitivity(boolean z) {
                this.noiseSensitivity = z;
                return this;
            }

            public Builder threads(int i2) {
                this.threads = i2;
                return this;
            }

            public Builder vp8CpuUsage(int i2) {
                this.vp8CpuUsage = i2;
                return this;
            }
        }

        public Video(int i2, int i3, boolean z) {
            this.vp8CpuUsage = i2;
            this.threads = i3;
            this.noiseSensitivity = z;
        }

        public boolean noiseSensitivity() {
            return this.noiseSensitivity;
        }

        public int threads() {
            return this.threads;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("Video{vp8CpuUsage=");
            sb.append(this.vp8CpuUsage);
            sb.append(", threads=");
            sb.append(this.threads);
            sb.append(", noiseSensitivity=");
            return d21.q(sb, this.noiseSensitivity, '}');
        }

        public int vp8CpuUsage() {
            return this.vp8CpuUsage;
        }
    }

    private EncodingParameters() {
    }

    public static Audio.Builder audio() {
        return new Audio.Builder();
    }

    public static Video.Builder video() {
        return new Video.Builder();
    }

    public static final class Audio {
        private final int opusBitrate;
        private final int opusComplexity;

        public static final class Builder {
            private int opusBitrate;
            private int opusComplexity;

            public Audio build() {
                return new Audio(this.opusComplexity, this.opusBitrate, 0);
            }

            public Builder opusBitrate(int i2) {
                this.opusBitrate = i2;
                return this;
            }

            public Builder opusComplexity(int i2) {
                this.opusComplexity = i2;
                return this;
            }
        }

        private Audio(int i2, int i3) {
            this.opusComplexity = i2;
            this.opusBitrate = i3;
        }

        public int opusBitrate() {
            return this.opusBitrate;
        }

        public int opusComplexity() {
            return this.opusComplexity;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("Audio{opusComplexity=");
            sb.append(this.opusComplexity);
            sb.append(", opusBitrate=");
            return tr.k(sb, this.opusBitrate, '}');
        }

        public /* synthetic */ Audio(int i2, int i3, int i4) {
            this(i2, i3);
        }
    }
}
