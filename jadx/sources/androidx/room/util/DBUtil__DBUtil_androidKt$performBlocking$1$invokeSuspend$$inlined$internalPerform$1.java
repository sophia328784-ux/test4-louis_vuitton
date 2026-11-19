package androidx.room.util;

import androidx.room.InvalidationTracker;
import androidx.room.RoomDatabase;
import androidx.room.TransactionScope;
import androidx.room.Transactor;
import androidx.room.coroutines.RawConnectionAccessor;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\n"}, d2 = {"R", "Landroidx/room/Transactor;", "transactor", "<anonymous>"}, k = 3, mv = {2, 0, 0})
@DebugMetadata(c = "androidx.room.util.DBUtil__DBUtil_androidKt$performBlocking$1$invokeSuspend$$inlined$internalPerform$1", f = "DBUtil.android.kt", l = {56, 57, EACTags.DYNAMIC_EXTERNAL_AUTHENTIFICATION, 60}, m = "invokeSuspend")
public final class DBUtil__DBUtil_androidKt$performBlocking$1$invokeSuspend$$inlined$internalPerform$1 extends SuspendLambda implements Function2<Transactor, Continuation<Object>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Transactor.SQLiteTransactionType f19739b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f19740c;
    public /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ boolean f19741e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ boolean f19742f;
    public final /* synthetic */ RoomDatabase g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Function1 f19743h;

    /* JADX INFO: renamed from: androidx.room.util.DBUtil__DBUtil_androidKt$performBlocking$1$invokeSuspend$$inlined$internalPerform$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0002\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\n"}, d2 = {"R", "Landroidx/room/TransactionScope;", "<anonymous>"}, k = 3, mv = {2, 0, 0})
    @DebugMetadata(c = "androidx.room.util.DBUtil__DBUtil_androidKt$performBlocking$1$invokeSuspend$$inlined$internalPerform$1$1", f = "DBUtil.android.kt", l = {}, m = "invokeSuspend")
    public final class AnonymousClass1 extends SuspendLambda implements Function2<TransactionScope<Object>, Continuation<Object>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public /* synthetic */ Object f19744b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ Function1 f19745c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Continuation continuation, Function1 function1) {
            super(2, continuation);
            this.f19745c = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(continuation, this.f19745c);
            anonymousClass1.f19744b = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((TransactionScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            ResultKt.b(obj);
            TransactionScope transactionScope = (TransactionScope) this.f19744b;
            transactionScope.getClass();
            return this.f19745c.invoke(((RawConnectionAccessor) transactionScope).d());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DBUtil__DBUtil_androidKt$performBlocking$1$invokeSuspend$$inlined$internalPerform$1(boolean z, boolean z2, RoomDatabase roomDatabase, Continuation continuation, Function1 function1) {
        super(2, continuation);
        this.f19741e = z;
        this.f19742f = z2;
        this.g = roomDatabase;
        this.f19743h = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        DBUtil__DBUtil_androidKt$performBlocking$1$invokeSuspend$$inlined$internalPerform$1 dBUtil__DBUtil_androidKt$performBlocking$1$invokeSuspend$$inlined$internalPerform$1 = new DBUtil__DBUtil_androidKt$performBlocking$1$invokeSuspend$$inlined$internalPerform$1(this.f19741e, this.f19742f, this.g, continuation, this.f19743h);
        dBUtil__DBUtil_androidKt$performBlocking$1$invokeSuspend$$inlined$internalPerform$1.d = obj;
        return dBUtil__DBUtil_androidKt$performBlocking$1$invokeSuspend$$inlined$internalPerform$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((DBUtil__DBUtil_androidKt$performBlocking$1$invokeSuspend$$inlined$internalPerform$1) create((Transactor) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:36:0x009c A[DONT_INVERT, PHI: r1 r12
      0x009c: PHI (r1v11 androidx.room.Transactor) = (r1v8 androidx.room.Transactor), (r1v16 androidx.room.Transactor) binds: [B:34:0x0099, B:11:0x0026] A[DONT_GENERATE, DONT_INLINE]
      0x009c: PHI (r12v15 java.lang.Object) = (r12v13 java.lang.Object), (r12v0 java.lang.Object) binds: [B:34:0x0099, B:11:0x0026] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:37:0x009e  */
    /* JADX WARN: Code duplicated, block: B:40:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:43:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:45:0x00c2 A[RETURN] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Transactor.SQLiteTransactionType sQLiteTransactionType;
        Transactor transactor;
        Transactor.SQLiteTransactionType sQLiteTransactionType2;
        Transactor transactor2;
        Transactor transactor3;
        Boolean boolC;
        Object obj2;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f19740c;
        Function1 function1 = this.f19743h;
        RoomDatabase roomDatabase = this.g;
        boolean z = this.f19742f;
        if (i2 == 0) {
            ResultKt.b(obj);
            Transactor transactor4 = (Transactor) this.d;
            if (!this.f19741e) {
                transactor4.getClass();
                return function1.invoke(((RawConnectionAccessor) transactor4).d());
            }
            sQLiteTransactionType = z ? Transactor.SQLiteTransactionType.DEFERRED : Transactor.SQLiteTransactionType.IMMEDIATE;
            if (z) {
                Transactor.SQLiteTransactionType sQLiteTransactionType3 = sQLiteTransactionType;
                transactor = transactor4;
                sQLiteTransactionType2 = sQLiteTransactionType3;
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(null, function1);
                this.d = transactor;
                this.f19739b = null;
                this.f19740c = 3;
                obj = transactor.a(sQLiteTransactionType2, anonymousClass1, this);
                if (obj != coroutineSingletons) {
                    if (z) {
                        return obj;
                    }
                    this.d = obj;
                    this.f19740c = 4;
                    boolC = transactor.c(this);
                    if (boolC != coroutineSingletons) {
                        Object obj3 = obj;
                        obj = boolC;
                        obj2 = obj3;
                        if (!((Boolean) obj).booleanValue()) {
                            InvalidationTracker invalidationTrackerK = roomDatabase.k();
                            invalidationTrackerK.f19402e.e(invalidationTrackerK.f19405i, invalidationTrackerK.f19406j);
                        }
                        return obj2;
                    }
                }
            } else {
                this.d = transactor4;
                this.f19739b = sQLiteTransactionType;
                this.f19740c = 1;
                Boolean boolC2 = transactor4.c(this);
                if (boolC2 != coroutineSingletons) {
                    transactor2 = transactor4;
                    obj = boolC2;
                }
            }
            return coroutineSingletons;
        }
        if (i2 == 1) {
            sQLiteTransactionType = this.f19739b;
            transactor2 = (Transactor) this.d;
            ResultKt.b(obj);
        } else {
            if (i2 == 2) {
                sQLiteTransactionType = this.f19739b;
                transactor3 = (Transactor) this.d;
                ResultKt.b(obj);
                sQLiteTransactionType2 = sQLiteTransactionType;
                transactor = transactor3;
                AnonymousClass1 anonymousClass2 = new AnonymousClass1(null, function1);
                this.d = transactor;
                this.f19739b = null;
                this.f19740c = 3;
                obj = transactor.a(sQLiteTransactionType2, anonymousClass2, this);
                if (obj != coroutineSingletons) {
                    if (z) {
                        return obj;
                    }
                    this.d = obj;
                    this.f19740c = 4;
                    boolC = transactor.c(this);
                    if (boolC != coroutineSingletons) {
                        Object obj4 = obj;
                        obj = boolC;
                        obj2 = obj4;
                    }
                }
                return coroutineSingletons;
            }
            if (i2 == 3) {
                transactor = (Transactor) this.d;
                ResultKt.b(obj);
                if (z) {
                    return obj;
                }
                this.d = obj;
                this.f19740c = 4;
                boolC = transactor.c(this);
                if (boolC != coroutineSingletons) {
                    Object obj5 = obj;
                    obj = boolC;
                    obj2 = obj5;
                }
                return coroutineSingletons;
            }
            if (i2 != 4) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            obj2 = this.d;
            ResultKt.b(obj);
        }
        if (!((Boolean) obj).booleanValue()) {
            InvalidationTracker invalidationTrackerK2 = roomDatabase.k();
            invalidationTrackerK2.f19402e.e(invalidationTrackerK2.f19405i, invalidationTrackerK2.f19406j);
        }
        return obj2;
        if (((Boolean) obj).booleanValue()) {
            sQLiteTransactionType2 = sQLiteTransactionType;
            transactor = transactor2;
            AnonymousClass1 anonymousClass3 = new AnonymousClass1(null, function1);
            this.d = transactor;
            this.f19739b = null;
            this.f19740c = 3;
            obj = transactor.a(sQLiteTransactionType2, anonymousClass3, this);
            if (obj != coroutineSingletons) {
                if (z) {
                    return obj;
                }
                this.d = obj;
                this.f19740c = 4;
                boolC = transactor.c(this);
                if (boolC != coroutineSingletons) {
                    Object obj6 = obj;
                    obj = boolC;
                    obj2 = obj6;
                    if (!((Boolean) obj).booleanValue()) {
                        InvalidationTracker invalidationTrackerK3 = roomDatabase.k();
                        invalidationTrackerK3.f19402e.e(invalidationTrackerK3.f19405i, invalidationTrackerK3.f19406j);
                    }
                    return obj2;
                }
            }
        } else {
            InvalidationTracker invalidationTrackerK4 = roomDatabase.k();
            this.d = transactor2;
            this.f19739b = sQLiteTransactionType;
            this.f19740c = 2;
            if (invalidationTrackerK4.d(this) != coroutineSingletons) {
                transactor3 = transactor2;
                sQLiteTransactionType2 = sQLiteTransactionType;
                transactor = transactor3;
                AnonymousClass1 anonymousClass4 = new AnonymousClass1(null, function1);
                this.d = transactor;
                this.f19739b = null;
                this.f19740c = 3;
                obj = transactor.a(sQLiteTransactionType2, anonymousClass4, this);
                if (obj != coroutineSingletons) {
                    if (z) {
                        return obj;
                    }
                    this.d = obj;
                    this.f19740c = 4;
                    boolC = transactor.c(this);
                    if (boolC != coroutineSingletons) {
                        Object obj7 = obj;
                        obj = boolC;
                        obj2 = obj7;
                        if (!((Boolean) obj).booleanValue()) {
                            InvalidationTracker invalidationTrackerK5 = roomDatabase.k();
                            invalidationTrackerK5.f19402e.e(invalidationTrackerK5.f19405i, invalidationTrackerK5.f19406j);
                        }
                        return obj2;
                    }
                }
            }
        }
        return coroutineSingletons;
    }
}
