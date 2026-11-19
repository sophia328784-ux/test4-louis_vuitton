package androidx.compose.foundation.gestures;

import androidx.compose.ui.input.nestedscroll.NestedScrollSource;
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
import kotlin.jvm.internal.Ref$LongRef;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Landroidx/compose/foundation/gestures/NestedScrollScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.gestures.ScrollingLogic$doFlingAnimation$2", f = "Scrollable.kt", l = {921}, m = "invokeSuspend", v = 1)
final class ScrollingLogic$doFlingAnimation$2 extends SuspendLambda implements Function2<NestedScrollScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ScrollingLogic f4719b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Ref$LongRef f4720c;
    public long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f4721e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public /* synthetic */ Object f4722f;
    public final /* synthetic */ ScrollingLogic g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Ref$LongRef f4723h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ long f4724i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ScrollingLogic$doFlingAnimation$2(ScrollingLogic scrollingLogic, Ref$LongRef ref$LongRef, long j2, Continuation continuation) {
        super(2, continuation);
        this.g = scrollingLogic;
        this.f4723h = ref$LongRef;
        this.f4724i = j2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        ScrollingLogic$doFlingAnimation$2 scrollingLogic$doFlingAnimation$2 = new ScrollingLogic$doFlingAnimation$2(this.g, this.f4723h, this.f4724i, continuation);
        scrollingLogic$doFlingAnimation$2.f4722f = obj;
        return scrollingLogic$doFlingAnimation$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ScrollingLogic$doFlingAnimation$2) create((NestedScrollScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        final ScrollingLogic scrollingLogic;
        Ref$LongRef ref$LongRef;
        ScrollingLogic scrollingLogic2;
        long j2;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f4721e;
        if (i2 == 0) {
            ResultKt.b(obj);
            final NestedScrollScope nestedScrollScope = (NestedScrollScope) this.f4722f;
            scrollingLogic = this.g;
            ScrollScope scrollScope = new ScrollScope() { // from class: androidx.compose.foundation.gestures.ScrollingLogic$doFlingAnimation$2$reverseScope$1
                @Override // androidx.compose.foundation.gestures.ScrollScope
                public final float e(float f2) {
                    float fAbs = Math.abs(f2);
                    ScrollingLogic scrollingLogic3 = scrollingLogic;
                    if (fAbs != Call.Parameters.DEFAULT_CAMERA_ZOOM && !((Boolean) scrollingLogic3.f4712h.mo47invoke()).booleanValue()) {
                        throw new FlingCancellationException();
                    }
                    long jG = scrollingLogic3.g(scrollingLogic3.j(f2));
                    NestedScrollSource.f9260a.getClass();
                    return scrollingLogic3.f(scrollingLogic3.i(nestedScrollScope.a(NestedScrollSource.f9262c, jG)));
                }
            };
            FlingBehavior flingBehavior = scrollingLogic.f4709c;
            ref$LongRef = this.f4723h;
            long j3 = ref$LongRef.f71920b;
            Orientation orientation = scrollingLogic.d;
            Orientation orientation2 = Orientation.Horizontal;
            long j4 = this.f4724i;
            float f2 = scrollingLogic.f(orientation == orientation2 ? Velocity.b(j4) : Velocity.c(j4));
            this.f4722f = scrollingLogic;
            this.f4719b = scrollingLogic;
            this.f4720c = ref$LongRef;
            this.d = j3;
            this.f4721e = 1;
            obj = flingBehavior.a(scrollScope, f2, this);
            if (obj == coroutineSingletons) {
                return coroutineSingletons;
            }
            scrollingLogic2 = scrollingLogic;
            j2 = j3;
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            j2 = this.d;
            ref$LongRef = this.f4720c;
            scrollingLogic = this.f4719b;
            scrollingLogic2 = (ScrollingLogic) this.f4722f;
            ResultKt.b(obj);
        }
        float f3 = scrollingLogic2.f(((Number) obj).floatValue());
        ref$LongRef.f71920b = scrollingLogic.d == Orientation.Horizontal ? Velocity.a(f3, Call.Parameters.DEFAULT_CAMERA_ZOOM, j2, 2) : Velocity.a(Call.Parameters.DEFAULT_CAMERA_ZOOM, f3, j2, 1);
        return Unit.f71739a;
    }
}
