package com.vuitton.android.presentation.screen.orders;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.transition.Slide;
import android.view.Window;
import androidx.activity.EdgeToEdge;
import androidx.activity.SystemBarStyle;
import androidx.activity.compose.ComponentActivityKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.lifecycle.ViewModelLazy;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.navigation.NavController;
import androidx.navigation.NavDestination;
import com.vuitton.android.presentation.screen.orders.models.TransactionItemUiModel;
import com.vuitton.android.presentation.screen.orders.viewmodels.OrderViewModel;
import com.vuitton.android.presentation.screen.orders.viewmodels.OrderViewModelImpl;
import dagger.hilt.android.AndroidEntryPoint;
import defpackage.w20;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u0005B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/OrderActivity;", "Lcom/vuitton/android/presentation/screen/base/BaseActivity;", "Landroidx/navigation/NavController$OnDestinationChangedListener;", "<init>", "()V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class OrderActivity extends Hilt_OrderActivity implements NavController.OnDestinationChangedListener {
    public static final Companion q = new Companion(null);
    public final ViewModelLazy p;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0004¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/OrderActivity$Companion;", "", "", "ROOT_SCREEN", "Ljava/lang/String;", "TRANSACTION_ID", "SHIPPING_GROUP_ID", "ITEM", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static Intent a(Context context, String str, String str2, TransactionItemUiModel transactionItemUiModel) {
            context.getClass();
            str.getClass();
            Intent intent = new Intent(context, (Class<?>) OrderActivity.class);
            intent.putExtra("rootScreen", str);
            intent.putExtra("transactionId", str2);
            intent.putExtra("item", transactionItemUiModel);
            return intent;
        }
    }

    public OrderActivity() {
        final Function0 function0 = null;
        this.p = new ViewModelLazy(Reflection.f71922a.b(OrderViewModelImpl.class), new Function0<ViewModelStore>() { // from class: com.vuitton.android.presentation.screen.orders.OrderActivity$special$$inlined$viewModels$default$2
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.getViewModelStore();
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: com.vuitton.android.presentation.screen.orders.OrderActivity$special$$inlined$viewModels$default$1
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.getDefaultViewModelProviderFactory();
            }
        }, new Function0<CreationExtras>() { // from class: com.vuitton.android.presentation.screen.orders.OrderActivity$special$$inlined$viewModels$default$3
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                CreationExtras creationExtras;
                Function0 function1 = function0;
                return (function1 == null || (creationExtras = (CreationExtras) function1.mo47invoke()) == null) ? this.getDefaultViewModelCreationExtras() : creationExtras;
            }
        });
    }

    @Override // androidx.navigation.NavController.OnDestinationChangedListener
    public final void f(NavController navController, NavDestination navDestination) {
        SystemBarStyle systemBarStyleB;
        navController.getClass();
        navDestination.getClass();
        if (Intrinsics.c(navDestination.f18152c.f18345f, "detail")) {
            SystemBarStyle.f684e.getClass();
            systemBarStyleB = SystemBarStyle.Companion.a();
        } else {
            SystemBarStyle.f684e.getClass();
            systemBarStyleB = SystemBarStyle.Companion.b(0, 0);
        }
        SystemBarStyle.f684e.getClass();
        EdgeToEdge.a(this, systemBarStyleB, SystemBarStyle.Companion.b(-1, -1));
    }

    @Override // com.vuitton.android.presentation.screen.base.BaseActivity, com.vuitton.android.presentation.screen.base.Hilt_BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        SystemBarStyle.f684e.getClass();
        EdgeToEdge.a(this, SystemBarStyle.Companion.b(0, 0), SystemBarStyle.Companion.b(-1, -1));
        Window window = getWindow();
        window.requestFeature(13);
        window.setAllowEnterTransitionOverlap(true);
        window.setEnterTransition(new Slide(8388613));
        window.setExitTransition(new Slide(8388613));
        ComponentActivityKt.a(this, new ComposableLambdaImpl(-1805423824, true, new w20(this, 22)));
    }

    @Override // com.vuitton.android.presentation.screen.base.BaseActivity, com.vuitton.android.presentation.screen.base.Hilt_BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        ((OrderViewModel) this.p.getF71699b()).R9();
    }
}
