package androidx.work.impl.model;

import android.net.NetworkRequest;
import android.os.Build;
import androidx.collection.ArrayMap;
import androidx.room.EntityDeleteOrUpdateAdapter;
import androidx.room.EntityInsertAdapter;
import androidx.room.InvalidationLiveDataContainer;
import androidx.room.InvalidationTracker;
import androidx.room.RoomDatabase;
import androidx.room.RoomLambdaTrackingLiveData;
import androidx.room.coroutines.FlowUtil$createFlow$$inlined$map$1;
import androidx.room.util.DBUtil;
import androidx.room.util.RelationUtil;
import androidx.room.util.SQLiteStatementUtil;
import androidx.room.util.StringUtil;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import androidx.work.BackoffPolicy;
import androidx.work.Constraints;
import androidx.work.Data;
import androidx.work.NetworkType;
import androidx.work.OutOfQuotaPolicy;
import androidx.work.WorkInfo;
import androidx.work.impl.utils.NetworkRequestCompat;
import androidx.work.impl.utils.NetworkRequestCompatKt;
import defpackage.c61;
import defpackage.cl0;
import defpackage.hb;
import defpackage.k71;
import defpackage.lc0;
import defpackage.n00;
import defpackage.n71;
import defpackage.o51;
import defpackage.o71;
import defpackage.r5;
import defpackage.rf0;
import defpackage.v40;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import org.bouncycastle.asn1.BERTags;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\u0006B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Landroidx/work/impl/model/WorkSpecDao_Impl;", "Landroidx/work/impl/model/WorkSpecDao;", "Landroidx/room/RoomDatabase;", "__db", "<init>", "(Landroidx/room/RoomDatabase;)V", "Companion", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class WorkSpecDao_Impl implements WorkSpecDao {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Companion f20530c = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final RoomDatabase f20531a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AnonymousClass1 f20532b;

    /* JADX INFO: renamed from: androidx.work.impl.model.WorkSpecDao_Impl$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u000f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"androidx/work/impl/model/WorkSpecDao_Impl$1", "Landroidx/room/EntityInsertAdapter;", "Landroidx/work/impl/model/WorkSpec;", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class AnonymousClass1 extends EntityInsertAdapter<WorkSpec> {
        @Override // androidx.room.EntityInsertAdapter
        public final void a(SQLiteStatement sQLiteStatement, Object obj) throws IOException {
            int i2;
            int i3;
            byte[] byteArray;
            byte[] byteArray2;
            WorkSpec workSpec = (WorkSpec) obj;
            sQLiteStatement.getClass();
            workSpec.getClass();
            int i4 = 1;
            sQLiteStatement.A(1, workSpec.f20510a);
            sQLiteStatement.a(2, WorkTypeConverters.f(workSpec.f20511b));
            sQLiteStatement.A(3, workSpec.f20512c);
            sQLiteStatement.A(4, workSpec.d);
            Data.Companion companion = Data.f20243b;
            Data data = workSpec.f20513e;
            companion.getClass();
            sQLiteStatement.b(5, Data.Companion.c(data));
            sQLiteStatement.b(6, Data.Companion.c(workSpec.f20514f));
            sQLiteStatement.a(7, workSpec.g);
            sQLiteStatement.a(8, workSpec.f20515h);
            sQLiteStatement.a(9, workSpec.f20516i);
            sQLiteStatement.a(10, workSpec.f20518k);
            BackoffPolicy backoffPolicy = workSpec.l;
            backoffPolicy.getClass();
            int i5 = WorkTypeConverters.WhenMappings.f20539b[backoffPolicy.ordinal()];
            if (i5 == 1) {
                i2 = 0;
            } else {
                if (i5 != 2) {
                    v40.g();
                    return;
                }
                i2 = 1;
            }
            sQLiteStatement.a(11, i2);
            sQLiteStatement.a(12, workSpec.m);
            sQLiteStatement.a(13, workSpec.n);
            sQLiteStatement.a(14, workSpec.o);
            sQLiteStatement.a(15, workSpec.p);
            sQLiteStatement.a(16, workSpec.q ? 1L : 0L);
            OutOfQuotaPolicy outOfQuotaPolicy = workSpec.r;
            outOfQuotaPolicy.getClass();
            int i6 = WorkTypeConverters.WhenMappings.d[outOfQuotaPolicy.ordinal()];
            if (i6 == 1) {
                i3 = 0;
            } else {
                if (i6 != 2) {
                    v40.g();
                    return;
                }
                i3 = 1;
            }
            sQLiteStatement.a(17, i3);
            sQLiteStatement.a(18, workSpec.s);
            sQLiteStatement.a(19, workSpec.t);
            sQLiteStatement.a(20, workSpec.u);
            sQLiteStatement.a(21, workSpec.v);
            sQLiteStatement.a(22, workSpec.w);
            String str = workSpec.x;
            if (str == null) {
                sQLiteStatement.l(23);
            } else {
                sQLiteStatement.A(23, str);
            }
            Boolean bool = workSpec.y;
            Integer numValueOf = bool != null ? Integer.valueOf(bool.booleanValue() ? 1 : 0) : null;
            if (numValueOf == null) {
                sQLiteStatement.l(24);
            } else {
                sQLiteStatement.a(24, numValueOf.intValue());
            }
            Constraints constraints = workSpec.f20517j;
            NetworkType networkType = constraints.f20226a;
            networkType.getClass();
            int i7 = WorkTypeConverters.WhenMappings.f20540c[networkType.ordinal()];
            if (i7 == 1) {
                i4 = 0;
            } else if (i7 != 2) {
                if (i7 == 3) {
                    i4 = 2;
                } else if (i7 == 4) {
                    i4 = 3;
                } else if (i7 == 5) {
                    i4 = 4;
                } else {
                    if (Build.VERSION.SDK_INT < 30 || networkType != NetworkType.TEMPORARILY_UNMETERED) {
                        lc0.n("Could not convert ", networkType, " to int");
                        return;
                    }
                    i4 = 5;
                }
            }
            sQLiteStatement.a(25, i4);
            NetworkRequestCompat networkRequestCompat = constraints.f20227b;
            networkRequestCompat.getClass();
            NetworkRequest networkRequest = (NetworkRequest) networkRequestCompat.f20548a;
            if (networkRequest == null) {
                byteArray = new byte[0];
            } else {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                try {
                    ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
                    try {
                        int[] iArrB = NetworkRequestCompatKt.b(networkRequest);
                        int[] iArrA = NetworkRequestCompatKt.a(networkRequest);
                        objectOutputStream.writeInt(iArrB.length);
                        for (int i8 : iArrB) {
                            objectOutputStream.writeInt(i8);
                        }
                        objectOutputStream.writeInt(iArrA.length);
                        for (int i9 : iArrA) {
                            objectOutputStream.writeInt(i9);
                        }
                        objectOutputStream.close();
                        byteArrayOutputStream.close();
                        byteArray = byteArrayOutputStream.toByteArray();
                        byteArray.getClass();
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            CloseableKt.a(objectOutputStream, th);
                            throw th2;
                        }
                    }
                } catch (Throwable th3) {
                    try {
                        throw th3;
                    } catch (Throwable th4) {
                        CloseableKt.a(byteArrayOutputStream, th3);
                        throw th4;
                    }
                }
            }
            sQLiteStatement.b(26, byteArray);
            sQLiteStatement.a(27, constraints.f20228c ? 1L : 0L);
            sQLiteStatement.a(28, constraints.d ? 1L : 0L);
            sQLiteStatement.a(29, constraints.f20229e ? 1L : 0L);
            sQLiteStatement.a(30, constraints.f20230f ? 1L : 0L);
            sQLiteStatement.a(31, constraints.g);
            sQLiteStatement.a(32, constraints.f20231h);
            Set<Constraints.ContentUriTrigger> set = constraints.f20232i;
            set.getClass();
            if (set.isEmpty()) {
                byteArray2 = new byte[0];
            } else {
                ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                try {
                    ObjectOutputStream objectOutputStream2 = new ObjectOutputStream(byteArrayOutputStream2);
                    try {
                        objectOutputStream2.writeInt(set.size());
                        for (Constraints.ContentUriTrigger contentUriTrigger : set) {
                            objectOutputStream2.writeUTF(contentUriTrigger.f20233a.toString());
                            objectOutputStream2.writeBoolean(contentUriTrigger.f20234b);
                        }
                        objectOutputStream2.close();
                        byteArrayOutputStream2.close();
                        byteArray2 = byteArrayOutputStream2.toByteArray();
                        byteArray2.getClass();
                    } catch (Throwable th5) {
                        try {
                            throw th5;
                        } catch (Throwable th6) {
                            CloseableKt.a(objectOutputStream2, th5);
                            throw th6;
                        }
                    }
                } catch (Throwable th7) {
                    try {
                        throw th7;
                    } catch (Throwable th8) {
                        CloseableKt.a(byteArrayOutputStream2, th7);
                        throw th8;
                    }
                }
            }
            sQLiteStatement.b(33, byteArray2);
        }

        @Override // androidx.room.EntityInsertAdapter
        public final String b() {
            return "INSERT OR IGNORE INTO `WorkSpec` (`id`,`state`,`worker_class_name`,`input_merger_class_name`,`input`,`output`,`initial_delay`,`interval_duration`,`flex_duration`,`run_attempt_count`,`backoff_policy`,`backoff_delay_duration`,`last_enqueue_time`,`minimum_retention_duration`,`schedule_requested_at`,`run_in_foreground`,`out_of_quota_policy`,`period_count`,`generation`,`next_schedule_time_override`,`next_schedule_time_override_generation`,`stop_reason`,`trace_tag`,`backoff_on_system_interruptions`,`required_network_type`,`required_network_request`,`requires_charging`,`requires_device_idle`,`requires_battery_not_low`,`requires_storage_not_low`,`trigger_content_update_delay`,`trigger_max_content_delay`,`content_uri_triggers`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        }
    }

    /* JADX INFO: renamed from: androidx.work.impl.model.WorkSpecDao_Impl$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u000f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"androidx/work/impl/model/WorkSpecDao_Impl$2", "Landroidx/room/EntityDeleteOrUpdateAdapter;", "Landroidx/work/impl/model/WorkSpec;", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class AnonymousClass2 extends EntityDeleteOrUpdateAdapter<WorkSpec> {
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/work/impl/model/WorkSpecDao_Impl$Companion;", "", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public WorkSpecDao_Impl(RoomDatabase roomDatabase) {
        roomDatabase.getClass();
        this.f20531a = roomDatabase;
        this.f20532b = new AnonymousClass1();
        new AnonymousClass2();
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final int A() {
        return ((Number) DBUtil.c(this.f20531a, true, false, new o51(20))).intValue();
    }

    public final void B(SQLiteConnection sQLiteConnection, ArrayMap arrayMap) {
        Set setKeySet = arrayMap.keySet();
        if (setKeySet.isEmpty()) {
            return;
        }
        if (arrayMap.d > 999) {
            RelationUtil.a(arrayMap, new o71(this, sQLiteConnection, 0));
            return;
        }
        StringBuilder sbT = n00.t("SELECT `progress`,`work_spec_id` FROM `WorkProgress` WHERE `work_spec_id` IN (");
        StringUtil.a(sbT, setKeySet.size());
        sbT.append(")");
        SQLiteStatement sQLiteStatementT1 = sQLiteConnection.T1(sbT.toString());
        Iterator it = setKeySet.iterator();
        int i2 = 1;
        while (it.hasNext()) {
            sQLiteStatementT1.A(i2, (String) it.next());
            i2++;
        }
        try {
            sQLiteStatementT1.getClass();
            int iA = SQLiteStatementUtil.a(sQLiteStatementT1, "work_spec_id");
            if (iA == -1) {
                sQLiteStatementT1.close();
                return;
            }
            while (sQLiteStatementT1.Q1()) {
                List list = (List) arrayMap.get(sQLiteStatementT1.m1(iA));
                if (list != null) {
                    byte[] blob = sQLiteStatementT1.getBlob(0);
                    Data.f20243b.getClass();
                    list.add(Data.Companion.a(blob));
                }
            }
            sQLiteStatementT1.close();
        } catch (Throwable th) {
            sQLiteStatementT1.close();
            throw th;
        }
    }

    public final void C(SQLiteConnection sQLiteConnection, ArrayMap arrayMap) {
        Set setKeySet = arrayMap.keySet();
        if (setKeySet.isEmpty()) {
            return;
        }
        if (arrayMap.d > 999) {
            RelationUtil.a(arrayMap, new o71(this, sQLiteConnection, 1));
            return;
        }
        StringBuilder sbT = n00.t("SELECT `tag`,`work_spec_id` FROM `WorkTag` WHERE `work_spec_id` IN (");
        StringUtil.a(sbT, setKeySet.size());
        sbT.append(")");
        SQLiteStatement sQLiteStatementT1 = sQLiteConnection.T1(sbT.toString());
        Iterator it = setKeySet.iterator();
        int i2 = 1;
        while (it.hasNext()) {
            sQLiteStatementT1.A(i2, (String) it.next());
            i2++;
        }
        try {
            sQLiteStatementT1.getClass();
            int iA = SQLiteStatementUtil.a(sQLiteStatementT1, "work_spec_id");
            if (iA == -1) {
                sQLiteStatementT1.close();
                return;
            }
            while (sQLiteStatementT1.Q1()) {
                List list = (List) arrayMap.get(sQLiteStatementT1.m1(iA));
                if (list != null) {
                    list.add(sQLiteStatementT1.m1(0));
                }
            }
            sQLiteStatementT1.close();
        } catch (Throwable th) {
            sQLiteStatementT1.close();
            throw th;
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final void a(String str) {
        str.getClass();
        DBUtil.c(this.f20531a, false, true, new k71(str, 4));
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final void b(String str) {
        str.getClass();
        DBUtil.c(this.f20531a, false, true, new k71(str, 10));
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final int c(long j2, String str) {
        str.getClass();
        return ((Number) DBUtil.c(this.f20531a, false, true, new n71(1, str, j2))).intValue();
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final List d(long j2) {
        return (List) DBUtil.c(this.f20531a, true, false, new r5(j2, 19));
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final void e(WorkSpec workSpec) {
        DBUtil.c(this.f20531a, false, true, new c61(this, workSpec, 13));
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final void f(int i2, String str) {
        str.getClass();
        DBUtil.c(this.f20531a, false, true, new rf0(str, i2, 2));
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final List g() {
        return (List) DBUtil.c(this.f20531a, true, false, new o51(25));
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final int h(String str, WorkInfo.State state) {
        state.getClass();
        str.getClass();
        return ((Number) DBUtil.c(this.f20531a, false, true, new c61(state, str, 15))).intValue();
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final List i(String str) {
        str.getClass();
        return (List) DBUtil.c(this.f20531a, true, false, new k71(str, 7));
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final WorkInfo.State j(String str) {
        str.getClass();
        return (WorkInfo.State) DBUtil.c(this.f20531a, true, false, new k71(str, 6));
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final WorkSpec k(String str) {
        str.getClass();
        return (WorkSpec) DBUtil.c(this.f20531a, true, false, new k71(str, 3));
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final int l(String str) {
        str.getClass();
        return ((Number) DBUtil.c(this.f20531a, false, true, new k71(str, 8))).intValue();
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final List m(String str) {
        str.getClass();
        return (List) DBUtil.c(this.f20531a, true, false, new k71(str, 11));
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final int n() {
        return ((Number) DBUtil.c(this.f20531a, false, true, new o51(21))).intValue();
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final List o() {
        return (List) DBUtil.c(this.f20531a, true, false, new o51(24));
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final List p(String str) {
        str.getClass();
        return (List) DBUtil.c(this.f20531a, true, false, new k71(str, 5));
    }

    /* JADX WARN: Type inference failed for: r2v3, types: [androidx.room.coroutines.FlowUtil$createFlow$$inlined$map$1] */
    @Override // androidx.work.impl.model.WorkSpecDao
    public final FlowUtil$createFlow$$inlined$map$1 q() {
        final o51 o51Var = new o51(23);
        final RoomDatabase roomDatabase = this.f20531a;
        roomDatabase.getClass();
        final Flow flowC = FlowKt.c(roomDatabase.k().b((String[]) Arrays.copyOf(new String[]{"workspec"}, 1)), -1);
        final boolean z = false;
        return new Flow<Object>() { // from class: androidx.room.coroutines.FlowUtil$createFlow$$inlined$map$1

            /* JADX INFO: renamed from: androidx.room.coroutines.FlowUtil$createFlow$$inlined$map$1$2, reason: invalid class name */
            @Metadata(d1 = {"\u0000\f\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\u0010\u0006\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u00012\u0006\u0010\u0002\u001a\u00028\u0000H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"T", "R", "value", "", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {2, 0, 0})
            public final class AnonymousClass2<T> implements FlowCollector {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ FlowCollector f19630b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ RoomDatabase f19631c;
                public final /* synthetic */ boolean d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ Function1 f19632e;

                /* JADX INFO: renamed from: androidx.room.coroutines.FlowUtil$createFlow$$inlined$map$1$2$1, reason: invalid class name */
                @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
                @DebugMetadata(c = "androidx.room.coroutines.FlowUtil$createFlow$$inlined$map$1$2", f = "FlowBuilder.kt", l = {BERTags.FLAGS, 223}, m = "emit")
                public final class AnonymousClass1 extends ContinuationImpl {

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public /* synthetic */ Object f19633b;

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public int f19634c;
                    public FlowCollector d;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        this.f19633b = obj;
                        this.f19634c |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(FlowCollector flowCollector, RoomDatabase roomDatabase, boolean z, Function1 function1) {
                    this.f19630b = flowCollector;
                    this.f19631c = roomDatabase;
                    this.d = z;
                    this.f19632e = function1;
                }

                /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                /* JADX WARN: Code restructure failed: missing block: B:21:0x0058, code lost:
                
                    if (r6.emit(r8, r0) == r1) goto L22;
                 */
                @Override // kotlinx.coroutines.flow.FlowCollector
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object emit(java.lang.Object r7, kotlin.coroutines.Continuation r8) throws java.lang.Throwable {
                    /*
                        r6 = this;
                        boolean r0 = r8 instanceof androidx.room.coroutines.FlowUtil$createFlow$$inlined$map$1.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L13
                        r0 = r8
                        androidx.room.coroutines.FlowUtil$createFlow$$inlined$map$1$2$1 r0 = (androidx.room.coroutines.FlowUtil$createFlow$$inlined$map$1.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.f19634c
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.f19634c = r1
                        goto L18
                    L13:
                        androidx.room.coroutines.FlowUtil$createFlow$$inlined$map$1$2$1 r0 = new androidx.room.coroutines.FlowUtil$createFlow$$inlined$map$1$2$1
                        r0.<init>(r8)
                    L18:
                        java.lang.Object r8 = r0.f19633b
                        kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                        int r2 = r0.f19634c
                        r3 = 0
                        r4 = 2
                        r5 = 1
                        if (r2 == 0) goto L37
                        if (r2 == r5) goto L31
                        if (r2 != r4) goto L2b
                        kotlin.ResultKt.b(r8)
                        goto L5b
                    L2b:
                        java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                        defpackage.md.k(r6)
                        return r3
                    L31:
                        kotlinx.coroutines.flow.FlowCollector r6 = r0.d
                        kotlin.ResultKt.b(r8)
                        goto L50
                    L37:
                        kotlin.ResultKt.b(r8)
                        java.util.Set r7 = (java.util.Set) r7
                        kotlinx.coroutines.flow.FlowCollector r7 = r6.f19630b
                        r0.d = r7
                        r0.f19634c = r5
                        androidx.room.RoomDatabase r8 = r6.f19631c
                        boolean r2 = r6.d
                        kotlin.jvm.functions.Function1 r6 = r6.f19632e
                        java.lang.Object r8 = androidx.room.util.DBUtil.d(r8, r5, r2, r6, r0)
                        if (r8 != r1) goto L4f
                        goto L5a
                    L4f:
                        r6 = r7
                    L50:
                        r0.d = r3
                        r0.f19634c = r4
                        java.lang.Object r6 = r6.emit(r8, r0)
                        if (r6 != r1) goto L5b
                    L5a:
                        return r1
                    L5b:
                        kotlin.Unit r6 = kotlin.Unit.f71739a
                        return r6
                    */
                    throw new UnsupportedOperationException("Method not decompiled: androidx.room.coroutines.FlowUtil$createFlow$$inlined$map$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                }
            }

            @Override // kotlinx.coroutines.flow.Flow
            public final Object f(FlowCollector flowCollector, Continuation continuation) {
                Object objF = flowC.f(new AnonymousClass2(flowCollector, roomDatabase, z, o51Var), continuation);
                return objF == CoroutineSingletons.COROUTINE_SUSPENDED ? objF : Unit.f71739a;
            }
        };
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final List r(int i2) {
        return (List) DBUtil.c(this.f20531a, true, false, new hb(i2, 26));
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final void s(long j2, String str) {
        str.getClass();
        DBUtil.c(this.f20531a, false, true, new n71(0, str, j2));
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final void t(String str, Data data) {
        str.getClass();
        data.getClass();
        DBUtil.c(this.f20531a, false, true, new c61(data, str, 14));
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final List u() {
        return (List) DBUtil.c(this.f20531a, true, false, new o51(26));
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final void v(int i2, String str) {
        str.getClass();
        DBUtil.c(this.f20531a, false, true, new rf0(i2, str, 3));
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final List w() {
        return (List) DBUtil.c(this.f20531a, true, false, new o51(22));
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final int x(String str) {
        str.getClass();
        return ((Number) DBUtil.c(this.f20531a, false, true, new k71(str, 9))).intValue();
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final RoomLambdaTrackingLiveData y(List list) {
        list.getClass();
        StringBuilder sb = new StringBuilder();
        sb.append("SELECT id, state, output, run_attempt_count, generation, required_network_type, required_network_request, requires_charging, requires_device_idle, requires_battery_not_low, requires_storage_not_low, trigger_content_update_delay, trigger_max_content_delay, content_uri_triggers, initial_delay, interval_duration, flex_duration, backoff_policy, backoff_delay_duration, last_enqueue_time, period_count, next_schedule_time_override, stop_reason FROM workspec WHERE id IN (");
        StringUtil.a(sb, list.size());
        sb.append(")");
        String string = sb.toString();
        InvalidationTracker invalidationTrackerK = this.f20531a.k();
        String[] strArr = {"WorkTag", "WorkProgress", "workspec"};
        cl0 cl0Var = new cl0(string, list, this, 24);
        invalidationTrackerK.f19402e.g(strArr);
        InvalidationLiveDataContainer invalidationLiveDataContainer = invalidationTrackerK.f19407k;
        invalidationLiveDataContainer.getClass();
        return new RoomLambdaTrackingLiveData(invalidationLiveDataContainer.f19397a, invalidationLiveDataContainer, true, strArr, cl0Var);
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final int z(String str) {
        str.getClass();
        return ((Number) DBUtil.c(this.f20531a, false, true, new k71(str, 12))).intValue();
    }
}
