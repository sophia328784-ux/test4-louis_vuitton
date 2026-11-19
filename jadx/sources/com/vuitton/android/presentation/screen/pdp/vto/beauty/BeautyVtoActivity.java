package com.vuitton.android.presentation.screen.pdp.vto.beauty;

import android.graphics.Bitmap;
import android.os.Bundle;
import androidx.activity.EdgeToEdge;
import androidx.activity.SystemBarStyle;
import androidx.activity.compose.ComponentActivityKt;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts$StartActivityForResult;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.lifecycle.ViewModelLazy;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.CreationExtras;
import com.perfectcorp.perfectlib.MakeupCam;
import com.perfectcorp.perfectlib.PerfectEffect;
import com.perfectcorp.perfectlib.ShadeFinder;
import com.perfectcorp.perfectlib.SkuInfo;
import com.perfectcorp.perfectlib.VtoApplier;
import com.vuitton.android.R;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.BeautyProductTypeUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.BeautyVtoMode;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.utils.CameraController;
import com.vuitton.android.presentation.screen.permissions.PermissionsViewModelImpl;
import com.vuitton.android.presentation.utils.AccessibilityUtils;
import com.vuitton.foundation.logger.Logger;
import dagger.hilt.android.AndroidEntryPoint;
import defpackage.be;
import defpackage.de;
import defpackage.w9;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0010²\u0006\u000e\u0010\u0006\u001a\u00020\u00058\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0007\u001a\u00020\u00058\n@\nX\u008a\u008e\u0002²\u0006\u0010\u0010\t\u001a\u0004\u0018\u00010\b8\n@\nX\u008a\u008e\u0002²\u0006\f\u0010\u000b\u001a\u00020\n8\nX\u008a\u0084\u0002²\u0006\f\u0010\r\u001a\u00020\f8\nX\u008a\u0084\u0002²\u0006\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u000e8\n@\nX\u008a\u008e\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;", "Lcom/vuitton/android/presentation/screen/base/BaseActivity;", "<init>", "()V", "Companion", "", "sdkReady", "makeupCamReady", "Lcom/perfectcorp/perfectlib/CameraView;", "sharedCameraView", "", "cameraZoomFactor", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;", "viewState", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;", "stackingType", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class BeautyVtoActivity extends Hilt_BeautyVtoActivity {
    public static final Companion D = new Companion(null);
    public be A;
    public final ActivityResultLauncher B;
    public final ActivityResultLauncher C;
    public Logger p;
    public final ViewModelLazy q;
    public final ViewModelLazy r;
    public MakeupCam s;
    public VtoApplier t;
    public ShadeFinder u;
    public CameraController v;
    public final boolean w;
    public final boolean x;
    public final boolean y;
    public final boolean z;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$Companion;", "", "", "TAG", "Ljava/lang/String;", "KEY_PRODUCT", "KEY_SHADE_FINDER", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f61771a;

        static {
            int[] iArr = new int[BeautyVtoMode.values().length];
            try {
                iArr[BeautyVtoMode.DUAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[BeautyVtoMode.STACKING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f61771a = iArr;
        }
    }

    public BeautyVtoActivity() {
        Function0<ViewModelProvider.Factory> function0 = new Function0<ViewModelProvider.Factory>() { // from class: com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoActivity$special$$inlined$viewModels$default$1
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.getDefaultViewModelProviderFactory();
            }
        };
        ReflectionFactory reflectionFactory = Reflection.f71922a;
        final Function0 function1 = null;
        this.q = new ViewModelLazy(reflectionFactory.b(BeautyVtoViewModelImpl.class), new Function0<ViewModelStore>() { // from class: com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoActivity$special$$inlined$viewModels$default$2
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.getViewModelStore();
            }
        }, function0, new Function0<CreationExtras>() { // from class: com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoActivity$special$$inlined$viewModels$default$3
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                CreationExtras creationExtras;
                Function0 function2 = function1;
                return (function2 == null || (creationExtras = (CreationExtras) function2.mo47invoke()) == null) ? this.getDefaultViewModelCreationExtras() : creationExtras;
            }
        });
        this.r = new ViewModelLazy(reflectionFactory.b(PermissionsViewModelImpl.class), new Function0<ViewModelStore>() { // from class: com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoActivity$special$$inlined$viewModels$default$5
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.getViewModelStore();
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoActivity$special$$inlined$viewModels$default$4
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.getDefaultViewModelProviderFactory();
            }
        }, new Function0<CreationExtras>() { // from class: com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoActivity$special$$inlined$viewModels$default$6
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                CreationExtras creationExtras;
                Function0 function2 = function1;
                return (function2 == null || (creationExtras = (CreationExtras) function2.mo47invoke()) == null) ? this.getDefaultViewModelCreationExtras() : creationExtras;
            }
        });
        this.w = true;
        this.x = true;
        this.y = true;
        this.z = true;
        this.B = registerForActivityResult(new ActivityResultContracts$StartActivityForResult(), new de(this, 1));
        this.C = registerForActivityResult(new ActivityResultContracts$StartActivityForResult(), new de(this, 2));
    }

    public static final void H(BeautyVtoActivity beautyVtoActivity, String str) {
        String string = beautyVtoActivity.getString(R.string.alert_view_updated, str);
        string.getClass();
        AccessibilityUtils.a(beautyVtoActivity, string);
    }

    public final void I(CoroutineScope coroutineScope, SkuInfo skuInfo, Function0 function0) {
        BuildersKt.c(coroutineScope, null, null, new BeautyVtoActivity$applyProduct$2(skuInfo, this, function0, null), 3);
    }

    public final void J(BeautyProductTypeUiModel beautyProductTypeUiModel, final Function0 function0) {
        VtoApplier vtoApplier;
        PerfectEffect perfectEffectS5 = M().s5(beautyProductTypeUiModel);
        if (perfectEffectS5 == null || (vtoApplier = this.t) == null) {
            return;
        }
        vtoApplier.clearEffect(perfectEffectS5, new VtoApplier.ApplyCallback() { // from class: com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoActivity$clearEffect$2$1
            @Override // com.perfectcorp.perfectlib.VtoApplier.ApplyCallback
            public final void onFailure(Throwable th) {
                th.getClass();
                this.f61788a.L().c("BeautyVtoActivity", "[clearStackingEffect] onFailure", th);
            }

            @Override // com.perfectcorp.perfectlib.VtoApplier.ApplyCallback
            public final void onSuccess(Bitmap bitmap) {
                if (bitmap != null) {
                    bitmap.recycle();
                }
                this.f61788a.L();
                function0.mo47invoke();
            }
        });
    }

    public final void K(final Function0 function0) {
        final PerfectEffect perfectEffect = PerfectEffect.EYESHADOW;
        final w9 w9Var = new w9(18);
        VtoApplier vtoApplier = this.t;
        if (vtoApplier != null) {
            vtoApplier.clearEffect(perfectEffect, new VtoApplier.ApplyCallback() { // from class: com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoActivity$clearPerfectEffect$2
                @Override // com.perfectcorp.perfectlib.VtoApplier.ApplyCallback
                public final void onFailure(Throwable th) {
                    th.getClass();
                    this.f61790a.L().c("BeautyVtoActivity", "[clearPerfectEffect] onFailure for " + perfectEffect, th);
                }

                @Override // com.perfectcorp.perfectlib.VtoApplier.ApplyCallback
                public final void onSuccess(Bitmap bitmap) {
                    if (bitmap != null) {
                        bitmap.recycle();
                    }
                    this.f61790a.L();
                    Objects.toString(perfectEffect);
                    w9Var.mo47invoke();
                }
            });
        }
        final PerfectEffect perfectEffect2 = PerfectEffect.MASCARA;
        final w9 w9Var2 = new w9(18);
        VtoApplier vtoApplier2 = this.t;
        if (vtoApplier2 != null) {
            vtoApplier2.clearEffect(perfectEffect2, new VtoApplier.ApplyCallback() { // from class: com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoActivity$clearPerfectEffect$2
                @Override // com.perfectcorp.perfectlib.VtoApplier.ApplyCallback
                public final void onFailure(Throwable th) {
                    th.getClass();
                    this.f61790a.L().c("BeautyVtoActivity", "[clearPerfectEffect] onFailure for " + perfectEffect2, th);
                }

                @Override // com.perfectcorp.perfectlib.VtoApplier.ApplyCallback
                public final void onSuccess(Bitmap bitmap) {
                    if (bitmap != null) {
                        bitmap.recycle();
                    }
                    this.f61790a.L();
                    Objects.toString(perfectEffect2);
                    w9Var2.mo47invoke();
                }
            });
        }
        final PerfectEffect perfectEffect3 = PerfectEffect.EYELINER;
        VtoApplier vtoApplier3 = this.t;
        if (vtoApplier3 != null) {
            vtoApplier3.clearEffect(perfectEffect3, new VtoApplier.ApplyCallback() { // from class: com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoActivity$clearPerfectEffect$2
                @Override // com.perfectcorp.perfectlib.VtoApplier.ApplyCallback
                public final void onFailure(Throwable th) {
                    th.getClass();
                    this.f61790a.L().c("BeautyVtoActivity", "[clearPerfectEffect] onFailure for " + perfectEffect3, th);
                }

                @Override // com.perfectcorp.perfectlib.VtoApplier.ApplyCallback
                public final void onSuccess(Bitmap bitmap) {
                    if (bitmap != null) {
                        bitmap.recycle();
                    }
                    this.f61790a.L();
                    Objects.toString(perfectEffect3);
                    function0.mo47invoke();
                }
            });
        }
    }

    public final Logger L() {
        Logger logger = this.p;
        if (logger != null) {
            return logger;
        }
        Intrinsics.h("logger");
        throw null;
    }

    public final BeautyVtoViewModel M() {
        return (BeautyVtoViewModel) this.q.getF71699b();
    }

    @Override // com.vuitton.android.presentation.screen.base.BaseActivity, com.vuitton.android.presentation.screen.base.Hilt_BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        SystemBarStyle.f684e.getClass();
        EdgeToEdge.a(this, SystemBarStyle.Companion.b(0, 0), SystemBarStyle.Companion.b(0, 0));
        ComponentActivityKt.a(this, new ComposableLambdaImpl(-595998968, true, new defpackage.c(this, 8)));
    }

    @Override // com.vuitton.android.presentation.screen.base.BaseActivity, com.vuitton.android.presentation.screen.base.Hilt_BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        CameraController cameraController = this.v;
        if (cameraController != null) {
            cameraController.b();
        }
        this.v = null;
        this.t = null;
        MakeupCam makeupCam = this.s;
        if (makeupCam != null) {
            makeupCam.onDestroyed();
        }
        this.s = null;
        ShadeFinder shadeFinder = this.u;
        if (shadeFinder != null) {
            shadeFinder.onDestroyed();
        }
        this.u = null;
        super.onDestroy();
    }

    @Override // com.vuitton.android.presentation.screen.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPause() {
        super.onPause();
        MakeupCam makeupCam = this.s;
        if (makeupCam != null) {
            makeupCam.onPaused();
        }
        ShadeFinder shadeFinder = this.u;
        if (shadeFinder != null) {
            shadeFinder.onPaused();
        }
    }

    @Override // com.vuitton.android.presentation.screen.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() {
        super.onResume();
        MakeupCam makeupCam = this.s;
        if (makeupCam != null) {
            makeupCam.onResumed();
        }
        ShadeFinder shadeFinder = this.u;
        if (shadeFinder != null) {
            shadeFinder.onResumed();
        }
    }

    @Override // com.vuitton.android.presentation.screen.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onStart() {
        super.onStart();
        ShadeFinder shadeFinder = this.u;
        if (shadeFinder != null) {
            shadeFinder.onStarted();
        }
        MakeupCam makeupCam = this.s;
        if (makeupCam != null) {
            makeupCam.onStarted();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onStop() {
        super.onStop();
        MakeupCam makeupCam = this.s;
        if (makeupCam != null) {
            makeupCam.onStopped();
        }
        ShadeFinder shadeFinder = this.u;
        if (shadeFinder != null) {
            shadeFinder.onStopped();
        }
    }
}
