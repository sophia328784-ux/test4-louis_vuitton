package com.google.android.exoplayer2.audio;

import com.google.android.exoplayer2.Format;
import defpackage.fc;
import defpackage.pq0;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public interface AudioSink {

    public static final class InitializationException extends Exception {
        /* JADX WARN: Illegal instructions before constructor call */
        public InitializationException(int i2, int i3, int i4, int i5, Format format, boolean z, Exception exc) {
            StringBuilder sbP = fc.p(i2, i3, "AudioTrack init failed ", " Config(", ", ");
            fc.x(i4, i5, ", ", ") ", sbP);
            sbP.append(format);
            sbP.append(z ? " (recoverable)" : "");
            super(sbP.toString(), exc);
        }
    }

    public interface Listener {
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface SinkFormatSupport {
    }

    public static final class UnexpectedDiscontinuityException extends Exception {
        /* JADX WARN: Illegal instructions before constructor call */
        public UnexpectedDiscontinuityException(long j2, long j3) {
            StringBuilder sbQ = pq0.q(j3, "Unexpected audio track timestamp discontinuity: expected ", ", got ");
            sbQ.append(j2);
            super(sbQ.toString());
        }
    }

    public static final class WriteException extends Exception {
        public WriteException(int i2, Format format, boolean z) {
            super(pq0.k(i2, "AudioTrack write failed: "));
        }
    }

    public static final class ConfigurationException extends Exception {
        public ConfigurationException(Throwable th, Format format) {
            super(th);
        }

        public ConfigurationException(String str, Format format) {
            super(str);
        }
    }
}
