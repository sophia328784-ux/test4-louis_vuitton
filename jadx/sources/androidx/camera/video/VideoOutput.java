package androidx.camera.video;

import androidx.camera.core.CameraInfo;
import androidx.camera.core.SurfaceRequest;
import androidx.camera.core.impl.ConstantObservable;
import androidx.camera.core.impl.Observable;
import androidx.camera.core.impl.Timebase;

/* JADX INFO: loaded from: classes.dex */
public interface VideoOutput {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class SourceState {
        private static final /* synthetic */ SourceState[] $VALUES;
        public static final SourceState ACTIVE_NON_STREAMING;
        public static final SourceState ACTIVE_STREAMING;
        public static final SourceState INACTIVE;

        static {
            SourceState sourceState = new SourceState("ACTIVE_STREAMING", 0);
            ACTIVE_STREAMING = sourceState;
            SourceState sourceState2 = new SourceState("ACTIVE_NON_STREAMING", 1);
            ACTIVE_NON_STREAMING = sourceState2;
            SourceState sourceState3 = new SourceState("INACTIVE", 2);
            INACTIVE = sourceState3;
            $VALUES = new SourceState[]{sourceState, sourceState2, sourceState3};
        }

        public static SourceState valueOf(String str) {
            return (SourceState) Enum.valueOf(SourceState.class, str);
        }

        public static SourceState[] values() {
            return (SourceState[]) $VALUES.clone();
        }
    }

    void a(SurfaceRequest surfaceRequest);

    default Observable b() {
        return ConstantObservable.f2281b;
    }

    default Observable c() {
        return StreamInfo.f2828c;
    }

    default void d(SourceState sourceState) {
    }

    default VideoCapabilities e(CameraInfo cameraInfo, int i2) {
        return VideoCapabilities.f2829a;
    }

    default Observable f() {
        return new ConstantObservable(Boolean.FALSE);
    }

    default void g(SurfaceRequest surfaceRequest, Timebase timebase, boolean z) {
        a(surfaceRequest);
    }
}
