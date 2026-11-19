package com.vuitton.android.presentation.screen.webview;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.webkit.GeolocationPermissions;
import androidx.activity.result.ActivityResultCaller;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentTransaction;
import androidx.lifecycle.Lifecycle;
import com.vuitton.android.R;
import com.vuitton.android.core.events.AppEvent;
import com.vuitton.android.core.events.LVEventSender;
import com.vuitton.android.presentation.chat.ChatHostActivity;
import com.vuitton.android.presentation.chat.ChatLifecycleObserver;
import com.vuitton.android.presentation.compose.components.EdgeToEdgeKt;
import com.vuitton.android.presentation.screen.cart.models.CartPreviousScreen;
import com.vuitton.android.presentation.screen.main.OnBackPressedListener;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.CustomizationType;
import com.vuitton.android.presentation.utils.PermissionUtils;
import com.vuitton.android.presentation.utils.SecurityUtils;
import dagger.hilt.android.AndroidEntryPoint;
import defpackage.j61;
import defpackage.md;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.internal.ContextScope;
import kotlinx.coroutines.internal.MainDispatcherLoader;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u0005B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/webview/WebViewActivity;", "Lcom/vuitton/android/presentation/screen/base/BaseActivity;", "Lcom/vuitton/android/presentation/chat/ChatHostActivity;", "<init>", "()V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class WebViewActivity extends Hilt_WebViewActivity implements ChatHostActivity {
    public static final Companion v = new Companion(null);
    public boolean p;
    public GeolocationPermissions.Callback q;
    public String r;
    public final ContextScope s;
    public LVEventSender t;
    public ChatLifecycleObserver u;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\f\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0004R\u0014\u0010\b\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\b\u0010\u0004R\u0014\u0010\t\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\t\u0010\u0004R\u0014\u0010\n\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\n\u0010\u0004R\u0014\u0010\u000b\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000b\u0010\u0004R\u0014\u0010\f\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\f\u0010\u0004R\u0014\u0010\r\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\r\u0010\u0004¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/presentation/screen/webview/WebViewActivity$Companion;", "", "", "KEY_URL", "Ljava/lang/String;", "KEY_IS_CART", "KEY_IS_PLP_STORY", "KEY_STORY_TITLE", "KEY_NATIVE_CHECKOUT_PREVIOUS_SCREEN", "KEY_CART_ID", "KEY_IS_DISTANT_REPAIR", "KEY_SHOW_CONTACT_US", "KEY_CUSTOMIZATION_TYPE", "KEY_IS_BOOKING_PAYMENT", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static Intent a(Companion companion, Context context, String str, boolean z, boolean z2, String str2, CartPreviousScreen cartPreviousScreen, String str3, boolean z3, boolean z4, CustomizationType customizationType, int i2) {
            if ((i2 & 4) != 0) {
                z = false;
            }
            if ((i2 & 8) != 0) {
                z2 = false;
            }
            if ((i2 & 16) != 0) {
                str2 = "";
            }
            if ((i2 & 32) != 0) {
                cartPreviousScreen = null;
            }
            if ((i2 & 64) != 0) {
                str3 = "";
            }
            if ((i2 & 128) != 0) {
                z3 = false;
            }
            if ((i2 & 256) != 0) {
                z4 = false;
            }
            if ((i2 & 512) != 0) {
                customizationType = CustomizationType.NO_CUSTOMIZATION;
            }
            boolean z5 = (i2 & 1024) == 0;
            companion.getClass();
            context.getClass();
            str2.getClass();
            customizationType.getClass();
            Intent intent = new Intent(context, (Class<?>) WebViewActivity.class);
            intent.putExtra("URL", str);
            intent.putExtra("IS_CART", z);
            intent.putExtra("IS_PLP_STORY", z2);
            intent.putExtra("STORY_TITLE", str2);
            if (cartPreviousScreen != null) {
                intent.putExtra("NATIVE_CHECKOUT_PREVIOUS_SCREEN", cartPreviousScreen.ordinal());
            }
            intent.putExtra("KEY_CART_ID", str3);
            intent.putExtra("KEY_IS_DISTANT_REPAIR", z3);
            intent.putExtra("KEY_SHOW_CONTACT_US", z4);
            intent.putExtra("CUSTOMIZATION_TYPE", customizationType.name());
            intent.putExtra("KEY_IS_BOOKING_PAYMENT", z5);
            return intent;
        }
    }

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.webview.WebViewActivity$onDestroy$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.webview.WebViewActivity$onDestroy$1", f = "WebViewActivity.kt", l = {155}, m = "invokeSuspend", v = 2)
    final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f65455b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public /* synthetic */ Object f65456c;

        public AnonymousClass1(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1 = WebViewActivity.this.new AnonymousClass1(continuation);
            anonymousClass1.f65456c = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineScope coroutineScope = (CoroutineScope) this.f65456c;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f65455b;
            int i3 = 1;
            Integer num = null;
            Object[] objArr = 0;
            if (i2 == 0) {
                ResultKt.b(obj);
                LVEventSender lVEventSender = WebViewActivity.this.t;
                if (lVEventSender == null) {
                    Intrinsics.h("eventSender");
                    throw null;
                }
                AppEvent.RefreshCartCountEvent refreshCartCountEvent = new AppEvent.RefreshCartCountEvent(num, i3, objArr == true ? 1 : 0);
                this.f65456c = coroutineScope;
                this.f65455b = 1;
                if (lVEventSender.a(refreshCartCountEvent, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i2 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
            CoroutineScopeKt.c(coroutineScope, null);
            return Unit.f71739a;
        }
    }

    public WebViewActivity() {
        DefaultScheduler defaultScheduler = Dispatchers.f74659a;
        this.s = CoroutineScopeKt.a(MainDispatcherLoader.f75131a);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public final void onActivityResult(int i2, int i3, Intent intent) {
        super.onActivityResult(i2, i3, intent);
        if (i2 == 2541) {
            if (i3 == -1) {
                GeolocationPermissions.Callback callback = this.q;
                if (callback != null) {
                    callback.invoke(this.r, true, false);
                    return;
                }
                return;
            }
            if (i3 != 0) {
                return;
            }
            GeolocationPermissions.Callback callback2 = this.q;
            if (callback2 != null) {
                callback2.invoke(this.r, false, false);
            }
            runOnUiThread(new j61(this, 1));
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void onBackPressed() {
        List listM = getSupportFragmentManager().M();
        listM.getClass();
        if (!listM.isEmpty()) {
            List listM2 = getSupportFragmentManager().M();
            listM2.getClass();
            ActivityResultCaller activityResultCaller = (Fragment) CollectionsKt.M(listM2);
            if ((activityResultCaller instanceof OnBackPressedListener) && ((OnBackPressedListener) activityResultCaller).onBackPressed()) {
                return;
            }
        }
        super.onBackPressed();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.vuitton.android.presentation.screen.base.BaseActivity, com.vuitton.android.presentation.screen.base.Hilt_BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        CustomizationType customizationTypeValueOf;
        EdgeToEdgeKt.b(this, false, false, 3);
        super.onCreate(bundle);
        SecurityUtils.b(this);
        Lifecycle f13561b = getF13561b();
        ChatLifecycleObserver chatLifecycleObserver = this.u;
        if (chatLifecycleObserver == null) {
            Intrinsics.h("chatLifecycleObserver");
            throw null;
        }
        f13561b.a(chatLifecycleObserver);
        setContentView(R.layout.activity_fragment_container);
        String stringExtra = getIntent().getStringExtra("URL");
        stringExtra.getClass();
        this.p = getIntent().getBooleanExtra("IS_CART", false);
        boolean booleanExtra = getIntent().getBooleanExtra("IS_PLP_STORY", false);
        String stringExtra2 = getIntent().getStringExtra("STORY_TITLE");
        String str = stringExtra2 == null ? "" : stringExtra2;
        CartPreviousScreen cartPreviousScreen = getIntent().hasExtra("NATIVE_CHECKOUT_PREVIOUS_SCREEN") ? (CartPreviousScreen) CartPreviousScreen.a().get(getIntent().getIntExtra("NATIVE_CHECKOUT_PREVIOUS_SCREEN", 0)) : null;
        String stringExtra3 = getIntent().getStringExtra("KEY_CART_ID");
        String str2 = stringExtra3 == null ? "" : stringExtra3;
        boolean booleanExtra2 = getIntent().getBooleanExtra("KEY_IS_DISTANT_REPAIR", false);
        boolean booleanExtra3 = getIntent().getBooleanExtra("KEY_SHOW_CONTACT_US", false);
        String stringExtra4 = getIntent().getStringExtra("CUSTOMIZATION_TYPE");
        if (stringExtra4 == null || (customizationTypeValueOf = CustomizationType.valueOf(stringExtra4)) == null) {
            customizationTypeValueOf = CustomizationType.NO_CUSTOMIZATION;
        }
        CustomizationType customizationType = customizationTypeValueOf;
        boolean booleanExtra4 = getIntent().getBooleanExtra("KEY_IS_BOOKING_PAYMENT", false);
        FragmentTransaction fragmentTransactionD = getSupportFragmentManager().d();
        WebViewFragment.Companion companion = WebViewFragment.n1;
        boolean z = this.p;
        companion.getClass();
        fragmentTransactionD.m(R.id.fragment_container, WebViewFragment.Companion.a(stringExtra, z, true, booleanExtra, str, cartPreviousScreen, str2, booleanExtra2, booleanExtra3, customizationType, booleanExtra4), WebViewFragment.p1);
        fragmentTransactionD.e();
    }

    @Override // com.vuitton.android.presentation.screen.base.BaseActivity, com.vuitton.android.presentation.screen.base.Hilt_BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        if (this.p) {
            BuildersKt.c(this.s, null, null, new AnonymousClass1(null), 3);
        }
        super.onDestroy();
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public final void onRequestPermissionsResult(int i2, String[] strArr, int[] iArr) {
        strArr.getClass();
        iArr.getClass();
        super.onRequestPermissionsResult(i2, strArr, iArr);
        if (i2 == 1486) {
            if (ArraysKt.g(iArr, 0)) {
                PermissionUtils.b(this, new WebViewActivity$checkGps$1(this));
                return;
            }
            GeolocationPermissions.Callback callback = this.q;
            if (callback != null) {
                callback.invoke(this.r, false, false);
            }
            runOnUiThread(new j61(this, 0));
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity
    public final boolean onSupportNavigateUp() {
        if (getSupportFragmentManager().J() == 0) {
            finish();
            return true;
        }
        getSupportFragmentManager().V();
        return true;
    }
}
