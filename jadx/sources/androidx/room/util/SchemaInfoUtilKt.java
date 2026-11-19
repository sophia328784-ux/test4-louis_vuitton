package androidx.room.util;

import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import com.batch.android.s.b;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.builders.ListBuilder;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jdk7.AutoCloseableKt;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"room-runtime_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class SchemaInfoUtilKt {
    public static final List a(SQLiteStatement sQLiteStatement) {
        int iA = SQLiteStatementUtil.a(sQLiteStatement, b.a.f24015b);
        int iA2 = SQLiteStatementUtil.a(sQLiteStatement, "seq");
        int iA3 = SQLiteStatementUtil.a(sQLiteStatement, "from");
        int iA4 = SQLiteStatementUtil.a(sQLiteStatement, MvelScriptManager.VAR_TO);
        ListBuilder listBuilderV = CollectionsKt.v();
        while (sQLiteStatement.Q1()) {
            listBuilderV.add(new ForeignKeyWithSequence((int) sQLiteStatement.getLong(iA), (int) sQLiteStatement.getLong(iA2), sQLiteStatement.m1(iA3), sQLiteStatement.m1(iA4)));
        }
        return CollectionsKt.n0(CollectionsKt.r(listBuilderV));
    }

    public static final TableInfo.Index b(SQLiteConnection sQLiteConnection, String str, boolean z) {
        SQLiteStatement sQLiteStatementT1 = sQLiteConnection.T1("PRAGMA index_xinfo(`" + str + "`)");
        try {
            int iA = SQLiteStatementUtil.a(sQLiteStatementT1, "seqno");
            int iA2 = SQLiteStatementUtil.a(sQLiteStatementT1, "cid");
            int iA3 = SQLiteStatementUtil.a(sQLiteStatementT1, "name");
            int iA4 = SQLiteStatementUtil.a(sQLiteStatementT1, "desc");
            if (iA != -1 && iA2 != -1 && iA3 != -1 && iA4 != -1) {
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                while (sQLiteStatementT1.Q1()) {
                    if (((int) sQLiteStatementT1.getLong(iA2)) >= 0) {
                        int i2 = (int) sQLiteStatementT1.getLong(iA);
                        String strM1 = sQLiteStatementT1.m1(iA3);
                        String str2 = sQLiteStatementT1.getLong(iA4) > 0 ? "DESC" : "ASC";
                        linkedHashMap.put(Integer.valueOf(i2), strM1);
                        linkedHashMap2.put(Integer.valueOf(i2), str2);
                    }
                }
                List listO0 = CollectionsKt.o0(linkedHashMap.entrySet(), new Comparator() { // from class: androidx.room.util.SchemaInfoUtilKt$readIndex$lambda$13$$inlined$sortedBy$1
                    @Override // java.util.Comparator
                    public final int compare(Object obj, Object obj2) {
                        return ComparisonsKt.a((Integer) ((Map.Entry) obj).getKey(), (Integer) ((Map.Entry) obj2).getKey());
                    }
                });
                ArrayList arrayList = new ArrayList(CollectionsKt.t(listO0, 10));
                Iterator it = listO0.iterator();
                while (it.hasNext()) {
                    arrayList.add((String) ((Map.Entry) it.next()).getValue());
                }
                List listY0 = CollectionsKt.y0(arrayList);
                List listO1 = CollectionsKt.o0(linkedHashMap2.entrySet(), new Comparator() { // from class: androidx.room.util.SchemaInfoUtilKt$readIndex$lambda$13$$inlined$sortedBy$2
                    @Override // java.util.Comparator
                    public final int compare(Object obj, Object obj2) {
                        return ComparisonsKt.a((Integer) ((Map.Entry) obj).getKey(), (Integer) ((Map.Entry) obj2).getKey());
                    }
                });
                ArrayList arrayList2 = new ArrayList(CollectionsKt.t(listO1, 10));
                Iterator it2 = listO1.iterator();
                while (it2.hasNext()) {
                    arrayList2.add((String) ((Map.Entry) it2.next()).getValue());
                }
                TableInfo.Index index = new TableInfo.Index(str, z, listY0, CollectionsKt.y0(arrayList2));
                AutoCloseableKt.a(sQLiteStatementT1, null);
                return index;
            }
            AutoCloseableKt.a(sQLiteStatementT1, null);
            return null;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                AutoCloseableKt.a(sQLiteStatementT1, th);
                throw th2;
            }
        }
    }
}
