package com.vuitton.android.presentation.screen.plp.activities;

import android.content.Intent;
import android.os.Bundle;
import androidx.activity.EdgeToEdge;
import androidx.activity.SystemBarStyle;
import androidx.activity.result.ActivityResultLauncher;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwnerKt;
import androidx.lifecycle.ViewModelLazy;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.CreationExtras;
import com.vuitton.android.presentation.chat.ChatAttachable;
import com.vuitton.android.presentation.chat.ChatComposeContainer;
import com.vuitton.android.presentation.chat.ChatHostActivity;
import com.vuitton.android.presentation.chat.ChatLifecycleObserver;
import com.vuitton.android.presentation.extensions.ActivityExtKt;
import com.vuitton.android.presentation.link.builder.PassAppLinkBuilder;
import com.vuitton.android.presentation.link.navigation.ContactUsNavigator;
import com.vuitton.android.presentation.screen.filter.model.FilterParams;
import com.vuitton.android.presentation.screen.filter.model.FilterType;
import com.vuitton.android.presentation.screen.filter.quickaccess.QafSource;
import com.vuitton.android.presentation.screen.filter.quickaccess.QuickAccessFiltersViewModel;
import com.vuitton.android.presentation.screen.filter.quickaccess.QuickAccessFiltersViewModelImpl;
import com.vuitton.android.presentation.screen.filter.quickaccess.models.QuickAccessFiltersViewState;
import com.vuitton.android.presentation.screen.plp.viewmodels.PLPCategoryViewModel;
import com.vuitton.android.presentation.screen.plp.viewmodels.impl.PLPCatalogViewModelImpl;
import com.vuitton.foundation.logger.Logger;
import dagger.hilt.android.AndroidEntryPoint;
import defpackage.jk;
import defpackage.mk;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlinx.coroutines.BuildersKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u0005B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity;", "Lcom/vuitton/android/presentation/screen/base/BaseActivity;", "Lcom/vuitton/android/presentation/chat/ChatHostActivity;", "<init>", "()V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class CatalogPLPActivity extends Hilt_CatalogPLPActivity implements ChatHostActivity {
    public static final Companion x = new Companion(null);
    public PassAppLinkBuilder p;
    public ContactUsNavigator q;
    public ChatLifecycleObserver r;
    public ChatAttachable s;
    public Logger t;
    public final ViewModelLazy u;
    public final ViewModelLazy v;
    public final ActivityResultLauncher w;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity$Companion;", "", "", "NAV_ARG_PLP_KEY", "Ljava/lang/String;", "NAV_ARG_THEME_ID", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public CatalogPLPActivity() {
        Function0<ViewModelProvider.Factory> function0 = new Function0<ViewModelProvider.Factory>() { // from class: com.vuitton.android.presentation.screen.plp.activities.CatalogPLPActivity$special$$inlined$viewModels$default$1
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.getDefaultViewModelProviderFactory();
            }
        };
        ReflectionFactory reflectionFactory = Reflection.f71922a;
        final Function0 function1 = null;
        this.u = new ViewModelLazy(reflectionFactory.b(PLPCatalogViewModelImpl.class), new Function0<ViewModelStore>() { // from class: com.vuitton.android.presentation.screen.plp.activities.CatalogPLPActivity$special$$inlined$viewModels$default$2
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.getViewModelStore();
            }
        }, function0, new Function0<CreationExtras>() { // from class: com.vuitton.android.presentation.screen.plp.activities.CatalogPLPActivity$special$$inlined$viewModels$default$3
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                CreationExtras creationExtras;
                Function0 function2 = function1;
                return (function2 == null || (creationExtras = (CreationExtras) function2.mo47invoke()) == null) ? this.getDefaultViewModelCreationExtras() : creationExtras;
            }
        });
        this.v = new ViewModelLazy(reflectionFactory.b(QuickAccessFiltersViewModelImpl.class), new Function0<ViewModelStore>() { // from class: com.vuitton.android.presentation.screen.plp.activities.CatalogPLPActivity$special$$inlined$viewModels$default$5
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.getViewModelStore();
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: com.vuitton.android.presentation.screen.plp.activities.CatalogPLPActivity$special$$inlined$viewModels$default$4
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.getDefaultViewModelProviderFactory();
            }
        }, new Function0<CreationExtras>() { // from class: com.vuitton.android.presentation.screen.plp.activities.CatalogPLPActivity$special$$inlined$viewModels$default$6
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                CreationExtras creationExtras;
                Function0 function2 = function1;
                return (function2 == null || (creationExtras = (CreationExtras) function2.mo47invoke()) == null) ? this.getDefaultViewModelCreationExtras() : creationExtras;
            }
        });
        this.w = ActivityExtKt.a(this, new jk(this, 0), new Function1() { // from class: com.vuitton.android.presentation.screen.plp.activities.a
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                String stringExtra;
                Intent intent = (Intent) obj;
                CatalogPLPActivity catalogPLPActivity = this.f62718b;
                catalogPLPActivity.I().o2(null);
                if (intent != null && (stringExtra = intent.getStringExtra("FILTER_ID")) != null) {
                    QuickAccessFiltersViewState quickAccessFiltersViewState = (QuickAccessFiltersViewState) catalogPLPActivity.I().getL().getValue();
                    QuickAccessFiltersViewModel quickAccessFiltersViewModelI = catalogPLPActivity.I();
                    String str = quickAccessFiltersViewState.g;
                    if (str == null) {
                        str = "";
                    }
                    quickAccessFiltersViewModelI.Y0(new FilterParams(str, stringExtra.length() == 0 ? null : stringExtra, QafSource.PLP, null, FilterType.SORT, 8, null));
                    if (quickAccessFiltersViewState.q || quickAccessFiltersViewState.r) {
                        BuildersKt.c(LifecycleOwnerKt.a(catalogPLPActivity), null, null, new CatalogPLPActivity$filtersLauncher$2$1$2(catalogPLPActivity, null), 3);
                    }
                }
                return Unit.f71739a;
            }
        });
    }

    public final PLPCategoryViewModel H() {
        return (PLPCategoryViewModel) this.u.getF71699b();
    }

    public final QuickAccessFiltersViewModel I() {
        return (QuickAccessFiltersViewModel) this.v.getF71699b();
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public final void onActivityResult(int i2, int i3, Intent intent) {
        super.onActivityResult(i2, i3, intent);
        ChatLifecycleObserver chatLifecycleObserver = this.r;
        if (chatLifecycleObserver != null) {
            if (chatLifecycleObserver != null) {
                chatLifecycleObserver.d(i2, i3, intent);
            } else {
                Intrinsics.h("chatLifecycleObserver");
                throw null;
            }
        }
    }

    @Override // com.vuitton.android.presentation.screen.base.BaseActivity, com.vuitton.android.presentation.screen.base.Hilt_BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ChatComposeContainer chatComposeContainer = new ChatComposeContainer(this);
        Lifecycle f13561b = getF13561b();
        ChatLifecycleObserver chatLifecycleObserver = this.r;
        if (chatLifecycleObserver == null) {
            Intrinsics.h("chatLifecycleObserver");
            throw null;
        }
        f13561b.a(chatLifecycleObserver);
        getIntent().putExtra("SHOULD_HANDLE_LV_NAVBAR", false).putExtra("KEY_QAF_SOURCE", QafSource.PLP);
        SystemBarStyle.f684e.getClass();
        EdgeToEdge.b(this, SystemBarStyle.Companion.a(), 1);
        chatComposeContainer.a(new ComposableLambdaImpl(-1552665605, true, new mk(this, 0)));
    }
}
