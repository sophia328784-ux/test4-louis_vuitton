package androidx.compose.foundation.gestures;

import androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher;
import androidx.compose.ui.unit.Velocity;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", "Landroidx/compose/ui/unit/Velocity;", "velocity"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.gestures.ScrollingLogic$onScrollStopped$performFling$1", f = "Scrollable.kt", l = {864, 867, 870}, m = "invokeSuspend", v = 1)
final class ScrollingLogic$onScrollStopped$performFling$1 extends SuspendLambda implements Function2<Velocity, Continuation<? super Velocity>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f4728b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f4729c;
    public /* synthetic */ long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ScrollingLogic f4730e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ScrollingLogic$onScrollStopped$performFling$1(ScrollingLogic scrollingLogic, Continuation continuation) {
        super(2, continuation);
        this.f4730e = scrollingLogic;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        ScrollingLogic$onScrollStopped$performFling$1 scrollingLogic$onScrollStopped$performFling$1 = new ScrollingLogic$onScrollStopped$performFling$1(this.f4730e, continuation);
        scrollingLogic$onScrollStopped$performFling$1.d = ((Velocity) obj).f11030a;
        return scrollingLogic$onScrollStopped$performFling$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ScrollingLogic$onScrollStopped$performFling$1) create(new Velocity(((Velocity) obj).f11030a), (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:22:0x006e  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        long j2;
        long j3;
        long j4;
        long j5;
        long j6;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f4729c;
        ScrollingLogic scrollingLogic = this.f4730e;
        if (i2 == 0) {
            ResultKt.b(obj);
            j2 = this.d;
            NestedScrollDispatcher nestedScrollDispatcher = scrollingLogic.f4711f;
            this.d = j2;
            this.f4729c = 1;
            obj = nestedScrollDispatcher.c(j2, this);
            if (obj != coroutineSingletons) {
            }
            return coroutineSingletons;
        }
        if (i2 == 1) {
            j2 = this.d;
            ResultKt.b(obj);
        } else {
            if (i2 == 2) {
                j3 = this.f4728b;
                j2 = this.d;
                ResultKt.b(obj);
                j4 = ((Velocity) obj).f11030a;
                NestedScrollDispatcher nestedScrollDispatcher2 = scrollingLogic.f4711f;
                long jD = Velocity.d(j3, j4);
                this.d = j2;
                this.f4728b = j4;
                this.f4729c = 3;
                obj = nestedScrollDispatcher2.a(jD, j4, this);
                if (obj != coroutineSingletons) {
                    j5 = j2;
                    j6 = j4;
                }
                return coroutineSingletons;
            }
            if (i2 != 3) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            j6 = this.f4728b;
            j5 = this.d;
            ResultKt.b(obj);
        }
        return new Velocity(Velocity.d(j5, Velocity.d(j6, ((Velocity) obj).f11030a)));
        long jD2 = Velocity.d(j2, ((Velocity) obj).f11030a);
        this.d = j2;
        this.f4728b = jD2;
        this.f4729c = 2;
        obj = scrollingLogic.b(jD2, this);
        if (obj != coroutineSingletons) {
            j3 = jD2;
            j4 = ((Velocity) obj).f11030a;
            NestedScrollDispatcher nestedScrollDispatcher3 = scrollingLogic.f4711f;
            long jD3 = Velocity.d(j3, j4);
            this.d = j2;
            this.f4728b = j4;
            this.f4729c = 3;
            obj = nestedScrollDispatcher3.a(jD3, j4, this);
            if (obj != coroutineSingletons) {
                j5 = j2;
                j6 = j4;
                return new Velocity(Velocity.d(j5, Velocity.d(j6, ((Velocity) obj).f11030a)));
            }
        }
        return coroutineSingletons;
    }
}
