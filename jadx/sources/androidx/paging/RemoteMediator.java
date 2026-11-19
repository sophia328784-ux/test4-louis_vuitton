package androidx.paging;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0007\b'\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u0001*\b\b\u0001\u0010\u0003*\u00020\u00012\u00020\u0001:\u0002\u0006\u0007B\u0007¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\b"}, d2 = {"Landroidx/paging/RemoteMediator;", "", "Key", "Value", "<init>", "()V", "InitializeAction", "MediatorResult", "paging-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public abstract class RemoteMediator<Key, Value> {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Landroidx/paging/RemoteMediator$InitializeAction;", "", "LAUNCH_INITIAL_REFRESH", "SKIP_INITIAL_REFRESH", "paging-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class InitializeAction {
        private static final /* synthetic */ InitializeAction[] $VALUES;
        public static final InitializeAction LAUNCH_INITIAL_REFRESH;
        public static final InitializeAction SKIP_INITIAL_REFRESH;

        static {
            InitializeAction initializeAction = new InitializeAction("LAUNCH_INITIAL_REFRESH", 0);
            LAUNCH_INITIAL_REFRESH = initializeAction;
            InitializeAction initializeAction2 = new InitializeAction("SKIP_INITIAL_REFRESH", 1);
            SKIP_INITIAL_REFRESH = initializeAction2;
            $VALUES = new InitializeAction[]{initializeAction, initializeAction2};
        }

        public static InitializeAction valueOf(String str) {
            return (InitializeAction) Enum.valueOf(InitializeAction.class, str);
        }

        public static InitializeAction[] values() {
            return (InitializeAction[]) $VALUES.clone();
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006"}, d2 = {"Landroidx/paging/RemoteMediator$MediatorResult;", "", "Error", "Success", "Landroidx/paging/RemoteMediator$MediatorResult$Error;", "Landroidx/paging/RemoteMediator$MediatorResult$Success;", "paging-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static abstract class MediatorResult {

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/paging/RemoteMediator$MediatorResult$Error;", "Landroidx/paging/RemoteMediator$MediatorResult;", "", "throwable", "<init>", "(Ljava/lang/Throwable;)V", "paging-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
        public static final class Error extends MediatorResult {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f18905a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Error(Throwable th) {
                super(null);
                th.getClass();
                this.f18905a = th;
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/paging/RemoteMediator$MediatorResult$Success;", "Landroidx/paging/RemoteMediator$MediatorResult;", "", "endOfPaginationReached", "<init>", "(Z)V", "paging-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
        public static final class Success extends MediatorResult {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final boolean f18906a;

            public Success(boolean z) {
                super(null);
                this.f18906a = z;
            }
        }

        public MediatorResult(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public abstract Object a();
}
