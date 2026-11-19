package androidx.room.util;

import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import com.batch.android.s.b;
import defpackage.fc;
import defpackage.n00;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.EmptySet;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.collections.builders.MapBuilder;
import kotlin.collections.builders.SetBuilder;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jdk7.AutoCloseableKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\b\u0007\u0018\u00002\u00020\u0001:\u0005\u000f\u0010\u0011\u0012\u0013BC\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00050\u0004\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\u0010\b\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0007¢\u0006\u0004\b\f\u0010\rB3\b\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00050\u0004\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0004\b\f\u0010\u000e¨\u0006\u0014"}, d2 = {"Landroidx/room/util/TableInfo;", "", "", "name", "", "Landroidx/room/util/TableInfo$Column;", "columns", "", "Landroidx/room/util/TableInfo$ForeignKey;", "foreignKeys", "Landroidx/room/util/TableInfo$Index;", "indices", "<init>", "(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V", "(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;)V", "CreatedFrom", "Companion", "Column", "ForeignKey", "Index", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class TableInfo {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Companion f19766e = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f19767a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Map f19768b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Set f19769c;
    public final Set d;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004¨\u0006\u0007"}, d2 = {"Landroidx/room/util/TableInfo$Companion;", "", "", "CREATED_FROM_UNKNOWN", "I", "CREATED_FROM_ENTITY", "CREATED_FROM_DATABASE", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static TableInfo a(SQLiteConnection sQLiteConnection, String str) {
            Map mapC;
            SetBuilder setBuilder;
            sQLiteConnection.getClass();
            SQLiteStatement sQLiteStatementT1 = sQLiteConnection.T1("PRAGMA table_info(`" + str + "`)");
            try {
                long j2 = 0;
                if (sQLiteStatementT1.Q1()) {
                    int iA = SQLiteStatementUtil.a(sQLiteStatementT1, "name");
                    int iA2 = SQLiteStatementUtil.a(sQLiteStatementT1, "type");
                    int iA3 = SQLiteStatementUtil.a(sQLiteStatementT1, "notnull");
                    int iA4 = SQLiteStatementUtil.a(sQLiteStatementT1, "pk");
                    int iA5 = SQLiteStatementUtil.a(sQLiteStatementT1, "dflt_value");
                    MapBuilder mapBuilder = new MapBuilder();
                    do {
                        String strM1 = sQLiteStatementT1.m1(iA);
                        mapBuilder.put(strM1, new Column(strM1, sQLiteStatementT1.m1(iA2), sQLiteStatementT1.getLong(iA3) != 0, (int) sQLiteStatementT1.getLong(iA4), sQLiteStatementT1.isNull(iA5) ? null : sQLiteStatementT1.m1(iA5), 2));
                    } while (sQLiteStatementT1.Q1());
                    mapC = mapBuilder.c();
                    AutoCloseableKt.a(sQLiteStatementT1, null);
                } else {
                    mapC = MapsKt.c();
                    AutoCloseableKt.a(sQLiteStatementT1, null);
                }
                SQLiteStatement sQLiteStatementT2 = sQLiteConnection.T1("PRAGMA foreign_key_list(`" + str + "`)");
                try {
                    int iA6 = SQLiteStatementUtil.a(sQLiteStatementT2, b.a.f24015b);
                    int iA7 = SQLiteStatementUtil.a(sQLiteStatementT2, "seq");
                    int iA8 = SQLiteStatementUtil.a(sQLiteStatementT2, "table");
                    int iA9 = SQLiteStatementUtil.a(sQLiteStatementT2, "on_delete");
                    int iA10 = SQLiteStatementUtil.a(sQLiteStatementT2, "on_update");
                    List listA = SchemaInfoUtilKt.a(sQLiteStatementT2);
                    sQLiteStatementT2.reset();
                    SetBuilder setBuilder2 = new SetBuilder();
                    while (sQLiteStatementT2.Q1()) {
                        if (sQLiteStatementT2.getLong(iA7) == j2) {
                            int i2 = (int) sQLiteStatementT2.getLong(iA6);
                            ArrayList arrayList = new ArrayList();
                            ArrayList arrayList2 = new ArrayList();
                            int i3 = iA6;
                            ArrayList<ForeignKeyWithSequence> arrayList3 = new ArrayList();
                            for (Object obj : listA) {
                                int i4 = iA7;
                                List list = listA;
                                if (((ForeignKeyWithSequence) obj).f19761b == i2) {
                                    arrayList3.add(obj);
                                }
                                iA7 = i4;
                                listA = list;
                            }
                            int i5 = iA7;
                            List list2 = listA;
                            for (ForeignKeyWithSequence foreignKeyWithSequence : arrayList3) {
                                arrayList.add(foreignKeyWithSequence.d);
                                arrayList2.add(foreignKeyWithSequence.f19763e);
                            }
                            setBuilder2.add(new ForeignKey(sQLiteStatementT2.m1(iA8), sQLiteStatementT2.m1(iA9), sQLiteStatementT2.m1(iA10), arrayList, arrayList2));
                            iA6 = i3;
                            iA7 = i5;
                            listA = list2;
                            j2 = 0;
                        }
                    }
                    SetBuilder setBuilderA = SetsKt.a(setBuilder2);
                    AutoCloseableKt.a(sQLiteStatementT2, null);
                    SQLiteStatement sQLiteStatementT3 = sQLiteConnection.T1("PRAGMA index_list(`" + str + "`)");
                    try {
                        int iA11 = SQLiteStatementUtil.a(sQLiteStatementT3, "name");
                        int iA12 = SQLiteStatementUtil.a(sQLiteStatementT3, "origin");
                        int iA13 = SQLiteStatementUtil.a(sQLiteStatementT3, "unique");
                        if (iA11 == -1 || iA12 == -1 || iA13 == -1) {
                            AutoCloseableKt.a(sQLiteStatementT3, null);
                            setBuilder = null;
                        } else {
                            SetBuilder setBuilder3 = new SetBuilder();
                            while (sQLiteStatementT3.Q1()) {
                                if ("c".equals(sQLiteStatementT3.m1(iA12))) {
                                    Index indexB = SchemaInfoUtilKt.b(sQLiteConnection, sQLiteStatementT3.m1(iA11), sQLiteStatementT3.getLong(iA13) == 1);
                                    if (indexB == null) {
                                        AutoCloseableKt.a(sQLiteStatementT3, null);
                                        setBuilder = null;
                                    } else {
                                        setBuilder3.add(indexB);
                                    }
                                }
                            }
                            SetBuilder setBuilderA2 = SetsKt.a(setBuilder3);
                            AutoCloseableKt.a(sQLiteStatementT3, null);
                            setBuilder = setBuilderA2;
                        }
                        return new TableInfo(str, mapC, setBuilderA, setBuilder);
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            AutoCloseableKt.a(sQLiteStatementT3, th);
                            throw th2;
                        }
                    }
                } catch (Throwable th3) {
                    try {
                        throw th3;
                    } catch (Throwable th4) {
                        AutoCloseableKt.a(sQLiteStatementT2, th3);
                        throw th4;
                    }
                }
            } catch (Throwable th5) {
                try {
                    throw th5;
                } catch (Throwable th6) {
                    AutoCloseableKt.a(sQLiteStatementT1, th5);
                    throw th6;
                }
            }
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0000\b\u0081\u0002\u0018\u00002\u00020\u0001B\u0000¨\u0006\u0002"}, d2 = {"Landroidx/room/util/TableInfo$CreatedFrom;", "", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    @Retention(RetentionPolicy.SOURCE)
    @kotlin.annotation.Retention
    public @interface CreatedFrom {
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001B;\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\u0006\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00020\u0006¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Landroidx/room/util/TableInfo$ForeignKey;", "", "", "referenceTable", "onDelete", "onUpdate", "", "columnNames", "referenceColumnNames", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class ForeignKey {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f19775a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f19776b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f19777c;
        public final List d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final List f19778e;

        public ForeignKey(String str, String str2, String str3, List<String> list, List<String> list2) {
            str.getClass();
            str2.getClass();
            str3.getClass();
            list.getClass();
            list2.getClass();
            this.f19775a = str;
            this.f19776b = str2;
            this.f19777c = str3;
            this.d = list;
            this.f19778e = list2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ForeignKey)) {
                return false;
            }
            ForeignKey foreignKey = (ForeignKey) obj;
            if (Intrinsics.c(this.f19775a, foreignKey.f19775a) && Intrinsics.c(this.f19776b, foreignKey.f19776b) && Intrinsics.c(this.f19777c, foreignKey.f19777c) && Intrinsics.c(this.d, foreignKey.d)) {
                return Intrinsics.c(this.f19778e, foreignKey.f19778e);
            }
            return false;
        }

        public final int hashCode() {
            return this.f19778e.hashCode() + n00.a(fc.b(fc.b(this.f19775a.hashCode() * 31, 31, this.f19776b), 31, this.f19777c), 31, this.d);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("\n            |ForeignKey {\n            |   referenceTable = '");
            sb.append(this.f19775a);
            sb.append("',\n            |   onDelete = '");
            sb.append(this.f19776b);
            sb.append("',\n            |   onUpdate = '");
            sb.append(this.f19777c);
            sb.append("',\n            |   columnNames = {");
            StringsKt.C(CollectionsKt.K(CollectionsKt.n0(this.d), ",", null, null, null, 62));
            StringsKt.C("},");
            Unit unit = Unit.f71739a;
            sb.append(unit);
            sb.append("\n            |   referenceColumnNames = {");
            StringsKt.C(CollectionsKt.K(CollectionsKt.n0(this.f19778e), ",", null, null, null, 62));
            StringsKt.C(" }");
            sb.append(unit);
            sb.append("\n            |}\n        ");
            return StringsKt.C(StringsKt.c0(sb.toString()));
        }
    }

    public TableInfo(String str, Map<String, Column> map, Set<ForeignKey> set, Set<Index> set2) {
        str.getClass();
        map.getClass();
        set.getClass();
        this.f19767a = str;
        this.f19768b = map;
        this.f19769c = set;
        this.d = set2;
    }

    public final boolean equals(Object obj) {
        Set set;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TableInfo)) {
            return false;
        }
        TableInfo tableInfo = (TableInfo) obj;
        if (!Intrinsics.c(this.f19767a, tableInfo.f19767a) || !Intrinsics.c(this.f19768b, tableInfo.f19768b) || !Intrinsics.c(this.f19769c, tableInfo.f19769c)) {
            return false;
        }
        Set set2 = this.d;
        if (set2 == null || (set = tableInfo.d) == null) {
            return true;
        }
        return Intrinsics.c(set2, set);
    }

    public final int hashCode() {
        return this.f19769c.hashCode() + ((this.f19768b.hashCode() + (this.f19767a.hashCode() * 31)) * 31);
    }

    public final String toString() {
        Collection collectionO0;
        StringBuilder sb = new StringBuilder("\n            |TableInfo {\n            |    name = '");
        sb.append(this.f19767a);
        sb.append("',\n            |    columns = {");
        sb.append(TableInfoKt.b(CollectionsKt.o0(this.f19768b.values(), new Comparator() { // from class: androidx.room.util.TableInfoKt$toStringCommon$$inlined$sortedBy$1
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return ComparisonsKt.a(((TableInfo.Column) obj).f19770a, ((TableInfo.Column) obj2).f19770a);
            }
        })));
        sb.append("\n            |    foreignKeys = {");
        sb.append(TableInfoKt.b(this.f19769c));
        sb.append("\n            |    indices = {");
        Set set = this.d;
        if (set == null || (collectionO0 = CollectionsKt.o0(set, new Comparator() { // from class: androidx.room.util.TableInfoKt$toStringCommon$$inlined$sortedBy$2
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return ComparisonsKt.a(((TableInfo.Index) obj).f19779a, ((TableInfo.Index) obj2).f19779a);
            }
        })) == null) {
            collectionO0 = EmptyList.f71768b;
        }
        sb.append(TableInfoKt.b(collectionO0));
        sb.append("\n            |}\n        ");
        return StringsKt.c0(sb.toString());
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @Deprecated
    public TableInfo(String str, Map<String, Column> map, Set<ForeignKey> set) {
        this(str, map, set, EmptySet.f71770b);
        str.getClass();
        map.getClass();
        set.getClass();
    }

    public /* synthetic */ TableInfo(String str, Map map, Set set, Set set2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, map, set, (i2 & 8) != 0 ? null : set2);
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\b\u0007\b\u0007\u0018\u00002\u00020\u0001:\u0001\fB3\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\u0006\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00020\u0006¢\u0006\u0004\b\t\u0010\nB'\b\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\u0006¢\u0006\u0004\b\t\u0010\u000b¨\u0006\r"}, d2 = {"Landroidx/room/util/TableInfo$Index;", "", "", "name", "", "unique", "", "columns", "orders", "<init>", "(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V", "(Ljava/lang/String;ZLjava/util/List;)V", "Companion", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Index {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f19779a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f19780b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final List f19781c;
        public final List d;

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/room/util/TableInfo$Index$Companion;", "", "", "DEFAULT_PREFIX", "Ljava/lang/String;", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }
        }

        static {
            new Companion(null);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r4v1, types: [java.util.Collection] */
        /* JADX WARN: Type inference failed for: r4v2 */
        /* JADX WARN: Type inference failed for: r4v4, types: [java.util.ArrayList] */
        public Index(String str, boolean z, List<String> list, List<String> list2) {
            str.getClass();
            list.getClass();
            list2.getClass();
            this.f19779a = str;
            this.f19780b = z;
            this.f19781c = list;
            this.d = list2;
            List<String> arrayList = list2;
            if (arrayList.isEmpty()) {
                int size = list.size();
                arrayList = new ArrayList(size);
                for (int i2 = 0; i2 < size; i2++) {
                    arrayList.add("ASC");
                }
            }
            this.d = (List) arrayList;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Index) {
                Index index = (Index) obj;
                String str = index.f19779a;
                if (this.f19780b == index.f19780b && Intrinsics.c(this.f19781c, index.f19781c) && Intrinsics.c(this.d, index.d)) {
                    String str2 = this.f19779a;
                    return StringsKt.P(str2, "index_", false) ? StringsKt.P(str, "index_", false) : str2.equals(str);
                }
            }
            return false;
        }

        public final int hashCode() {
            String str = this.f19779a;
            return this.d.hashCode() + n00.a((((StringsKt.P(str, "index_", false) ? -1184239155 : str.hashCode()) * 31) + (this.f19780b ? 1 : 0)) * 31, 31, this.f19781c);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("\n            |Index {\n            |   name = '");
            sb.append(this.f19779a);
            sb.append("',\n            |   unique = '");
            sb.append(this.f19780b);
            sb.append("',\n            |   columns = {");
            StringsKt.C(CollectionsKt.K(this.f19781c, ",", null, null, null, 62));
            StringsKt.C("},");
            Unit unit = Unit.f71739a;
            sb.append(unit);
            sb.append("\n            |   orders = {");
            StringsKt.C(CollectionsKt.K(this.d, ",", null, null, null, 62));
            StringsKt.C(" }");
            sb.append(unit);
            sb.append("\n            |}\n        ");
            return StringsKt.C(StringsKt.c0(sb.toString()));
        }

        @Deprecated
        public Index(String str, boolean z, List<String> list) {
            str.getClass();
            list.getClass();
            int size = list.size();
            ArrayList arrayList = new ArrayList(size);
            for (int i2 = 0; i2 < size; i2++) {
                arrayList.add("ASC");
            }
            this(str, z, list, arrayList);
        }
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\b\b\u0007\u0018\u00002\u00020\u0001:\u0001\u000eB9\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\n\u001a\u00020\u0007¢\u0006\u0004\b\u000b\u0010\fB)\b\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\u000b\u0010\r¨\u0006\u000f"}, d2 = {"Landroidx/room/util/TableInfo$Column;", "", "", "name", "type", "", "notNull", "", "primaryKeyPosition", "defaultValue", "createdFrom", "<init>", "(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V", "(Ljava/lang/String;Ljava/lang/String;ZI)V", "Companion", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Column {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f19770a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f19771b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f19772c;
        public final int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final String f19773e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int f19774f;
        public final int g;

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/room/util/TableInfo$Column$Companion;", "", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }
        }

        static {
            new Companion(null);
        }

        public Column(String str, String str2, boolean z, int i2, String str3, int i3) {
            str.getClass();
            str2.getClass();
            this.f19770a = str;
            this.f19771b = str2;
            this.f19772c = z;
            this.d = i2;
            this.f19773e = str3;
            this.f19774f = i3;
            String upperCase = str2.toUpperCase(Locale.ROOT);
            upperCase.getClass();
            this.g = StringsKt.k(upperCase, "INT", false) ? 3 : (StringsKt.k(upperCase, "CHAR", false) || StringsKt.k(upperCase, "CLOB", false) || StringsKt.k(upperCase, "TEXT", false)) ? 2 : StringsKt.k(upperCase, "BLOB", false) ? 5 : (StringsKt.k(upperCase, "REAL", false) || StringsKt.k(upperCase, "FLOA", false) || StringsKt.k(upperCase, "DOUB", false)) ? 4 : 1;
        }

        public final boolean equals(Object obj) {
            if (this != obj) {
                if (obj instanceof Column) {
                    boolean z = this.d > 0;
                    Column column = (Column) obj;
                    int i2 = column.f19774f;
                    if (z == (column.d > 0) && Intrinsics.c(this.f19770a, column.f19770a) && this.f19772c == column.f19772c) {
                        String str = column.f19773e;
                        int i3 = this.f19774f;
                        String str2 = this.f19773e;
                        if ((i3 != 1 || i2 != 2 || str2 == null || TableInfoKt.a(str2, str)) && ((i3 != 2 || i2 != 1 || str == null || TableInfoKt.a(str, str2)) && ((i3 == 0 || i3 != i2 || (str2 == null ? str == null : TableInfoKt.a(str2, str))) && this.g == column.g))) {
                        }
                    }
                }
                return false;
            }
            return true;
        }

        public final int hashCode() {
            return (((((this.f19770a.hashCode() * 31) + this.g) * 31) + (this.f19772c ? 1231 : 1237)) * 31) + this.d;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("\n            |Column {\n            |   name = '");
            sb.append(this.f19770a);
            sb.append("',\n            |   type = '");
            sb.append(this.f19771b);
            sb.append("',\n            |   affinity = '");
            sb.append(this.g);
            sb.append("',\n            |   notNull = '");
            sb.append(this.f19772c);
            sb.append("',\n            |   primaryKeyPosition = '");
            sb.append(this.d);
            sb.append("',\n            |   defaultValue = '");
            String str = this.f19773e;
            if (str == null) {
                str = "undefined";
            }
            sb.append(str);
            sb.append("'\n            |}\n        ");
            return StringsKt.C(StringsKt.c0(sb.toString()));
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        @Deprecated
        public Column(String str, String str2, boolean z, int i2) {
            this(str, str2, z, i2, null, 0);
            str.getClass();
            str2.getClass();
        }
    }
}
