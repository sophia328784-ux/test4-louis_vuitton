package com.vuitton.android.presentation.screen.cart;

import android.content.Intent;
import android.os.Bundle;
import androidx.activity.EdgeToEdge;
import androidx.activity.SystemBarStyle;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.ViewModelLazy;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.CreationExtras;
import com.vuitton.android.presentation.chat.ChatAttachable;
import com.vuitton.android.presentation.chat.ChatComposeContainer;
import com.vuitton.android.presentation.chat.ChatHostActivity;
import com.vuitton.android.presentation.chat.ChatLifecycleObserver;
import com.vuitton.android.presentation.link.navigation.ContactUsNavigator;
import com.vuitton.android.presentation.link.navigation.ContributionLinkNavigator;
import com.vuitton.android.presentation.screen.reinsurance.ReinsuranceViewModelImpl;
import dagger.hilt.android.AndroidEntryPoint;
import defpackage.oe0;
import defpackage.pe0;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u0005B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\b²\u0006\f\u0010\u0007\u001a\u00020\u00068\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/cart/NativeCartActivity;", "Lcom/vuitton/android/presentation/screen/base/BaseActivity;", "Lcom/vuitton/android/presentation/chat/ChatHostActivity;", "<init>", "()V", "Companion", "", "topPadding", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class NativeCartActivity extends Hilt_NativeCartActivity implements ChatHostActivity {
    public static final Companion w = new Companion(null);
    public ChatAttachable p;
    public ContributionLinkNavigator q;
    public ContactUsNavigator r;
    public final ViewModelLazy s;
    public final ViewModelLazy t;
    public ChatLifecycleObserver u;
    public final Lazy v;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/cart/NativeCartActivity$Companion;", "", "", "KEY_PREVIOUS_SCREEN", "Ljava/lang/String;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public NativeCartActivity() {
        Function0<ViewModelProvider.Factory> function0 = new Function0<ViewModelProvider.Factory>() { // from class: com.vuitton.android.presentation.screen.cart.NativeCartActivity$special$$inlined$viewModels$default$1
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.getDefaultViewModelProviderFactory();
            }
        };
        ReflectionFactory reflectionFactory = Reflection.f71922a;
        final Function0 function1 = null;
        this.s = new ViewModelLazy(reflectionFactory.b(NativeCartViewModelImpl.class), new Function0<ViewModelStore>() { // from class: com.vuitton.android.presentation.screen.cart.NativeCartActivity$special$$inlined$viewModels$default$2
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.getViewModelStore();
            }
        }, function0, new Function0<CreationExtras>() { // from class: com.vuitton.android.presentation.screen.cart.NativeCartActivity$special$$inlined$viewModels$default$3
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                CreationExtras creationExtras;
                Function0 function2 = function1;
                return (function2 == null || (creationExtras = (CreationExtras) function2.mo47invoke()) == null) ? this.getDefaultViewModelCreationExtras() : creationExtras;
            }
        });
        this.t = new ViewModelLazy(reflectionFactory.b(ReinsuranceViewModelImpl.class), new Function0<ViewModelStore>() { // from class: com.vuitton.android.presentation.screen.cart.NativeCartActivity$special$$inlined$viewModels$default$5
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.getViewModelStore();
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: com.vuitton.android.presentation.screen.cart.NativeCartActivity$special$$inlined$viewModels$default$4
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.getDefaultViewModelProviderFactory();
            }
        }, new Function0<CreationExtras>() { // from class: com.vuitton.android.presentation.screen.cart.NativeCartActivity$special$$inlined$viewModels$default$6
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                CreationExtras creationExtras;
                Function0 function2 = function1;
                return (function2 == null || (creationExtras = (CreationExtras) function2.mo47invoke()) == null) ? this.getDefaultViewModelCreationExtras() : creationExtras;
            }
        });
        this.v = LazyKt.b(new oe0(this, 0));
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public final void onActivityResult(int i2, int i3, Intent intent) {
        super.onActivityResult(i2, i3, intent);
        ChatLifecycleObserver chatLifecycleObserver = this.u;
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
        SystemBarStyle.f684e.getClass();
        int i2 = 0;
        EdgeToEdge.a(this, SystemBarStyle.Companion.b(0, 0), SystemBarStyle.Companion.b(0, 0));
        ChatComposeContainer chatComposeContainer = new ChatComposeContainer(this);
        Lifecycle f13561b = getF13561b();
        ChatLifecycleObserver chatLifecycleObserver = this.u;
        if (chatLifecycleObserver == null) {
            Intrinsics.h("chatLifecycleObserver");
            throw null;
        }
        f13561b.a(chatLifecycleObserver);
        chatComposeContainer.a(new ComposableLambdaImpl(-578112862, true, new pe0(this, i2)));
    }
}
