package androidx.sqlite.db;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\b\u0006\u0018\u00002\u00020\u0001:\u0001\nB#\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0012\u0010\u0006\u001a\u000e\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u0004¢\u0006\u0004\b\u0007\u0010\bB\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\t¨\u0006\u000b"}, d2 = {"Landroidx/sqlite/db/SimpleSQLiteQuery;", "Landroidx/sqlite/db/SupportSQLiteQuery;", "", "query", "", "", "bindArgs", "<init>", "(Ljava/lang/String;[Ljava/lang/Object;)V", "(Ljava/lang/String;)V", "Companion", "sqlite_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class SimpleSQLiteQuery implements SupportSQLiteQuery {
    public static final Companion d = new Companion(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f19871b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object[] f19872c;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/sqlite/db/SimpleSQLiteQuery$Companion;", "", "sqlite_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static void a(SupportSQLiteProgram supportSQLiteProgram, Object[] objArr) {
            if (objArr == null) {
                return;
            }
            int length = objArr.length;
            int i2 = 0;
            while (i2 < length) {
                Object obj = objArr[i2];
                i2++;
                if (obj == null) {
                    supportSQLiteProgram.l(i2);
                } else if (obj instanceof byte[]) {
                    supportSQLiteProgram.b(i2, (byte[]) obj);
                } else if (obj instanceof Float) {
                    supportSQLiteProgram.t1(((Number) obj).floatValue(), i2);
                } else if (obj instanceof Double) {
                    supportSQLiteProgram.t1(((Number) obj).doubleValue(), i2);
                } else if (obj instanceof Long) {
                    supportSQLiteProgram.a(i2, ((Number) obj).longValue());
                } else if (obj instanceof Integer) {
                    supportSQLiteProgram.a(i2, ((Number) obj).intValue());
                } else if (obj instanceof Short) {
                    supportSQLiteProgram.a(i2, ((Number) obj).shortValue());
                } else if (obj instanceof Byte) {
                    supportSQLiteProgram.a(i2, ((Number) obj).byteValue());
                } else if (obj instanceof String) {
                    supportSQLiteProgram.O0(i2, (String) obj);
                } else {
                    if (!(obj instanceof Boolean)) {
                        throw new IllegalArgumentException("Cannot bind " + obj + " at index " + i2 + " Supported types: Null, ByteArray, Float, Double, Long, Int, Short, Byte, String");
                    }
                    supportSQLiteProgram.a(i2, ((Boolean) obj).booleanValue() ? 1L : 0L);
                }
            }
        }
    }

    public SimpleSQLiteQuery(String str, Object[] objArr) {
        str.getClass();
        this.f19871b = str;
        this.f19872c = objArr;
    }

    @Override // androidx.sqlite.db.SupportSQLiteQuery
    /* JADX INFO: renamed from: h, reason: from getter */
    public final String getF19871b() {
        return this.f19871b;
    }

    @Override // androidx.sqlite.db.SupportSQLiteQuery
    public final void j(SupportSQLiteProgram supportSQLiteProgram) {
        d.getClass();
        Companion.a(supportSQLiteProgram, this.f19872c);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SimpleSQLiteQuery(String str) {
        this(str, null);
        str.getClass();
    }
}
