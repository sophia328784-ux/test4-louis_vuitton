package androidx.compose.foundation.gestures;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.nestedscroll.NestedScrollConnection;
import androidx.compose.ui.unit.Velocity;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/foundation/gestures/ScrollableNestedScrollConnection;", "Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;", "Landroidx/compose/foundation/gestures/ScrollLogic;", "scrollingLogic", "", "enabled", "<init>", "(Landroidx/compose/foundation/gestures/ScrollLogic;Z)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ScrollableNestedScrollConnection implements NestedScrollConnection {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ScrollLogic f4684b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f4685c;

    public ScrollableNestedScrollConnection(ScrollLogic scrollLogic, boolean z) {
        this.f4684b = scrollLogic;
        this.f4685c = z;
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    public final long A0(int i2, long j2, long j3) {
        if (this.f4685c) {
            return this.f4684b.c(j3);
        }
        Offset.f8806b.getClass();
        return 0L;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    public final Object P(long j2, long j3, Continuation continuation) {
        ScrollableNestedScrollConnection$onPostFling$1 scrollableNestedScrollConnection$onPostFling$1;
        long jD;
        if (continuation instanceof ScrollableNestedScrollConnection$onPostFling$1) {
            scrollableNestedScrollConnection$onPostFling$1 = (ScrollableNestedScrollConnection$onPostFling$1) continuation;
            int i2 = scrollableNestedScrollConnection$onPostFling$1.f4688e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                scrollableNestedScrollConnection$onPostFling$1.f4688e = i2 - Integer.MIN_VALUE;
            } else {
                scrollableNestedScrollConnection$onPostFling$1 = new ScrollableNestedScrollConnection$onPostFling$1(this, (ContinuationImpl) continuation);
            }
        } else {
            scrollableNestedScrollConnection$onPostFling$1 = new ScrollableNestedScrollConnection$onPostFling$1(this, (ContinuationImpl) continuation);
        }
        Object objB = scrollableNestedScrollConnection$onPostFling$1.f4687c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = scrollableNestedScrollConnection$onPostFling$1.f4688e;
        if (i3 == 0) {
            ResultKt.b(objB);
            jD = 0;
            if (this.f4685c) {
                ScrollLogic scrollLogic = this.f4684b;
                if (scrollLogic.a()) {
                    Velocity.f11029b.getClass();
                } else {
                    scrollableNestedScrollConnection$onPostFling$1.f4686b = j3;
                    scrollableNestedScrollConnection$onPostFling$1.f4688e = 1;
                    objB = scrollLogic.b(j3, scrollableNestedScrollConnection$onPostFling$1);
                    if (objB == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                }
                jD = Velocity.d(j3, jD);
            } else {
                Velocity.f11029b.getClass();
            }
            return new Velocity(jD);
        }
        if (i3 != 1) {
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        j3 = scrollableNestedScrollConnection$onPostFling$1.f4686b;
        ResultKt.b(objB);
        jD = ((Velocity) objB).f11030a;
        jD = Velocity.d(j3, jD);
        return new Velocity(jD);
    }
}
