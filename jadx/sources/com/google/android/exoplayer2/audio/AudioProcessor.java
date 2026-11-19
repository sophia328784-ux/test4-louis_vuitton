package com.google.android.exoplayer2.audio;

import com.google.android.exoplayer2.util.Util;
import defpackage.ct0;
import defpackage.tr;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public interface AudioProcessor {

    public static final class AudioFormat {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f28197a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f28198b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f28199c;

        static {
            new AudioFormat(-1, -1, -1);
        }

        public AudioFormat(int i2, int i3, int i4) {
            this.f28197a = i2;
            this.f28198b = i3;
            this.f28199c = i4;
            int i5 = Util.f28451a;
            if ((i4 != 3 && i4 != 2 && i4 != 268435456 && i4 != 536870912 && i4 != 805306368 && i4 != 4) || i4 == 2 || i4 == 3 || i4 == 4 || i4 == 268435456 || i4 == 536870912 || i4 == 805306368) {
                return;
            }
            ct0.c();
            throw null;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof AudioFormat)) {
                return false;
            }
            AudioFormat audioFormat = (AudioFormat) obj;
            return this.f28197a == audioFormat.f28197a && this.f28198b == audioFormat.f28198b && this.f28199c == audioFormat.f28199c;
        }

        public final int hashCode() {
            return Objects.hash(Integer.valueOf(this.f28197a), Integer.valueOf(this.f28198b), Integer.valueOf(this.f28199c));
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("AudioFormat[sampleRate=");
            sb.append(this.f28197a);
            sb.append(", channelCount=");
            sb.append(this.f28198b);
            sb.append(", encoding=");
            return tr.k(sb, this.f28199c, ']');
        }
    }

    public static final class UnhandledAudioFormatException extends Exception {
        public UnhandledAudioFormatException(String str, AudioFormat audioFormat) {
            super(str + " " + audioFormat);
        }

        public UnhandledAudioFormatException(AudioFormat audioFormat) {
            this("Unhandled input format:", audioFormat);
        }
    }
}
