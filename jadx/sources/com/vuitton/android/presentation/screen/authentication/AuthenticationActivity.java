package com.vuitton.android.presentation.screen.authentication;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import androidx.activity.result.ActivityResultCaller;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts$StartActivityForResult;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwnerKt;
import androidx.lifecycle.RepeatOnLifecycleKt;
import androidx.lifecycle.ViewModelLazy;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.CreationExtras;
import com.vuitton.android.R;
import com.vuitton.android.core.platform.serialization.JsonProviderKt;
import com.vuitton.android.core.type.SystemIcons;
import com.vuitton.android.presentation.compose.components.EdgeToEdgeKt;
import com.vuitton.android.presentation.extensions.FragmentTransactionExtKt;
import com.vuitton.android.presentation.screen.account.lvpass.LVPassActivity;
import com.vuitton.android.presentation.screen.appsflyer.AppsFlyerEvent;
import com.vuitton.android.presentation.screen.authentication.login.NativeLoginFragment;
import com.vuitton.android.presentation.screen.authentication.login.NativeLoginRouteName;
import com.vuitton.android.presentation.screen.authentication.login.legacy.WebViewLoginFragment;
import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthEntryPoint;
import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthOrigin;
import com.vuitton.android.presentation.screen.authentication.register.NativeRegisterFragment;
import com.vuitton.android.presentation.screen.authentication.register.legacy.WebViewRegisterFragment;
import com.vuitton.android.presentation.screen.authentication.social.SocialRegisterActivity;
import com.vuitton.android.presentation.screen.authentication.social.models.SocialLoginUiModel;
import com.vuitton.android.presentation.screen.authentication.welcome.model.LoginContext;
import com.vuitton.android.presentation.screen.main.OnBackPressedListener;
import com.vuitton.android.presentation.screen.privacy.PrivacyActivity;
import com.vuitton.android.presentation.screen.wishlist.WishlistActivity;
import com.vuitton.android.presentation.tracking.AppsFlyerUiTracker;
import com.vuitton.foundation.model.domain.model.account.consent.KisaConsents;
import com.vuitton.foundation.model.domain.model.authentication.LoginState;
import com.vuitton.foundation.model.domain.model.authentication.social.SocialAuthMode;
import dagger.hilt.android.AndroidEntryPoint;
import defpackage.ec;
import defpackage.md;
import defpackage.os;
import defpackage.v40;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.serialization.json.Json;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0002\u0004\u0005B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity;", "Lcom/vuitton/android/presentation/screen/base/BaseActivity;", "<init>", "()V", "Routes", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class AuthenticationActivity extends Hilt_AuthenticationActivity {
    public static final Companion u = new Companion(null);
    public final ViewModelLazy p;
    public final ActivityResultLauncher q = registerForActivityResult(new ActivityResultContracts$StartActivityForResult(), new ec(this));
    public AuthenticationActivityRouter r;
    public Json s;
    public AppsFlyerUiTracker t;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\b\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0004R\u0014\u0010\b\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\b\u0010\u0004R\u0014\u0010\t\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\t\u0010\u0004¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Companion;", "", "", "EXTRA_ROUTE", "Ljava/lang/String;", "EXTRA_LOGIN_PARAM", "EXTRA_ACTIVATE_ACCOUNT_ARGS", "EXTRA_LOGIN_CONTEXT", "EXTRA_KISA_CONSENT_RESULT", "EXTRA_TRACKING_ORIGIN", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static Intent a(Context context, Routes routes, LoginContext loginContext, TrackingAuthOrigin trackingAuthOrigin) {
            context.getClass();
            routes.getClass();
            loginContext.getClass();
            trackingAuthOrigin.getClass();
            Intent intent = new Intent(context, (Class<?>) AuthenticationActivity.class);
            intent.putExtra("EXTRA_ROUTE", routes);
            intent.putExtra("EXTRA_LOGIN_CONTEXT", loginContext);
            intent.putExtra("EXTRA_TRACKING_ORIGIN", trackingAuthOrigin);
            return intent;
        }

        public static Intent b(Companion companion, Context context, Routes routes, SocialLoginUiModel socialLoginUiModel, TrackingAuthOrigin trackingAuthOrigin) {
            TrackingAuthEntryPoint trackingAuthEntryPoint = socialLoginUiModel.f54191k;
            companion.getClass();
            context.getClass();
            routes.getClass();
            socialLoginUiModel.getClass();
            trackingAuthOrigin.getClass();
            String str = socialLoginUiModel.f54183a;
            String str2 = socialLoginUiModel.f54184b;
            String str3 = socialLoginUiModel.f54185c;
            String str4 = socialLoginUiModel.g;
            String str5 = socialLoginUiModel.f54186e;
            SocialAuthMode socialAuthMode = socialLoginUiModel.l;
            Intent intentA = a(context, routes, LoginContext.MY_LV, trackingAuthOrigin);
            intentA.putExtra("KEY_EMAIL_VALUE", str);
            intentA.putExtra("KEY_FIRSTNAME_VALUE", str2);
            intentA.putExtra("KEY_LASTNAME_VALUE", str3);
            intentA.putExtra("KEY_IDENTITY_TOKEN_VALUE", str4);
            intentA.putExtra("KEY_RAW_NONCE_VALUE", str5);
            intentA.putExtra("KEY_ORIGIN_VALUE", trackingAuthOrigin);
            intentA.putExtra("KEY_ENTRY_POINT_VALUE", trackingAuthEntryPoint);
            intentA.putExtra("KEY_PROVIDER_VALUE", socialAuthMode);
            return intentA;
        }

        public static Intent c(Context context, Routes routes, String str, TrackingAuthOrigin trackingAuthOrigin) {
            context.getClass();
            routes.getClass();
            trackingAuthOrigin.getClass();
            Intent intentA = a(context, routes, LoginContext.DEFAULT, trackingAuthOrigin);
            intentA.putExtra("EXTRA_LOGIN_PARAM", str);
            return intentA;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\f\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\f¨\u0006\r"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;", "", "WELCOME_PAGE", "WELCOME_PAGE_WITH_EXIT", "LOGIN_WITH_PARAM_FROM_DEEPLINK", "REGISTER_OR_ACTIVATE_FROM_DEEPLINK", "PRIVACY_SETTINGS_FROM_DEEPLINK", "LOGIN_FROM_OUTSIDE", "REGISTER_FROM_OUTSIDE", "REGISTER_WITH_PREFILLED_EMAIL", "WELCOME_PAGE_WITH_EXIT_REDIRECT_WISHLIST", "WELCOME_PAGE_WITH_EXIT_REDIRECT_LVPASS", "KISA_FOR_SOCIAL_SIGN_IN", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Routes {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ Routes[] $VALUES;
        public static final Routes KISA_FOR_SOCIAL_SIGN_IN;
        public static final Routes LOGIN_FROM_OUTSIDE;
        public static final Routes LOGIN_WITH_PARAM_FROM_DEEPLINK;
        public static final Routes PRIVACY_SETTINGS_FROM_DEEPLINK;
        public static final Routes REGISTER_FROM_OUTSIDE;
        public static final Routes REGISTER_OR_ACTIVATE_FROM_DEEPLINK;
        public static final Routes REGISTER_WITH_PREFILLED_EMAIL;
        public static final Routes WELCOME_PAGE;
        public static final Routes WELCOME_PAGE_WITH_EXIT;
        public static final Routes WELCOME_PAGE_WITH_EXIT_REDIRECT_LVPASS;
        public static final Routes WELCOME_PAGE_WITH_EXIT_REDIRECT_WISHLIST;

        static {
            Routes routes = new Routes("WELCOME_PAGE", 0);
            WELCOME_PAGE = routes;
            Routes routes2 = new Routes("WELCOME_PAGE_WITH_EXIT", 1);
            WELCOME_PAGE_WITH_EXIT = routes2;
            Routes routes3 = new Routes("LOGIN_WITH_PARAM_FROM_DEEPLINK", 2);
            LOGIN_WITH_PARAM_FROM_DEEPLINK = routes3;
            Routes routes4 = new Routes("REGISTER_OR_ACTIVATE_FROM_DEEPLINK", 3);
            REGISTER_OR_ACTIVATE_FROM_DEEPLINK = routes4;
            Routes routes5 = new Routes("PRIVACY_SETTINGS_FROM_DEEPLINK", 4);
            PRIVACY_SETTINGS_FROM_DEEPLINK = routes5;
            Routes routes6 = new Routes("LOGIN_FROM_OUTSIDE", 5);
            LOGIN_FROM_OUTSIDE = routes6;
            Routes routes7 = new Routes("REGISTER_FROM_OUTSIDE", 6);
            REGISTER_FROM_OUTSIDE = routes7;
            Routes routes8 = new Routes("REGISTER_WITH_PREFILLED_EMAIL", 7);
            REGISTER_WITH_PREFILLED_EMAIL = routes8;
            Routes routes9 = new Routes("WELCOME_PAGE_WITH_EXIT_REDIRECT_WISHLIST", 8);
            WELCOME_PAGE_WITH_EXIT_REDIRECT_WISHLIST = routes9;
            Routes routes10 = new Routes("WELCOME_PAGE_WITH_EXIT_REDIRECT_LVPASS", 9);
            WELCOME_PAGE_WITH_EXIT_REDIRECT_LVPASS = routes10;
            Routes routes11 = new Routes("KISA_FOR_SOCIAL_SIGN_IN", 10);
            KISA_FOR_SOCIAL_SIGN_IN = routes11;
            Routes[] routesArr = {routes, routes2, routes3, routes4, routes5, routes6, routes7, routes8, routes9, routes10, routes11};
            $VALUES = routesArr;
            $ENTRIES = EnumEntriesKt.a(routesArr);
        }

        public static Routes valueOf(String str) {
            return (Routes) Enum.valueOf(Routes.class, str);
        }

        public static Routes[] values() {
            return (Routes[]) $VALUES.clone();
        }
    }

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f53260a;

        static {
            int[] iArr = new int[Routes.values().length];
            try {
                iArr[Routes.WELCOME_PAGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Routes.WELCOME_PAGE_WITH_EXIT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Routes.REGISTER_WITH_PREFILLED_EMAIL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[Routes.LOGIN_WITH_PARAM_FROM_DEEPLINK.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[Routes.REGISTER_OR_ACTIVATE_FROM_DEEPLINK.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[Routes.PRIVACY_SETTINGS_FROM_DEEPLINK.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[Routes.LOGIN_FROM_OUTSIDE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[Routes.REGISTER_FROM_OUTSIDE.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[Routes.WELCOME_PAGE_WITH_EXIT_REDIRECT_WISHLIST.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[Routes.WELCOME_PAGE_WITH_EXIT_REDIRECT_LVPASS.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[Routes.KISA_FOR_SOCIAL_SIGN_IN.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            f53260a = iArr;
        }
    }

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.authentication.AuthenticationActivity$onCreate$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.AuthenticationActivity$onCreate$2", f = "AuthenticationActivity.kt", l = {216}, m = "invokeSuspend", v = 2)
    final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f53261b;

        /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.authentication.AuthenticationActivity$onCreate$2$1, reason: invalid class name */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
        @DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.AuthenticationActivity$onCreate$2$1", f = "AuthenticationActivity.kt", l = {217}, m = "invokeSuspend", v = 2)
        final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f53263b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ AuthenticationActivity f53264c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass1(AuthenticationActivity authenticationActivity, Continuation continuation) {
                super(2, continuation);
                this.f53264c = authenticationActivity;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                return new AnonymousClass1(this.f53264c, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i2 = this.f53263b;
                if (i2 == 0) {
                    ResultKt.b(obj);
                    Companion companion = AuthenticationActivity.u;
                    final AuthenticationActivity authenticationActivity = this.f53264c;
                    StateFlow x = authenticationActivity.J().getX();
                    FlowCollector flowCollector = new FlowCollector() { // from class: com.vuitton.android.presentation.screen.authentication.AuthenticationActivity.onCreate.2.1.1
                        @Override // kotlinx.coroutines.flow.FlowCollector
                        public final Object emit(Object obj2, Continuation continuation) {
                            authenticationActivity.K((LoginState) obj2);
                            return Unit.f71739a;
                        }
                    };
                    this.f53263b = 1;
                    if (x.f(flowCollector, this) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                } else {
                    if (i2 != 1) {
                        md.k("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ResultKt.b(obj);
                }
                os.d();
                return null;
            }
        }

        public AnonymousClass2(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return AuthenticationActivity.this.new AnonymousClass2(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f53261b;
            if (i2 == 0) {
                ResultKt.b(obj);
                AuthenticationActivity authenticationActivity = AuthenticationActivity.this;
                Lifecycle f13561b = authenticationActivity.getF13561b();
                Lifecycle.State state = Lifecycle.State.CREATED;
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(authenticationActivity, null);
                this.f53261b = 1;
                if (RepeatOnLifecycleKt.a(f13561b, state, anonymousClass1, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i2 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
            return Unit.f71739a;
        }
    }

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.authentication.AuthenticationActivity$onCreate$3, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.AuthenticationActivity$onCreate$3", f = "AuthenticationActivity.kt", l = {226}, m = "invokeSuspend", v = 2)
    final class AnonymousClass3 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f53266b;

        /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.authentication.AuthenticationActivity$onCreate$3$1, reason: invalid class name */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
        @DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.AuthenticationActivity$onCreate$3$1", f = "AuthenticationActivity.kt", l = {227}, m = "invokeSuspend", v = 2)
        final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f53268b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ AuthenticationActivity f53269c;

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.authentication.AuthenticationActivity$onCreate$3$1$1, reason: invalid class name and collision with other inner class name */
            @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", "", "it"}, k = 3, mv = {2, 3, 0}, xi = 48)
            @DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.AuthenticationActivity$onCreate$3$1$1", f = "AuthenticationActivity.kt", l = {}, m = "invokeSuspend", v = 2)
            final class C02661 extends SuspendLambda implements Function2<Unit, Continuation<? super Unit>, Object> {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ AuthenticationActivity f53270b;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C02661(AuthenticationActivity authenticationActivity, Continuation continuation) {
                    super(2, continuation);
                    this.f53270b = authenticationActivity;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation create(Object obj, Continuation continuation) {
                    return new C02661(this.f53270b, continuation);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return ((C02661) create((Unit) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    ResultKt.b(obj);
                    AuthenticationActivity authenticationActivity = this.f53270b;
                    AppsFlyerUiTracker appsFlyerUiTracker = authenticationActivity.t;
                    if (appsFlyerUiTracker == null) {
                        Intrinsics.h("appsFlyerUiTracker");
                        throw null;
                    }
                    appsFlyerUiTracker.a(AppsFlyerEvent.Login.f52950c);
                    authenticationActivity.finish();
                    return Unit.f71739a;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass1(AuthenticationActivity authenticationActivity, Continuation continuation) {
                super(2, continuation);
                this.f53269c = authenticationActivity;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                return new AnonymousClass1(this.f53269c, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i2 = this.f53268b;
                if (i2 == 0) {
                    ResultKt.b(obj);
                    Companion companion = AuthenticationActivity.u;
                    AuthenticationActivity authenticationActivity = this.f53269c;
                    Flow k2 = authenticationActivity.J().getK();
                    C02661 c02661 = new C02661(authenticationActivity, null);
                    this.f53268b = 1;
                    if (FlowKt.g(k2, c02661, this) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                } else {
                    if (i2 != 1) {
                        md.k("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ResultKt.b(obj);
                }
                return Unit.f71739a;
            }
        }

        public AnonymousClass3(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return AuthenticationActivity.this.new AnonymousClass3(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass3) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f53266b;
            if (i2 == 0) {
                ResultKt.b(obj);
                AuthenticationActivity authenticationActivity = AuthenticationActivity.this;
                Lifecycle f13561b = authenticationActivity.getF13561b();
                Lifecycle.State state = Lifecycle.State.STARTED;
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(authenticationActivity, null);
                this.f53266b = 1;
                if (RepeatOnLifecycleKt.a(f13561b, state, anonymousClass1, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i2 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
            return Unit.f71739a;
        }
    }

    public AuthenticationActivity() {
        final Function0 function0 = null;
        this.p = new ViewModelLazy(Reflection.f71922a.b(AuthenticationViewModelImpl.class), new Function0<ViewModelStore>() { // from class: com.vuitton.android.presentation.screen.authentication.AuthenticationActivity$special$$inlined$viewModels$default$2
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.getViewModelStore();
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: com.vuitton.android.presentation.screen.authentication.AuthenticationActivity$special$$inlined$viewModels$default$1
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.getDefaultViewModelProviderFactory();
            }
        }, new Function0<CreationExtras>() { // from class: com.vuitton.android.presentation.screen.authentication.AuthenticationActivity$special$$inlined$viewModels$default$3
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                CreationExtras creationExtras;
                Function0 function1 = function0;
                return (function1 == null || (creationExtras = (CreationExtras) function1.mo47invoke()) == null) ? this.getDefaultViewModelCreationExtras() : creationExtras;
            }
        });
    }

    public static void H(AuthenticationActivity authenticationActivity, String str, Bundle bundle) {
        KisaConsents kisaConsents;
        Object serializableExtra;
        Object serializableExtra2;
        Object serializableExtra3;
        bundle.getClass();
        String string = bundle.getString("KEY_KISA_CONSENTS");
        if (string != null) {
            Json json = authenticationActivity.s;
            if (json == null) {
                Intrinsics.h("json");
                throw null;
            }
            kisaConsents = (KisaConsents) json.b(KisaConsents.INSTANCE.serializer(), string);
        } else {
            kisaConsents = null;
        }
        if (!authenticationActivity.getIntent().hasExtra("KEY_IDENTITY_TOKEN_VALUE")) {
            authenticationActivity.I();
            FragmentManager supportFragmentManager = authenticationActivity.getSupportFragmentManager();
            if (supportFragmentManager != null) {
                FragmentTransaction fragmentTransactionD = supportFragmentManager.d();
                fragmentTransactionD.n(R.anim.push_left_in, R.anim.push_right_out, R.anim.push_left_in, R.anim.push_right_out);
                NativeRegisterFragment.G.getClass();
                NativeRegisterFragment nativeRegisterFragment = new NativeRegisterFragment();
                Bundle bundle2 = new Bundle();
                if (kisaConsents != null) {
                    bundle2.putString("KEY_KISA_CONSENTS", JsonProviderKt.f43520a.c(KisaConsents.INSTANCE.serializer(), kisaConsents));
                }
                nativeRegisterFragment.setArguments(bundle2);
                fragmentTransactionD.i(R.id.fragment_container, nativeRegisterFragment, NativeRegisterFragment.H, 1);
                fragmentTransactionD.p = true;
                fragmentTransactionD.e();
                return;
            }
            return;
        }
        ActivityResultLauncher activityResultLauncher = authenticationActivity.q;
        SocialRegisterActivity.Companion companion = SocialRegisterActivity.s;
        String stringExtra = authenticationActivity.getIntent().getStringExtra("KEY_EMAIL_VALUE");
        String stringExtra2 = authenticationActivity.getIntent().getStringExtra("KEY_FIRSTNAME_VALUE");
        String stringExtra3 = authenticationActivity.getIntent().getStringExtra("KEY_LASTNAME_VALUE");
        String stringExtra4 = authenticationActivity.getIntent().getStringExtra("KEY_IDENTITY_TOKEN_VALUE");
        String stringExtra5 = authenticationActivity.getIntent().getStringExtra("KEY_RAW_NONCE_VALUE");
        Intent intent = authenticationActivity.getIntent();
        intent.getClass();
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 33) {
            serializableExtra = intent.getSerializableExtra("KEY_ORIGIN_VALUE", TrackingAuthOrigin.class);
        } else {
            Object serializableExtra4 = intent.getSerializableExtra("KEY_ORIGIN_VALUE");
            if (!(serializableExtra4 instanceof TrackingAuthOrigin)) {
                serializableExtra4 = null;
            }
            serializableExtra = (TrackingAuthOrigin) serializableExtra4;
        }
        TrackingAuthOrigin trackingAuthOrigin = (TrackingAuthOrigin) serializableExtra;
        Intent intent2 = authenticationActivity.getIntent();
        intent2.getClass();
        if (i2 >= 33) {
            serializableExtra2 = intent2.getSerializableExtra("KEY_ENTRY_POINT_VALUE", TrackingAuthEntryPoint.class);
        } else {
            Object serializableExtra5 = intent2.getSerializableExtra("KEY_ENTRY_POINT_VALUE");
            if (!(serializableExtra5 instanceof TrackingAuthEntryPoint)) {
                serializableExtra5 = null;
            }
            serializableExtra2 = (TrackingAuthEntryPoint) serializableExtra5;
        }
        TrackingAuthEntryPoint trackingAuthEntryPoint = (TrackingAuthEntryPoint) serializableExtra2;
        Intent intent3 = authenticationActivity.getIntent();
        intent3.getClass();
        if (i2 >= 33) {
            serializableExtra3 = intent3.getSerializableExtra("KEY_PROVIDER_VALUE", SocialAuthMode.class);
        } else {
            Object serializableExtra6 = intent3.getSerializableExtra("KEY_PROVIDER_VALUE");
            serializableExtra3 = (SocialAuthMode) (serializableExtra6 instanceof SocialAuthMode ? serializableExtra6 : null);
        }
        companion.getClass();
        activityResultLauncher.a(SocialRegisterActivity.Companion.a(authenticationActivity, stringExtra, stringExtra2, stringExtra3, stringExtra4, stringExtra5, trackingAuthOrigin, trackingAuthEntryPoint, (SocialAuthMode) serializableExtra3, string));
    }

    public final AuthenticationActivityRouter I() {
        AuthenticationActivityRouter authenticationActivityRouter = this.r;
        if (authenticationActivityRouter != null) {
            return authenticationActivityRouter;
        }
        Intrinsics.h("authenticationActivityRouter");
        throw null;
    }

    public final AuthenticationViewModel J() {
        return (AuthenticationViewModel) this.p.getF71699b();
    }

    public final void K(LoginState loginState) {
        Object serializableExtra;
        AuthenticationActivity authenticationActivity;
        loginState.getClass();
        if (loginState.a()) {
            Intent intent = getIntent();
            intent.getClass();
            if (Build.VERSION.SDK_INT >= 33) {
                serializableExtra = intent.getSerializableExtra("EXTRA_ROUTE", Routes.class);
            } else {
                Object serializableExtra2 = intent.getSerializableExtra("EXTRA_ROUTE");
                if (!(serializableExtra2 instanceof Routes)) {
                    serializableExtra2 = null;
                }
                serializableExtra = (Routes) serializableExtra2;
            }
            Routes routes = (Routes) serializableExtra;
            Intent intent2 = new Intent();
            intent2.putExtra("MAIN_ACTIVITY_REQUEST_CODE", 163);
            setResult(-1, intent2);
            if (routes == Routes.WELCOME_PAGE_WITH_EXIT_REDIRECT_WISHLIST) {
                authenticationActivity = this;
                authenticationActivity.startActivity(WishlistActivity.Companion.a(WishlistActivity.t, authenticationActivity, false, null, null, 14));
            } else {
                authenticationActivity = this;
                if (routes == Routes.WELCOME_PAGE_WITH_EXIT_REDIRECT_LVPASS) {
                    LVPassActivity.s.getClass();
                    authenticationActivity.startActivity(LVPassActivity.Companion.a(authenticationActivity));
                }
            }
            authenticationActivity.J().J8();
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

    @Override // com.vuitton.android.presentation.screen.base.BaseActivity, com.vuitton.android.presentation.screen.base.Hilt_BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        Object serializableExtra;
        Object serializableExtra2;
        String str;
        Object serializableExtra3;
        Object serializableExtra4;
        super.onCreate(bundle);
        SystemIcons.f43533b.getClass();
        EdgeToEdgeKt.b(this, false, SystemIcons.f43534c, 1);
        setContentView(R.layout.activity_fragment_container);
        getSupportFragmentManager().j0("EXTRA_KISA_CONSENT_RESULT", this, new ec(this));
        BuildersKt.c(LifecycleOwnerKt.a(this), null, null, new AnonymousClass2(null), 3);
        Intent intent = getIntent();
        if (intent != null) {
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 33) {
                serializableExtra = intent.getSerializableExtra("EXTRA_LOGIN_CONTEXT", LoginContext.class);
            } else {
                Object serializableExtra5 = intent.getSerializableExtra("EXTRA_LOGIN_CONTEXT");
                if (!(serializableExtra5 instanceof LoginContext)) {
                    serializableExtra5 = null;
                }
                serializableExtra = (LoginContext) serializableExtra5;
            }
            LoginContext loginContext = (LoginContext) serializableExtra;
            if (loginContext == null) {
                loginContext = LoginContext.DEFAULT;
            }
            if (intent.hasExtra("EXTRA_ROUTE")) {
                if (i2 >= 33) {
                    serializableExtra2 = intent.getSerializableExtra("EXTRA_ROUTE", Routes.class);
                } else {
                    Serializable serializableExtra6 = intent.getSerializableExtra("EXTRA_ROUTE");
                    if (!(serializableExtra6 instanceof Routes)) {
                        serializableExtra6 = null;
                    }
                    serializableExtra2 = (Routes) serializableExtra6;
                }
                serializableExtra2.getClass();
                switch (WhenMappings.f53260a[((Routes) serializableExtra2).ordinal()]) {
                    case 1:
                        I();
                        AuthenticationActivityRouter.f(this, loginContext, false);
                        break;
                    case 2:
                        I();
                        AuthenticationActivityRouter.f(this, loginContext, true);
                        break;
                    case 3:
                        String stringExtra = intent.getStringExtra("EXTRA_LOGIN_PARAM");
                        str = stringExtra != null ? stringExtra : "";
                        I();
                        FragmentManager supportFragmentManager = getSupportFragmentManager();
                        if (supportFragmentManager != null) {
                            FragmentTransaction fragmentTransactionD = supportFragmentManager.d();
                            fragmentTransactionD.n(R.anim.push_left_in, R.anim.push_right_out, R.anim.push_left_in, R.anim.push_right_out);
                            WebViewRegisterFragment.M.getClass();
                            WebViewRegisterFragment webViewRegisterFragment = new WebViewRegisterFragment();
                            Bundle bundle2 = new Bundle();
                            if (str.length() != 0) {
                                bundle2.putString("KEY_CID", str);
                            }
                            webViewRegisterFragment.setArguments(bundle2);
                            fragmentTransactionD.i(R.id.fragment_container, webViewRegisterFragment, WebViewRegisterFragment.N, 1);
                            FragmentTransactionExtKt.a(fragmentTransactionD, this);
                            fragmentTransactionD.e();
                        }
                        break;
                    case 4:
                        String stringExtra2 = intent.getStringExtra("EXTRA_LOGIN_PARAM");
                        str = stringExtra2 != null ? stringExtra2 : "";
                        if (!J().getB()) {
                            I();
                            AuthenticationActivityRouter.g(this);
                            FragmentManager supportFragmentManager2 = getSupportFragmentManager();
                            if (supportFragmentManager2 != null) {
                                FragmentTransaction fragmentTransactionD2 = supportFragmentManager2.d();
                                fragmentTransactionD2.n(R.anim.push_left_in, R.anim.fade_out, R.anim.no_animation, R.anim.push_right_out);
                                WebViewLoginFragment.L.getClass();
                                WebViewLoginFragment webViewLoginFragmentA = WebViewLoginFragment.Companion.a(str);
                                String str2 = WebViewLoginFragment.M;
                                fragmentTransactionD2.m(R.id.fragment_container, webViewLoginFragmentA, str2);
                                fragmentTransactionD2.d(str2);
                                fragmentTransactionD2.p = true;
                                fragmentTransactionD2.e();
                            }
                        } else {
                            I();
                            AuthenticationActivityRouter.g(this);
                            FragmentManager supportFragmentManager3 = getSupportFragmentManager();
                            if (supportFragmentManager3 != null) {
                                FragmentTransaction fragmentTransactionD3 = supportFragmentManager3.d();
                                fragmentTransactionD3.n(R.anim.push_left_in, R.anim.fade_out, R.anim.no_animation, R.anim.push_right_out);
                                NativeLoginFragment.Companion companion = NativeLoginFragment.A;
                                NativeLoginRouteName nativeLoginRouteName = NativeLoginRouteName.LOGIN;
                                companion.getClass();
                                NativeLoginFragment nativeLoginFragmentA = NativeLoginFragment.Companion.a(str, nativeLoginRouteName);
                                String str3 = NativeLoginFragment.B;
                                fragmentTransactionD3.m(R.id.fragment_container, nativeLoginFragmentA, str3);
                                fragmentTransactionD3.d(str3);
                                fragmentTransactionD3.p = true;
                                fragmentTransactionD3.e();
                            }
                        }
                        break;
                    case 5:
                        ArrayList<String> stringArrayListExtra = intent.getStringArrayListExtra("EXTRA_ACTIVATE_ACCOUNT_ARGS");
                        I();
                        AuthenticationActivityRouter.g(this);
                        FragmentManager supportFragmentManager4 = getSupportFragmentManager();
                        if (supportFragmentManager4 != null) {
                            FragmentTransaction fragmentTransactionD4 = supportFragmentManager4.d();
                            fragmentTransactionD4.n(R.anim.push_left_in, R.anim.push_right_out, R.anim.no_animation, R.anim.push_right_out);
                            WebViewRegisterFragment.M.getClass();
                            WebViewRegisterFragment webViewRegisterFragment2 = new WebViewRegisterFragment();
                            Bundle bundle3 = new Bundle();
                            bundle3.putStringArrayList("KEY_DEEPLINK_VALUES", stringArrayListExtra);
                            webViewRegisterFragment2.setArguments(bundle3);
                            String str4 = WebViewRegisterFragment.N;
                            fragmentTransactionD4.m(R.id.fragment_container, webViewRegisterFragment2, str4);
                            fragmentTransactionD4.d(str4);
                            fragmentTransactionD4.p = true;
                            fragmentTransactionD4.e();
                        }
                        break;
                    case 6:
                        I();
                        AuthenticationActivityRouter.g(this);
                        PrivacyActivity.s.getClass();
                        startActivity(PrivacyActivity.Companion.a(this, null, true));
                        break;
                    case 7:
                        String stringExtra3 = intent.getStringExtra("EXTRA_LOGIN_PARAM");
                        if (!J().getB()) {
                            I();
                            AuthenticationActivityRouter.b(this, stringExtra3);
                        } else {
                            I();
                            AuthenticationActivityRouter.d(this, stringExtra3);
                        }
                        break;
                    case 8:
                        if (i2 >= 33) {
                            serializableExtra3 = intent.getSerializableExtra("EXTRA_TRACKING_ORIGIN", TrackingAuthOrigin.class);
                        } else {
                            Object serializableExtra7 = intent.getSerializableExtra("EXTRA_TRACKING_ORIGIN");
                            if (!(serializableExtra7 instanceof TrackingAuthOrigin)) {
                                serializableExtra7 = null;
                            }
                            serializableExtra3 = (TrackingAuthOrigin) serializableExtra7;
                        }
                        I();
                        AuthenticationActivityRouter.e(this, J().getD(), J().getC(), (TrackingAuthOrigin) serializableExtra3);
                        break;
                    case 9:
                        I();
                        AuthenticationActivityRouter.f(this, loginContext, true);
                        break;
                    case 10:
                        I();
                        AuthenticationActivityRouter.f(this, loginContext, true);
                        break;
                    case 11:
                        Intent intent2 = getIntent();
                        intent2.getClass();
                        if (i2 >= 33) {
                            serializableExtra4 = intent2.getSerializableExtra("KEY_ORIGIN_VALUE", TrackingAuthOrigin.class);
                        } else {
                            Object serializableExtra8 = intent2.getSerializableExtra("KEY_ORIGIN_VALUE");
                            if (!(serializableExtra8 instanceof TrackingAuthOrigin)) {
                                serializableExtra8 = null;
                            }
                            serializableExtra4 = (TrackingAuthOrigin) serializableExtra8;
                        }
                        I();
                        AuthenticationActivityRouter.a(this, (TrackingAuthOrigin) serializableExtra4);
                        break;
                    default:
                        v40.g();
                        return;
                }
            }
        }
        BuildersKt.c(LifecycleOwnerKt.a(this), null, null, new AnonymousClass3(null), 3);
    }

    @Override // androidx.appcompat.app.AppCompatActivity
    public final boolean onSupportNavigateUp() {
        Object serializableExtra;
        Intent intent = getIntent();
        intent.getClass();
        if (Build.VERSION.SDK_INT >= 33) {
            serializableExtra = intent.getSerializableExtra("EXTRA_ROUTE", Routes.class);
        } else {
            Serializable serializableExtra2 = intent.getSerializableExtra("EXTRA_ROUTE");
            if (!(serializableExtra2 instanceof Routes)) {
                serializableExtra2 = null;
            }
            serializableExtra = (Routes) serializableExtra2;
        }
        serializableExtra.getClass();
        Routes routes = (Routes) serializableExtra;
        if (getSupportFragmentManager().J() == 0 || routes == Routes.LOGIN_FROM_OUTSIDE || routes == Routes.REGISTER_FROM_OUTSIDE) {
            finish();
            return true;
        }
        getSupportFragmentManager().V();
        return true;
    }
}
