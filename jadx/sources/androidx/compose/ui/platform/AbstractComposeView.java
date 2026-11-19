package androidx.compose.ui.platform;

import android.content.Context;
import android.os.IBinder;
import android.os.Trace;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.collection.MutableScatterMap;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.Composition;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.Recomposer;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.node.Owner;
import androidx.core.viewtree.ViewTree;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.ViewTreeLifecycleOwner;
import androidx.lifecycle.ViewTreeViewModelStoreOwner;
import androidx.savedstate.SavedStateRegistryOwner;
import androidx.savedstate.ViewTreeSavedStateRegistryOwner;
import com.networkbench.agent.impl.NBSSpanMetricUnit;
import com.vuitton.android.R;
import defpackage.md;
import defpackage.z1;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\b\b'\u0018\u00002\u00020\u0001B'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\r\u001a\u00020\f2\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\r\u0010\u000eJ\u0015\u0010\u0011\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0015\u001a\u00020\f2\u0006\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0015\u0010\u0016R(\u0010\u001d\u001a\u0004\u0018\u00010\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u00178\u0002@BX\u0082\u000e¢\u0006\f\n\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR(\u0010!\u001a\u0004\u0018\u00010\n2\b\u0010\u0018\u001a\u0004\u0018\u00010\n8\u0002@BX\u0082\u000e¢\u0006\f\n\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010\u000eR4\u0010+\u001a\u0004\u0018\u00010\"2\b\u0010\u0018\u001a\u0004\u0018\u00010\"8\u0000@@X\u0081\u000e¢\u0006\u0018\n\u0004\b#\u0010$\u0012\u0004\b)\u0010*\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R$\u00100\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010,8\u0002@\u0002X\u0082\u000e¢\u0006\f\n\u0004\b-\u0010.\u0012\u0004\b/\u0010*R0\u00107\u001a\u00020\u00132\u0006\u0010\u0018\u001a\u00020\u00138\u0006@FX\u0087\u000e¢\u0006\u0018\n\u0004\b1\u00102\u0012\u0004\b6\u0010*\u001a\u0004\b3\u00104\"\u0004\b5\u0010\u0016R\u0014\u00109\u001a\u00020\u00138TX\u0094\u0004¢\u0006\u0006\u001a\u0004\b8\u00104R$\u0010?\u001a\u00020:2\u0006\u0010\u0018\u001a\u00020:8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b;\u0010<\"\u0004\b=\u0010>R\u0011\u0010A\u001a\u00020\u00138F¢\u0006\u0006\u001a\u0004\b@\u00104¨\u0006B"}, d2 = {"Landroidx/compose/ui/platform/AbstractComposeView;", "Landroid/view/ViewGroup;", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Landroidx/compose/runtime/CompositionContext;", "parent", "", "setParentCompositionContext", "(Landroidx/compose/runtime/CompositionContext;)V", "Landroidx/compose/ui/platform/ViewCompositionStrategy;", "strategy", "setViewCompositionStrategy", "(Landroidx/compose/ui/platform/ViewCompositionStrategy;)V", "", "isTransitionGroup", "setTransitionGroup", "(Z)V", "Landroid/os/IBinder;", "value", "c", "Landroid/os/IBinder;", "setPreviousAttachedWindowToken", "(Landroid/os/IBinder;)V", "previousAttachedWindowToken", "e", "Landroidx/compose/runtime/CompositionContext;", "setParentContext", "parentContext", "Landroidx/compose/ui/platform/ComposeViewContext;", "f", "Landroidx/compose/ui/platform/ComposeViewContext;", "getComposeViewContext$ui", "()Landroidx/compose/ui/platform/ComposeViewContext;", "setComposeViewContext$ui", "(Landroidx/compose/ui/platform/ComposeViewContext;)V", "getComposeViewContext$ui$annotations", "()V", "composeViewContext", "Lkotlin/Function0;", "g", "Lkotlin/jvm/functions/Function0;", "getDisposeViewCompositionStrategy$annotations", "disposeViewCompositionStrategy", NBSSpanMetricUnit.Hour, "Z", "getShowLayoutBounds", "()Z", "setShowLayoutBounds", "getShowLayoutBounds$annotations", "showLayoutBounds", "getShouldCreateCompositionOnAttachedToWindow", "shouldCreateCompositionOnAttachedToWindow", "Landroidx/compose/ui/platform/AutoClearFocusBehavior;", "getAutoClearFocusBehavior-4UtRPd4", "()I", "setAutoClearFocusBehavior-17tfJxM", "(I)V", "autoClearFocusBehavior", "getHasComposition", "hasComposition", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class AbstractComposeView extends ViewGroup {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final /* synthetic */ int f9836k = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public WeakReference f9837b;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    public IBinder previousAttachedWindowToken;
    public Composition d;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    public CompositionContext parentContext;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    public ComposeViewContext composeViewContext;

    /* JADX INFO: renamed from: g, reason: from kotlin metadata */
    public Function0 disposeViewCompositionStrategy;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    public boolean showLayoutBounds;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f9842i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f9843j;

    public AbstractComposeView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        setClipChildren(false);
        setClipToPadding(false);
        setImportantForAccessibility(1);
        this.disposeViewCompositionStrategy = ViewCompositionStrategy.DisposeOnDetachedFromWindowOrReleasedFromPool.f10155a.a(this);
    }

    public static /* synthetic */ void getComposeViewContext$ui$annotations() {
    }

    private static /* synthetic */ void getDisposeViewCompositionStrategy$annotations() {
    }

    public static /* synthetic */ void getShowLayoutBounds$annotations() {
    }

    private final void setParentContext(CompositionContext compositionContext) {
        if (this.parentContext != compositionContext) {
            this.parentContext = compositionContext;
            if (compositionContext != null) {
                this.f9837b = null;
            }
            Composition composition = this.d;
            if (composition != null) {
                composition.dispose();
                this.d = null;
                if (isAttachedToWindow()) {
                    f();
                }
            }
        }
    }

    private final void setPreviousAttachedWindowToken(IBinder iBinder) {
        if (this.previousAttachedWindowToken != iBinder) {
            this.previousAttachedWindowToken = iBinder;
            this.f9837b = null;
        }
    }

    public abstract void a(Composer composer, int i2);

    @Override // android.view.ViewGroup
    public final void addView(View view) {
        c();
        super.addView(view);
    }

    @Override // android.view.ViewGroup
    public final boolean addViewInLayout(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        c();
        return super.addViewInLayout(view, i2, layoutParams);
    }

    public final void b() {
        if (isAttachedToWindow()) {
            setPreviousAttachedWindowToken(getWindowToken());
            if (this.composeViewContext == null) {
                AndroidComposeView androidComposeView = null;
                if (getChildCount() != 0) {
                    View childAt = getChildAt(0);
                    if (childAt instanceof AndroidComposeView) {
                        androidComposeView = (AndroidComposeView) childAt;
                    }
                }
                if (androidComposeView != null) {
                    androidComposeView.setComposeViewContext(k(ComposeView_androidKt.b(this), androidComposeView.getComposeViewContext()));
                }
            }
            if (getN()) {
                f();
            }
        }
    }

    public final void c() {
        if (this.f9842i) {
            return;
        }
        throw new UnsupportedOperationException("Cannot add views to " + getClass().getSimpleName() + "; only Compose content is supported");
    }

    public final void d() {
        ComposeViewContext composeViewContext;
        View view;
        if (this.parentContext == null && !isAttachedToWindow() && ((composeViewContext = this.composeViewContext) == null || (view = composeViewContext.f10009a) == null || !view.isAttachedToWindow())) {
            md.k("createComposition requires a previous call to createComposition(ComposeViewContext), a parent reference, or the View to be attached to a window. Attach the View or call setParentCompositionReference.");
        } else {
            f();
        }
    }

    public final void e() {
        View childAt = getChildAt(0);
        AndroidComposeView androidComposeView = childAt instanceof AndroidComposeView ? (AndroidComposeView) childAt : null;
        if (androidComposeView != null && androidComposeView.composeViewContextIncrementedDuringInit) {
            androidComposeView.getComposeViewContext().b();
            androidComposeView.composeViewContextIncrementedDuringInit = false;
        }
        Composition composition = this.d;
        if (composition != null) {
            composition.dispose();
        }
        this.d = null;
        requestLayout();
    }

    public final void f() {
        if (this.d == null) {
            try {
                this.f9842i = true;
                Trace.beginSection("Compose:initializeView");
                try {
                    ComposeViewContext composeViewContextI = this.composeViewContext;
                    if (composeViewContextI == null) {
                        composeViewContextI = i();
                    }
                    this.d = Wrapper_androidKt.a(this, composeViewContextI, new ComposableLambdaImpl(1003123809, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.ui.platform.AbstractComposeView$ensureCompositionCreated$1$1
                        {
                            super(2);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            Composer composer = (Composer) obj;
                            int iIntValue = ((Number) obj2).intValue();
                            if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                                OpaqueKey opaqueKey = ComposerKt.f7940a;
                                this.f9844c.a(composer, 0);
                            } else {
                                composer.D();
                            }
                            return Unit.f71739a;
                        }
                    }));
                    Trace.endSection();
                    this.f9842i = false;
                } catch (Throwable th) {
                    Trace.endSection();
                    throw th;
                }
            } catch (Throwable th2) {
                this.f9842i = false;
                throw th2;
            }
        }
    }

    public void g(int i2, int i3, boolean z, int i4, int i5) {
        View childAt = getChildAt(0);
        if (childAt != null) {
            childAt.layout(getPaddingLeft(), getPaddingTop(), (i4 - i2) - getPaddingRight(), (i5 - i3) - getPaddingBottom());
        }
    }

    /* JADX INFO: renamed from: getAutoClearFocusBehavior-4UtRPd4, reason: not valid java name */
    public final int m4getAutoClearFocusBehavior4UtRPd4() {
        Object tag = getTag(R.id.auto_clear_focus_behavior_tag);
        AutoClearFocusBehavior autoClearFocusBehavior = tag instanceof AutoClearFocusBehavior ? (AutoClearFocusBehavior) tag : null;
        if (autoClearFocusBehavior != null) {
            return autoClearFocusBehavior.f9981a;
        }
        AutoClearFocusBehavior.f9979b.getClass();
        return AutoClearFocusBehavior.f9980c;
    }

    /* JADX INFO: renamed from: getComposeViewContext$ui, reason: from getter */
    public final ComposeViewContext getComposeViewContext() {
        return this.composeViewContext;
    }

    public final boolean getHasComposition() {
        return this.d != null;
    }

    /* JADX INFO: renamed from: getShouldCreateCompositionOnAttachedToWindow */
    public boolean getN() {
        return true;
    }

    public final boolean getShowLayoutBounds() {
        return this.showLayoutBounds;
    }

    public void h(int i2, int i3) {
        View childAt = getChildAt(0);
        if (childAt == null) {
            super.onMeasure(i2, i3);
            return;
        }
        childAt.measure(View.MeasureSpec.makeMeasureSpec(Math.max(0, (View.MeasureSpec.getSize(i2) - getPaddingLeft()) - getPaddingRight()), View.MeasureSpec.getMode(i2)), View.MeasureSpec.makeMeasureSpec(Math.max(0, (View.MeasureSpec.getSize(i3) - getPaddingTop()) - getPaddingBottom()), View.MeasureSpec.getMode(i3)));
        setMeasuredDimension(getPaddingRight() + getPaddingLeft() + childAt.getMeasuredWidth(), getPaddingBottom() + getPaddingTop() + childAt.getMeasuredHeight());
    }

    /* JADX WARN: Code duplicated, block: B:4:0x0007  */
    public final ComposeViewContext i() {
        ComposeViewContext composeViewContext;
        ViewModelStoreOwner viewModelStoreOwner;
        if (getChildCount() == 0) {
            composeViewContext = null;
        } else {
            View childAt = getChildAt(0);
            AndroidComposeView androidComposeView = childAt instanceof AndroidComposeView ? (AndroidComposeView) childAt : null;
            if (androidComposeView != null) {
                composeViewContext = androidComposeView.getComposeViewContext();
            } else {
                composeViewContext = null;
            }
        }
        View viewB = ComposeView_androidKt.b(this);
        ComposeViewContext composeViewContextC = ComposeView_androidKt.c(viewB);
        if (composeViewContextC != null) {
            return k(viewB, composeViewContextC);
        }
        CompositionContext compositionContextJ = j();
        LifecycleOwner lifecycleOwnerA = ViewTreeLifecycleOwner.a(viewB);
        if (lifecycleOwnerA == null) {
            lifecycleOwnerA = composeViewContext != null ? composeViewContext.f10011c : null;
            if (lifecycleOwnerA == null) {
                md.k("Composed into the View which doesn't propagate ViewTreeLifecycleOwner!");
                return null;
            }
        }
        LifecycleOwner lifecycleOwner = lifecycleOwnerA;
        SavedStateRegistryOwner savedStateRegistryOwnerA = ViewTreeSavedStateRegistryOwner.a(viewB);
        if (savedStateRegistryOwnerA == null) {
            savedStateRegistryOwnerA = composeViewContext != null ? composeViewContext.d : null;
            if (savedStateRegistryOwnerA == null) {
                md.k("Composed into the View which doesn't propagate ViewTreeSavedStateRegistryOwner!");
                return null;
            }
        }
        SavedStateRegistryOwner savedStateRegistryOwner = savedStateRegistryOwnerA;
        ViewModelStoreOwner viewModelStoreOwnerA = ViewTreeViewModelStoreOwner.a(viewB);
        if (viewModelStoreOwnerA == null) {
            viewModelStoreOwner = composeViewContext != null ? composeViewContext.f10012e : null;
        } else {
            viewModelStoreOwner = viewModelStoreOwnerA;
        }
        ComposeViewContext composeViewContext2 = new ComposeViewContext(viewB, compositionContextJ, lifecycleOwner, savedStateRegistryOwner, viewModelStoreOwner);
        viewB.setTag(R.id.androidx_compose_ui_view_compose_view_context, new WeakReference(composeViewContext2));
        return composeViewContext2;
    }

    @Override // android.view.ViewGroup
    public final boolean isTransitionGroup() {
        return !this.f9843j || super.isTransitionGroup();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.compose.runtime.CompositionContext] */
    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.compose.runtime.CompositionContext] */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v17 */
    /* JADX WARN: Type inference failed for: r0v2, types: [androidx.compose.runtime.CompositionContext] */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9, types: [androidx.compose.runtime.Recomposer] */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v14, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v15 */
    /* JADX WARN: Type inference failed for: r2v21 */
    public final CompositionContext j() {
        CompositionContext compositionContext;
        ?? A = this.parentContext;
        if (A == 0) {
            A = WindowRecomposer_androidKt.a(this);
            if (A == 0) {
                Object parent = getParent();
                while (true) {
                    if (A != 0 || !(parent instanceof View)) {
                        A = A;
                        break;
                    }
                    A = A;
                    View view = (View) parent;
                    CompositionContext compositionContextA = WindowRecomposer_androidKt.a(view);
                    parent = ViewTree.a(view);
                    A = compositionContextA;
                }
            }
            if (A != 0) {
                ?? r2 = (!(A instanceof Recomposer) || ((Recomposer.State) ((Recomposer) A).u.getValue()).compareTo(Recomposer.State.ShuttingDown) > 0) ? A : 0;
                if (r2 != 0) {
                    this.f9837b = new WeakReference(r2);
                }
            } else {
                A = 0;
            }
            if (A == 0) {
                WeakReference weakReference = this.f9837b;
                if (weakReference == null || (compositionContext = (CompositionContext) weakReference.get()) == null || ((compositionContext instanceof Recomposer) && ((Recomposer.State) ((Recomposer) compositionContext).u.getValue()).compareTo(Recomposer.State.ShuttingDown) <= 0)) {
                    A = compositionContext;
                    A = compositionContext;
                    A = 0;
                }
                if (A == 0) {
                    A = WindowRecomposer_androidKt.b(this);
                    ?? r1 = ((Recomposer.State) A.u.getValue()).compareTo(Recomposer.State.ShuttingDown) > 0 ? A : 0;
                    if (r1 != 0) {
                        this.f9837b = new WeakReference(r1);
                    }
                }
            }
        }
        return A;
    }

    public final ComposeViewContext k(View view, ComposeViewContext composeViewContext) {
        CompositionContext compositionContextJ = j();
        LifecycleOwner lifecycleOwnerA = ViewTreeLifecycleOwner.a(view);
        ViewModelStoreOwner viewModelStoreOwnerA = ViewTreeViewModelStoreOwner.a(view);
        SavedStateRegistryOwner savedStateRegistryOwnerA = ViewTreeSavedStateRegistryOwner.a(view);
        CompositionContext compositionContext = composeViewContext.f10010b;
        SavedStateRegistryOwner savedStateRegistryOwner = composeViewContext.d;
        LifecycleOwner lifecycleOwner = composeViewContext.f10011c;
        if (compositionContextJ == compositionContext && lifecycleOwnerA == lifecycleOwner && viewModelStoreOwnerA == composeViewContext.f10012e && savedStateRegistryOwnerA == savedStateRegistryOwner) {
            return composeViewContext;
        }
        if (compositionContextJ.getX() != composeViewContext.f10010b.getX()) {
            e();
        }
        if (lifecycleOwnerA == null) {
            lifecycleOwnerA = lifecycleOwner;
        }
        ComposeViewContext composeViewContext2 = new ComposeViewContext(composeViewContext, view, compositionContextJ, lifecycleOwnerA, savedStateRegistryOwnerA == null ? savedStateRegistryOwner : savedStateRegistryOwnerA, viewModelStoreOwnerA);
        view.setTag(R.id.androidx_compose_ui_view_compose_view_context, new WeakReference(composeViewContext2));
        return composeViewContext2;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        MutableScatterMap mutableScatterMap = WindowRecomposer_androidKt.f10186a;
        Object objA = ViewTree.a(this);
        View view = this;
        while (objA instanceof View) {
            View view2 = (View) objA;
            if (view2.getId() == 16908290) {
                break;
            }
            view = view2;
            objA = view2.getParent();
        }
        if (view.getParent() == null) {
            getHandler().postAtFrontOfQueue(new z1(this, 0));
        } else {
            b();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        g(i2, i3, z, i4, i5);
    }

    @Override // android.view.View
    public final void onMeasure(int i2, int i3) {
        f();
        h(i2, i3);
    }

    @Override // android.view.View
    public final void onRtlPropertiesChanged(int i2) {
        View childAt = getChildAt(0);
        if (childAt != null) {
            childAt.setLayoutDirection(i2);
        }
    }

    /* JADX INFO: renamed from: setAutoClearFocusBehavior-17tfJxM, reason: not valid java name */
    public final void m5setAutoClearFocusBehavior17tfJxM(int i2) {
        setTag(R.id.auto_clear_focus_behavior_tag, new AutoClearFocusBehavior(i2));
    }

    public final void setComposeViewContext$ui(ComposeViewContext composeViewContext) {
        if (this.composeViewContext != composeViewContext) {
            if (composeViewContext == null) {
                e();
            } else if (getChildCount() != 0) {
                View childAt = getChildAt(0);
                AndroidComposeView androidComposeView = childAt instanceof AndroidComposeView ? (AndroidComposeView) childAt : null;
                if (androidComposeView != null) {
                    if (androidComposeView.getCoroutineContext() != composeViewContext.f10010b.getX()) {
                        e();
                    }
                    androidComposeView.setComposeViewContext(composeViewContext);
                }
            }
            this.composeViewContext = composeViewContext;
        }
    }

    public final void setParentCompositionContext(CompositionContext parent) {
        setParentContext(parent);
    }

    public final void setShowLayoutBounds(boolean z) {
        this.showLayoutBounds = z;
        KeyEvent.Callback childAt = getChildAt(0);
        if (childAt != null) {
            ((Owner) childAt).setShowLayoutBounds(z);
        }
    }

    @Override // android.view.ViewGroup
    public void setTransitionGroup(boolean isTransitionGroup) {
        super.setTransitionGroup(isTransitionGroup);
        this.f9843j = true;
    }

    public final void setViewCompositionStrategy(ViewCompositionStrategy strategy) {
        Function0 function0 = this.disposeViewCompositionStrategy;
        if (function0 != null) {
            function0.mo47invoke();
        }
        this.disposeViewCompositionStrategy = strategy.a(this);
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i2) {
        c();
        super.addView(view, i2);
    }

    @Override // android.view.ViewGroup
    public final boolean addViewInLayout(View view, int i2, ViewGroup.LayoutParams layoutParams, boolean z) {
        c();
        return super.addViewInLayout(view, i2, layoutParams, z);
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i2, int i3) {
        c();
        super.addView(view, i2, i3);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void addView(View view, ViewGroup.LayoutParams layoutParams) {
        c();
        super.addView(view, layoutParams);
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        c();
        super.addView(view, i2, layoutParams);
    }

    public AbstractComposeView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
    }

    public AbstractComposeView(Context context) {
        this(context, null, 0, 6, null);
    }

    public /* synthetic */ AbstractComposeView(Context context, AttributeSet attributeSet, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i3 & 2) != 0 ? null : attributeSet, (i3 & 4) != 0 ? 0 : i2);
    }
}
