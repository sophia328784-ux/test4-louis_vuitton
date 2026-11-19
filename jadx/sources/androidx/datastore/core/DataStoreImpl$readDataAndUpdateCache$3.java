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
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\u0010\u0000\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00030\u0002\u0012\u0004\u0012\u00020\u00040\u0001\"\u0004\b\u0000\u0010\u0003H\u008a@"}, d2 = {"<anonymous>", "Lkotlin/Pair;", "Landroidx/datastore/core/State;", "T", ""}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.datastore.core.DataStoreImpl$readDataAndUpdateCache$3", f = "DataStoreImpl.kt", l = {298, 300}, m = "invokeSuspend")
final class DataStoreImpl$readDataAndUpdateCache$3 extends SuspendLambda implements Function1<Continuation<? super Pair<? extends State<Object>, ? extends Boolean>>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Throwable f12695b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f12696c;
    public final /* synthetic */ DataStoreImpl d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DataStoreImpl$readDataAndUpdateCache$3(DataStoreImpl dataStoreImpl, Continuation continuation) {
        super(1, continuation);
        this.d = dataStoreImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new DataStoreImpl$readDataAndUpdateCache$3(this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return ((DataStoreImpl$readDataAndUpdateCache$3) create((Continuation) obj)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Throwable th;
        State readException;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f12696c;
        DataStoreImpl dataStoreImpl = this.d;
        try {
            if (i2 == 0) {
                ResultKt.b(obj);
                this.f12696c = 1;
                obj = DataStoreImpl.f(dataStoreImpl, true, this);
                if (obj == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i2 != 1) {
                    if (i2 != 2) {
                        md.k("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    th = this.f12695b;
                    ResultKt.b(obj);
                    readException = new ReadException(th, ((Number) obj).intValue());
                    return new Pair(readException, Boolean.TRUE);
                }
                ResultKt.b(obj);
            }
            readException = (State) obj;
        } catch (Throwable th2) {
            int i3 = DataStoreImpl.m;
            InterProcessCoordinator interProcessCoordinatorG = dataStoreImpl.g();
            this.f12695b = th2;
            this.f12696c = 2;
            Object objC = interProcessCoordinatorG.c(this);
            if (objC != coroutineSingletons) {
                obj = objC;
                th = th2;
            }
            return coroutineSingletons;
        }
        return new Pair(readException, Boolean.TRUE);
    }
}
