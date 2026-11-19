package androidx.compose.ui.window;

import android.graphics.Outline;
import android.graphics.Rect;
import android.os.Build;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.view.WindowManager;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotStateObserver;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.platform.AbstractComposeView;
import androidx.compose.ui.platform.ViewRootForInspector;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntRect;
import androidx.compose.ui.unit.IntRectKt;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.lifecycle.ViewTreeLifecycleOwner;
import androidx.lifecycle.ViewTreeViewModelStoreOwner;
import androidx.savedstate.ViewTreeSavedStateRegistryOwner;
import com.networkbench.agent.impl.NBSSpanMetricUnit;
import com.sensorsdata.analytics.android.sdk.plugin.property.beans.SAPropertyFilter;
import com.vuitton.android.R;
import defpackage.j00;
import defpackage.ll0;
import defpackage.r3;
import defpackage.s6;
import defpackage.v40;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$LongRef;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0010\b\u0001\u0018\u00002\u00020\u00012\u00020\u0002:\u0001`BY\u0012\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\b\b\u0002\u0010\u0015\u001a\u00020\u0014¢\u0006\u0004\b\u0016\u0010\u0017J\u0017\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001d\u001a\u00020\u001cH\u0002¢\u0006\u0004\b\u001d\u0010\u001eR\"\u0010\t\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R \u0010,\u001a\u00020%8\u0000X\u0081\u0004¢\u0006\u0012\n\u0004\b&\u0010'\u0012\u0004\b*\u0010+\u001a\u0004\b(\u0010)R\"\u00103\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b-\u0010.\u001a\u0004\b/\u00100\"\u0004\b1\u00102R\"\u0010;\u001a\u0002048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b5\u00106\u001a\u0004\b7\u00108\"\u0004\b9\u0010:R/\u0010D\u001a\u0004\u0018\u00010<2\b\u0010=\u001a\u0004\u0018\u00010<8F@FX\u0086\u008e\u0002¢\u0006\u0012\n\u0004\b>\u0010?\u001a\u0004\b@\u0010A\"\u0004\bB\u0010CR/\u0010K\u001a\u0004\u0018\u00010E2\b\u0010=\u001a\u0004\u0018\u00010E8B@BX\u0082\u008e\u0002¢\u0006\u0012\n\u0004\bF\u0010?\u001a\u0004\bG\u0010H\"\u0004\bI\u0010JR\u001b\u0010P\u001a\u00020\u00128FX\u0086\u0084\u0002¢\u0006\f\n\u0004\bL\u0010M\u001a\u0004\bN\u0010ORA\u0010W\u001a\r\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\bQ2\u0011\u0010=\u001a\r\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\bQ8B@BX\u0082\u008e\u0002¢\u0006\u0012\n\u0004\bR\u0010?\u001a\u0004\bS\u0010T\"\u0004\bU\u0010VR$\u0010\\\u001a\u00020\u00122\u0006\u0010X\u001a\u00020\u00128\u0014@RX\u0094\u000e¢\u0006\f\n\u0004\bY\u0010Z\u001a\u0004\b[\u0010OR\u0014\u0010_\u001a\u00020\u00018VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b]\u0010^¨\u0006a"}, d2 = {"Landroidx/compose/ui/window/PopupLayout;", "Landroidx/compose/ui/platform/AbstractComposeView;", "Landroidx/compose/ui/platform/ViewRootForInspector;", "Lkotlin/Function0;", "", "onDismissRequest", "Landroidx/compose/ui/window/PopupProperties;", SAPropertyFilter.PROPERTIES, "", "testTag", "Landroid/view/View;", "composeView", "Landroidx/compose/ui/unit/Density;", "density", "Landroidx/compose/ui/window/PopupPositionProvider;", "initialPositionProvider", "Ljava/util/UUID;", "popupId", "", "isNested", "Landroidx/compose/ui/window/PopupLayoutHelper;", "popupLayoutHelper", "<init>", "(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/PopupProperties;Ljava/lang/String;Landroid/view/View;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/window/PopupPositionProvider;Ljava/util/UUID;ZLandroidx/compose/ui/window/PopupLayoutHelper;)V", "", "layoutDirection", "setLayoutDirection", "(I)V", "Landroidx/compose/ui/unit/IntRect;", "getDisplayBounds", "()Landroidx/compose/ui/unit/IntRect;", "n", "Ljava/lang/String;", "getTestTag", "()Ljava/lang/String;", "setTestTag", "(Ljava/lang/String;)V", "Landroid/view/WindowManager$LayoutParams;", NBSSpanMetricUnit.Second, "Landroid/view/WindowManager$LayoutParams;", "getParams$ui", "()Landroid/view/WindowManager$LayoutParams;", "getParams$ui$annotations", "()V", "params", "t", "Landroidx/compose/ui/window/PopupPositionProvider;", "getPositionProvider", "()Landroidx/compose/ui/window/PopupPositionProvider;", "setPositionProvider", "(Landroidx/compose/ui/window/PopupPositionProvider;)V", "positionProvider", "Landroidx/compose/ui/unit/LayoutDirection;", "u", "Landroidx/compose/ui/unit/LayoutDirection;", "getParentLayoutDirection", "()Landroidx/compose/ui/unit/LayoutDirection;", "setParentLayoutDirection", "(Landroidx/compose/ui/unit/LayoutDirection;)V", "parentLayoutDirection", "Landroidx/compose/ui/unit/IntSize;", "<set-?>", "v", "Landroidx/compose/runtime/MutableState;", "getPopupContentSize-bOM6tXw", "()Landroidx/compose/ui/unit/IntSize;", "setPopupContentSize-fhxjrPA", "(Landroidx/compose/ui/unit/IntSize;)V", "popupContentSize", "Landroidx/compose/ui/layout/LayoutCoordinates;", "w", "getParentLayoutCoordinates", "()Landroidx/compose/ui/layout/LayoutCoordinates;", "setParentLayoutCoordinates", "(Landroidx/compose/ui/layout/LayoutCoordinates;)V", "parentLayoutCoordinates", "y", "Landroidx/compose/runtime/State;", "getCanCalculatePosition", "()Z", "canCalculatePosition", "Landroidx/compose/runtime/Composable;", "C", "getContent", "()Lkotlin/jvm/functions/Function2;", "setContent", "(Lkotlin/jvm/functions/Function2;)V", "content", "value", "D", "Z", "getShouldCreateCompositionOnAttachedToWindow", "shouldCreateCompositionOnAttachedToWindow", "getSubCompositionView", "()Landroidx/compose/ui/platform/AbstractComposeView;", "subCompositionView", "Companion", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class PopupLayout extends AbstractComposeView implements ViewRootForInspector {
    public static final Function1 F;
    public final SnapshotStateObserver A;
    public s6 B;

    /* JADX INFO: renamed from: C, reason: from kotlin metadata */
    public final MutableState content;

    /* JADX INFO: renamed from: D, reason: from kotlin metadata */
    public boolean shouldCreateCompositionOnAttachedToWindow;
    public final int[] E;
    public Function0 l;
    public PopupProperties m;

    /* JADX INFO: renamed from: n, reason: from kotlin metadata */
    public String testTag;
    public final View o;
    public final boolean p;
    public final PopupLayoutHelper q;
    public final WindowManager r;

    /* JADX INFO: renamed from: s, reason: from kotlin metadata */
    public final WindowManager.LayoutParams params;

    /* JADX INFO: renamed from: t, reason: from kotlin metadata */
    public PopupPositionProvider positionProvider;

    /* JADX INFO: renamed from: u, reason: from kotlin metadata */
    public LayoutDirection parentLayoutDirection;

    /* JADX INFO: renamed from: v, reason: from kotlin metadata */
    public final MutableState popupContentSize;

    /* JADX INFO: renamed from: w, reason: from kotlin metadata */
    public final MutableState parentLayoutCoordinates;
    public IntRect x;

    /* JADX INFO: renamed from: y, reason: from kotlin metadata */
    public final State canCalculatePosition;
    public final Rect z;

    /* JADX INFO: renamed from: androidx.compose.ui.window.PopupLayout$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"androidx/compose/ui/window/PopupLayout$2", "Landroid/view/ViewOutlineProvider;", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class AnonymousClass2 extends ViewOutlineProvider {
        @Override // android.view.ViewOutlineProvider
        public final void getOutline(View view, Outline outline) {
            outline.setRect(0, 0, view.getWidth(), view.getHeight());
            outline.setAlpha(Call.Parameters.DEFAULT_CAMERA_ZOOM);
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0082\u0003\u0018\u00002\u00020\u0001R \u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/ui/window/PopupLayout$Companion;", "", "Lkotlin/Function1;", "Landroidx/compose/ui/window/PopupLayout;", "", "onCommitAffectingPopupPosition", "Lkotlin/jvm/functions/Function1;", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f11178a;

        static {
            int[] iArr = new int[LayoutDirection.values().length];
            try {
                iArr[LayoutDirection.Ltr.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LayoutDirection.Rtl.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f11178a = iArr;
        }
    }

    static {
        new Companion(null);
        F = PopupLayout$Companion$onCommitAffectingPopupPosition$1.f11176c;
    }

    public PopupLayout(Function0<Unit> function0, PopupProperties popupProperties, String str, View view, Density density, PopupPositionProvider popupPositionProvider, UUID uuid, boolean z, PopupLayoutHelper popupLayoutHelper) {
        super(view.getContext(), null, 0, 6, null);
        this.l = function0;
        this.m = popupProperties;
        this.testTag = str;
        this.o = view;
        this.p = z;
        this.q = popupLayoutHelper;
        Object systemService = view.getContext().getSystemService("window");
        systemService.getClass();
        this.r = (WindowManager) systemService;
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        layoutParams.gravity = 8388659;
        PopupProperties popupProperties2 = this.m;
        boolean zB = AndroidPopup_androidKt.b(view);
        boolean z2 = popupProperties2.f11185b;
        int i2 = popupProperties2.f11184a;
        if (z2 && zB) {
            i2 |= 8192;
        } else if (z2 && !zB) {
            i2 &= -8193;
        }
        layoutParams.flags = i2;
        PopupProperties popupProperties3 = this.m;
        layoutParams.type = popupProperties3.g;
        IBinder iBinder = popupProperties3.f11189h;
        layoutParams.token = iBinder == null ? view.getApplicationWindowToken() : iBinder;
        layoutParams.width = -2;
        layoutParams.height = -2;
        layoutParams.format = -3;
        layoutParams.setTitle(view.getContext().getResources().getString(R.string.default_popup_window_title));
        this.params = layoutParams;
        this.positionProvider = popupPositionProvider;
        this.parentLayoutDirection = LayoutDirection.Ltr;
        this.popupContentSize = SnapshotStateKt.g(null);
        this.parentLayoutCoordinates = SnapshotStateKt.g(null);
        this.canCalculatePosition = SnapshotStateKt.e(new Function0<Boolean>() { // from class: androidx.compose.ui.window.PopupLayout$canCalculatePosition$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                PopupLayout popupLayout = this.f11179c;
                LayoutCoordinates parentLayoutCoordinates = popupLayout.getParentLayoutCoordinates();
                if (parentLayoutCoordinates == null || !parentLayoutCoordinates.c()) {
                    parentLayoutCoordinates = null;
                }
                return Boolean.valueOf((parentLayoutCoordinates == null || popupLayout.m10getPopupContentSizebOM6tXw() == null) ? false : true);
            }
        });
        Dp.Companion companion = Dp.f11004c;
        this.z = new Rect();
        this.A = new SnapshotStateObserver(new Function1<Function0<? extends Unit>, Unit>() { // from class: androidx.compose.ui.window.PopupLayout$snapshotStateObserver$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Function0 function1 = (Function0) obj;
                PopupLayout popupLayout = this.f11180c;
                Handler handler = popupLayout.getHandler();
                if ((handler != null ? handler.getLooper() : null) == Looper.myLooper()) {
                    function1.mo47invoke();
                } else {
                    Handler handler2 = popupLayout.getHandler();
                    if (handler2 != null) {
                        handler2.post(new r3(function1, 8));
                    }
                }
                return Unit.f71739a;
            }
        });
        setId(android.R.id.content);
        setTag(R.id.view_tree_lifecycle_owner, ViewTreeLifecycleOwner.a(view));
        setTag(R.id.view_tree_view_model_store_owner, ViewTreeViewModelStoreOwner.a(view));
        setTag(R.id.view_tree_saved_state_registry_owner, ViewTreeSavedStateRegistryOwner.a(view));
        setTag(R.id.compose_view_saveable_id_tag, "Popup:" + uuid);
        setClipChildren(false);
        setElevation(density.u1(8.0f));
        setOutlineProvider(new AnonymousClass2());
        ComposableSingletons$AndroidPopup_androidKt.f11160a.getClass();
        this.content = SnapshotStateKt.g(ComposableSingletons$AndroidPopup_androidKt.f11161b);
        this.E = new int[2];
    }

    private final Function2<Composer, Integer, Unit> getContent() {
        return (Function2) ((SnapshotMutableStateImpl) this.content).getF10755b();
    }

    private final IntRect getDisplayBounds() {
        int i2 = this.m.f11184a & 512;
        View view = this.o;
        Rect rect = this.z;
        PopupLayoutHelper popupLayoutHelper = this.q;
        if (i2 == 0) {
            popupLayoutHelper.a(view, rect);
        } else {
            popupLayoutHelper.d(view, rect);
        }
        DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = AndroidPopup_androidKt.f11122a;
        return new IntRect(rect.left, rect.top, rect.right, rect.bottom);
    }

    public static /* synthetic */ void getParams$ui$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final LayoutCoordinates getParentLayoutCoordinates() {
        return (LayoutCoordinates) ((SnapshotMutableStateImpl) this.parentLayoutCoordinates).getF10755b();
    }

    private final void setContent(Function2<? super Composer, ? super Integer, Unit> function2) {
        ((SnapshotMutableStateImpl) this.content).setValue(function2);
    }

    private final void setParentLayoutCoordinates(LayoutCoordinates layoutCoordinates) {
        ((SnapshotMutableStateImpl) this.parentLayoutCoordinates).setValue(layoutCoordinates);
    }

    @Override // androidx.compose.ui.platform.AbstractComposeView
    public final void a(Composer composer, final int i2) {
        GapComposer gapComposerH = composer.h(-857613600);
        int i3 = (gapComposerH.y(this) ? 4 : 2) | i2;
        if (gapComposerH.p(i3 & 1, (i3 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            getContent().invoke(gapComposerH, 0);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2<Composer, Integer, Unit>(i2) { // from class: androidx.compose.ui.window.PopupLayout$Content$4
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Number) obj2).intValue();
                    int iA = RecomposeScopeImplKt.a(1);
                    this.f11177c.a((Composer) obj, iA);
                    return Unit.f71739a;
                }
            };
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (!this.m.f11186c) {
            return super.dispatchKeyEvent(keyEvent);
        }
        if (keyEvent.getKeyCode() == 4 || keyEvent.getKeyCode() == 111) {
            KeyEvent.DispatcherState keyDispatcherState = getKeyDispatcherState();
            if (keyDispatcherState == null) {
                return super.dispatchKeyEvent(keyEvent);
            }
            if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                keyDispatcherState.startTracking(keyEvent, this);
                return true;
            }
            if (keyEvent.getAction() == 1 && keyDispatcherState.isTracking(keyEvent) && !keyEvent.isCanceled()) {
                Function0 function0 = this.l;
                if (function0 != null) {
                    function0.mo47invoke();
                }
                return true;
            }
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // androidx.compose.ui.platform.AbstractComposeView
    public final void g(int i2, int i3, boolean z, int i4, int i5) {
        View childAt;
        super.g(i2, i3, z, i4, i5);
        if (this.m.f11188f || (childAt = getChildAt(0)) == null) {
            return;
        }
        int measuredWidth = childAt.getMeasuredWidth();
        WindowManager.LayoutParams layoutParams = this.params;
        layoutParams.width = measuredWidth;
        layoutParams.height = childAt.getMeasuredHeight();
        this.q.c(this.r, this, layoutParams);
    }

    public final boolean getCanCalculatePosition() {
        return ((Boolean) this.canCalculatePosition.getF10755b()).booleanValue();
    }

    /* JADX INFO: renamed from: getParams$ui, reason: from getter */
    public final WindowManager.LayoutParams getParams() {
        return this.params;
    }

    public final LayoutDirection getParentLayoutDirection() {
        return this.parentLayoutDirection;
    }

    /* JADX INFO: renamed from: getPopupContentSize-bOM6tXw, reason: not valid java name */
    public final IntSize m10getPopupContentSizebOM6tXw() {
        return (IntSize) ((SnapshotMutableStateImpl) this.popupContentSize).getF10755b();
    }

    public final PopupPositionProvider getPositionProvider() {
        return this.positionProvider;
    }

    @Override // androidx.compose.ui.platform.AbstractComposeView
    public boolean getShouldCreateCompositionOnAttachedToWindow() {
        return this.shouldCreateCompositionOnAttachedToWindow;
    }

    public AbstractComposeView getSubCompositionView() {
        return this;
    }

    public final String getTestTag() {
        return this.testTag;
    }

    public /* bridge */ /* synthetic */ View getViewRoot() {
        return null;
    }

    @Override // androidx.compose.ui.platform.AbstractComposeView
    public final void h(int i2, int i3) {
        if (this.m.f11188f) {
            super.h(i2, i3);
        } else {
            IntRect displayBounds = getDisplayBounds();
            super.h(View.MeasureSpec.makeMeasureSpec(displayBounds.d(), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(displayBounds.b(), Integer.MIN_VALUE));
        }
    }

    public final void m(CompositionContext compositionContext, Function2 function2) {
        setParentCompositionContext(compositionContext);
        setContent(function2);
        this.shouldCreateCompositionOnAttachedToWindow = true;
    }

    public final void n(Function0 function0, PopupProperties popupProperties, String str, LayoutDirection layoutDirection) {
        this.l = function0;
        this.testTag = str;
        if (!Intrinsics.c(this.m, popupProperties)) {
            boolean z = popupProperties.f11188f;
            WindowManager.LayoutParams layoutParams = this.params;
            if (z && !this.m.f11188f) {
                layoutParams.width = -2;
                layoutParams.height = -2;
            }
            this.m = popupProperties;
            boolean zB = AndroidPopup_androidKt.b(this.o);
            boolean z2 = popupProperties.f11185b;
            int i2 = popupProperties.f11184a;
            if (z2 && zB) {
                i2 |= 8192;
            } else if (z2 && !zB) {
                i2 &= -8193;
            }
            layoutParams.flags = i2;
            this.q.c(this.r, this, layoutParams);
        }
        int i3 = WhenMappings.f11178a[layoutDirection.ordinal()];
        int i4 = 1;
        if (i3 == 1) {
            i4 = 0;
        } else if (i3 != 2) {
            v40.g();
            return;
        }
        super.setLayoutDirection(i4);
    }

    public final void o() {
        LayoutCoordinates parentLayoutCoordinates = getParentLayoutCoordinates();
        if (parentLayoutCoordinates != null) {
            if (!parentLayoutCoordinates.c()) {
                parentLayoutCoordinates = null;
            }
            if (parentLayoutCoordinates == null) {
                return;
            }
            long jA = parentLayoutCoordinates.a();
            long jG = this.p ? LayoutCoordinatesKt.g(parentLayoutCoordinates) : LayoutCoordinatesKt.f(parentLayoutCoordinates);
            long jRound = (((long) Math.round(Float.intBitsToFloat((int) (jG >> 32)))) << 32) | (BodyPartID.bodyIdMax & ((long) Math.round(Float.intBitsToFloat((int) (jG & BodyPartID.bodyIdMax)))));
            IntOffset.Companion companion = IntOffset.f11012b;
            IntRect intRectA = IntRectKt.a(jRound, jA);
            if (intRectA.equals(this.x)) {
                return;
            }
            this.x = intRectA;
            q();
        }
    }

    @Override // androidx.compose.ui.platform.AbstractComposeView, android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        SnapshotStateObserver snapshotStateObserver = this.A;
        snapshotStateObserver.getClass();
        Snapshot.Companion companion = Snapshot.f8462e;
        ll0 ll0Var = snapshotStateObserver.d;
        companion.getClass();
        snapshotStateObserver.f8503h = Snapshot.Companion.d(ll0Var);
        if (!this.m.f11186c || Build.VERSION.SDK_INT < 33) {
            return;
        }
        if (this.B == null) {
            this.B = new s6(this.l, 0);
        }
        Api33Impl.a(this, this.B);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        SnapshotStateObserver snapshotStateObserver = this.A;
        j00 j00Var = snapshotStateObserver.f8503h;
        if (j00Var != null) {
            j00Var.dispose();
        }
        snapshotStateObserver.a();
        if (Build.VERSION.SDK_INT >= 33) {
            Api33Impl.b(this, this.B);
        }
        this.B = null;
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.m.d) {
            return super.onTouchEvent(motionEvent);
        }
        if (motionEvent != null && motionEvent.getAction() == 0 && (motionEvent.getX() < Call.Parameters.DEFAULT_CAMERA_ZOOM || motionEvent.getX() >= getWidth() || motionEvent.getY() < Call.Parameters.DEFAULT_CAMERA_ZOOM || motionEvent.getY() >= getHeight())) {
            Function0 function0 = this.l;
            if (function0 != null) {
                function0.mo47invoke();
            }
            return true;
        }
        if (motionEvent == null || motionEvent.getAction() != 4) {
            return super.onTouchEvent(motionEvent);
        }
        Function0 function1 = this.l;
        if (function1 != null) {
            function1.mo47invoke();
        }
        return true;
    }

    public final void p(LayoutCoordinates layoutCoordinates) {
        setParentLayoutCoordinates(layoutCoordinates);
        o();
    }

    public final void q() {
        IntSize intSizeM10getPopupContentSizebOM6tXw;
        final IntRect intRect = this.x;
        if (intRect == null || (intSizeM10getPopupContentSizebOM6tXw = m10getPopupContentSizebOM6tXw()) == null) {
            return;
        }
        final long j2 = intSizeM10getPopupContentSizebOM6tXw.f11021a;
        IntRect displayBounds = getDisplayBounds();
        final long jB = (((long) displayBounds.b()) & BodyPartID.bodyIdMax) | (((long) displayBounds.d()) << 32);
        final Ref$LongRef ref$LongRef = new Ref$LongRef();
        IntOffset.f11012b.getClass();
        ref$LongRef.f71920b = 0L;
        this.A.e(this, F, new Function0<Unit>() { // from class: androidx.compose.ui.window.PopupLayout$updatePosition$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                PopupLayout popupLayout = this;
                ref$LongRef.f71920b = popupLayout.getPositionProvider().a(intRect, jB, popupLayout.getParentLayoutDirection(), j2);
                return Unit.f71739a;
            }
        });
        long j3 = ref$LongRef.f71920b;
        WindowManager.LayoutParams layoutParams = this.params;
        layoutParams.x = (int) (j3 >> 32);
        layoutParams.y = (int) (j3 & BodyPartID.bodyIdMax);
        boolean z = this.m.f11187e;
        PopupLayoutHelper popupLayoutHelper = this.q;
        if (z) {
            popupLayoutHelper.b(this, (int) (jB >> 32), (int) (jB & BodyPartID.bodyIdMax));
        }
        popupLayoutHelper.c(this.r, this, layoutParams);
    }

    @Override // android.view.View
    public void setLayoutDirection(int layoutDirection) {
    }

    public final void setParentLayoutDirection(LayoutDirection layoutDirection) {
        this.parentLayoutDirection = layoutDirection;
    }

    /* JADX INFO: renamed from: setPopupContentSize-fhxjrPA, reason: not valid java name */
    public final void m11setPopupContentSizefhxjrPA(IntSize intSize) {
        ((SnapshotMutableStateImpl) this.popupContentSize).setValue(intSize);
    }

    public final void setPositionProvider(PopupPositionProvider popupPositionProvider) {
        this.positionProvider = popupPositionProvider;
    }

    public final void setTestTag(String str) {
        this.testTag = str;
    }

    public /* synthetic */ PopupLayout(Function0 function0, PopupProperties popupProperties, String str, View view, Density density, PopupPositionProvider popupPositionProvider, UUID uuid, boolean z, PopupLayoutHelper popupLayoutHelper, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        PopupLayoutHelper popupLayoutHelper2;
        PopupLayoutHelper popupLayoutHelperImpl29;
        if ((i2 & 256) != 0) {
            if (Build.VERSION.SDK_INT >= 30) {
                popupLayoutHelperImpl29 = new PopupLayoutHelperImpl30();
            } else {
                popupLayoutHelperImpl29 = new PopupLayoutHelperImpl29();
            }
            popupLayoutHelper2 = popupLayoutHelperImpl29;
        } else {
            popupLayoutHelper2 = popupLayoutHelper;
        }
        this(function0, popupProperties, str, view, density, popupPositionProvider, uuid, z, popupLayoutHelper2);
    }
}
