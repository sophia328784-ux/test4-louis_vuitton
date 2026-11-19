package androidx.work;

/* JADX INFO: loaded from: classes.dex */
public interface Operation {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final State.SUCCESS f20265a = new State.SUCCESS();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final State.IN_PROGRESS f20266b = new State.IN_PROGRESS();

    public static abstract class State {

        public static final class FAILURE extends State {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f20267a;

            public FAILURE(Throwable th) {
                this.f20267a = th;
            }

            public final String toString() {
                return "FAILURE (" + this.f20267a.getMessage() + ")";
            }
        }

        public static final class IN_PROGRESS extends State {
            public final String toString() {
                return "IN_PROGRESS";
            }
        }

        public static final class SUCCESS extends State {
            public final String toString() {
                return "SUCCESS";
            }
        }
    }
}
