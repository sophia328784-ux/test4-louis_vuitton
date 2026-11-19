package androidx.camera.video;

import androidx.camera.core.impl.ConstantObservable;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public abstract class StreamInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final StreamInfo f2826a = new AutoValue_StreamInfo(0, StreamState.INACTIVE, null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Set f2827b = Collections.unmodifiableSet(new HashSet(Arrays.asList(0, -1)));

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ConstantObservable f2828c = new ConstantObservable(new AutoValue_StreamInfo(0, StreamState.ACTIVE, null));

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class StreamState {
        private static final /* synthetic */ StreamState[] $VALUES;
        public static final StreamState ACTIVE;
        public static final StreamState INACTIVE;

        static {
            StreamState streamState = new StreamState("ACTIVE", 0);
            ACTIVE = streamState;
            StreamState streamState2 = new StreamState("INACTIVE", 1);
            INACTIVE = streamState2;
            $VALUES = new StreamState[]{streamState, streamState2};
        }

        public static StreamState valueOf(String str) {
            return (StreamState) Enum.valueOf(StreamState.class, str);
        }

        public static StreamState[] values() {
            return (StreamState[]) $VALUES.clone();
        }
    }
}
