package androidx.compose.ui.viewinterop;

import android.content.Context;
import android.graphics.Region;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowInsets;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.collection.MutableScatterMap;
import androidx.compose.runtime.ComposeNodeLifecycleCallback;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.DrawModifierKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.AndroidCanvas_androidKt;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher;
import androidx.compose.ui.input.nestedscroll.NestedScrollModifierKt;
import androidx.compose.ui.input.nestedscroll.NestedScrollNode;
import androidx.compose.ui.input.pointer.PointerInteropFilter_androidKt;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.OnGloballyPositionedModifierKt;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.InnerNodeCoordinator;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.Owner;
import androidx.compose.ui.node.OwnerScope;
import androidx.compose.ui.node.OwnerSnapshotObserver;
import androidx.compose.ui.node.TraversableNodeKt;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.platform.NestedScrollInteropConnectionKt;
import androidx.compose.ui.platform.WindowRecomposer_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DensityKt;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.VelocityKt;
import androidx.compose.ui.viewinterop.AndroidViewHolder;
import androidx.core.graphics.Insets;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.NestedScrollingParent3;
import androidx.core.view.NestedScrollingParentHelper;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsAnimationCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.lifecycle.LifecycleOwner;
import androidx.savedstate.SavedStateRegistryOwner;
import com.batch.android.b.b;
import com.networkbench.agent.impl.NBSSpanMetricUnit;
import com.vuitton.android.R;
import defpackage.md;
import defpackage.r3;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000¢\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\r\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0011\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u0005:\u0001oB9\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b\u0012\u0010\u0013J\u0015\u0010\u0015\u001a\n\u0018\u00010\u000ej\u0004\u0018\u0001`\u0014¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u0011\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u001d\u001a\u00020\nH\u0016¢\u0006\u0004\b\u001d\u0010\u001eR\u0017\u0010\u000f\u001a\u00020\u000e8\u0006¢\u0006\f\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\u0016R6\u0010+\u001a\b\u0012\u0004\u0012\u00020#0\"2\f\u0010$\u001a\b\u0012\u0004\u0012\u00020#0\"8\u0006@DX\u0086\u000e¢\u0006\u0012\n\u0004\b%\u0010&\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*R6\u0010/\u001a\b\u0012\u0004\u0012\u00020#0\"2\f\u0010$\u001a\b\u0012\u0004\u0012\u00020#0\"8\u0006@DX\u0086\u000e¢\u0006\u0012\n\u0004\b,\u0010&\u001a\u0004\b-\u0010(\"\u0004\b.\u0010*R6\u00103\u001a\b\u0012\u0004\u0012\u00020#0\"2\f\u0010$\u001a\b\u0012\u0004\u0012\u00020#0\"8\u0006@DX\u0086\u000e¢\u0006\u0012\n\u0004\b0\u0010&\u001a\u0004\b1\u0010(\"\u0004\b2\u0010*R*\u0010;\u001a\u0002042\u0006\u0010$\u001a\u0002048\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b5\u00106\u001a\u0004\b7\u00108\"\u0004\b9\u0010:R0\u0010C\u001a\u0010\u0012\u0004\u0012\u000204\u0012\u0004\u0012\u00020#\u0018\u00010<8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b=\u0010>\u001a\u0004\b?\u0010@\"\u0004\bA\u0010BR*\u0010K\u001a\u00020D2\u0006\u0010$\u001a\u00020D8\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\bE\u0010F\u001a\u0004\bG\u0010H\"\u0004\bI\u0010JR0\u0010O\u001a\u0010\u0012\u0004\u0012\u00020D\u0012\u0004\u0012\u00020#\u0018\u00010<8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\bL\u0010>\u001a\u0004\bM\u0010@\"\u0004\bN\u0010BR.\u0010W\u001a\u0004\u0018\u00010P2\b\u0010$\u001a\u0004\u0018\u00010P8\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\bQ\u0010R\u001a\u0004\bS\u0010T\"\u0004\bU\u0010VR.\u0010_\u001a\u0004\u0018\u00010X2\b\u0010$\u001a\u0004\u0018\u00010X8\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\bY\u0010Z\u001a\u0004\b[\u0010\\\"\u0004\b]\u0010^R0\u0010d\u001a\u0010\u0012\u0004\u0012\u00020`\u0012\u0004\u0012\u00020#\u0018\u00010<8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\ba\u0010>\u001a\u0004\bb\u0010@\"\u0004\bc\u0010BR\u0017\u0010j\u001a\u00020e8\u0006¢\u0006\f\n\u0004\bf\u0010g\u001a\u0004\bh\u0010iR\u0014\u0010n\u001a\u00020k8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bl\u0010m¨\u0006p"}, d2 = {"Landroidx/compose/ui/viewinterop/AndroidViewHolder;", "Landroid/view/ViewGroup;", "Landroidx/core/view/NestedScrollingParent3;", "Landroidx/compose/runtime/ComposeNodeLifecycleCallback;", "Landroidx/compose/ui/node/OwnerScope;", "Landroidx/core/view/OnApplyWindowInsetsListener;", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "Landroidx/compose/runtime/CompositionContext;", "parentContext", "", "compositeKeyHash", "Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;", "dispatcher", "Landroid/view/View;", "view", "Landroidx/compose/ui/node/Owner;", "owner", "<init>", "(Landroid/content/Context;Landroidx/compose/runtime/CompositionContext;ILandroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;Landroid/view/View;Landroidx/compose/ui/node/Owner;)V", "Landroidx/compose/ui/viewinterop/InteropView;", "getInteropView", "()Landroid/view/View;", "", "getAccessibilityClassName", "()Ljava/lang/CharSequence;", "Landroid/view/ViewGroup$LayoutParams;", "getLayoutParams", "()Landroid/view/ViewGroup$LayoutParams;", "getNestedScrollAxes", "()I", "c", "Landroid/view/View;", "getView", "Lkotlin/Function0;", "", "value", "e", "Lkotlin/jvm/functions/Function0;", "getUpdate", "()Lkotlin/jvm/functions/Function0;", "setUpdate", "(Lkotlin/jvm/functions/Function0;)V", "update", "g", "getReset", "setReset", "reset", NBSSpanMetricUnit.Hour, "getRelease", "setRelease", "release", "Landroidx/compose/ui/Modifier;", "i", "Landroidx/compose/ui/Modifier;", "getModifier", "()Landroidx/compose/ui/Modifier;", "setModifier", "(Landroidx/compose/ui/Modifier;)V", "modifier", "Lkotlin/Function1;", "j", "Lkotlin/jvm/functions/Function1;", "getOnModifierChanged$ui", "()Lkotlin/jvm/functions/Function1;", "setOnModifierChanged$ui", "(Lkotlin/jvm/functions/Function1;)V", "onModifierChanged", "Landroidx/compose/ui/unit/Density;", "k", "Landroidx/compose/ui/unit/Density;", "getDensity", "()Landroidx/compose/ui/unit/Density;", "setDensity", "(Landroidx/compose/ui/unit/Density;)V", "density", b.d, "getOnDensityChanged$ui", "setOnDensityChanged$ui", "onDensityChanged", "Landroidx/lifecycle/LifecycleOwner;", NBSSpanMetricUnit.Minute, "Landroidx/lifecycle/LifecycleOwner;", "getLifecycleOwner", "()Landroidx/lifecycle/LifecycleOwner;", "setLifecycleOwner", "(Landroidx/lifecycle/LifecycleOwner;)V", "lifecycleOwner", "Landroidx/savedstate/SavedStateRegistryOwner;", "n", "Landroidx/savedstate/SavedStateRegistryOwner;", "getSavedStateRegistryOwner", "()Landroidx/savedstate/SavedStateRegistryOwner;", "setSavedStateRegistryOwner", "(Landroidx/savedstate/SavedStateRegistryOwner;)V", "savedStateRegistryOwner", "", "u", "getOnRequestDisallowInterceptTouchEvent$ui", "setOnRequestDisallowInterceptTouchEvent$ui", "onRequestDisallowInterceptTouchEvent", "Landroidx/compose/ui/node/LayoutNode;", "A", "Landroidx/compose/ui/node/LayoutNode;", "getLayoutNode", "()Landroidx/compose/ui/node/LayoutNode;", "layoutNode", "Landroidx/compose/ui/node/OwnerSnapshotObserver;", "getSnapshotObserver", "()Landroidx/compose/ui/node/OwnerSnapshotObserver;", "snapshotObserver", "Companion", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public class AndroidViewHolder extends ViewGroup implements NestedScrollingParent3, ComposeNodeLifecycleCallback, OwnerScope, OnApplyWindowInsetsListener {
    public static final Function1 B;

    /* JADX INFO: renamed from: A, reason: from kotlin metadata */
    public final LayoutNode layoutNode;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final NestedScrollDispatcher f11037b;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    public final View view;
    public final Owner d;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    public Function0 update;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f11040f;

    /* JADX INFO: renamed from: g, reason: from kotlin metadata */
    public Function0 reset;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    public Function0 release;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    public Modifier modifier;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    public Function1 onModifierChanged;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    public Density density;

    /* JADX INFO: renamed from: l, reason: from kotlin metadata */
    public Function1 onDensityChanged;

    /* JADX INFO: renamed from: m, reason: from kotlin metadata */
    public LifecycleOwner lifecycleOwner;

    /* JADX INFO: renamed from: n, reason: from kotlin metadata */
    public SavedStateRegistryOwner savedStateRegistryOwner;
    public final int[] o;
    public long p;
    public WindowInsetsCompat q;
    public Function1 r;
    public final Function0 s;
    public final Function0 t;

    /* JADX INFO: renamed from: u, reason: from kotlin metadata */
    public Function1 onRequestDisallowInterceptTouchEvent;
    public final int[] v;
    public int w;
    public int x;
    public final NestedScrollingParentHelper y;
    public boolean z;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R \u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/ui/viewinterop/AndroidViewHolder$Companion;", "", "Lkotlin/Function1;", "Landroidx/compose/ui/viewinterop/AndroidViewHolder;", "", "OnCommitAffectingUpdate", "Lkotlin/jvm/functions/Function1;", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    /* JADX INFO: renamed from: androidx.compose.ui.viewinterop.AndroidViewHolder$onNestedFling$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.ui.viewinterop.AndroidViewHolder$onNestedFling$1", f = "AndroidViewHolder.android.kt", l = {634, 636}, m = "invokeSuspend", v = 1)
    final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f11060b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ boolean f11061c;
        public final /* synthetic */ AndroidViewHolder d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ long f11062e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(boolean z, AndroidViewHolder androidViewHolder, long j2, Continuation continuation) {
            super(2, continuation);
            this.f11061c = z;
            this.d = androidViewHolder;
            this.f11062e = j2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass1(this.f11061c, this.d, this.f11062e, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        /* JADX WARN: Code restructure failed: missing block: B:13:0x0036, code lost:
        
            if (r11 == r0) goto L18;
         */
        /* JADX WARN: Code restructure failed: missing block: B:17:0x004f, code lost:
        
            if (r11 == r0) goto L18;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r11) {
            /*
                r10 = this;
                kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                int r1 = r10.f11060b
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L1b
                if (r1 == r3) goto L17
                if (r1 != r2) goto L10
                kotlin.ResultKt.b(r11)
                goto L52
            L10:
                java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.md.k(r10)
                r10 = 0
                return r10
            L17:
                kotlin.ResultKt.b(r11)
                goto L39
            L1b:
                kotlin.ResultKt.b(r11)
                androidx.compose.ui.viewinterop.AndroidViewHolder r11 = r10.d
                androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher r4 = r11.f11037b
                boolean r11 = r10.f11061c
                if (r11 != 0) goto L3f
                androidx.compose.ui.unit.Velocity$Companion r11 = androidx.compose.ui.unit.Velocity.f11029b
                r11.getClass()
                r10.f11060b = r3
                r5 = 0
                long r7 = r10.f11062e
                r9 = r10
                java.lang.Object r11 = r4.a(r5, r7, r9)
                if (r11 != r0) goto L39
                goto L51
            L39:
                androidx.compose.ui.unit.Velocity r11 = (androidx.compose.ui.unit.Velocity) r11
                r11.getClass()
                goto L57
            L3f:
                r9 = r10
                androidx.compose.ui.unit.Velocity$Companion r10 = androidx.compose.ui.unit.Velocity.f11029b
                r10.getClass()
                r9.f11060b = r2
                long r5 = r9.f11062e
                r7 = 0
                java.lang.Object r11 = r4.a(r5, r7, r9)
                if (r11 != r0) goto L52
            L51:
                return r0
            L52:
                androidx.compose.ui.unit.Velocity r11 = (androidx.compose.ui.unit.Velocity) r11
                r11.getClass()
            L57:
                kotlin.Unit r10 = kotlin.Unit.f71739a
                return r10
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.viewinterop.AndroidViewHolder.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: renamed from: androidx.compose.ui.viewinterop.AndroidViewHolder$onNestedPreFling$1, reason: invalid class name and case insensitive filesystem */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.ui.viewinterop.AndroidViewHolder$onNestedPreFling$1", f = "AndroidViewHolder.android.kt", l = {645}, m = "invokeSuspend", v = 1)
    final class C03501 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f11063b;
        public final /* synthetic */ long d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C03501(long j2, Continuation continuation) {
            super(2, continuation);
            this.d = j2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return AndroidViewHolder.this.new C03501(this.d, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((C03501) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f11063b;
            if (i2 == 0) {
                ResultKt.b(obj);
                NestedScrollDispatcher nestedScrollDispatcher = AndroidViewHolder.this.f11037b;
                this.f11063b = 1;
                if (nestedScrollDispatcher.c(this.d, this) == coroutineSingletons) {
                    return coroutineSingletons;
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

    static {
        new Companion(null);
        B = AndroidViewHolder$Companion$OnCommitAffectingUpdate$1.f11046c;
    }

    public AndroidViewHolder(Context context, CompositionContext compositionContext, int i2, NestedScrollDispatcher nestedScrollDispatcher, View view, Owner owner) {
        super(context);
        this.f11037b = nestedScrollDispatcher;
        this.view = view;
        this.d = owner;
        if (compositionContext != null) {
            MutableScatterMap mutableScatterMap = WindowRecomposer_androidKt.f10186a;
            setTag(R.id.androidx_compose_ui_view_composition_context, compositionContext);
        }
        setSaveFromParentEnabled(false);
        addView(view);
        ViewCompat.A(this, new WindowInsetsAnimationCompat.Callback() { // from class: androidx.compose.ui.viewinterop.AndroidViewHolder.2
            {
                super(1);
            }

            @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
            public final WindowInsetsCompat onProgress(WindowInsetsCompat windowInsetsCompat, List list) {
                Function1 function1 = AndroidViewHolder.B;
                return AndroidViewHolder.this.f(windowInsetsCompat);
            }

            @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
            public final WindowInsetsAnimationCompat.BoundsCompat onStart(WindowInsetsAnimationCompat windowInsetsAnimationCompat, WindowInsetsAnimationCompat.BoundsCompat boundsCompat) {
                InnerNodeCoordinator innerNodeCoordinator = AndroidViewHolder.this.layoutNode.H.f9772c;
                if (innerNodeCoordinator.h0.o) {
                    long jB = IntOffsetKt.b(LayoutCoordinatesKt.e(innerNodeCoordinator));
                    IntOffset.Companion companion = IntOffset.f11012b;
                    int i3 = (int) (jB >> 32);
                    if (i3 < 0) {
                        i3 = 0;
                    }
                    int i4 = (int) (jB & BodyPartID.bodyIdMax);
                    if (i4 < 0) {
                        i4 = 0;
                    }
                    long jA = LayoutCoordinatesKt.c(innerNodeCoordinator).a();
                    int i5 = (int) (jA >> 32);
                    int i6 = (int) (jA & BodyPartID.bodyIdMax);
                    long j2 = innerNodeCoordinator.d;
                    long jB2 = IntOffsetKt.b(innerNodeCoordinator.h0((((long) Float.floatToRawIntBits((int) (j2 >> 32))) << 32) | (((long) Float.floatToRawIntBits((int) (j2 & BodyPartID.bodyIdMax))) & BodyPartID.bodyIdMax)));
                    int i7 = i5 - ((int) (jB2 >> 32));
                    if (i7 < 0) {
                        i7 = 0;
                    }
                    int i8 = i6 - ((int) (jB2 & BodyPartID.bodyIdMax));
                    int i9 = i8 >= 0 ? i8 : 0;
                    if (i3 != 0 || i4 != 0 || i7 != 0 || i9 != 0) {
                        return new WindowInsetsAnimationCompat.BoundsCompat(AndroidViewHolder.e(boundsCompat.f12223a, i3, i4, i7, i9), AndroidViewHolder.e(boundsCompat.f12224b, i3, i4, i7, i9));
                    }
                }
                return boundsCompat;
            }
        });
        ViewCompat.x(this, this);
        this.update = AndroidViewHolder$update$1.f11069c;
        this.reset = AndroidViewHolder$reset$1.f11066c;
        this.release = AndroidViewHolder$release$1.f11065c;
        Modifier.Companion companion = Modifier.Companion.f8607b;
        this.modifier = companion;
        this.density = DensityKt.b();
        this.o = new int[2];
        IntSize.f11020b.getClass();
        this.p = 0L;
        this.s = new AndroidViewHolder$runUpdate$1(this);
        this.t = new Function0<Unit>() { // from class: androidx.compose.ui.viewinterop.AndroidViewHolder$runInvalidate$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                this.f11067c.getLayoutNode().V();
                return Unit.f71739a;
            }
        };
        this.v = new int[2];
        this.w = Integer.MIN_VALUE;
        this.x = Integer.MIN_VALUE;
        this.y = new NestedScrollingParentHelper(this);
        final LayoutNode layoutNode = new LayoutNode(false, 0, 3, null);
        layoutNode.q = this;
        final Modifier modifierO = OnGloballyPositionedModifierKt.a(DrawModifierKt.b(PointerInteropFilter_androidKt.a(SemanticsModifierKt.b(NestedScrollModifierKt.a(companion, AndroidViewHolder_androidKt.f11070a, nestedScrollDispatcher), true, AndroidViewHolder$layoutNode$1$coreModifier$1.f11055c), this), new Function1<DrawScope, Unit>() { // from class: androidx.compose.ui.viewinterop.AndroidViewHolder$layoutNode$1$coreModifier$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Canvas canvasA = ((DrawScope) obj).getF8996c().a();
                AndroidViewHolder androidViewHolder = this.f11056c;
                if (androidViewHolder.getView().getVisibility() != 8) {
                    androidViewHolder.z = true;
                    Owner owner2 = layoutNode.p;
                    AndroidComposeView androidComposeView = owner2 instanceof AndroidComposeView ? (AndroidComposeView) owner2 : null;
                    if (androidComposeView != null) {
                        android.graphics.Canvas canvasA2 = AndroidCanvas_androidKt.a(canvasA);
                        androidComposeView.getAndroidViewsHandler$ui().getClass();
                        this.draw(canvasA2);
                    }
                    androidViewHolder.z = false;
                }
                return Unit.f71739a;
            }
        }), new Function1<LayoutCoordinates, Unit>() { // from class: androidx.compose.ui.viewinterop.AndroidViewHolder$layoutNode$1$coreModifier$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                WindowInsets windowInsetsQ;
                LayoutNode layoutNode2 = layoutNode;
                AndroidViewHolder androidViewHolder = this.f11058c;
                AndroidViewHolder_androidKt.a(androidViewHolder, layoutNode2);
                androidViewHolder.d.J();
                int[] iArr = androidViewHolder.o;
                int i3 = iArr[0];
                int i4 = iArr[1];
                androidViewHolder.getView().getLocationOnScreen(iArr);
                long j2 = androidViewHolder.p;
                long jA = ((LayoutCoordinates) obj).a();
                androidViewHolder.p = jA;
                WindowInsetsCompat windowInsetsCompat = androidViewHolder.q;
                if (windowInsetsCompat != null && ((i3 != iArr[0] || i4 != iArr[1] || !IntSize.b(j2, jA)) && (windowInsetsQ = androidViewHolder.f(windowInsetsCompat).q()) != null)) {
                    androidViewHolder.getView().dispatchApplyWindowInsets(windowInsetsQ);
                }
                return Unit.f71739a;
            }
        }).o(new BringIntoViewElement(new Function1<Function1<? super Rect, ? extends Unit>, Unit>() { // from class: androidx.compose.ui.viewinterop.AndroidViewHolder$layoutNode$1$coreModifier$4
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                this.f11059c.r = (Function1) obj;
                return Unit.f71739a;
            }
        }));
        layoutNode.m(this.modifier.o(modifierO));
        this.onModifierChanged = new Function1<Modifier, Unit>() { // from class: androidx.compose.ui.viewinterop.AndroidViewHolder$layoutNode$1$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                layoutNode.m(((Modifier) obj).o(modifierO));
                return Unit.f71739a;
            }
        };
        layoutNode.n(this.density);
        this.onDensityChanged = new Function1<Density, Unit>() { // from class: androidx.compose.ui.viewinterop.AndroidViewHolder$layoutNode$1$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                layoutNode.n((Density) obj);
                return Unit.f71739a;
            }
        };
        layoutNode.O = new Function1<Owner, Unit>() { // from class: androidx.compose.ui.viewinterop.AndroidViewHolder$layoutNode$1$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Owner owner2 = (Owner) obj;
                final AndroidComposeView androidComposeView = owner2 instanceof AndroidComposeView ? (AndroidComposeView) owner2 : null;
                AndroidViewHolder androidViewHolder = this.f11049c;
                if (androidComposeView != null) {
                    HashMap<AndroidViewHolder, LayoutNode> holderToLayoutNode = androidComposeView.getAndroidViewsHandler$ui().getHolderToLayoutNode();
                    final LayoutNode layoutNode2 = layoutNode;
                    holderToLayoutNode.put(androidViewHolder, layoutNode2);
                    androidComposeView.getAndroidViewsHandler$ui().addView(androidViewHolder);
                    androidComposeView.getAndroidViewsHandler$ui().getLayoutNodeToHolder().put(layoutNode2, androidViewHolder);
                    androidViewHolder.setImportantForAccessibility(1);
                    ViewCompat.t(androidViewHolder, new AccessibilityDelegateCompat() { // from class: androidx.compose.ui.platform.AndroidComposeView$addAndroidView$1
                        /* JADX WARN: Code duplicated, block: B:19:0x004a  */
                        @Override // androidx.core.view.AccessibilityDelegateCompat
                        public final void d(View view2, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                            AccessibilityNodeInfo accessibilityNodeInfo = accessibilityNodeInfoCompat.f12267a;
                            this.f12143b.onInitializeAccessibilityNodeInfo(view2, accessibilityNodeInfo);
                            AndroidComposeView androidComposeView2 = androidComposeView;
                            AndroidComposeViewAccessibilityDelegateCompat androidComposeViewAccessibilityDelegateCompat = androidComposeView2.B;
                            if (androidComposeViewAccessibilityDelegateCompat.v()) {
                                accessibilityNodeInfo.setVisibleToUser(false);
                            }
                            LayoutNode layoutNode3 = layoutNode2;
                            LayoutNode layoutNodeO = layoutNode3.O();
                            while (true) {
                                if (layoutNodeO == null) {
                                    layoutNodeO = null;
                                    break;
                                } else if (layoutNodeO.H.d(8)) {
                                    break;
                                } else {
                                    layoutNodeO = layoutNodeO.O();
                                }
                            }
                            Integer numValueOf = layoutNodeO != null ? Integer.valueOf(layoutNodeO.f9689c) : null;
                            if (numValueOf != null) {
                                if (numValueOf.intValue() == androidComposeView2.getSemanticsOwner().a().f10322f) {
                                    numValueOf = -1;
                                }
                            } else {
                                numValueOf = -1;
                            }
                            int iIntValue = numValueOf.intValue();
                            accessibilityNodeInfoCompat.f12268b = iIntValue;
                            AndroidComposeView androidComposeView3 = androidComposeView;
                            accessibilityNodeInfo.setParent(androidComposeView3, iIntValue);
                            int i3 = layoutNode3.f9689c;
                            int iB = androidComposeViewAccessibilityDelegateCompat.C.b(i3);
                            if (iB != -1) {
                                AndroidViewHolder androidViewHolderC = SemanticsUtils_androidKt.c(androidComposeView2.getAndroidViewsHandler$ui(), iB);
                                if (androidViewHolderC != null) {
                                    accessibilityNodeInfo.setTraversalBefore(androidViewHolderC);
                                } else {
                                    accessibilityNodeInfo.setTraversalBefore(androidComposeView3, iB);
                                }
                                AndroidComposeView.K(androidComposeView2, i3, accessibilityNodeInfo, androidComposeViewAccessibilityDelegateCompat.E);
                            }
                            int iB2 = androidComposeViewAccessibilityDelegateCompat.D.b(i3);
                            if (iB2 != -1) {
                                AndroidViewHolder androidViewHolderC2 = SemanticsUtils_androidKt.c(androidComposeView2.getAndroidViewsHandler$ui(), iB2);
                                if (androidViewHolderC2 != null) {
                                    accessibilityNodeInfo.setTraversalAfter(androidViewHolderC2);
                                } else {
                                    accessibilityNodeInfo.setTraversalAfter(androidComposeView3, iB2);
                                }
                                AndroidComposeView.K(androidComposeView2, i3, accessibilityNodeInfo, androidComposeViewAccessibilityDelegateCompat.F);
                            }
                        }
                    });
                }
                if (androidViewHolder.getView().getParent() != androidViewHolder) {
                    androidViewHolder.addView(androidViewHolder.getView());
                }
                return Unit.f71739a;
            }
        };
        layoutNode.P = new Function1<Owner, Unit>() { // from class: androidx.compose.ui.viewinterop.AndroidViewHolder$layoutNode$1$4
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Owner owner2 = (Owner) obj;
                AndroidComposeView androidComposeView = owner2 instanceof AndroidComposeView ? (AndroidComposeView) owner2 : null;
                AndroidViewHolder androidViewHolder = this.f11050c;
                if (androidComposeView != null) {
                    androidComposeView.getAndroidViewsHandler$ui().removeViewInLayout(androidViewHolder);
                    TypeIntrinsics.c(androidComposeView.getAndroidViewsHandler$ui().getLayoutNodeToHolder()).remove(androidComposeView.getAndroidViewsHandler$ui().getHolderToLayoutNode().remove(androidViewHolder));
                    androidViewHolder.setImportantForAccessibility(0);
                }
                androidViewHolder.removeAllViewsInLayout();
                return Unit.f71739a;
            }
        };
        layoutNode.l(new MeasurePolicy() { // from class: androidx.compose.ui.viewinterop.AndroidViewHolder$layoutNode$1$5
            @Override // androidx.compose.ui.layout.MeasurePolicy
            public final int maxIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i3) {
                AndroidViewHolder androidViewHolder = this.f11051a;
                ViewGroup.LayoutParams layoutParams = androidViewHolder.getLayoutParams();
                layoutParams.getClass();
                androidViewHolder.measure(AndroidViewHolder.c(androidViewHolder, 0, i3, layoutParams.width), View.MeasureSpec.makeMeasureSpec(0, 0));
                return androidViewHolder.getMeasuredHeight();
            }

            @Override // androidx.compose.ui.layout.MeasurePolicy
            public final int maxIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i3) {
                int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                AndroidViewHolder androidViewHolder = this.f11051a;
                ViewGroup.LayoutParams layoutParams = androidViewHolder.getLayoutParams();
                layoutParams.getClass();
                androidViewHolder.measure(iMakeMeasureSpec, AndroidViewHolder.c(androidViewHolder, 0, i3, layoutParams.height));
                return androidViewHolder.getMeasuredWidth();
            }

            @Override // androidx.compose.ui.layout.MeasurePolicy
            /* JADX INFO: renamed from: measure-3p2s80s */
            public final MeasureResult mo1measure3p2s80s(MeasureScope measureScope, List list, long j2) {
                final AndroidViewHolder androidViewHolder = this.f11051a;
                if (androidViewHolder.getChildCount() == 0) {
                    return measureScope.V0(Constraints.j(j2), Constraints.i(j2), MapsKt.c(), AndroidViewHolder$layoutNode$1$5$measure$1.f11053c);
                }
                if (Constraints.j(j2) != 0) {
                    androidViewHolder.getChildAt(0).setMinimumWidth(Constraints.j(j2));
                }
                if (Constraints.i(j2) != 0) {
                    androidViewHolder.getChildAt(0).setMinimumHeight(Constraints.i(j2));
                }
                int iJ = Constraints.j(j2);
                int iH = Constraints.h(j2);
                ViewGroup.LayoutParams layoutParams = androidViewHolder.getLayoutParams();
                layoutParams.getClass();
                int iC = AndroidViewHolder.c(androidViewHolder, iJ, iH, layoutParams.width);
                int i3 = Constraints.i(j2);
                int iG = Constraints.g(j2);
                ViewGroup.LayoutParams layoutParams2 = androidViewHolder.getLayoutParams();
                layoutParams2.getClass();
                androidViewHolder.measure(iC, AndroidViewHolder.c(androidViewHolder, i3, iG, layoutParams2.height));
                int measuredWidth = androidViewHolder.getMeasuredWidth();
                int measuredHeight = androidViewHolder.getMeasuredHeight();
                final LayoutNode layoutNode2 = layoutNode;
                return measureScope.V0(measuredWidth, measuredHeight, MapsKt.c(), new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.ui.viewinterop.AndroidViewHolder$layoutNode$1$5$measure$2
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        AndroidViewHolder_androidKt.a(androidViewHolder, layoutNode2);
                        return Unit.f71739a;
                    }
                });
            }

            @Override // androidx.compose.ui.layout.MeasurePolicy
            public final int minIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i3) {
                AndroidViewHolder androidViewHolder = this.f11051a;
                ViewGroup.LayoutParams layoutParams = androidViewHolder.getLayoutParams();
                layoutParams.getClass();
                androidViewHolder.measure(AndroidViewHolder.c(androidViewHolder, 0, i3, layoutParams.width), View.MeasureSpec.makeMeasureSpec(0, 0));
                return androidViewHolder.getMeasuredHeight();
            }

            @Override // androidx.compose.ui.layout.MeasurePolicy
            public final int minIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i3) {
                int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                AndroidViewHolder androidViewHolder = this.f11051a;
                ViewGroup.LayoutParams layoutParams = androidViewHolder.getLayoutParams();
                layoutParams.getClass();
                androidViewHolder.measure(iMakeMeasureSpec, AndroidViewHolder.c(androidViewHolder, 0, i3, layoutParams.height));
                return androidViewHolder.getMeasuredWidth();
            }
        });
        this.layoutNode = layoutNode;
    }

    public static final int c(AndroidViewHolder androidViewHolder, int i2, int i3, int i4) {
        if (i4 >= 0 || i2 == i3) {
            return View.MeasureSpec.makeMeasureSpec(RangesKt.d(i4, i2, i3), 1073741824);
        }
        if (i4 != -2 || i3 == Integer.MAX_VALUE) {
            return (i4 != -1 || i3 == Integer.MAX_VALUE) ? View.MeasureSpec.makeMeasureSpec(0, 0) : View.MeasureSpec.makeMeasureSpec(i3, 1073741824);
        }
        return View.MeasureSpec.makeMeasureSpec(i3, Integer.MIN_VALUE);
    }

    public static Insets e(Insets insets, int i2, int i3, int i4, int i5) {
        int i6 = insets.f12054a - i2;
        if (i6 < 0) {
            i6 = 0;
        }
        int i7 = insets.f12055b - i3;
        if (i7 < 0) {
            i7 = 0;
        }
        int i8 = insets.f12056c - i4;
        if (i8 < 0) {
            i8 = 0;
        }
        int i9 = insets.d - i5;
        return Insets.c(i6, i7, i8, i9 >= 0 ? i9 : 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final OwnerSnapshotObserver getSnapshotObserver() {
        if (!isAttachedToWindow()) {
            InlineClassHelperKt.c("Expected AndroidViewHolder to be attached when observing reads.");
        }
        return this.d.getSnapshotObserver();
    }

    @Override // androidx.compose.ui.node.OwnerScope
    public final boolean T0() {
        return isAttachedToWindow();
    }

    @Override // androidx.compose.runtime.ComposeNodeLifecycleCallback
    public final void a() {
        this.release.mo47invoke();
    }

    @Override // androidx.compose.runtime.ComposeNodeLifecycleCallback
    public final void d() {
        this.reset.mo47invoke();
        removeAllViewsInLayout();
    }

    public final WindowInsetsCompat f(WindowInsetsCompat windowInsetsCompat) {
        if (windowInsetsCompat.k()) {
            InnerNodeCoordinator innerNodeCoordinator = this.layoutNode.H.f9772c;
            if (innerNodeCoordinator.h0.o) {
                long jB = IntOffsetKt.b(LayoutCoordinatesKt.e(innerNodeCoordinator));
                IntOffset.Companion companion = IntOffset.f11012b;
                int i2 = (int) (jB >> 32);
                if (i2 < 0) {
                    i2 = 0;
                }
                int i3 = (int) (jB & BodyPartID.bodyIdMax);
                if (i3 < 0) {
                    i3 = 0;
                }
                long jA = LayoutCoordinatesKt.c(innerNodeCoordinator).a();
                int i4 = (int) (jA >> 32);
                int i5 = (int) (jA & BodyPartID.bodyIdMax);
                long j2 = innerNodeCoordinator.d;
                long jB2 = IntOffsetKt.b(innerNodeCoordinator.h0((((long) Float.floatToRawIntBits((int) (j2 >> 32))) << 32) | (((long) Float.floatToRawIntBits((int) (j2 & BodyPartID.bodyIdMax))) & BodyPartID.bodyIdMax)));
                int i6 = i4 - ((int) (jB2 >> 32));
                if (i6 < 0) {
                    i6 = 0;
                }
                int i7 = i5 - ((int) (BodyPartID.bodyIdMax & jB2));
                int i8 = i7 >= 0 ? i7 : 0;
                if (i2 != 0 || i3 != 0 || i6 != 0 || i8 != 0) {
                    return windowInsetsCompat.l(i2, i3, i6, i8);
                }
            }
        }
        return windowInsetsCompat;
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public final void g(int i2, View view) {
        NestedScrollingParentHelper nestedScrollingParentHelper = this.y;
        if (i2 == 1) {
            nestedScrollingParentHelper.f12180b = 0;
        } else {
            nestedScrollingParentHelper.f12179a = 0;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean gatherTransparentRegion(Region region) {
        if (region == null) {
            return true;
        }
        int[] iArr = this.v;
        getLocationInWindow(iArr);
        int i2 = iArr[0];
        region.op(i2, iArr[1], getWidth() + i2, getHeight() + iArr[1], Region.Op.DIFFERENCE);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return getClass().getName();
    }

    public final Density getDensity() {
        return this.density;
    }

    /* JADX INFO: renamed from: getInteropView, reason: from getter */
    public final View getView() {
        return this.view;
    }

    public final LayoutNode getLayoutNode() {
        return this.layoutNode;
    }

    @Override // android.view.View
    public ViewGroup.LayoutParams getLayoutParams() {
        ViewGroup.LayoutParams layoutParams = this.view.getLayoutParams();
        return layoutParams == null ? new ViewGroup.LayoutParams(-1, -1) : layoutParams;
    }

    public final LifecycleOwner getLifecycleOwner() {
        return this.lifecycleOwner;
    }

    public final Modifier getModifier() {
        return this.modifier;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        NestedScrollingParentHelper nestedScrollingParentHelper = this.y;
        return nestedScrollingParentHelper.f12180b | nestedScrollingParentHelper.f12179a;
    }

    public final Function1<Density, Unit> getOnDensityChanged$ui() {
        return this.onDensityChanged;
    }

    public final Function1<Modifier, Unit> getOnModifierChanged$ui() {
        return this.onModifierChanged;
    }

    public final Function1<Boolean, Unit> getOnRequestDisallowInterceptTouchEvent$ui() {
        return this.onRequestDisallowInterceptTouchEvent;
    }

    public final Function0<Unit> getRelease() {
        return this.release;
    }

    public final Function0<Unit> getReset() {
        return this.reset;
    }

    public final SavedStateRegistryOwner getSavedStateRegistryOwner() {
        return this.savedStateRegistryOwner;
    }

    public final Function0<Unit> getUpdate() {
        return this.update;
    }

    public final View getView() {
        return this.view;
    }

    @Override // androidx.compose.runtime.ComposeNodeLifecycleCallback
    public final void h() {
        View view = this.view;
        if (view.getParent() != this) {
            addView(view);
        } else {
            this.reset.mo47invoke();
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final ViewParent invalidateChildInParent(int[] iArr, android.graphics.Rect rect) {
        super.invalidateChildInParent(iArr, rect);
        if (!this.z) {
            this.layoutNode.V();
            return null;
        }
        this.view.postOnAnimation(new r3(this.t, 4));
        return null;
    }

    @Override // android.view.View
    public final boolean isNestedScrollingEnabled() {
        return this.view.isNestedScrollingEnabled();
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public final void j(View view, View view2, int i2, int i3) {
        NestedScrollingParentHelper nestedScrollingParentHelper = this.y;
        if (i3 == 1) {
            nestedScrollingParentHelper.f12180b = i2;
        } else {
            nestedScrollingParentHelper.f12179a = i2;
        }
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public final void k(View view, int i2, int i3, int[] iArr, int i4) {
        long jL0;
        if (this.view.isNestedScrollingEnabled()) {
            long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(i2 * (-1.0f))) << 32) | (((long) Float.floatToRawIntBits(i3 * (-1.0f))) & BodyPartID.bodyIdMax);
            Offset.Companion companion = Offset.f8806b;
            int iB = AndroidViewHolder_androidKt.b(i4);
            NestedScrollNode nestedScrollNode = this.f11037b.f9241a;
            NestedScrollNode nestedScrollNode2 = null;
            if (nestedScrollNode != null && nestedScrollNode.o) {
                nestedScrollNode2 = (NestedScrollNode) TraversableNodeKt.b(nestedScrollNode);
            }
            if (nestedScrollNode2 != null) {
                jL0 = nestedScrollNode2.l0(iB, jFloatToRawIntBits);
            } else {
                Offset.f8806b.getClass();
                jL0 = 0;
            }
            iArr[0] = NestedScrollInteropConnectionKt.d(Float.intBitsToFloat((int) (jL0 >> 32)));
            iArr[1] = NestedScrollInteropConnectionKt.d(Float.intBitsToFloat((int) (jL0 & BodyPartID.bodyIdMax)));
        }
    }

    @Override // androidx.core.view.NestedScrollingParent3
    public final void m(View view, int i2, int i3, int i4, int i5, int i6, int[] iArr) {
        if (this.view.isNestedScrollingEnabled()) {
            long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(i2 * (-1.0f))) << 32) | (((long) Float.floatToRawIntBits(i3 * (-1.0f))) & BodyPartID.bodyIdMax);
            Offset.Companion companion = Offset.f8806b;
            long jB = this.f11037b.b(AndroidViewHolder_androidKt.b(i6), jFloatToRawIntBits, (((long) Float.floatToRawIntBits(i4 * (-1.0f))) << 32) | (((long) Float.floatToRawIntBits(i5 * (-1.0f))) & BodyPartID.bodyIdMax));
            iArr[0] = NestedScrollInteropConnectionKt.d(Float.intBitsToFloat((int) (jB >> 32)));
            iArr[1] = NestedScrollInteropConnectionKt.d(Float.intBitsToFloat((int) (jB & BodyPartID.bodyIdMax)));
        }
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public final void n(View view, int i2, int i3, int i4, int i5, int i6) {
        if (this.view.isNestedScrollingEnabled()) {
            long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(i2 * (-1.0f))) << 32) | (((long) Float.floatToRawIntBits(i3 * (-1.0f))) & BodyPartID.bodyIdMax);
            Offset.Companion companion = Offset.f8806b;
            this.f11037b.b(AndroidViewHolder_androidKt.b(i6), jFloatToRawIntBits, (((long) Float.floatToRawIntBits(i4 * (-1.0f))) << 32) | (((long) Float.floatToRawIntBits(i5 * (-1.0f))) & BodyPartID.bodyIdMax));
        }
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public final boolean o(View view, View view2, int i2, int i3) {
        return ((i2 & 2) == 0 && (i2 & 1) == 0) ? false : true;
    }

    @Override // androidx.core.view.OnApplyWindowInsetsListener
    public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
        this.q = new WindowInsetsCompat(windowInsetsCompat);
        return f(windowInsetsCompat);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        ((AndroidViewHolder$runUpdate$1) this.s).mo47invoke();
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onDescendantInvalidated(View view, View view2) {
        super.onDescendantInvalidated(view, view2);
        if (!this.z) {
            this.layoutNode.V();
        } else {
            this.view.postOnAnimation(new r3(this.t, 4));
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getSnapshotObserver().f9812a.b(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        this.view.layout(0, 0, i4 - i2, i5 - i3);
    }

    @Override // android.view.View
    public final void onMeasure(int i2, int i3) {
        View view = this.view;
        if (view.getParent() != this) {
            setMeasuredDimension(View.MeasureSpec.getSize(i2), View.MeasureSpec.getSize(i3));
            return;
        }
        if (view.getVisibility() == 8) {
            setMeasuredDimension(0, 0);
            return;
        }
        view.measure(i2, i3);
        setMeasuredDimension(view.getMeasuredWidth(), view.getMeasuredHeight());
        this.w = i2;
        this.x = i3;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedFling(View view, float f2, float f3, boolean z) {
        if (!this.view.isNestedScrollingEnabled()) {
            return false;
        }
        BuildersKt.c(this.f11037b.d(), null, null, new AnonymousClass1(z, this, VelocityKt.a(f2 * (-1.0f), f3 * (-1.0f)), null), 3);
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedPreFling(View view, float f2, float f3) {
        if (!this.view.isNestedScrollingEnabled()) {
            return false;
        }
        BuildersKt.c(this.f11037b.d(), null, null, new C03501(VelocityKt.a(f2 * (-1.0f), f3 * (-1.0f)), null), 3);
        return false;
    }

    @Override // android.view.View
    public final void onWindowVisibilityChanged(int i2) {
        super.onWindowVisibilityChanged(i2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean requestChildRectangleOnScreen(View view, android.graphics.Rect rect, boolean z) {
        Function1 function1 = this.r;
        if (function1 == null) {
            return true;
        }
        function1.invoke(rect != null ? new Rect(rect.left, rect.top, rect.right, rect.bottom) : null);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestDisallowInterceptTouchEvent(boolean z) {
        Function1 function1 = this.onRequestDisallowInterceptTouchEvent;
        if (function1 != null) {
            function1.invoke(Boolean.valueOf(z));
        }
        super.requestDisallowInterceptTouchEvent(z);
    }

    public final void setDensity(Density density) {
        if (density != this.density) {
            this.density = density;
            Function1 function1 = this.onDensityChanged;
            if (function1 != null) {
                function1.invoke(density);
            }
        }
    }

    public final void setLifecycleOwner(LifecycleOwner lifecycleOwner) {
        if (lifecycleOwner != this.lifecycleOwner) {
            this.lifecycleOwner = lifecycleOwner;
            setTag(R.id.view_tree_lifecycle_owner, lifecycleOwner);
        }
    }

    public final void setModifier(Modifier modifier) {
        if (modifier != this.modifier) {
            this.modifier = modifier;
            Function1 function1 = this.onModifierChanged;
            if (function1 != null) {
                function1.invoke(modifier);
            }
        }
    }

    public final void setOnDensityChanged$ui(Function1<? super Density, Unit> function1) {
        this.onDensityChanged = function1;
    }

    public final void setOnModifierChanged$ui(Function1<? super Modifier, Unit> function1) {
        this.onModifierChanged = function1;
    }

    public final void setOnRequestDisallowInterceptTouchEvent$ui(Function1<? super Boolean, Unit> function1) {
        this.onRequestDisallowInterceptTouchEvent = function1;
    }

    public final void setRelease(Function0<Unit> function0) {
        this.release = function0;
    }

    public final void setReset(Function0<Unit> function0) {
        this.reset = function0;
    }

    public final void setSavedStateRegistryOwner(SavedStateRegistryOwner savedStateRegistryOwner) {
        if (savedStateRegistryOwner != this.savedStateRegistryOwner) {
            this.savedStateRegistryOwner = savedStateRegistryOwner;
            setTag(R.id.view_tree_saved_state_registry_owner, savedStateRegistryOwner);
        }
    }

    public final void setUpdate(Function0<Unit> function0) {
        this.update = function0;
        this.f11040f = true;
        ((AndroidViewHolder$runUpdate$1) this.s).mo47invoke();
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return true;
    }
}
