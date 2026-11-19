package androidx.camera.video;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes.dex */
public abstract class VideoRecordEvent {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final OutputOptions f2853a;

    public static final class Finalize extends VideoRecordEvent {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f2854b;

        @Retention(RetentionPolicy.SOURCE)
        public @interface VideoRecordError {
        }

        public Finalize(OutputOptions outputOptions, RecordingStats recordingStats, int i2) {
            super(outputOptions, recordingStats);
            this.f2854b = i2;
        }
    }

    public static final class Pause extends VideoRecordEvent {
    }

    public static final class Resume extends VideoRecordEvent {
    }

    public static final class Start extends VideoRecordEvent {
    }

    public static final class Status extends VideoRecordEvent {
    }

    public VideoRecordEvent(OutputOptions outputOptions, RecordingStats recordingStats) {
        outputOptions.getClass();
        this.f2853a = outputOptions;
    }
}
