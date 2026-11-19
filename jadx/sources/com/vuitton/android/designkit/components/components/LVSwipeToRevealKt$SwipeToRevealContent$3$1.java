package com.vuitton.android.designkit.components.components;

import androidx.compose.foundation.gestures.AnchoredDraggableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.designkit.components.components.LVSwipeToRevealKt$SwipeToRevealContent$3$1", f = "LVSwipeToReveal.kt", l = {}, m = "invokeSuspend", v = 2)
final class LVSwipeToRevealKt$SwipeToRevealContent$3$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AnchoredDraggableState f48262b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f48263c;
    public final /* synthetic */ Function0 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function0 f48264e;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f48265a;

        static {
            int[] iArr = new int[SwipeDragAnchors.values().length];
            try {
                iArr[SwipeDragAnchors.End.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[SwipeDragAnchors.Start.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f48265a = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LVSwipeToRevealKt$SwipeToRevealContent$3$1(AnchoredDraggableState anchoredDraggableState, boolean z, Function0 function0, Function0 function1, Continuation continuation) {
        super(2, continuation);
        this.f48262b = anchoredDraggableState;
        this.f48263c = z;
        this.d = function0;
        this.f48264e = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new LVSwipeToRevealKt$SwipeToRevealContent$3$1(this.f48262b, this.f48263c, this.d, this.f48264e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((LVSwipeToRevealKt$SwipeToRevealContent$3$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        int i2 = WhenMappings.f48265a[((SwipeDragAnchors) ((SnapshotMutableStateImpl) this.f48262b.g).getF10755b()).ordinal()];
        boolean z = this.f48263c;
        if (i2 != 1) {
            if (i2 != 2) {
                v40.g();
                return null;
            }
            if (z) {
                this.f48264e.mo47invoke();
            }
        } else if (!z) {
            this.d.mo47invoke();
        }
        return Unit.f71739a;
    }
}
