package androidx.room.support;

import androidx.sqlite.db.SupportSQLiteDatabase;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
final /* synthetic */ class AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$inTransaction$1 extends FunctionReferenceImpl implements Function1<SupportSQLiteDatabase, Boolean> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$inTransaction$1 f19715b = new AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$inTransaction$1(1, SupportSQLiteDatabase.class, "inTransaction", "inTransaction()Z", 0);

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        SupportSQLiteDatabase supportSQLiteDatabase = (SupportSQLiteDatabase) obj;
        supportSQLiteDatabase.getClass();
        return Boolean.valueOf(supportSQLiteDatabase.z1());
    }
}
