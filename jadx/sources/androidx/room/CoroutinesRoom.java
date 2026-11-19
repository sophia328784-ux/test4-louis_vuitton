package androidx.room;

import android.os.CancellationSignal;
import androidx.room.util.DBUtil;
import defpackage.md;
import java.util.concurrent.Callable;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.Job;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Landroidx/room/CoroutinesRoom;", "", "Companion", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public abstract class CoroutinesRoom {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Companion f19369a = new Companion(null);

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/room/CoroutinesRoom$Companion;", "", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        public final Object a(RoomDatabase roomDatabase, final CancellationSignal cancellationSignal, Callable callable, ContinuationImpl continuationImpl) {
            CoroutinesRoom$Companion$execute$3 coroutinesRoom$Companion$execute$3;
            if (continuationImpl instanceof CoroutinesRoom$Companion$execute$3) {
                coroutinesRoom$Companion$execute$3 = (CoroutinesRoom$Companion$execute$3) continuationImpl;
                int i2 = coroutinesRoom$Companion$execute$3.f19378h;
                if ((i2 & Integer.MIN_VALUE) != 0) {
                    coroutinesRoom$Companion$execute$3.f19378h = i2 - Integer.MIN_VALUE;
                } else {
                    coroutinesRoom$Companion$execute$3 = new CoroutinesRoom$Companion$execute$3(this, continuationImpl);
                }
            } else {
                coroutinesRoom$Companion$execute$3 = new CoroutinesRoom$Companion$execute$3(this, continuationImpl);
            }
            Object objB = coroutinesRoom$Companion$execute$3.f19377f;
            Object obj = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i3 = coroutinesRoom$Companion$execute$3.f19378h;
            if (i3 == 0) {
                ResultKt.b(objB);
                if (roomDatabase.u() && roomDatabase.r()) {
                    return callable.call();
                }
                coroutinesRoom$Companion$execute$3.f19374b = roomDatabase;
                coroutinesRoom$Companion$execute$3.f19375c = cancellationSignal;
                coroutinesRoom$Companion$execute$3.d = callable;
                coroutinesRoom$Companion$execute$3.f19378h = 1;
                objB = DBUtil.b(roomDatabase, false, coroutinesRoom$Companion$execute$3);
                if (objB != obj) {
                }
            }
            if (i3 != 1) {
                if (i3 == 2) {
                    ResultKt.b(objB);
                    return objB;
                }
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            callable = coroutinesRoom$Companion$execute$3.d;
            cancellationSignal = coroutinesRoom$Companion$execute$3.f19375c;
            roomDatabase = coroutinesRoom$Companion$execute$3.f19374b;
            ResultKt.b(objB);
            CoroutineContext coroutineContext = (CoroutineContext) objB;
            coroutinesRoom$Companion$execute$3.f19374b = roomDatabase;
            coroutinesRoom$Companion$execute$3.f19375c = cancellationSignal;
            coroutinesRoom$Companion$execute$3.d = callable;
            coroutinesRoom$Companion$execute$3.f19376e = coroutineContext;
            coroutinesRoom$Companion$execute$3.f19378h = 2;
            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.b(coroutinesRoom$Companion$execute$3), 1);
            cancellableContinuationImpl.initCancellability();
            final Job jobC = BuildersKt.c(roomDatabase.j(), coroutineContext, null, new CoroutinesRoom$Companion$execute$4$job$1(callable, cancellableContinuationImpl, null), 2);
            cancellableContinuationImpl.invokeOnCancellation(new Function1<Throwable, Unit>() { // from class: androidx.room.CoroutinesRoom$Companion$execute$4$1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    CancellationSignal cancellationSignal2 = cancellationSignal;
                    if (cancellationSignal2 != null) {
                        cancellationSignal2.cancel();
                    }
                    jobC.cancel(null);
                    return Unit.f71739a;
                }
            });
            Object result = cancellableContinuationImpl.getResult();
            return result == obj ? obj : result;
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        public final Object b(RoomDatabase roomDatabase, boolean z, Callable callable, ContinuationImpl continuationImpl) throws Throwable {
            CoroutinesRoom$Companion$execute$1 coroutinesRoom$Companion$execute$1;
            if (continuationImpl instanceof CoroutinesRoom$Companion$execute$1) {
                coroutinesRoom$Companion$execute$1 = (CoroutinesRoom$Companion$execute$1) continuationImpl;
                int i2 = coroutinesRoom$Companion$execute$1.f19372e;
                if ((i2 & Integer.MIN_VALUE) != 0) {
                    coroutinesRoom$Companion$execute$1.f19372e = i2 - Integer.MIN_VALUE;
                } else {
                    coroutinesRoom$Companion$execute$1 = new CoroutinesRoom$Companion$execute$1(this, continuationImpl);
                }
            } else {
                coroutinesRoom$Companion$execute$1 = new CoroutinesRoom$Companion$execute$1(this, continuationImpl);
            }
            Object objB = coroutinesRoom$Companion$execute$1.f19371c;
            Object obj = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i3 = coroutinesRoom$Companion$execute$1.f19372e;
            if (i3 == 0) {
                ResultKt.b(objB);
                if (roomDatabase.u() && roomDatabase.r()) {
                    return callable.call();
                }
                coroutinesRoom$Companion$execute$1.f19370b = callable;
                coroutinesRoom$Companion$execute$1.f19372e = 1;
                objB = DBUtil.b(roomDatabase, z, coroutinesRoom$Companion$execute$1);
                if (objB != obj) {
                }
            }
            if (i3 != 1) {
                if (i3 == 2) {
                    ResultKt.b(objB);
                    return objB;
                }
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            callable = coroutinesRoom$Companion$execute$1.f19370b;
            ResultKt.b(objB);
            CoroutinesRoom$Companion$execute$2 coroutinesRoom$Companion$execute$2 = new CoroutinesRoom$Companion$execute$2(callable, null);
            coroutinesRoom$Companion$execute$1.f19370b = null;
            coroutinesRoom$Companion$execute$1.f19372e = 2;
            Object objF = BuildersKt.f((CoroutineContext) objB, coroutinesRoom$Companion$execute$2, coroutinesRoom$Companion$execute$1);
            return objF == obj ? obj : objF;
        }
    }
}
