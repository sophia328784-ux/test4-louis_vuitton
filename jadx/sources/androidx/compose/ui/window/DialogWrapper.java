package androidx.compose.ui.window;

import android.os.Build;
import android.os.IBinder;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import androidx.activity.ComponentDialog;
import androidx.activity.OnBackPressedCallback;
import androidx.activity.OnBackPressedDispatcherKt;
import androidx.compose.ui.platform.ViewRootForInspector;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.core.view.WindowCompat;
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
import kotlin.jvm.functions.Function1;
import kotlin.math.MathKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B=\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, d2 = {"Landroidx/compose/ui/window/DialogWrapper;", "Landroidx/activity/ComponentDialog;", "Landroidx/compose/ui/platform/ViewRootForInspector;", "Lkotlin/Function0;", "", "onDismissRequest", "Landroidx/compose/ui/window/DialogProperties;", SAPropertyFilter.PROPERTIES, "Landroid/view/View;", "composeView", "Landroidx/compose/ui/unit/LayoutDirection;", "layoutDirection", "Landroidx/compose/ui/unit/Density;", "density", "Ljava/util/UUID;", "dialogId", "<init>", "(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/DialogProperties;Landroid/view/View;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;Ljava/util/UUID;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class DialogWrapper extends ComponentDialog implements ViewRootForInspector {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Function0 f11171c;
    public DialogProperties d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final View f11172e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final DialogLayout f11173f;
    public boolean g;

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f11175a;

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
            f11175a = iArr;
        }
    }

    public DialogWrapper(Function0<Unit> function0, DialogProperties dialogProperties, View view, LayoutDirection layoutDirection, Density density, UUID uuid) {
        super(new ContextThemeWrapper(view.getContext(), dialogProperties.f11168e ? R.style.DialogWindowTheme : R.style.FloatingDialogWindowTheme), 0, 2, null);
        this.f11171c = function0;
        this.d = dialogProperties;
        this.f11172e = view;
        Dp.Companion companion = Dp.f11004c;
        Window window = getWindow();
        if (window == null) {
            md.k("Dialog has no window");
            throw null;
        }
        DialogProperties dialogProperties2 = this.d;
        Window window2 = getWindow();
        if (window2 != null) {
            WindowManager.LayoutParams attributes = window2.getAttributes();
            attributes.type = dialogProperties2.g;
            IBinder iBinder = dialogProperties2.f11170h;
            if (iBinder != null) {
                attributes.token = iBinder;
            }
            window2.setAttributes(attributes);
        }
        window.requestFeature(1);
        window.setBackgroundDrawableResource(android.R.color.transparent);
        WindowCompat.a(window, this.d.f11168e);
        window.setGravity(17);
        if (!this.d.f11168e) {
            window.addFlags(65792);
            WindowManager.LayoutParams attributes2 = window.getAttributes();
            Api28Impl.f11155a.a(attributes2);
            if (Build.VERSION.SDK_INT >= 30) {
                Api30Impl api30Impl = Api30Impl.f11156a;
                api30Impl.b(attributes2, 0);
                api30Impl.c(attributes2, 0);
            }
            window.setAttributes(attributes2);
        }
        DialogLayout dialogLayout = new DialogLayout(getContext(), window);
        setTitle(this.d.f11169f);
        dialogLayout.setTag(R.id.compose_view_saveable_id_tag, "Dialog:" + uuid);
        dialogLayout.setClipChildren(false);
        dialogLayout.setElevation(density.u1(8.0f));
        dialogLayout.setOutlineProvider(new DialogWrapper$1$2());
        this.f11173f = dialogLayout;
        View decorView = window.getDecorView();
        ViewGroup viewGroup = decorView instanceof ViewGroup ? (ViewGroup) decorView : null;
        if (viewGroup != null) {
            b(viewGroup);
        }
        setContentView(dialogLayout);
        dialogLayout.setTag(R.id.view_tree_lifecycle_owner, ViewTreeLifecycleOwner.a(view));
        dialogLayout.setTag(R.id.view_tree_view_model_store_owner, ViewTreeViewModelStoreOwner.a(view));
        dialogLayout.setTag(R.id.view_tree_saved_state_registry_owner, ViewTreeSavedStateRegistryOwner.a(view));
        c(this.f11171c, this.d, layoutDirection);
        OnBackPressedDispatcherKt.a(getOnBackPressedDispatcher(), this, new Function1<OnBackPressedCallback, Unit>() { // from class: androidx.compose.ui.window.DialogWrapper.2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                DialogWrapper dialogWrapper = DialogWrapper.this;
                if (dialogWrapper.d.f11165a) {
                    dialogWrapper.f11171c.mo47invoke();
                }
                return Unit.f71739a;
            }
        }, 2);
    }

    public static final void b(ViewGroup viewGroup) {
        viewGroup.setClipChildren(false);
        if (viewGroup instanceof DialogLayout) {
            return;
        }
        int childCount = viewGroup.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = viewGroup.getChildAt(i2);
            ViewGroup viewGroup2 = childAt instanceof ViewGroup ? (ViewGroup) childAt : null;
            if (viewGroup2 != null) {
                b(viewGroup2);
            }
        }
    }

    public final void c(Function0 function0, DialogProperties dialogProperties, LayoutDirection layoutDirection) {
        int i2;
        this.f11171c = function0;
        this.d = dialogProperties;
        SecureFlagPolicy secureFlagPolicy = dialogProperties.f11167c;
        boolean zB = AndroidPopup_androidKt.b(this.f11172e);
        int i3 = SecureFlagPolicy_androidKt$WhenMappings.f11190a[secureFlagPolicy.ordinal()];
        int i4 = 0;
        if (i3 == 1) {
            zB = false;
        } else if (i3 == 2) {
            zB = true;
        } else if (i3 != 3) {
            v40.g();
            return;
        }
        Window window = getWindow();
        window.getClass();
        window.setFlags(zB ? 8192 : -8193, 8192);
        int i5 = WhenMappings.f11175a[layoutDirection.ordinal()];
        if (i5 == 1) {
            i2 = 0;
        } else {
            if (i5 != 2) {
                v40.g();
                return;
            }
            i2 = 1;
        }
        DialogLayout dialogLayout = this.f11173f;
        dialogLayout.setLayoutDirection(i2);
        boolean z = dialogProperties.f11168e;
        boolean z2 = dialogProperties.d;
        Window window2 = dialogLayout.l;
        boolean z3 = (dialogLayout.p && z2 == dialogLayout.n && z == dialogLayout.o) ? false : true;
        dialogLayout.n = z2;
        dialogLayout.o = z;
        if (z3) {
            WindowManager.LayoutParams attributes = window2.getAttributes();
            int i6 = z2 ? -2 : -1;
            if (i6 != attributes.width || !dialogLayout.p) {
                window2.setLayout(i6, -2);
                dialogLayout.p = true;
            }
        }
        setCanceledOnTouchOutside(dialogProperties.f11166b);
        Window window3 = getWindow();
        if (window3 != null) {
            if (!z) {
                i4 = Build.VERSION.SDK_INT < 31 ? 16 : 48;
            }
            window3.setSoftInputMode(i4);
        }
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void cancel() {
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public final boolean onKeyUp(int i2, KeyEvent keyEvent) {
        if (!this.d.f11165a || !keyEvent.isTracking() || keyEvent.isCanceled() || i2 != 111) {
            return super.onKeyUp(i2, keyEvent);
        }
        this.f11171c.mo47invoke();
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0086  */
    @Override // android.app.Dialog
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked;
        View childAt;
        int iC;
        boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
        if (!this.d.f11166b) {
            actionMasked = motionEvent.getActionMasked();
            if (actionMasked != 0) {
            }
            this.g = false;
            return zOnTouchEvent;
        }
        DialogLayout dialogLayout = this.f11173f;
        dialogLayout.getClass();
        if (Math.abs(motionEvent.getX()) <= Float.MAX_VALUE && Math.abs(motionEvent.getY()) <= Float.MAX_VALUE && (childAt = dialogLayout.getChildAt(0)) != null) {
            int left = childAt.getLeft() + dialogLayout.getLeft();
            int width = childAt.getWidth() + left;
            int top = childAt.getTop() + dialogLayout.getTop();
            int height = childAt.getHeight() + top;
            int iC2 = MathKt.c(motionEvent.getX());
            if (left <= iC2 && iC2 <= width && top <= (iC = MathKt.c(motionEvent.getY())) && iC <= height) {
                actionMasked = motionEvent.getActionMasked();
                if (actionMasked != 0 || actionMasked == 1 || actionMasked == 3) {
                    this.g = false;
                    return zOnTouchEvent;
                }
            }
        }
        int actionMasked2 = motionEvent.getActionMasked();
        if (actionMasked2 == 0) {
            this.g = true;
            return true;
        }
        if (actionMasked2 != 1) {
            if (actionMasked2 == 3) {
                this.g = false;
                return zOnTouchEvent;
            }
        } else if (this.g) {
            this.f11171c.mo47invoke();
            this.g = false;
            return true;
        }
        return zOnTouchEvent;
    }
}
