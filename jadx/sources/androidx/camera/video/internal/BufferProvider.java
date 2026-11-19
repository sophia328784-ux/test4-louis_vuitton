package androidx.camera.video.internal;

import androidx.camera.core.impl.Observable;
import com.google.common.util.concurrent.ListenableFuture;

/* JADX INFO: loaded from: classes.dex */
public interface BufferProvider<T> extends Observable<State> {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class State {
        private static final /* synthetic */ State[] $VALUES;
        public static final State ACTIVE;
        public static final State INACTIVE;

        static {
            State state = new State("ACTIVE", 0);
            ACTIVE = state;
            State state2 = new State("INACTIVE", 1);
            INACTIVE = state2;
            $VALUES = new State[]{state, state2};
        }

        public static State valueOf(String str) {
            return (State) Enum.valueOf(State.class, str);
        }

        public static State[] values() {
            return (State[]) $VALUES.clone();
        }
    }

    ListenableFuture e();
}
