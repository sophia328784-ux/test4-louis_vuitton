package androidx.compose.material3;

import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.SuspendAnimationKt;
import androidx.compose.material3.internal.AnchoredDragScope;
import androidx.compose.material3.internal.DraggableAnchors;
import androidx.compose.runtime.SnapshotMutableFloatStateImpl;
import defpackage.k5;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Ref$FloatRef;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0005H\n"}, d2 = {"<anonymous>", "", "Landroidx/compose/material3/internal/AnchoredDragScope;", "anchors", "Landroidx/compose/material3/internal/DraggableAnchors;", "Landroidx/compose/material3/SheetValue;", "latestTarget"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.material3.SheetState$animateTo$2", f = "SheetDefaults.kt", l = {245}, m = "invokeSuspend")
final class SheetState$animateTo$2 extends SuspendLambda implements Function4<AnchoredDragScope, DraggableAnchors<SheetValue>, SheetValue, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f7213b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ AnchoredDragScope f7214c;
    public /* synthetic */ DraggableAnchors d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public /* synthetic */ SheetValue f7215e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ SheetState f7216f;
    public final /* synthetic */ float g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ FiniteAnimationSpec f7217h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SheetState$animateTo$2(SheetState sheetState, float f2, FiniteAnimationSpec finiteAnimationSpec, Continuation continuation) {
        super(4, continuation);
        this.f7216f = sheetState;
        this.g = f2;
        this.f7217h = finiteAnimationSpec;
    }

    @Override // kotlin.jvm.functions.Function4
    public final Object g(Object obj, Object obj2, Object obj3, Object obj4) {
        float f2 = this.g;
        FiniteAnimationSpec finiteAnimationSpec = this.f7217h;
        SheetState$animateTo$2 sheetState$animateTo$2 = new SheetState$animateTo$2(this.f7216f, f2, finiteAnimationSpec, (Continuation) obj4);
        sheetState$animateTo$2.f7214c = (AnchoredDragScope) obj;
        sheetState$animateTo$2.d = (DraggableAnchors) obj2;
        sheetState$animateTo$2.f7215e = (SheetValue) obj3;
        return sheetState$animateTo$2.invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f7213b;
        if (i2 == 0) {
            ResultKt.b(obj);
            AnchoredDragScope anchoredDragScope = this.f7214c;
            float fC = this.d.c(this.f7215e);
            if (!Float.isNaN(fC)) {
                Ref$FloatRef ref$FloatRef = new Ref$FloatRef();
                SheetState sheetState = this.f7216f;
                float fA = Float.isNaN(((SnapshotMutableFloatStateImpl) sheetState.f7211e.f7523j).a()) ? Call.Parameters.DEFAULT_CAMERA_ZOOM : ((SnapshotMutableFloatStateImpl) sheetState.f7211e.f7523j).a();
                ref$FloatRef.f71918b = fA;
                k5 k5Var = new k5(anchoredDragScope, ref$FloatRef, 1);
                this.f7214c = null;
                this.d = null;
                this.f7213b = 1;
                if (SuspendAnimationKt.a(fA, fC, this.g, this.f7217h, k5Var, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        return Unit.f71739a;
    }
}
