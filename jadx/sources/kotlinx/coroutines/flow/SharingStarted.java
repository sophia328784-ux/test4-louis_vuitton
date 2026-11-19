package kotlinx.coroutines.flow;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\bæ\u0080\u0001\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003À\u0006\u0003"}, d2 = {"Lkotlinx/coroutines/flow/SharingStarted;", "", "Companion", "kotlinx-coroutines-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public interface SharingStarted {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Companion f74985a = Companion.f74986a;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lkotlinx/coroutines/flow/SharingStarted$Companion;", "", "kotlinx-coroutines-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Companion {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Companion f74986a = new Companion();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final SharingStarted f74987b = new StartedEagerly();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final SharingStarted f74988c = new StartedLazily();

        public static SharingStarted a(Companion companion, int i2) {
            long j2 = (i2 & 2) != 0 ? Long.MAX_VALUE : 0L;
            companion.getClass();
            return new StartedWhileSubscribed(0L, j2);
        }
    }

    Flow a(StateFlow stateFlow);
}
