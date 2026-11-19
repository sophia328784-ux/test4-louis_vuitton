package com.vuitton.android.presentation.screen.aicompanion;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.activity.EdgeToEdge;
import androidx.activity.SystemBarStyle;
import androidx.activity.compose.ComponentActivityKt;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts$StartActivityForResult;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.lifecycle.ViewModelLazy;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.CreationExtras;
import com.vuitton.android.presentation.link.navigation.ContributionLinkNavigator;
import com.vuitton.android.presentation.screen.aicompanion.AICompanionActivity;
import com.vuitton.android.presentation.screen.aicompanion.AICompanionViewModel;
import dagger.hilt.android.AndroidEntryPoint;
import defpackage.c;
import defpackage.d;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.flow.SharedFlowImpl;
import kotlinx.coroutines.flow.SharedFlowKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity;", "Lcom/vuitton/android/presentation/screen/base/BaseActivity;", "<init>", "()V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class AICompanionActivity extends Hilt_AICompanionActivity {
    public static final Companion v = new Companion(null);
    public final ViewModelLazy p;
    public final SharedFlowImpl q = SharedFlowKt.b(0, 1, null, 5);
    public final ActivityResultLauncher r;
    public d s;
    public final ActivityResultLauncher t;
    public ContributionLinkNavigator u;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity$Companion;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static Intent a(Context context) {
            context.getClass();
            Intent intent = new Intent(context, (Class<?>) AICompanionActivity.class);
            intent.addFlags(603979776);
            return intent;
        }
    }

    public AICompanionActivity() {
        final Function0 function0 = null;
        this.p = new ViewModelLazy(Reflection.f71922a.b(AICompanionViewModelImpl.class), new Function0<ViewModelStore>() { // from class: com.vuitton.android.presentation.screen.aicompanion.AICompanionActivity$special$$inlined$viewModels$default$2
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.getViewModelStore();
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: com.vuitton.android.presentation.screen.aicompanion.AICompanionActivity$special$$inlined$viewModels$default$1
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.getDefaultViewModelProviderFactory();
            }
        }, new Function0<CreationExtras>() { // from class: com.vuitton.android.presentation.screen.aicompanion.AICompanionActivity$special$$inlined$viewModels$default$3
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                CreationExtras creationExtras;
                Function0 function1 = function0;
                return (function1 == null || (creationExtras = (CreationExtras) function1.mo47invoke()) == null) ? this.getDefaultViewModelCreationExtras() : creationExtras;
            }
        });
        final int i2 = 0;
        final int i3 = 1;
        this.r = registerForActivityResult(new ActivityResultContracts$StartActivityForResult(), new ActivityResultCallback(this) { // from class: b

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ AICompanionActivity f20667c;

            {
                this.f20667c = this;
            }

            @Override // androidx.activity.result.ActivityResultCallback
            public final void b(Object obj) {
                Intent intent;
                ArrayList<String> stringArrayListExtra;
                String str;
                d dVar;
                int i4 = i2;
                AICompanionActivity aICompanionActivity = this.f20667c;
                ActivityResult activityResult = (ActivityResult) obj;
                switch (i4) {
                    case 0:
                        AICompanionActivity.Companion companion = AICompanionActivity.v;
                        activityResult.getClass();
                        if (activityResult.f731b == -1 && (intent = activityResult.f732c) != null && (stringArrayListExtra = intent.getStringArrayListExtra("android.speech.extra.RESULTS")) != null && (str = (String) CollectionsKt.firstOrNull(stringArrayListExtra)) != null) {
                            ((AICompanionViewModel) aICompanionActivity.p.getF71699b()).k1(str);
                            break;
                        }
                        break;
                    default:
                        AICompanionActivity.Companion companion2 = AICompanionActivity.v;
                        activityResult.getClass();
                        if (activityResult.f731b == -1 && (dVar = aICompanionActivity.s) != null) {
                            dVar.mo47invoke();
                            break;
                        }
                        break;
                }
            }
        });
        this.t = registerForActivityResult(new ActivityResultContracts$StartActivityForResult(), new ActivityResultCallback(this) { // from class: b

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ AICompanionActivity f20667c;

            {
                this.f20667c = this;
            }

            @Override // androidx.activity.result.ActivityResultCallback
            public final void b(Object obj) {
                Intent intent;
                ArrayList<String> stringArrayListExtra;
                String str;
                d dVar;
                int i4 = i3;
                AICompanionActivity aICompanionActivity = this.f20667c;
                ActivityResult activityResult = (ActivityResult) obj;
                switch (i4) {
                    case 0:
                        AICompanionActivity.Companion companion = AICompanionActivity.v;
                        activityResult.getClass();
                        if (activityResult.f731b == -1 && (intent = activityResult.f732c) != null && (stringArrayListExtra = intent.getStringArrayListExtra("android.speech.extra.RESULTS")) != null && (str = (String) CollectionsKt.firstOrNull(stringArrayListExtra)) != null) {
                            ((AICompanionViewModel) aICompanionActivity.p.getF71699b()).k1(str);
                            break;
                        }
                        break;
                    default:
                        AICompanionActivity.Companion companion2 = AICompanionActivity.v;
                        activityResult.getClass();
                        if (activityResult.f731b == -1 && (dVar = aICompanionActivity.s) != null) {
                            dVar.mo47invoke();
                            break;
                        }
                        break;
                }
            }
        });
    }

    @Override // com.vuitton.android.presentation.screen.base.BaseActivity, com.vuitton.android.presentation.screen.base.Hilt_BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        SystemBarStyle.f684e.getClass();
        EdgeToEdge.a(this, SystemBarStyle.Companion.b(0, 0), SystemBarStyle.Companion.b(0, 0));
        ComponentActivityKt.a(this, new ComposableLambdaImpl(-69071375, true, new c(this, 0)));
    }

    @Override // com.vuitton.android.presentation.screen.base.BaseActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onNewIntent(Intent intent) {
        intent.getClass();
        super.onNewIntent(intent);
        setIntent(intent);
        this.q.a(Unit.f71739a);
    }
}
