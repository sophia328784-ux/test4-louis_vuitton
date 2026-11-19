package androidx.compose.foundation.pager;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.SuspendAnimationKt;
import androidx.compose.foundation.gestures.ScrollScope;
import androidx.compose.runtime.SnapshotMutableIntStateImpl;
import defpackage.md;
import defpackage.wd0;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$FloatRef;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Landroidx/compose/foundation/gestures/ScrollScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.pager.PagerState$animateScrollToPage$3", f = "PagerState.kt", l = {672}, m = "invokeSuspend", v = 1)
final class PagerState$animateScrollToPage$3 extends SuspendLambda implements Function2<ScrollScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f5770b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f5771c;
    public final /* synthetic */ PagerState d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f5772e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ float f5773f;
    public final /* synthetic */ AnimationSpec g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PagerState$animateScrollToPage$3(PagerState pagerState, int i2, float f2, AnimationSpec animationSpec, Continuation continuation) {
        super(2, continuation);
        this.d = pagerState;
        this.f5772e = i2;
        this.f5773f = f2;
        this.g = animationSpec;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        PagerState$animateScrollToPage$3 pagerState$animateScrollToPage$3 = new PagerState$animateScrollToPage$3(this.d, this.f5772e, this.f5773f, this.g, continuation);
        pagerState$animateScrollToPage$3.f5771c = obj;
        return pagerState$animateScrollToPage$3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PagerState$animateScrollToPage$3) create((ScrollScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i2;
        Object obj2 = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = this.f5770b;
        if (i3 == 0) {
            ResultKt.b(obj);
            ScrollScope scrollScope = (ScrollScope) this.f5771c;
            PagerState pagerState = this.d;
            PagerScrollScopeKt$LazyLayoutScrollScope$1 pagerScrollScopeKt$LazyLayoutScrollScope$1 = new PagerScrollScopeKt$LazyLayoutScrollScope$1(scrollScope, pagerState);
            this.f5770b = 1;
            float f2 = PagerStateKt.f5784a;
            int i4 = this.f5772e;
            ((SnapshotMutableIntStateImpl) pagerState.q).i(pagerState.j(new Integer(i4).intValue()));
            boolean z = i4 > pagerState.f5760e;
            int iA = (pagerScrollScopeKt$LazyLayoutScrollScope$1.a() - pagerState.f5760e) + 1;
            if (((z && i4 > pagerScrollScopeKt$LazyLayoutScrollScope$1.a()) || (!z && i4 < pagerState.f5760e)) && Math.abs(i4 - pagerState.f5760e) >= 3) {
                if (z) {
                    i2 = i4 - iA;
                    int i5 = pagerState.f5760e;
                    if (i2 < i5) {
                        i2 = i5;
                    }
                } else {
                    int i6 = iA + i4;
                    i2 = pagerState.f5760e;
                    if (i6 <= i2) {
                        i2 = i6;
                    }
                }
                pagerScrollScopeKt$LazyLayoutScrollScope$1.c(i2, 0);
            }
            Object objC = SuspendAnimationKt.c(Call.Parameters.DEFAULT_CAMERA_ZOOM, pagerScrollScopeKt$LazyLayoutScrollScope$1.d(i4) + this.f5773f, this.g, new wd0(new Ref$FloatRef(), pagerScrollScopeKt$LazyLayoutScrollScope$1, 21), this, 4);
            if (objC != obj2) {
                objC = Unit.f71739a;
            }
            if (objC == obj2) {
                return obj2;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        return Unit.f71739a;
    }
}
