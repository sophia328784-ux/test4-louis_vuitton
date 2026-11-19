package androidx.camera.core;

/* JADX INFO: loaded from: classes.dex */
public abstract class CameraState {

    public static abstract class StateError {
        public static StateError a(int i2) {
            return new AutoValue_CameraState_StateError(i2, null);
        }

        public static StateError b(int i2, Throwable th) {
            return new AutoValue_CameraState_StateError(i2, th);
        }

        public abstract Throwable c();

        public abstract int d();
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class Type {
        private static final /* synthetic */ Type[] $VALUES;
        public static final Type CLOSED;
        public static final Type CLOSING;
        public static final Type OPEN;
        public static final Type OPENING;
        public static final Type PENDING_OPEN;

        static {
            Type type = new Type("PENDING_OPEN", 0);
            PENDING_OPEN = type;
            Type type2 = new Type("OPENING", 1);
            OPENING = type2;
            Type type3 = new Type("OPEN", 2);
            OPEN = type3;
            Type type4 = new Type("CLOSING", 3);
            CLOSING = type4;
            Type type5 = new Type("CLOSED", 4);
            CLOSED = type5;
            $VALUES = new Type[]{type, type2, type3, type4, type5};
        }

        public static Type valueOf(String str) {
            return (Type) Enum.valueOf(Type.class, str);
        }

        public static Type[] values() {
            return (Type[]) $VALUES.clone();
        }
    }

    public static CameraState a(Type type) {
        return new AutoValue_CameraState(type, null);
    }

    public static CameraState b(Type type, StateError stateError) {
        return new AutoValue_CameraState(type, stateError);
    }

    public abstract StateError c();

    public abstract Type d();
}
