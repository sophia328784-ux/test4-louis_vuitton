package androidx.datastore.core;

import defpackage.md;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00030\u0002\u0012\u0004\u0012\u00020\u00040\u0001\"\u0004\b\u0000\u0010\u00032\u0006\u0010\u0005\u001a\u00020\u0004H\u008a@"}, d2 = {"<anonymous>", "Lkotlin/Pair;", "Landroidx/datastore/core/State;", "T", "", "locked"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.datastore.core.DataStoreImpl$readDataAndUpdateCache$4", f = "DataStoreImpl.kt", l = {306, 309}, m = "invokeSuspend")
final class DataStoreImpl$readDataAndUpdateCache$4 extends SuspendLambda implements Function2<Boolean, Continuation<? super Pair<? extends State<Object>, ? extends Boolean>>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Throwable f12697b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f12698c;
    public /* synthetic */ boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ DataStoreImpl f12699e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f12700f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DataStoreImpl$readDataAndUpdateCache$4(DataStoreImpl dataStoreImpl, int i2, Continuation continuation) {
        super(2, continuation);
        this.f12699e = dataStoreImpl;
        this.f12700f = i2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        DataStoreImpl$readDataAndUpdateCache$4 dataStoreImpl$readDataAndUpdateCache$4 = new DataStoreImpl$readDataAndUpdateCache$4(this.f12699e, this.f12700f, continuation);
        dataStoreImpl$readDataAndUpdateCache$4.d = ((Boolean) obj).booleanValue();
        return dataStoreImpl$readDataAndUpdateCache$4;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        Boolean bool = (Boolean) obj;
        bool.booleanValue();
        return ((DataStoreImpl$readDataAndUpdateCache$4) create(bool, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [int] */
    /* JADX WARN: Type inference failed for: r1v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v2, types: [boolean] */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v9 */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int iIntValue;
        Throwable th;
        boolean z;
        State readException;
        ?? r1;
        ?? r2;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ?? r3 = this.f12698c;
        DataStoreImpl dataStoreImpl = this.f12699e;
        try {
            if (r3 == 0) {
                ResultKt.b(obj);
                boolean z2 = this.d;
                this.d = z2;
                this.f12698c = 1;
                obj = DataStoreImpl.f(dataStoreImpl, z2, this);
                r3 = z2;
                if (obj == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (r3 != 1) {
                    if (r3 != 2) {
                        md.k("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    z = this.d;
                    th = this.f12697b;
                    ResultKt.b(obj);
                    iIntValue = ((Number) obj).intValue();
                    r2 = z;
                    readException = new ReadException(th, iIntValue);
                    r1 = r2;
                    return new Pair(readException, Boolean.valueOf((boolean) r1));
                }
                boolean z3 = this.d;
                ResultKt.b(obj);
                r3 = z3;
            }
            readException = (State) obj;
            r1 = r3;
        } catch (Throwable th2) {
            if (r3 != 0) {
                int i2 = DataStoreImpl.m;
                InterProcessCoordinator interProcessCoordinatorG = dataStoreImpl.g();
                this.f12697b = th2;
                this.d = r3;
                this.f12698c = 2;
                Object objC = interProcessCoordinatorG.c(this);
                if (objC != coroutineSingletons) {
                    obj = objC;
                    th = th2;
                    z = r3 == true ? 1 : 0;
                }
                return coroutineSingletons;
            }
            iIntValue = this.f12700f;
            th = th2;
            r2 = r3;
        }
        return new Pair(readException, Boolean.valueOf((boolean) r1));
    }
}
