package androidx.compose.material3;

import android.os.Build;
import android.view.ContextThemeWrapper;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import androidx.activity.BackEventCompat;
import androidx.activity.ComponentDialog;
import androidx.activity.OnBackPressedCallback;
import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.material3.internal.BasicEdgeToEdgeDialog_androidKt$WhenMappings;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.platform.ViewRootForInspector;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.window.SecureFlagPolicy;
import androidx.core.view.WindowCompat;
import androidx.core.view.WindowInsetsControllerCompat;
import androidx.lifecycle.ViewTreeLifecycleOwner;
import androidx.lifecycle.ViewTreeViewModelStoreOwner;
import androidx.savedstate.ViewTreeSavedStateRegistryOwner;
import com.sensorsdata.analytics.android.sdk.plugin.property.beans.SAPropertyFilter;
import com.vuitton.android.R;
import defpackage.md;
import defpackage.v40;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0003\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u001aBa\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00140\u0012\u0012\u0006\u0010\u0017\u001a\u00020\u0016¢\u0006\u0004\b\u0018\u0010\u0019¨\u0006\u001b"}, d2 = {"Landroidx/compose/material3/ModalBottomSheetDialogWrapper;", "Landroidx/activity/ComponentDialog;", "Landroidx/compose/ui/platform/ViewRootForInspector;", "Lkotlin/Function0;", "", "onDismissRequest", "Landroidx/compose/material3/ModalBottomSheetProperties;", SAPropertyFilter.PROPERTIES, "Landroidx/compose/ui/graphics/Color;", "contentColor", "Landroid/view/View;", "composeView", "Landroidx/compose/ui/unit/LayoutDirection;", "layoutDirection", "Landroidx/compose/ui/unit/Density;", "density", "Ljava/util/UUID;", "dialogId", "Landroidx/compose/animation/core/Animatable;", "", "Landroidx/compose/animation/core/AnimationVector1D;", "predictiveBackProgress", "Lkotlinx/coroutines/CoroutineScope;", "scope", "<init>", "(Lkotlin/jvm/functions/Function0;Landroidx/compose/material3/ModalBottomSheetProperties;JLandroid/view/View;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;Ljava/util/UUID;Landroidx/compose/animation/core/Animatable;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "PredictiveBackOnBackPressedCallback", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
final class ModalBottomSheetDialogWrapper extends ComponentDialog implements ViewRootForInspector {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Function0 f7046c;
    public ModalBottomSheetProperties d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f7047e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final View f7048f;
    public final ModalBottomSheetDialogLayout g;

    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B9\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006\u0012\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Landroidx/compose/material3/ModalBottomSheetDialogWrapper$PredictiveBackOnBackPressedCallback;", "Landroidx/activity/OnBackPressedCallback;", "", "isEnabled", "Lkotlinx/coroutines/CoroutineScope;", "scope", "Landroidx/compose/animation/core/Animatable;", "", "Landroidx/compose/animation/core/AnimationVector1D;", "predictiveBackProgress", "Lkotlin/Function0;", "", "onDismissRequest", "<init>", "(ZLkotlinx/coroutines/CoroutineScope;Landroidx/compose/animation/core/Animatable;Lkotlin/jvm/functions/Function0;)V", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class PredictiveBackOnBackPressedCallback extends OnBackPressedCallback {
        public final CoroutineScope d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final Animatable f7049e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final Function0 f7050f;

        public PredictiveBackOnBackPressedCallback(boolean z, CoroutineScope coroutineScope, Animatable<Float, AnimationVector1D> animatable, Function0<Unit> function0) {
            super(z);
            this.d = coroutineScope;
            this.f7049e = animatable;
            this.f7050f = function0;
        }

        @Override // androidx.activity.OnBackPressedCallback
        public final void a() {
            BuildersKt.c(this.d, null, null, new ModalBottomSheetDialogWrapper$PredictiveBackOnBackPressedCallback$handleOnBackCancelled$1(this, null), 3);
        }

        @Override // androidx.activity.OnBackPressedCallback
        public final void b() {
            this.f7050f.mo47invoke();
        }

        @Override // androidx.activity.OnBackPressedCallback
        public final void c(BackEventCompat backEventCompat) {
            BuildersKt.c(this.d, null, null, new ModalBottomSheetDialogWrapper$PredictiveBackOnBackPressedCallback$handleOnBackProgressed$1(this, backEventCompat, null), 3);
        }

        @Override // androidx.activity.OnBackPressedCallback
        public final void d(BackEventCompat backEventCompat) {
            BuildersKt.c(this.d, null, null, new ModalBottomSheetDialogWrapper$PredictiveBackOnBackPressedCallback$handleOnBackStarted$1(this, backEventCompat, null), 3);
        }
    }

    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f7057a;

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
            f7057a = iArr;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /* JADX WARN: Multi-variable type inference failed */
    public ModalBottomSheetDialogWrapper(Function0 function0, ModalBottomSheetProperties modalBottomSheetProperties, long j2, View view, LayoutDirection layoutDirection, Density density, UUID uuid, Animatable animatable, CoroutineScope coroutineScope, DefaultConstructorMarker defaultConstructorMarker) {
        boolean zBooleanValue;
        boolean zBooleanValue2;
        int i2 = 0;
        int i3 = 2;
        super(new ContextThemeWrapper(view.getContext(), R.style.EdgeToEdgeFloatingDialogWindowTheme), i2, i3, null);
        this.f7046c = function0;
        this.d = modalBottomSheetProperties;
        this.f7047e = j2;
        this.f7048f = view;
        Dp.Companion companion = Dp.f11004c;
        Window window = getWindow();
        if (window == null) {
            md.k("Dialog has no window");
            throw null;
        }
        window.requestFeature(1);
        window.setBackgroundDrawableResource(android.R.color.transparent);
        WindowCompat.a(window, false);
        ModalBottomSheetDialogLayout modalBottomSheetDialogLayout = new ModalBottomSheetDialogLayout(getContext(), window);
        modalBottomSheetDialogLayout.setTag(R.id.compose_view_saveable_id_tag, "Dialog:" + uuid);
        modalBottomSheetDialogLayout.setClipChildren(false);
        modalBottomSheetDialogLayout.setElevation(density.u1(8.0f));
        modalBottomSheetDialogLayout.setOutlineProvider(new ModalBottomSheetDialogWrapper$1$2());
        this.g = modalBottomSheetDialogLayout;
        setContentView(modalBottomSheetDialogLayout);
        modalBottomSheetDialogLayout.setTag(R.id.view_tree_lifecycle_owner, ViewTreeLifecycleOwner.a(view));
        modalBottomSheetDialogLayout.setTag(R.id.view_tree_view_model_store_owner, ViewTreeViewModelStoreOwner.a(view));
        modalBottomSheetDialogLayout.setTag(R.id.view_tree_saved_state_registry_owner, ViewTreeSavedStateRegistryOwner.a(view));
        b(this.f7046c, this.d, this.f7047e, layoutDirection);
        WindowInsetsControllerCompat windowInsetsControllerCompat = new WindowInsetsControllerCompat(window, window.getDecorView());
        Boolean bool = this.d.d;
        if (bool != null) {
            zBooleanValue = bool.booleanValue();
        } else {
            long j3 = this.f7047e;
            Color.f8866b.getClass();
            zBooleanValue = !Color.c(j3, Color.f8870h) && ((double) ColorKt.h(j3)) <= 0.5d;
        }
        windowInsetsControllerCompat.e(zBooleanValue);
        Boolean bool2 = this.d.f7109e;
        if (bool2 != null) {
            zBooleanValue2 = bool2.booleanValue();
        } else {
            long j4 = this.f7047e;
            Color.f8866b.getClass();
            if (!Color.c(j4, Color.f8870h) && ColorKt.h(j4) <= 0.5d) {
                i2 = 1;
            }
            zBooleanValue2 = i2;
        }
        windowInsetsControllerCompat.d(zBooleanValue2);
        getOnBackPressedDispatcher().b(new PredictiveBackOnBackPressedCallback(this.d.f7107b, coroutineScope, animatable, new i(this, i3)), this);
    }

    public final void b(Function0 function0, ModalBottomSheetProperties modalBottomSheetProperties, long j2, LayoutDirection layoutDirection) {
        this.f7046c = function0;
        this.d = modalBottomSheetProperties;
        this.f7047e = j2;
        SecureFlagPolicy secureFlagPolicy = modalBottomSheetProperties.f7106a;
        ViewGroup.LayoutParams layoutParams = this.f7048f.getRootView().getLayoutParams();
        WindowManager.LayoutParams layoutParams2 = layoutParams instanceof WindowManager.LayoutParams ? (WindowManager.LayoutParams) layoutParams : null;
        int i2 = 1;
        boolean z = (layoutParams2 == null || (layoutParams2.flags & 8192) == 0) ? false : true;
        int i3 = BasicEdgeToEdgeDialog_androidKt$WhenMappings.f7547a[secureFlagPolicy.ordinal()];
        if (i3 == 1) {
            z = false;
        } else if (i3 == 2) {
            z = true;
        } else if (i3 != 3) {
            v40.g();
            return;
        }
        Window window = getWindow();
        window.getClass();
        window.setFlags(z ? 8192 : -8193, 8192);
        int i4 = WhenMappings.f7057a[layoutDirection.ordinal()];
        if (i4 == 1) {
            i2 = 0;
        } else if (i4 != 2) {
            v40.g();
            return;
        }
        this.g.setLayoutDirection(i2);
        Window window2 = getWindow();
        if (window2 != null) {
            window2.setLayout(-1, -1);
        }
        Window window3 = getWindow();
        if (window3 != null) {
            window3.setSoftInputMode(Build.VERSION.SDK_INT >= 30 ? 48 : 16);
        }
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void cancel() {
    }

    @Override // android.app.Dialog
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
        if (zOnTouchEvent) {
            this.f7046c.mo47invoke();
        }
        return zOnTouchEvent;
    }
}
