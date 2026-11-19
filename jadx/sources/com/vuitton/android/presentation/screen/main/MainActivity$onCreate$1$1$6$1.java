package com.vuitton.android.presentation.screen.main;

import android.net.Uri;
import androidx.compose.runtime.MutableState;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.RepeatOnLifecycleKt;
import com.batch.android.e.x;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.redirectlink.LinkEffect;
import com.vuitton.android.presentation.screen.feed.models.FeedTab;
import com.vuitton.android.presentation.screen.main.components.MainActivityBottomSheetType;
import com.vuitton.android.presentation.screen.main.models.MainActivitySideEffect;
import com.vuitton.android.presentation.screen.main.models.MainTopLevelDestination;
import defpackage.md;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.main.MainActivity$onCreate$1$1$6$1", f = "MainActivity.kt", l = {495}, m = "invokeSuspend", v = 2)
final class MainActivity$onCreate$1$1$6$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f59015b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MainActivity f59016c;
    public final /* synthetic */ MainNavigationState d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ LVModalBottomSheetState f59017e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ MutableState f59018f;
    public final /* synthetic */ MutableState g;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.main.MainActivity$onCreate$1$1$6$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.main.MainActivity$onCreate$1$1$6$1$1", f = "MainActivity.kt", l = {497}, m = "invokeSuspend", v = 2)
    final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f59019b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ MainActivity f59020c;
        public final /* synthetic */ MainNavigationState d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ LVModalBottomSheetState f59021e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final /* synthetic */ MutableState f59022f;
        public final /* synthetic */ MutableState g;

        /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.main.MainActivity$onCreate$1$1$6$1$1$1, reason: invalid class name and collision with other inner class name */
        @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "sideEffect", "Lcom/vuitton/android/presentation/screen/main/models/MainActivitySideEffect;"}, k = 3, mv = {2, 3, 0}, xi = 48)
        @DebugMetadata(c = "com.vuitton.android.presentation.screen.main.MainActivity$onCreate$1$1$6$1$1$1", f = "MainActivity.kt", l = {}, m = "invokeSuspend", v = 2)
        final class C02901 extends SuspendLambda implements Function2<MainActivitySideEffect, Continuation<? super Unit>, Object> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public /* synthetic */ Object f59023b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ MainNavigationState f59024c;
            public final /* synthetic */ MainActivity d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public final /* synthetic */ LVModalBottomSheetState f59025e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public final /* synthetic */ MutableState f59026f;
            public final /* synthetic */ MutableState g;

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.main.MainActivity$onCreate$1$1$6$1$1$1$WhenMappings */
            @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
            public static final /* synthetic */ class WhenMappings {

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                public static final /* synthetic */ int[] f59027a;

                static {
                    int[] iArr = new int[MainTopLevelDestination.values().length];
                    try {
                        iArr[MainTopLevelDestination.CATALOG.ordinal()] = 1;
                    } catch (NoSuchFieldError unused) {
                    }
                    try {
                        iArr[MainTopLevelDestination.SERVICES.ordinal()] = 2;
                    } catch (NoSuchFieldError unused2) {
                    }
                    try {
                        iArr[MainTopLevelDestination.WISHLIST.ordinal()] = 3;
                    } catch (NoSuchFieldError unused3) {
                    }
                    f59027a = iArr;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C02901(MutableState mutableState, MutableState mutableState2, LVModalBottomSheetState lVModalBottomSheetState, MainActivity mainActivity, MainNavigationState mainNavigationState, Continuation continuation) {
                super(2, continuation);
                this.f59024c = mainNavigationState;
                this.d = mainActivity;
                this.f59025e = lVModalBottomSheetState;
                this.f59026f = mutableState;
                this.g = mutableState2;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                C02901 c02901 = new C02901(this.f59026f, this.g, this.f59025e, this.d, this.f59024c, continuation);
                c02901.f59023b = obj;
                return c02901;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ((C02901) create((MainActivitySideEffect) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                MainNavigationState mainNavigationState = this.f59024c;
                MainActivitySideEffect mainActivitySideEffect = (MainActivitySideEffect) this.f59023b;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                ResultKt.b(obj);
                try {
                    mainNavigationState.f59095a.f18122b.j();
                    if (mainActivitySideEffect instanceof MainActivitySideEffect.Navigation.NavigateTo) {
                        MainActivitySideEffect.Navigation.NavigateTo navigateTo = (MainActivitySideEffect.Navigation.NavigateTo) mainActivitySideEffect;
                        MainTopLevelDestination mainTopLevelDestination = navigateTo.f59123a;
                        int i2 = WhenMappings.f59027a[mainTopLevelDestination.ordinal()];
                        if (i2 == 1) {
                            mainNavigationState.d(mainTopLevelDestination, navigateTo.f59124b);
                        } else if (i2 == 2 || i2 == 3) {
                            mainNavigationState.d(mainTopLevelDestination, null);
                        }
                    } else {
                        boolean z = mainActivitySideEffect instanceof MainActivitySideEffect.RequestNotificationPermission;
                        MainActivity mainActivity = this.d;
                        if (z) {
                            mainActivity.K.a(x.d);
                        } else {
                            boolean z2 = mainActivitySideEffect instanceof MainActivitySideEffect.ShowAlreadySignedBottomSheet;
                            LVModalBottomSheetState lVModalBottomSheetState = this.f59025e;
                            MutableState mutableState = this.g;
                            if (z2) {
                                LinkEffect.Dialog.AlreadySignedIn alreadySignedIn = ((MainActivitySideEffect.ShowAlreadySignedBottomSheet) mainActivitySideEffect).f59130a;
                                MainActivity.Companion companion = MainActivity.L;
                                this.f59026f.setValue(alreadySignedIn);
                                mutableState.setValue(MainActivityBottomSheetType.AlreadySignedBottomSheet.f59102a);
                                lVModalBottomSheetState.e();
                            } else if (mainActivitySideEffect instanceof MainActivitySideEffect.ShowSightCallBottomSheet) {
                                MainActivityBottomSheetType.SighCallBottomSheet sighCallBottomSheet = new MainActivityBottomSheetType.SighCallBottomSheet(((MainActivitySideEffect.ShowSightCallBottomSheet) mainActivitySideEffect).f59131a);
                                MainActivity.Companion companion2 = MainActivity.L;
                                mutableState.setValue(sighCallBottomSheet);
                                lVModalBottomSheetState.e();
                            } else if (mainActivitySideEffect instanceof MainActivitySideEffect.Navigation.NavigateToDeepLink) {
                                MainActivity.Companion companion3 = MainActivity.L;
                                MainActivityViewModel mainActivityViewModelJ = mainActivity.J();
                                FeedTab.Companion companion4 = FeedTab.INSTANCE;
                                String stringExtra = mainActivity.getIntent().getStringExtra("KEY_FEED_TAB");
                                companion4.getClass();
                                mainActivityViewModelJ.S1(FeedTab.Companion.a(stringExtra));
                                MainActivitySideEffect.Navigation.NavigateToDeepLink navigateToDeepLink = (MainActivitySideEffect.Navigation.NavigateToDeepLink) mainActivitySideEffect;
                                mainNavigationState.d(navigateToDeepLink.f59127a, null);
                                Pair pair = navigateToDeepLink.f59128b;
                                Uri uri = pair != null ? (Uri) pair.f71705b : null;
                                String str = pair != null ? (String) pair.f71706c : null;
                                if (uri != null) {
                                    Uri uri2 = uri.getHost() != null ? uri : null;
                                    if (uri2 != null) {
                                        mainActivity.I().l9(mainActivity, uri2, str, mainActivity.getIntent().getBooleanExtra("TRACK_SHORTCUT", false));
                                    }
                                }
                            } else {
                                if (!(mainActivitySideEffect instanceof MainActivitySideEffect.Navigation.NavigateToAppLink)) {
                                    v40.g();
                                    return null;
                                }
                                MainActivitySideEffect.Navigation.NavigateToAppLink navigateToAppLink = (MainActivitySideEffect.Navigation.NavigateToAppLink) mainActivitySideEffect;
                                mainNavigationState.d(navigateToAppLink.f59125a, null);
                                MainActivity.Companion companion5 = MainActivity.L;
                                mainActivity.I().wc(navigateToAppLink.f59126b);
                            }
                        }
                    }
                    return Unit.f71739a;
                } catch (Exception unused) {
                    return Unit.f71739a;
                }
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(MutableState mutableState, MutableState mutableState2, LVModalBottomSheetState lVModalBottomSheetState, MainActivity mainActivity, MainNavigationState mainNavigationState, Continuation continuation) {
            super(2, continuation);
            this.f59020c = mainActivity;
            this.d = mainNavigationState;
            this.f59021e = lVModalBottomSheetState;
            this.f59022f = mutableState;
            this.g = mutableState2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass1(this.f59022f, this.g, this.f59021e, this.f59020c, this.d, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f59019b;
            if (i2 == 0) {
                ResultKt.b(obj);
                MainActivity.Companion companion = MainActivity.L;
                MainActivity mainActivity = this.f59020c;
                Flow u = mainActivity.J().getU();
                C02901 c02901 = new C02901(this.f59022f, this.g, this.f59021e, mainActivity, this.d, null);
                this.f59019b = 1;
                if (FlowKt.g(u, c02901, this) == coroutineSingletons) {
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

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MainActivity$onCreate$1$1$6$1(MutableState mutableState, MutableState mutableState2, LVModalBottomSheetState lVModalBottomSheetState, MainActivity mainActivity, MainNavigationState mainNavigationState, Continuation continuation) {
        super(2, continuation);
        this.f59016c = mainActivity;
        this.d = mainNavigationState;
        this.f59017e = lVModalBottomSheetState;
        this.f59018f = mutableState;
        this.g = mutableState2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new MainActivity$onCreate$1$1$6$1(this.f59018f, this.g, this.f59017e, this.f59016c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((MainActivity$onCreate$1$1$6$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f59015b;
        if (i2 == 0) {
            ResultKt.b(obj);
            MainActivity mainActivity = this.f59016c;
            Lifecycle d = mainActivity.getD();
            Lifecycle.State state = Lifecycle.State.RESUMED;
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f59018f, this.g, this.f59017e, mainActivity, this.d, null);
            this.f59015b = 1;
            if (RepeatOnLifecycleKt.a(d, state, anonymousClass1, this) == coroutineSingletons) {
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
