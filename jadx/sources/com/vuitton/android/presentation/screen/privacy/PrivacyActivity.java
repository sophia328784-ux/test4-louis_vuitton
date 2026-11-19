package com.vuitton.android.presentation.screen.privacy;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import androidx.activity.EdgeToEdge;
import androidx.activity.SystemBarStyle;
import androidx.activity.compose.ComponentActivityKt;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts$RequestPermission;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.lifecycle.ViewModelLazy;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.CreationExtras;
import com.vuitton.android.presentation.link.LinkHandler;
import com.vuitton.foundation.model.domain.model.privacy.PrivacyType;
import dagger.hilt.android.AndroidEntryPoint;
import defpackage.ln0;
import defpackage.z3;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0007²\u0006\f\u0010\u0006\u001a\u00020\u00058\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/privacy/PrivacyActivity;", "Lcom/vuitton/android/presentation/screen/base/BaseActivity;", "<init>", "()V", "Companion", "Lcom/vuitton/android/presentation/screen/privacy/models/PrivacyViewState;", "viewState", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class PrivacyActivity extends Hilt_PrivacyActivity {
    public static final Companion s = new Companion(null);
    public ActivityResultLauncher p;
    public final ViewModelLazy q;
    public LinkHandler r;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/privacy/PrivacyActivity$Companion;", "", "", "KEY_INTENT_TO_LAUNCH", "Ljava/lang/String;", "KEY_OPENED_FROM_ONBOARDING", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static Intent a(Context context, Intent intent, boolean z) {
            context.getClass();
            Intent intentPutExtra = new Intent(context, (Class<?>) PrivacyActivity.class).putExtra("INTENT_TO_LAUNCH", intent).putExtra("KEY_OPENED_FROM_ONBOARDING", z);
            intentPutExtra.getClass();
            return intentPutExtra;
        }
    }

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f63340a;

        static {
            int[] iArr = new int[PrivacyType.values().length];
            try {
                iArr[PrivacyType.GDPR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[PrivacyType.CCPA.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[PrivacyType.PIPL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[PrivacyType.NONE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            f63340a = iArr;
        }
    }

    public PrivacyActivity() {
        final Function0 function0 = null;
        this.q = new ViewModelLazy(Reflection.f71922a.b(PrivacyViewModelImpl.class), new Function0<ViewModelStore>() { // from class: com.vuitton.android.presentation.screen.privacy.PrivacyActivity$special$$inlined$viewModels$default$2
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.getViewModelStore();
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: com.vuitton.android.presentation.screen.privacy.PrivacyActivity$special$$inlined$viewModels$default$1
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.getDefaultViewModelProviderFactory();
            }
        }, new Function0<CreationExtras>() { // from class: com.vuitton.android.presentation.screen.privacy.PrivacyActivity$special$$inlined$viewModels$default$3
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                CreationExtras creationExtras;
                Function0 function1 = function0;
                return (function1 == null || (creationExtras = (CreationExtras) function1.mo47invoke()) == null) ? this.getDefaultViewModelCreationExtras() : creationExtras;
            }
        });
    }

    public final PrivacyViewModelImpl H() {
        return (PrivacyViewModelImpl) this.q.getF71699b();
    }

    public final void I() {
        Parcelable parcelable;
        Intent intent = getIntent();
        intent.getClass();
        if (Build.VERSION.SDK_INT >= 33) {
            parcelable = (Parcelable) intent.getParcelableExtra("INTENT_TO_LAUNCH", Intent.class);
        } else {
            Parcelable parcelableExtra = intent.getParcelableExtra("INTENT_TO_LAUNCH");
            if (!(parcelableExtra instanceof Intent)) {
                parcelableExtra = null;
            }
            parcelable = (Intent) parcelableExtra;
        }
        Intent intent2 = (Intent) parcelable;
        if (intent2 != null) {
            startActivity(intent2);
        }
        setResult(-1);
        finish();
    }

    @Override // com.vuitton.android.presentation.screen.base.BaseActivity, com.vuitton.android.presentation.screen.base.Hilt_BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        boolean booleanExtra = getIntent().getBooleanExtra("KEY_OPENED_FROM_ONBOARDING", false);
        SystemBarStyle.f684e.getClass();
        EdgeToEdge.a(this, SystemBarStyle.Companion.b(0, 0), SystemBarStyle.Companion.b(0, 0));
        this.p = registerForActivityResult(new ActivityResultContracts$RequestPermission(), new ln0(this, 3));
        ComponentActivityKt.a(this, new ComposableLambdaImpl(829205653, true, new z3(this, booleanExtra, 11)));
    }
}
