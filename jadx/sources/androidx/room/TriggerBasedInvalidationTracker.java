package androidx.room;

import androidx.room.concurrent.CloseBarrier;
import defpackage.l31;
import defpackage.md;
import defpackage.y41;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.EmptySet;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.collections.builders.SetBuilder;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\"\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001:\u0001\u0013Bo\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0018\u0010\b\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00070\u0004\u0012\u000e\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00050\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0018\u0010\u0010\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\u0007\u0012\u0004\u0012\u00020\u000f0\r¢\u0006\u0004\b\u0011\u0010\u0012¨\u0006\u0014"}, d2 = {"Landroidx/room/TriggerBasedInvalidationTracker;", "", "Landroidx/room/RoomDatabase;", "database", "", "", "shadowTablesMap", "", "viewTables", "", "tableNames", "", "useTempTable", "Lkotlin/Function1;", "", "", "onInvalidatedTablesIds", "<init>", "(Landroidx/room/RoomDatabase;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;ZLkotlin/jvm/functions/Function1;)V", "Companion", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class TriggerBasedInvalidationTracker {
    public static final Companion l = new Companion(null);
    public static final String[] m = {"INSERT", "UPDATE", "DELETE"};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final RoomDatabase f19519a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Map f19520b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Map f19521c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Function1 f19522e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final LinkedHashMap f19523f;
    public final String[] g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ObservedTableStates f19524h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ObservedTableVersions f19525i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final AtomicBoolean f19526j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Function0 f19527k;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u000b\b\u0086\u0003\u0018\u00002\u00020\u0001R\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0006\u001a\u00020\u00038\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\u00020\u00038\u0002X\u0082T¢\u0006\u0006\n\u0004\b\b\u0010\u0007R\u0014\u0010\t\u001a\u00020\u00038\u0002X\u0082T¢\u0006\u0006\n\u0004\b\t\u0010\u0007R\u0014\u0010\n\u001a\u00020\u00038\u0002X\u0082T¢\u0006\u0006\n\u0004\b\n\u0010\u0007R\u0014\u0010\u000b\u001a\u00020\u00038\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000b\u0010\u0007R\u0014\u0010\f\u001a\u00020\u00038\u0002X\u0082T¢\u0006\u0006\n\u0004\b\f\u0010\u0007R\u0014\u0010\r\u001a\u00020\u00038\u0002X\u0082T¢\u0006\u0006\n\u0004\b\r\u0010\u0007¨\u0006\u000e"}, d2 = {"Landroidx/room/TriggerBasedInvalidationTracker$Companion;", "", "", "", "TRIGGERS", "[Ljava/lang/String;", "UPDATE_TABLE_NAME", "Ljava/lang/String;", "TABLE_ID_COLUMN_NAME", "INVALIDATED_COLUMN_NAME", "CREATE_TRACKING_TABLE_SQL", "DROP_TRACKING_TABLE_SQL", "SELECT_UPDATED_TABLES_SQL", "RESET_UPDATED_TABLES_SQL", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public TriggerBasedInvalidationTracker(RoomDatabase roomDatabase, Map<String, String> map, Map<String, ? extends Set<String>> map2, String[] strArr, boolean z, Function1<? super Set<Integer>, Unit> function1) {
        String lowerCase;
        roomDatabase.getClass();
        map.getClass();
        map2.getClass();
        strArr.getClass();
        function1.getClass();
        this.f19519a = roomDatabase;
        this.f19520b = map;
        this.f19521c = map2;
        this.d = z;
        this.f19522e = function1;
        this.f19526j = new AtomicBoolean(false);
        this.f19527k = new l31(20);
        this.f19523f = new LinkedHashMap();
        int length = strArr.length;
        String[] strArr2 = new String[length];
        for (int i2 = 0; i2 < length; i2++) {
            String str = strArr[i2];
            Locale locale = Locale.ROOT;
            String lowerCase2 = str.toLowerCase(locale);
            lowerCase2.getClass();
            this.f19523f.put(lowerCase2, Integer.valueOf(i2));
            String str2 = (String) this.f19520b.get(strArr[i2]);
            if (str2 != null) {
                lowerCase = str2.toLowerCase(locale);
                lowerCase.getClass();
            } else {
                lowerCase = null;
            }
            if (lowerCase != null) {
                lowerCase2 = lowerCase;
            }
            strArr2[i2] = lowerCase2;
        }
        this.g = strArr2;
        for (Map.Entry entry : this.f19520b.entrySet()) {
            String str3 = (String) entry.getValue();
            Locale locale2 = Locale.ROOT;
            String lowerCase3 = str3.toLowerCase(locale2);
            lowerCase3.getClass();
            if (this.f19523f.containsKey(lowerCase3)) {
                String lowerCase4 = ((String) entry.getKey()).toLowerCase(locale2);
                lowerCase4.getClass();
                LinkedHashMap linkedHashMap = this.f19523f;
                linkedHashMap.put(lowerCase4, MapsKt.d(linkedHashMap, lowerCase3));
            }
        }
        this.f19524h = new ObservedTableStates(this.g.length);
        this.f19525i = new ObservedTableVersions(this.g.length);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object a(TriggerBasedInvalidationTracker triggerBasedInvalidationTracker, PooledConnection pooledConnection, ContinuationImpl continuationImpl) {
        TriggerBasedInvalidationTracker$checkInvalidatedTables$1 triggerBasedInvalidationTracker$checkInvalidatedTables$1;
        if (continuationImpl instanceof TriggerBasedInvalidationTracker$checkInvalidatedTables$1) {
            triggerBasedInvalidationTracker$checkInvalidatedTables$1 = (TriggerBasedInvalidationTracker$checkInvalidatedTables$1) continuationImpl;
            int i2 = triggerBasedInvalidationTracker$checkInvalidatedTables$1.f19530e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                triggerBasedInvalidationTracker$checkInvalidatedTables$1.f19530e = i2 - Integer.MIN_VALUE;
            } else {
                triggerBasedInvalidationTracker$checkInvalidatedTables$1 = new TriggerBasedInvalidationTracker$checkInvalidatedTables$1(triggerBasedInvalidationTracker, continuationImpl);
            }
        } else {
            triggerBasedInvalidationTracker$checkInvalidatedTables$1 = new TriggerBasedInvalidationTracker$checkInvalidatedTables$1(triggerBasedInvalidationTracker, continuationImpl);
        }
        Object objB = triggerBasedInvalidationTracker$checkInvalidatedTables$1.f19529c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = triggerBasedInvalidationTracker$checkInvalidatedTables$1.f19530e;
        int i4 = 1;
        if (i3 == 0) {
            ResultKt.b(objB);
            y41 y41Var = new y41(i4);
            triggerBasedInvalidationTracker$checkInvalidatedTables$1.f19528b = pooledConnection;
            triggerBasedInvalidationTracker$checkInvalidatedTables$1.f19530e = 1;
            objB = pooledConnection.b("SELECT * FROM room_table_modification_log WHERE invalidated = 1", y41Var, triggerBasedInvalidationTracker$checkInvalidatedTables$1);
            if (objB != coroutineSingletons) {
            }
            return coroutineSingletons;
        }
        if (i3 != 1) {
            if (i3 != 2) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            Set set = (Set) triggerBasedInvalidationTracker$checkInvalidatedTables$1.f19528b;
            ResultKt.b(objB);
            return set;
        }
        pooledConnection = (PooledConnection) triggerBasedInvalidationTracker$checkInvalidatedTables$1.f19528b;
        ResultKt.b(objB);
        Set set2 = (Set) objB;
        if (!set2.isEmpty()) {
            triggerBasedInvalidationTracker$checkInvalidatedTables$1.f19528b = set2;
            triggerBasedInvalidationTracker$checkInvalidatedTables$1.f19530e = 2;
            if (TransactorKt.a(pooledConnection, "UPDATE room_table_modification_log SET invalidated = 0 WHERE invalidated = 1", triggerBasedInvalidationTracker$checkInvalidatedTables$1) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        return set2;
    }

    /* JADX WARN: Code duplicated, block: B:37:0x008c A[Catch: all -> 0x0055, TryCatch #1 {all -> 0x0055, blocks: (B:35:0x0081, B:37:0x008c, B:50:0x00c5, B:40:0x009b, B:41:0x009d, B:43:0x00aa, B:45:0x00b4, B:47:0x00ba, B:46:0x00b8, B:48:0x00bf, B:20:0x0047, B:22:0x004f, B:27:0x005b, B:29:0x0069, B:32:0x006f), top: B:59:0x0047 }] */
    /* JADX WARN: Code duplicated, block: B:39:0x009a  */
    /* JADX WARN: Code duplicated, block: B:40:0x009b A[Catch: all -> 0x0055, TryCatch #1 {all -> 0x0055, blocks: (B:35:0x0081, B:37:0x008c, B:50:0x00c5, B:40:0x009b, B:41:0x009d, B:43:0x00aa, B:45:0x00b4, B:47:0x00ba, B:46:0x00b8, B:48:0x00bf, B:20:0x0047, B:22:0x004f, B:27:0x005b, B:29:0x0069, B:32:0x006f), top: B:59:0x0047 }] */
    /* JADX WARN: Code duplicated, block: B:43:0x00aa A[Catch: all -> 0x0055, TryCatch #1 {all -> 0x0055, blocks: (B:35:0x0081, B:37:0x008c, B:50:0x00c5, B:40:0x009b, B:41:0x009d, B:43:0x00aa, B:45:0x00b4, B:47:0x00ba, B:46:0x00b8, B:48:0x00bf, B:20:0x0047, B:22:0x004f, B:27:0x005b, B:29:0x0069, B:32:0x006f), top: B:59:0x0047 }] */
    /* JADX WARN: Code duplicated, block: B:45:0x00b4 A[Catch: all -> 0x0055, TryCatch #1 {all -> 0x0055, blocks: (B:35:0x0081, B:37:0x008c, B:50:0x00c5, B:40:0x009b, B:41:0x009d, B:43:0x00aa, B:45:0x00b4, B:47:0x00ba, B:46:0x00b8, B:48:0x00bf, B:20:0x0047, B:22:0x004f, B:27:0x005b, B:29:0x0069, B:32:0x006f), top: B:59:0x0047 }] */
    /* JADX WARN: Code duplicated, block: B:46:0x00b8 A[Catch: all -> 0x0055, TryCatch #1 {all -> 0x0055, blocks: (B:35:0x0081, B:37:0x008c, B:50:0x00c5, B:40:0x009b, B:41:0x009d, B:43:0x00aa, B:45:0x00b4, B:47:0x00ba, B:46:0x00b8, B:48:0x00bf, B:20:0x0047, B:22:0x004f, B:27:0x005b, B:29:0x0069, B:32:0x006f), top: B:59:0x0047 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$ArrayArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public static final Object b(TriggerBasedInvalidationTracker triggerBasedInvalidationTracker, ContinuationImpl continuationImpl) throws Throwable {
        TriggerBasedInvalidationTracker$notifyInvalidation$1 triggerBasedInvalidationTracker$notifyInvalidation$1;
        CloseBarrier closeBarrier;
        Throwable th;
        CloseBarrier closeBarrier2;
        Object objX;
        Set set;
        ObservedTableVersions observedTableVersions;
        MutableStateFlow mutableStateFlow;
        Object value;
        int[] iArr;
        int length;
        int[] iArr2;
        int i2;
        int i3;
        RoomDatabase roomDatabase = triggerBasedInvalidationTracker.f19519a;
        if (continuationImpl instanceof TriggerBasedInvalidationTracker$notifyInvalidation$1) {
            triggerBasedInvalidationTracker$notifyInvalidation$1 = (TriggerBasedInvalidationTracker$notifyInvalidation$1) continuationImpl;
            int i4 = triggerBasedInvalidationTracker$notifyInvalidation$1.f19547f;
            if ((i4 & Integer.MIN_VALUE) != 0) {
                triggerBasedInvalidationTracker$notifyInvalidation$1.f19547f = i4 - Integer.MIN_VALUE;
            } else {
                triggerBasedInvalidationTracker$notifyInvalidation$1 = new TriggerBasedInvalidationTracker$notifyInvalidation$1(triggerBasedInvalidationTracker, continuationImpl);
            }
        } else {
            triggerBasedInvalidationTracker$notifyInvalidation$1 = new TriggerBasedInvalidationTracker$notifyInvalidation$1(triggerBasedInvalidationTracker, continuationImpl);
        }
        Object obj = triggerBasedInvalidationTracker$notifyInvalidation$1.d;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i5 = triggerBasedInvalidationTracker$notifyInvalidation$1.f19547f;
        if (i5 != 0) {
            if (i5 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            closeBarrier2 = triggerBasedInvalidationTracker$notifyInvalidation$1.f19545c;
            TriggerBasedInvalidationTracker triggerBasedInvalidationTracker2 = triggerBasedInvalidationTracker$notifyInvalidation$1.f19544b;
            try {
                ResultKt.b(obj);
                closeBarrier = closeBarrier2;
                triggerBasedInvalidationTracker = triggerBasedInvalidationTracker2;
                objX = obj;
                set = (Set) objX;
                if (!set.isEmpty()) {
                    observedTableVersions = triggerBasedInvalidationTracker.f19525i;
                    observedTableVersions.getClass();
                    set.getClass();
                    if (set.isEmpty()) {
                        mutableStateFlow = observedTableVersions.f19444a;
                        do {
                            value = mutableStateFlow.getValue();
                            iArr = (int[]) value;
                            length = iArr.length;
                            iArr2 = new int[length];
                            for (i2 = 0; i2 < length; i2++) {
                                if (set.contains(Integer.valueOf(i2))) {
                                    i3 = iArr[i2] + 1;
                                } else {
                                    i3 = iArr[i2];
                                }
                                iArr2[i2] = i3;
                            }
                        } while (!mutableStateFlow.i(value, iArr2));
                    }
                    triggerBasedInvalidationTracker.f19522e.invoke(set);
                }
                closeBarrier.b();
                return set;
            } catch (Throwable th2) {
                th = th2;
                closeBarrier2.b();
                throw th;
            }
        }
        ResultKt.b(obj);
        closeBarrier = roomDatabase.g;
        if (!closeBarrier.a()) {
            return EmptySet.f71770b;
        }
        try {
            if (!triggerBasedInvalidationTracker.f19526j.compareAndSet(true, false)) {
                EmptySet emptySet = EmptySet.f71770b;
                closeBarrier.b();
                return emptySet;
            }
            if (!((Boolean) triggerBasedInvalidationTracker.f19527k.mo47invoke()).booleanValue()) {
                EmptySet emptySet2 = EmptySet.f71770b;
                closeBarrier.b();
                return emptySet2;
            }
            TriggerBasedInvalidationTracker$notifyInvalidation$2$invalidatedTableIds$1 triggerBasedInvalidationTracker$notifyInvalidation$2$invalidatedTableIds$1 = new TriggerBasedInvalidationTracker$notifyInvalidation$2$invalidatedTableIds$1(triggerBasedInvalidationTracker, null);
            triggerBasedInvalidationTracker$notifyInvalidation$1.f19544b = triggerBasedInvalidationTracker;
            triggerBasedInvalidationTracker$notifyInvalidation$1.f19545c = closeBarrier;
            triggerBasedInvalidationTracker$notifyInvalidation$1.f19547f = 1;
            objX = roomDatabase.x(false, triggerBasedInvalidationTracker$notifyInvalidation$2$invalidatedTableIds$1, triggerBasedInvalidationTracker$notifyInvalidation$1);
            if (objX == coroutineSingletons) {
                return coroutineSingletons;
            }
            set = (Set) objX;
            if (!set.isEmpty()) {
                observedTableVersions = triggerBasedInvalidationTracker.f19525i;
                observedTableVersions.getClass();
                set.getClass();
                if (set.isEmpty()) {
                    mutableStateFlow = observedTableVersions.f19444a;
                    do {
                        value = mutableStateFlow.getValue();
                        iArr = (int[]) value;
                        length = iArr.length;
                        iArr2 = new int[length];
                        while (i2 < length) {
                            if (set.contains(Integer.valueOf(i2))) {
                                i3 = iArr[i2] + 1;
                            } else {
                                i3 = iArr[i2];
                            }
                            iArr2[i2] = i3;
                        }
                    } while (!mutableStateFlow.i(value, iArr2));
                }
                triggerBasedInvalidationTracker.f19522e.invoke(set);
            }
            closeBarrier.b();
            return set;
        } catch (Throwable th3) {
            th = th3;
            closeBarrier2 = closeBarrier;
            closeBarrier2.b();
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0091  */
    /* JADX WARN: Code duplicated, block: B:23:0x0097  */
    /* JADX WARN: Code duplicated, block: B:24:0x009a  */
    /* JADX WARN: Code duplicated, block: B:29:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:7:0x001e  */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x007e, code lost:
    
        if (androidx.room.TransactorKt.a(r1, r3, r4) == r5) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00e4, code lost:
    
        if (androidx.room.TransactorKt.a(r10, r3, r4) == r5) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00e6, code lost:
    
        return r5;
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x00e4 -> B:28:0x00e7). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object c(androidx.room.TriggerBasedInvalidationTracker r17, androidx.room.Transactor r18, int r19, kotlin.coroutines.jvm.internal.ContinuationImpl r20) {
        /*
            Method dump skipped, instruction units count: 239
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.TriggerBasedInvalidationTracker.c(androidx.room.TriggerBasedInvalidationTracker, androidx.room.Transactor, int, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0050  */
    /* JADX WARN: Code duplicated, block: B:18:0x0087 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0016  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0085 -> B:19:0x0088). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final java.lang.Object d(androidx.room.TriggerBasedInvalidationTracker r8, androidx.room.Transactor r9, int r10, kotlin.coroutines.jvm.internal.ContinuationImpl r11) {
        /*
            r8.getClass()
            boolean r0 = r11 instanceof androidx.room.TriggerBasedInvalidationTracker$stopTrackingTable$1
            if (r0 == 0) goto L16
            r0 = r11
            androidx.room.TriggerBasedInvalidationTracker$stopTrackingTable$1 r0 = (androidx.room.TriggerBasedInvalidationTracker$stopTrackingTable$1) r0
            int r1 = r0.f19567i
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L16
            int r1 = r1 - r2
            r0.f19567i = r1
            goto L1b
        L16:
            androidx.room.TriggerBasedInvalidationTracker$stopTrackingTable$1 r0 = new androidx.room.TriggerBasedInvalidationTracker$stopTrackingTable$1
            r0.<init>(r8, r11)
        L1b:
            java.lang.Object r11 = r0.g
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.f19567i
            r3 = 1
            if (r2 == 0) goto L3d
            if (r2 != r3) goto L36
            int r8 = r0.f19565f
            int r9 = r0.f19564e
            java.lang.String[] r10 = r0.d
            java.lang.String r2 = r0.f19563c
            androidx.room.PooledConnection r4 = r0.f19562b
            kotlin.ResultKt.b(r11)
            r11 = r10
            r10 = r4
            goto L88
        L36:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r8)
            r8 = 0
            return r8
        L3d:
            kotlin.ResultKt.b(r11)
            java.lang.String[] r8 = r8.g
            r8 = r8[r10]
            java.lang.String[] r10 = androidx.room.TriggerBasedInvalidationTracker.m
            int r11 = r10.length
            r2 = 0
            r7 = r2
            r2 = r8
            r8 = r11
            r11 = r10
            r10 = r9
            r9 = r7
        L4e:
            if (r9 >= r8) goto L8a
            r4 = r11[r9]
            androidx.room.TriggerBasedInvalidationTracker$Companion r5 = androidx.room.TriggerBasedInvalidationTracker.l
            r5.getClass()
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            java.lang.String r6 = "room_table_modification_trigger_"
            r5.<init>(r6)
            r5.append(r2)
            r6 = 95
            r5.append(r6)
            r5.append(r4)
            java.lang.String r4 = r5.toString()
            java.lang.String r5 = "DROP TRIGGER IF EXISTS `"
            r6 = 96
            java.lang.String r4 = defpackage.d21.d(r6, r5, r4)
            r0.f19562b = r10
            r0.f19563c = r2
            r0.d = r11
            r0.f19564e = r9
            r0.f19565f = r8
            r0.f19567i = r3
            java.lang.Object r4 = androidx.room.TransactorKt.a(r10, r4, r0)
            if (r4 != r1) goto L88
            return r1
        L88:
            int r9 = r9 + r3
            goto L4e
        L8a:
            kotlin.Unit r8 = kotlin.Unit.f71739a
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.TriggerBasedInvalidationTracker.d(androidx.room.TriggerBasedInvalidationTracker, androidx.room.Transactor, int, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public final void e(Function0 function0, Function0 function1) {
        function0.getClass();
        function1.getClass();
        if (this.f19526j.compareAndSet(false, true)) {
            function0.mo47invoke();
            BuildersKt.c(this.f19519a.j(), new CoroutineName("Room Invalidation Tracker Refresh"), null, new TriggerBasedInvalidationTracker$refreshInvalidationAsync$3(this, function1, null), 2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object f(ContinuationImpl continuationImpl) throws Throwable {
        TriggerBasedInvalidationTracker$syncTriggers$1 triggerBasedInvalidationTracker$syncTriggers$1;
        CloseBarrier closeBarrier;
        if (continuationImpl instanceof TriggerBasedInvalidationTracker$syncTriggers$1) {
            triggerBasedInvalidationTracker$syncTriggers$1 = (TriggerBasedInvalidationTracker$syncTriggers$1) continuationImpl;
            int i2 = triggerBasedInvalidationTracker$syncTriggers$1.f19570e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                triggerBasedInvalidationTracker$syncTriggers$1.f19570e = i2 - Integer.MIN_VALUE;
            } else {
                triggerBasedInvalidationTracker$syncTriggers$1 = new TriggerBasedInvalidationTracker$syncTriggers$1(this, continuationImpl);
            }
        } else {
            triggerBasedInvalidationTracker$syncTriggers$1 = new TriggerBasedInvalidationTracker$syncTriggers$1(this, continuationImpl);
        }
        Object obj = triggerBasedInvalidationTracker$syncTriggers$1.f19569c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = triggerBasedInvalidationTracker$syncTriggers$1.f19570e;
        if (i3 == 0) {
            ResultKt.b(obj);
            RoomDatabase roomDatabase = this.f19519a;
            CloseBarrier closeBarrier2 = roomDatabase.g;
            if (closeBarrier2.a()) {
                try {
                    TriggerBasedInvalidationTracker$syncTriggers$2$1 triggerBasedInvalidationTracker$syncTriggers$2$1 = new TriggerBasedInvalidationTracker$syncTriggers$2$1(this, null);
                    triggerBasedInvalidationTracker$syncTriggers$1.f19568b = closeBarrier2;
                    triggerBasedInvalidationTracker$syncTriggers$1.f19570e = 1;
                    if (roomDatabase.x(false, triggerBasedInvalidationTracker$syncTriggers$2$1, triggerBasedInvalidationTracker$syncTriggers$1) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                    closeBarrier = closeBarrier2;
                    closeBarrier.b();
                } catch (Throwable th) {
                    th = th;
                    closeBarrier = closeBarrier2;
                    closeBarrier.b();
                    throw th;
                }
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            closeBarrier = triggerBasedInvalidationTracker$syncTriggers$1.f19568b;
            try {
                ResultKt.b(obj);
                closeBarrier.b();
            } catch (Throwable th2) {
                th = th2;
                closeBarrier.b();
                throw th;
            }
        }
        return Unit.f71739a;
    }

    public final Pair g(String[] strArr) {
        strArr.getClass();
        SetBuilder setBuilder = new SetBuilder();
        for (String str : strArr) {
            String lowerCase = str.toLowerCase(Locale.ROOT);
            lowerCase.getClass();
            Set set = (Set) this.f19521c.get(lowerCase);
            if (set != null) {
                setBuilder.addAll(set);
            } else {
                setBuilder.add(str);
            }
        }
        String[] strArr2 = (String[]) SetsKt.a(setBuilder).toArray(new String[0]);
        int length = strArr2.length;
        int[] iArr = new int[length];
        for (int i2 = 0; i2 < length; i2++) {
            String str2 = strArr2[i2];
            String lowerCase2 = str2.toLowerCase(Locale.ROOT);
            lowerCase2.getClass();
            Integer num = (Integer) this.f19523f.get(lowerCase2);
            if (num == null) {
                md.n("There is no table with name ".concat(str2));
                return null;
            }
            iArr[i2] = num.intValue();
        }
        return new Pair(strArr2, iArr);
    }
}
