package com.vuitton.android.presentation.screen.pdp;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import androidx.activity.EdgeToEdge;
import androidx.activity.SystemBarStyle;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts$RequestPermission;
import androidx.activity.result.contract.ActivityResultContracts$StartActivityForResult;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.core.app.ActivityCompat;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwnerKt;
import androidx.lifecycle.RepeatOnLifecycleKt;
import androidx.lifecycle.ViewModelLazy;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.CreationExtras;
import com.vuitton.android.platform.extensions.IntentExtensionKt;
import com.vuitton.android.presentation.chat.ChatAttachable;
import com.vuitton.android.presentation.chat.ChatComposeContainer;
import com.vuitton.android.presentation.chat.ChatHostActivity;
import com.vuitton.android.presentation.chat.ChatLifecycleObserver;
import com.vuitton.android.presentation.contact.ContactUsMode;
import com.vuitton.android.presentation.contact.models.ContactUsOrigin;
import com.vuitton.android.presentation.link.navigation.ContactUsNavigator;
import com.vuitton.android.presentation.link.navigation.ContributionLinkNavigator;
import com.vuitton.android.presentation.screen.pdp.PdpActivity;
import com.vuitton.android.presentation.screen.pdp.models.PdpSideEffect;
import com.vuitton.android.presentation.screen.pdp.models.PdpViewState;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.CustomizationIdUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.CustomizationType;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.LegalConsentContextUiModel;
import com.vuitton.android.presentation.screen.permissions.PermissionsViewModelImpl;
import com.vuitton.android.presentation.screen.plp.models.CatalogMode;
import com.vuitton.android.presentation.screen.reinsurance.ReinsuranceViewModelImpl;
import com.vuitton.foundation.logger.Logger;
import dagger.hilt.android.AndroidEntryPoint;
import defpackage.md;
import defpackage.v40;
import defpackage.wl0;
import defpackage.xl0;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u0005B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\b²\u0006\f\u0010\u0007\u001a\u00020\u00068\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;", "Lcom/vuitton/android/presentation/screen/base/BaseActivity;", "Lcom/vuitton/android/presentation/chat/ChatHostActivity;", "<init>", "()V", "Companion", "Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;", "viewState", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class PdpActivity extends Hilt_PdpActivity implements ChatHostActivity {
    public static final Companion D = new Companion(null);
    public final ActivityResultLauncher A;
    public final ActivityResultLauncher B;
    public Function0 C;
    public final ViewModelLazy p;
    public final ViewModelLazy q;
    public final ViewModelLazy r;
    public Logger s;
    public ChatAttachable t;
    public ChatLifecycleObserver u;
    public ContactUsNavigator v;
    public ContributionLinkNavigator w;
    public xl0 x;
    public final ActivityResultLauncher y;
    public final ActivityResultLauncher z;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\n\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0004R\u0014\u0010\b\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\b\u0010\u0004R\u0014\u0010\t\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\t\u0010\u0004R\u0014\u0010\n\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\n\u0010\u0004R\u0014\u0010\u000b\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000b\u0010\u0004¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$Companion;", "", "", "KEY_SKU", "Ljava/lang/String;", "KEY_IS_EXCLUSIVE_SALE", "KEY_STORE_RMS_CODE", "KEY_CATALOG_MODE", "KEY_CATEGORY_ID", "KEY_CUSTOMIZATION_ID", "KEY_CUSTOMIZATION_TYPE", "KEY_IS_FROM_NATIVE_SHARE", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static Intent a(Companion companion, Context context, String str, boolean z, String str2, CatalogMode catalogMode, String str3, boolean z2, int i2) {
            if ((i2 & 4) != 0) {
                z = false;
            }
            if ((i2 & 8) != 0) {
                str2 = null;
            }
            if ((i2 & 16) != 0) {
                catalogMode = null;
            }
            if ((i2 & 32) != 0) {
                str3 = null;
            }
            if ((i2 & 64) != 0) {
                z2 = false;
            }
            companion.getClass();
            context.getClass();
            str.getClass();
            Intent intentPutExtra = new Intent(context, (Class<?>) PdpActivity.class).putExtra("SKU", str).putExtra("IS_EXCLUSIVE_SALE", z).putExtra("STORE_RMS_CODE", str2);
            intentPutExtra.getClass();
            intentPutExtra.putExtra("CATALOG_MODE", (Parcelable) catalogMode);
            Intent intentPutExtra2 = intentPutExtra.putExtra("CATEGORY_ID", str3).putExtra("IS_FROM_NATIVE_SHARE", z2);
            intentPutExtra2.getClass();
            return intentPutExtra2;
        }

        public static Intent b(Context context, String str) {
            context.getClass();
            str.getClass();
            Intent intentPutExtra = new Intent(context, (Class<?>) PdpActivity.class).putExtra("SKU", str);
            intentPutExtra.getClass();
            return intentPutExtra;
        }

        public static Intent c(Context context, String str, CustomizationIdUiModel customizationIdUiModel) {
            context.getClass();
            str.getClass();
            Intent intentPutExtra = new Intent(context, (Class<?>) PdpActivity.class).putExtra("SKU", str).putExtra("CUSTOMIZATION_ID", customizationIdUiModel);
            intentPutExtra.getClass();
            return intentPutExtra;
        }
    }

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.pdp.PdpActivity$onCreate$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.PdpActivity$onCreate$1", f = "PdpActivity.kt", l = {225}, m = "invokeSuspend", v = 2)
    final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f61056b;

        /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.pdp.PdpActivity$onCreate$1$1, reason: invalid class name and collision with other inner class name */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
        @DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.PdpActivity$onCreate$1$1", f = "PdpActivity.kt", l = {227}, m = "invokeSuspend", v = 2)
        final class C02961 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f61058b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ PdpActivity f61059c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C02961(PdpActivity pdpActivity, Continuation continuation) {
                super(2, continuation);
                this.f61059c = pdpActivity;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                return new C02961(this.f61059c, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ((C02961) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i2 = this.f61058b;
                if (i2 == 0) {
                    ResultKt.b(obj);
                    Companion companion = PdpActivity.D;
                    PdpActivity pdpActivity = this.f61059c;
                    pdpActivity.I().f8(ContactUsMode.DEFAULT);
                    PdpViewModel pdpViewModelI = pdpActivity.I();
                    ContactUsOrigin contactUsOrigin = ContactUsOrigin.PDP;
                    this.f61058b = 1;
                    if (pdpViewModelI.M1(contactUsOrigin, this) == coroutineSingletons) {
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

        public AnonymousClass1(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return PdpActivity.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f61056b;
            if (i2 == 0) {
                ResultKt.b(obj);
                Lifecycle.State state = Lifecycle.State.STARTED;
                PdpActivity pdpActivity = PdpActivity.this;
                C02961 c02961 = new C02961(pdpActivity, null);
                this.f61056b = 1;
                if (RepeatOnLifecycleKt.b(pdpActivity, state, c02961, this) == coroutineSingletons) {
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

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.pdp.PdpActivity$onCreate$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.PdpActivity$onCreate$2", f = "PdpActivity.kt", l = {231}, m = "invokeSuspend", v = 2)
    final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f61060b;

        /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.pdp.PdpActivity$onCreate$2$1, reason: invalid class name */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
        @DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.PdpActivity$onCreate$2$1", f = "PdpActivity.kt", l = {232}, m = "invokeSuspend", v = 2)
        final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f61062b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ PdpActivity f61063c;

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.pdp.PdpActivity$onCreate$2$1$1, reason: invalid class name and collision with other inner class name */
            @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "sideEffect", "Lcom/vuitton/android/presentation/screen/pdp/models/PdpSideEffect;"}, k = 3, mv = {2, 3, 0}, xi = 48)
            @DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.PdpActivity$onCreate$2$1$1", f = "PdpActivity.kt", l = {}, m = "invokeSuspend", v = 2)
            final class C02971 extends SuspendLambda implements Function2<PdpSideEffect, Continuation<? super Unit>, Object> {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public /* synthetic */ Object f61064b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ PdpActivity f61065c;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C02971(PdpActivity pdpActivity, Continuation continuation) {
                    super(2, continuation);
                    this.f61065c = pdpActivity;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation create(Object obj, Continuation continuation) {
                    C02971 c02971 = new C02971(this.f61065c, continuation);
                    c02971.f61064b = obj;
                    return c02971;
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return ((C02971) create((PdpSideEffect) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    PdpSideEffect pdpSideEffect = (PdpSideEffect) this.f61064b;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    ResultKt.b(obj);
                    if (!(pdpSideEffect instanceof PdpSideEffect.Navigation.NavigateToCustomization)) {
                        v40.g();
                        return null;
                    }
                    PdpSideEffect.Navigation.NavigateToCustomization navigateToCustomization = (PdpSideEffect.Navigation.NavigateToCustomization) pdpSideEffect;
                    String str = navigateToCustomization.f61563a;
                    CustomizationType customizationType = navigateToCustomization.f61564b;
                    Companion companion = PdpActivity.D;
                    if (customizationType != CustomizationType.NO_CUSTOMIZATION) {
                        PdpDestinations.ToCustomizationWebViewPage toCustomizationWebViewPage = new PdpDestinations.ToCustomizationWebViewPage(str, customizationType);
                        PdpActivity pdpActivity = this.f61065c;
                        IntentExtensionKt.b(PdpDestinationsKt.a(toCustomizationWebViewPage, pdpActivity), pdpActivity.A);
                    }
                    return Unit.f71739a;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass1(PdpActivity pdpActivity, Continuation continuation) {
                super(2, continuation);
                this.f61063c = pdpActivity;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                return new AnonymousClass1(this.f61063c, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i2 = this.f61062b;
                if (i2 == 0) {
                    ResultKt.b(obj);
                    Companion companion = PdpActivity.D;
                    PdpActivity pdpActivity = this.f61063c;
                    Flow flowH = pdpActivity.I().h();
                    C02971 c02971 = new C02971(pdpActivity, null);
                    this.f61062b = 1;
                    if (FlowKt.g(flowH, c02971, this) == coroutineSingletons) {
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

        public AnonymousClass2(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return PdpActivity.this.new AnonymousClass2(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f61060b;
            if (i2 == 0) {
                ResultKt.b(obj);
                Lifecycle.State state = Lifecycle.State.STARTED;
                PdpActivity pdpActivity = PdpActivity.this;
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(pdpActivity, null);
                this.f61060b = 1;
                if (RepeatOnLifecycleKt.b(pdpActivity, state, anonymousClass1, this) == coroutineSingletons) {
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

    public PdpActivity() {
        Function0<ViewModelProvider.Factory> function0 = new Function0<ViewModelProvider.Factory>() { // from class: com.vuitton.android.presentation.screen.pdp.PdpActivity$special$$inlined$viewModels$default$1
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.getDefaultViewModelProviderFactory();
            }
        };
        ReflectionFactory reflectionFactory = Reflection.f71922a;
        final Function0 function1 = null;
        this.p = new ViewModelLazy(reflectionFactory.b(PdpViewModelImpl.class), new Function0<ViewModelStore>() { // from class: com.vuitton.android.presentation.screen.pdp.PdpActivity$special$$inlined$viewModels$default$2
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.getViewModelStore();
            }
        }, function0, new Function0<CreationExtras>() { // from class: com.vuitton.android.presentation.screen.pdp.PdpActivity$special$$inlined$viewModels$default$3
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                CreationExtras creationExtras;
                Function0 function2 = function1;
                return (function2 == null || (creationExtras = (CreationExtras) function2.mo47invoke()) == null) ? this.getDefaultViewModelCreationExtras() : creationExtras;
            }
        });
        this.q = new ViewModelLazy(reflectionFactory.b(PermissionsViewModelImpl.class), new Function0<ViewModelStore>() { // from class: com.vuitton.android.presentation.screen.pdp.PdpActivity$special$$inlined$viewModels$default$5
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.getViewModelStore();
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: com.vuitton.android.presentation.screen.pdp.PdpActivity$special$$inlined$viewModels$default$4
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.getDefaultViewModelProviderFactory();
            }
        }, new Function0<CreationExtras>() { // from class: com.vuitton.android.presentation.screen.pdp.PdpActivity$special$$inlined$viewModels$default$6
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                CreationExtras creationExtras;
                Function0 function2 = function1;
                return (function2 == null || (creationExtras = (CreationExtras) function2.mo47invoke()) == null) ? this.getDefaultViewModelCreationExtras() : creationExtras;
            }
        });
        this.r = new ViewModelLazy(reflectionFactory.b(ReinsuranceViewModelImpl.class), new Function0<ViewModelStore>() { // from class: com.vuitton.android.presentation.screen.pdp.PdpActivity$special$$inlined$viewModels$default$8
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.getViewModelStore();
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: com.vuitton.android.presentation.screen.pdp.PdpActivity$special$$inlined$viewModels$default$7
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.getDefaultViewModelProviderFactory();
            }
        }, new Function0<CreationExtras>() { // from class: com.vuitton.android.presentation.screen.pdp.PdpActivity$special$$inlined$viewModels$default$9
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                CreationExtras creationExtras;
                Function0 function2 = function1;
                return (function2 == null || (creationExtras = (CreationExtras) function2.mo47invoke()) == null) ? this.getDefaultViewModelCreationExtras() : creationExtras;
            }
        });
        final int i2 = 0;
        this.y = registerForActivityResult(new ActivityResultContracts$StartActivityForResult(), new ActivityResultCallback(this) { // from class: zl0

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ PdpActivity f81669c;

            {
                this.f81669c = this;
            }

            @Override // androidx.activity.result.ActivityResultCallback
            public final void b(Object obj) {
                xl0 xl0Var;
                Function0 function2;
                int i3 = i2;
                PdpActivity pdpActivity = this.f81669c;
                switch (i3) {
                    case 0:
                        ActivityResult activityResult = (ActivityResult) obj;
                        PdpActivity.Companion companion = PdpActivity.D;
                        activityResult.getClass();
                        if (activityResult.f731b == -1 && (xl0Var = pdpActivity.x) != null) {
                            xl0Var.mo47invoke();
                            break;
                        }
                        break;
                    case 1:
                        ActivityResult activityResult2 = (ActivityResult) obj;
                        PdpActivity.Companion companion2 = PdpActivity.D;
                        activityResult2.getClass();
                        if (activityResult2.f731b == -1) {
                            pdpActivity.I().a1();
                        }
                        break;
                    case 2:
                        PdpActivity.H(pdpActivity, (ActivityResult) obj);
                        break;
                    default:
                        boolean zBooleanValue = ((Boolean) obj).booleanValue();
                        PdpActivity.Companion companion3 = PdpActivity.D;
                        if (!zBooleanValue) {
                            if (!ActivityCompat.shouldShowRequestPermissionRationale(pdpActivity, "android.permission.CAMERA")) {
                                pdpActivity.I().L2();
                            }
                            break;
                        } else if (((PdpViewState) pdpActivity.I().getY0().getValue()).f61566b != null && (function2 = pdpActivity.C) != null) {
                            function2.mo47invoke();
                            break;
                        }
                        break;
                }
            }
        });
        final int i3 = 1;
        this.z = registerForActivityResult(new ActivityResultContracts$StartActivityForResult(), new ActivityResultCallback(this) { // from class: zl0

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ PdpActivity f81669c;

            {
                this.f81669c = this;
            }

            @Override // androidx.activity.result.ActivityResultCallback
            public final void b(Object obj) {
                xl0 xl0Var;
                Function0 function2;
                int i4 = i3;
                PdpActivity pdpActivity = this.f81669c;
                switch (i4) {
                    case 0:
                        ActivityResult activityResult = (ActivityResult) obj;
                        PdpActivity.Companion companion = PdpActivity.D;
                        activityResult.getClass();
                        if (activityResult.f731b == -1 && (xl0Var = pdpActivity.x) != null) {
                            xl0Var.mo47invoke();
                            break;
                        }
                        break;
                    case 1:
                        ActivityResult activityResult2 = (ActivityResult) obj;
                        PdpActivity.Companion companion2 = PdpActivity.D;
                        activityResult2.getClass();
                        if (activityResult2.f731b == -1) {
                            pdpActivity.I().a1();
                        }
                        break;
                    case 2:
                        PdpActivity.H(pdpActivity, (ActivityResult) obj);
                        break;
                    default:
                        boolean zBooleanValue = ((Boolean) obj).booleanValue();
                        PdpActivity.Companion companion3 = PdpActivity.D;
                        if (!zBooleanValue) {
                            if (!ActivityCompat.shouldShowRequestPermissionRationale(pdpActivity, "android.permission.CAMERA")) {
                                pdpActivity.I().L2();
                            }
                            break;
                        } else if (((PdpViewState) pdpActivity.I().getY0().getValue()).f61566b != null && (function2 = pdpActivity.C) != null) {
                            function2.mo47invoke();
                            break;
                        }
                        break;
                }
            }
        });
        final int i4 = 2;
        this.A = registerForActivityResult(new ActivityResultContracts$StartActivityForResult(), new ActivityResultCallback(this) { // from class: zl0

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ PdpActivity f81669c;

            {
                this.f81669c = this;
            }

            @Override // androidx.activity.result.ActivityResultCallback
            public final void b(Object obj) {
                xl0 xl0Var;
                Function0 function2;
                int i5 = i4;
                PdpActivity pdpActivity = this.f81669c;
                switch (i5) {
                    case 0:
                        ActivityResult activityResult = (ActivityResult) obj;
                        PdpActivity.Companion companion = PdpActivity.D;
                        activityResult.getClass();
                        if (activityResult.f731b == -1 && (xl0Var = pdpActivity.x) != null) {
                            xl0Var.mo47invoke();
                            break;
                        }
                        break;
                    case 1:
                        ActivityResult activityResult2 = (ActivityResult) obj;
                        PdpActivity.Companion companion2 = PdpActivity.D;
                        activityResult2.getClass();
                        if (activityResult2.f731b == -1) {
                            pdpActivity.I().a1();
                        }
                        break;
                    case 2:
                        PdpActivity.H(pdpActivity, (ActivityResult) obj);
                        break;
                    default:
                        boolean zBooleanValue = ((Boolean) obj).booleanValue();
                        PdpActivity.Companion companion3 = PdpActivity.D;
                        if (!zBooleanValue) {
                            if (!ActivityCompat.shouldShowRequestPermissionRationale(pdpActivity, "android.permission.CAMERA")) {
                                pdpActivity.I().L2();
                            }
                            break;
                        } else if (((PdpViewState) pdpActivity.I().getY0().getValue()).f61566b != null && (function2 = pdpActivity.C) != null) {
                            function2.mo47invoke();
                            break;
                        }
                        break;
                }
            }
        });
        final int i5 = 3;
        this.B = registerForActivityResult(new ActivityResultContracts$RequestPermission(), new ActivityResultCallback(this) { // from class: zl0

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ PdpActivity f81669c;

            {
                this.f81669c = this;
            }

            @Override // androidx.activity.result.ActivityResultCallback
            public final void b(Object obj) {
                xl0 xl0Var;
                Function0 function2;
                int i6 = i5;
                PdpActivity pdpActivity = this.f81669c;
                switch (i6) {
                    case 0:
                        ActivityResult activityResult = (ActivityResult) obj;
                        PdpActivity.Companion companion = PdpActivity.D;
                        activityResult.getClass();
                        if (activityResult.f731b == -1 && (xl0Var = pdpActivity.x) != null) {
                            xl0Var.mo47invoke();
                            break;
                        }
                        break;
                    case 1:
                        ActivityResult activityResult2 = (ActivityResult) obj;
                        PdpActivity.Companion companion2 = PdpActivity.D;
                        activityResult2.getClass();
                        if (activityResult2.f731b == -1) {
                            pdpActivity.I().a1();
                        }
                        break;
                    case 2:
                        PdpActivity.H(pdpActivity, (ActivityResult) obj);
                        break;
                    default:
                        boolean zBooleanValue = ((Boolean) obj).booleanValue();
                        PdpActivity.Companion companion3 = PdpActivity.D;
                        if (!zBooleanValue) {
                            if (!ActivityCompat.shouldShowRequestPermissionRationale(pdpActivity, "android.permission.CAMERA")) {
                                pdpActivity.I().L2();
                            }
                            break;
                        } else if (((PdpViewState) pdpActivity.I().getY0().getValue()).f61566b != null && (function2 = pdpActivity.C) != null) {
                            function2.mo47invoke();
                            break;
                        }
                        break;
                }
            }
        });
    }

    public static void H(PdpActivity pdpActivity, ActivityResult activityResult) {
        Intent intent;
        Parcelable parcelable;
        Parcelable parcelable2;
        activityResult.getClass();
        if (activityResult.f731b != -1 || (intent = activityResult.f732c) == null) {
            return;
        }
        String stringExtra = intent.getStringExtra("CUSTOMIZATION_TYPE");
        if (!Intrinsics.c(stringExtra, CustomizationType.HOTSTAMPING.toString()) && !Intrinsics.c(stringExtra, CustomizationType.PERFUME_ENGRAVING.toString())) {
            if (Build.VERSION.SDK_INT >= 33) {
                parcelable2 = (Parcelable) intent.getParcelableExtra("CUSTOMIZATION_ID", CustomizationIdUiModel.class);
            } else {
                Parcelable parcelableExtra = intent.getParcelableExtra("CUSTOMIZATION_ID");
                parcelable2 = (CustomizationIdUiModel) (parcelableExtra instanceof CustomizationIdUiModel ? parcelableExtra : null);
            }
            String stringExtra2 = intent.getStringExtra("SKU");
            if (parcelable2 == null || stringExtra2 == null) {
                return;
            }
            PdpViewModel pdpViewModelI = pdpActivity.I();
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            pdpViewModelI.l6(stringExtra2, (CustomizationIdUiModel) parcelable2, true);
            return;
        }
        if (Build.VERSION.SDK_INT >= 33) {
            parcelable = (Parcelable) intent.getParcelableExtra("CUSTOMIZATION_ID", CustomizationIdUiModel.class);
        } else {
            Parcelable parcelableExtra2 = intent.getParcelableExtra("CUSTOMIZATION_ID");
            if (!(parcelableExtra2 instanceof CustomizationIdUiModel)) {
                parcelableExtra2 = null;
            }
            parcelable = (CustomizationIdUiModel) parcelableExtra2;
        }
        ProductUiModel productUiModel = ((PdpViewState) pdpActivity.I().getY0().getValue()).f61566b;
        String str = productUiModel != null ? productUiModel.f61735b : null;
        SkuIdUiModel skuIdUiModel = str != null ? new SkuIdUiModel(str) : null;
        if (parcelable == null || skuIdUiModel == null) {
            return;
        }
        pdpActivity.I().A8(skuIdUiModel.f61764b, (CustomizationIdUiModel) parcelable);
    }

    public final PdpViewModel I() {
        return (PdpViewModel) this.p.getF71699b();
    }

    public final void J(ProductUiModel productUiModel) {
        if (I().T2()) {
            startActivity(PdpDestinationsKt.a(new PdpDestinations.ToBeautyVtoPage(productUiModel), this));
        } else {
            I().d5(LegalConsentContextUiModel.TRY_ON);
        }
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
        ChatComposeContainer chatComposeContainer = new ChatComposeContainer(this);
        Lifecycle f13561b = getF13561b();
        ChatLifecycleObserver chatLifecycleObserver = this.u;
        if (chatLifecycleObserver == null) {
            Intrinsics.h("chatLifecycleObserver");
            throw null;
        }
        f13561b.a(chatLifecycleObserver);
        BuildersKt.c(LifecycleOwnerKt.a(this), null, null, new AnonymousClass1(null), 3);
        BuildersKt.c(LifecycleOwnerKt.a(this), null, null, new AnonymousClass2(null), 3);
        SystemBarStyle.f684e.getClass();
        EdgeToEdge.a(this, SystemBarStyle.Companion.b(0, 0), SystemBarStyle.Companion.b(0, 0));
        chatComposeContainer.a(new ComposableLambdaImpl(-1917380822, true, new wl0(this, 0)));
    }
}
