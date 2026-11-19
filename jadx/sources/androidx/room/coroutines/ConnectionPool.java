package androidx.room.coroutines;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b`\u0018\u00002\u00060\u0001j\u0002`\u0002:\u0001\u0003ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0004À\u0006\u0001"}, d2 = {"Landroidx/room/coroutines/ConnectionPool;", "Ljava/lang/AutoCloseable;", "Lkotlin/AutoCloseable;", "RollbackException", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public interface ConnectionPool extends AutoCloseable {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0010\u0000\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/room/coroutines/ConnectionPool$RollbackException;", "", "", "result", "<init>", "(Ljava/lang/Object;)V", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class RollbackException extends Throwable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Object f19604b;

        public RollbackException(Object obj) {
            this.f19604b = obj;
        }
    }

    Object j1(boolean z, Function2 function2, ContinuationImpl continuationImpl);
}
