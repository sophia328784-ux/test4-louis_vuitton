package androidx.room;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.internal.ContextScope;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
public /* synthetic */ class RoomDatabase$closeBarrier$1 extends FunctionReferenceImpl implements Function0<Unit> {
    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() throws Exception {
        RoomDatabase roomDatabase = (RoomDatabase) this.receiver;
        ContextScope contextScope = roomDatabase.f19456a;
        if (contextScope == null) {
            Intrinsics.h("coroutineScope");
            throw null;
        }
        CoroutineScopeKt.c(contextScope, null);
        MultiInstanceInvalidationClient multiInstanceInvalidationClient = roomDatabase.k().m;
        if (multiInstanceInvalidationClient != null) {
            multiInstanceInvalidationClient.a();
        }
        RoomConnectionManager roomConnectionManager = roomDatabase.f19459e;
        if (roomConnectionManager != null) {
            roomConnectionManager.f19453f.close();
            return Unit.f71739a;
        }
        Intrinsics.h("connectionManager");
        throw null;
    }
}
