package com.vuitton.android.presentation.screen.mylv;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import com.vuitton.android.core.events.AppEvent;
import com.vuitton.android.core.events.LVEventSender;
import com.vuitton.android.domain.service.authentication.UserSessionService;
import com.vuitton.android.domain.usecase.account.GetProfileUseCase;
import com.vuitton.android.domain.usecase.avatar.GetUserAvatarUseCase;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.android.presentation.push.NotificationsManager;
import com.vuitton.android.presentation.screen.account.editavatar.models.AvatarItemUiModel;
import com.vuitton.foundation.model.domain.model.sync.Feature;
import defpackage.md;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.SharedFlow;
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B9\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl;", "Landroidx/lifecycle/ViewModel;", "Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModel;", "Lcom/vuitton/android/core/events/LVEventSender;", "eventSender", "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;", "isFeatureAvailableUseCase", "Lcom/vuitton/android/domain/service/authentication/UserSessionService;", "userSessionService", "Lcom/vuitton/android/domain/usecase/avatar/GetUserAvatarUseCase;", "getUserAvatarUseCase", "Lcom/vuitton/android/presentation/push/NotificationsManager;", "notificationsManager", "Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;", "getProfileUseCase", "<init>", "(Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/domain/usecase/avatar/GetUserAvatarUseCase;Lcom/vuitton/android/presentation/push/NotificationsManager;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class TopBarAvatarViewModelImpl extends ViewModel implements TopBarAvatarViewModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final IsFeatureAvailableUseCase f59360a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final UserSessionService f59361b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final GetUserAvatarUseCase f59362c;
    public final NotificationsManager d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final GetProfileUseCase f59363e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final MutableStateFlow f59364f;
    public final MutableStateFlow g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final MutableStateFlow f59365h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final StateFlow f59366i;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.mylv.TopBarAvatarViewModelImpl$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.mylv.TopBarAvatarViewModelImpl$1", f = "TopBarAvatarViewModelImpl.kt", l = {103}, m = "invokeSuspend", v = 2)
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f59367b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ LVEventSender f59368c;
        public final /* synthetic */ TopBarAvatarViewModelImpl d;

        /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.mylv.TopBarAvatarViewModelImpl$1$1, reason: invalid class name and collision with other inner class name */
        @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", MvelScriptManager.VAR_EVENT, "Lcom/vuitton/android/core/events/AppEvent;"}, k = 3, mv = {2, 3, 0}, xi = 48)
        @DebugMetadata(c = "com.vuitton.android.presentation.screen.mylv.TopBarAvatarViewModelImpl$1$1", f = "TopBarAvatarViewModelImpl.kt", l = {}, m = "invokeSuspend", v = 2)
        final class C02931 extends SuspendLambda implements Function2<AppEvent, Continuation<? super Unit>, Object> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public /* synthetic */ Object f59369b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ TopBarAvatarViewModelImpl f59370c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C02931(TopBarAvatarViewModelImpl topBarAvatarViewModelImpl, Continuation continuation) {
                super(2, continuation);
                this.f59370c = topBarAvatarViewModelImpl;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                C02931 c02931 = new C02931(this.f59370c, continuation);
                c02931.f59369b = obj;
                return c02931;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ((C02931) create((AppEvent) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Object value;
                AppEvent appEvent = (AppEvent) this.f59369b;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                ResultKt.b(obj);
                boolean z = appEvent instanceof AppEvent.RefreshUserAvatar;
                TopBarAvatarViewModelImpl topBarAvatarViewModelImpl = this.f59370c;
                if (z) {
                    BuildersKt.c(ViewModelKt.a(topBarAvatarViewModelImpl), null, null, new TopBarAvatarViewModelImpl$retrieveUserAvatar$1(topBarAvatarViewModelImpl, null), 3);
                } else if (appEvent instanceof AppEvent.RefreshUnreadNotifications) {
                    topBarAvatarViewModelImpl.yc();
                } else if (appEvent instanceof AppEvent.LogOutEvent) {
                    MutableStateFlow mutableStateFlow = topBarAvatarViewModelImpl.f59365h;
                    do {
                        value = mutableStateFlow.getValue();
                        ((Boolean) value).getClass();
                    } while (!mutableStateFlow.i(value, Boolean.FALSE));
                }
                return Unit.f71739a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(LVEventSender lVEventSender, TopBarAvatarViewModelImpl topBarAvatarViewModelImpl, Continuation continuation) {
            super(2, continuation);
            this.f59368c = lVEventSender;
            this.d = topBarAvatarViewModelImpl;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass1(this.f59368c, this.d, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f59367b;
            if (i2 == 0) {
                ResultKt.b(obj);
                SharedFlow sharedFlow = this.f59368c.f43512c;
                C02931 c02931 = new C02931(this.d, null);
                sharedFlow.getClass();
                this.f59367b = 1;
                if (FlowKt.g(sharedFlow, c02931, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i2 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
            md.k("SharedFlow never completes, this call should never return.");
            return null;
        }
    }

    @Inject
    public TopBarAvatarViewModelImpl(LVEventSender lVEventSender, IsFeatureAvailableUseCase isFeatureAvailableUseCase, UserSessionService userSessionService, GetUserAvatarUseCase getUserAvatarUseCase, NotificationsManager notificationsManager, GetProfileUseCase getProfileUseCase) {
        lVEventSender.getClass();
        isFeatureAvailableUseCase.getClass();
        userSessionService.getClass();
        getUserAvatarUseCase.getClass();
        notificationsManager.getClass();
        getProfileUseCase.getClass();
        this.f59360a = isFeatureAvailableUseCase;
        this.f59361b = userSessionService;
        this.f59362c = getUserAvatarUseCase;
        this.d = notificationsManager;
        this.f59363e = getProfileUseCase;
        AvatarItemUiModel.f52325f.getClass();
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(AvatarItemUiModel.g);
        this.f59364f = mutableStateFlowA;
        MutableStateFlow mutableStateFlowA2 = StateFlowKt.a(null);
        this.g = mutableStateFlowA2;
        MutableStateFlow mutableStateFlowA3 = StateFlowKt.a(Boolean.FALSE);
        this.f59365h = mutableStateFlowA3;
        BuildersKt.c(ViewModelKt.a(this), null, null, new TopBarAvatarViewModelImpl$retrieveUserAvatar$1(this, null), 3);
        yc();
        BuildersKt.c(ViewModelKt.a(this), null, null, new AnonymousClass1(lVEventSender, this, null), 3);
        FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1 flowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1H = FlowKt.h(mutableStateFlowA, mutableStateFlowA2, mutableStateFlowA3, new TopBarAvatarViewModelImpl$viewState$1(4, null));
        CloseableCoroutineScope closeableCoroutineScopeA = ViewModelKt.a(this);
        SharingStarted.f74985a.getClass();
        this.f59366i = FlowKt.A(flowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1H, closeableCoroutineScopeA, SharingStarted.Companion.f74988c, new MyLvLauncherViewState(null, null, false, 7, null));
    }

    @Override // com.vuitton.android.presentation.screen.mylv.TopBarAvatarViewModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final StateFlow getF59366i() {
        return this.f59366i;
    }

    public final void yc() {
        if (this.f59360a.b(new Feature[]{Feature.INBOX})) {
            BuildersKt.c(ViewModelKt.a(this), null, null, new TopBarAvatarViewModelImpl$fetchNotifications$1(this, null), 3);
        }
    }
}
