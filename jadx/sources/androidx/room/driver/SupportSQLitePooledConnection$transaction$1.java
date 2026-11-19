package androidx.room.driver;

import androidx.sqlite.db.SupportSQLiteDatabase;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "androidx.room.driver.SupportSQLitePooledConnection", f = "SupportSQLiteConnectionPool.android.kt", l = {83}, m = "transaction")
final class SupportSQLitePooledConnection$transaction$1<R> extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f19685b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public SupportSQLiteDatabase f19686c;
    public /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ SupportSQLitePooledConnection f19687e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f19688f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SupportSQLitePooledConnection$transaction$1(SupportSQLitePooledConnection supportSQLitePooledConnection, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f19687e = supportSQLitePooledConnection;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f19688f |= Integer.MIN_VALUE;
        return this.f19687e.e(null, null, this);
    }
}
