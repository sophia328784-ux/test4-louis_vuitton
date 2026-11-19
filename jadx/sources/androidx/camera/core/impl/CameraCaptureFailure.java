package androidx.camera.core.impl;

/* JADX INFO: loaded from: classes.dex */
public class CameraCaptureFailure {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Reason f2223a;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class Reason {
        private static final /* synthetic */ Reason[] $VALUES;
        public static final Reason ERROR;

        static {
            Reason reason = new Reason("ERROR", 0);
            ERROR = reason;
            $VALUES = new Reason[]{reason};
        }

        public static Reason valueOf(String str) {
            return (Reason) Enum.valueOf(Reason.class, str);
        }

        public static Reason[] values() {
            return (Reason[]) $VALUES.clone();
        }
    }

    public CameraCaptureFailure(Reason reason) {
        this.f2223a = reason;
    }
}
