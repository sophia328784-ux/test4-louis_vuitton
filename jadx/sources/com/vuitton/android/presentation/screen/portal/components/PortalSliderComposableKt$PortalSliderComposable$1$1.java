package com.vuitton.android.presentation.screen.portal.components;

import android.content.Context;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.hapticfeedback.HapticFeedbackType;
import androidx.compose.ui.hapticfeedback.PlatformHapticFeedbackType;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.molecules.LVSnackbarVisuals;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.notification.NotificationBuilderKt;
import com.vuitton.android.presentation.notification.NotificationUiModel;
import com.vuitton.android.presentation.screen.permissions.PermissionsViewModelImpl;
import com.vuitton.android.presentation.screen.portal.PortalSliderViewModel;
import com.vuitton.android.presentation.screen.portal.models.PortalTrackingUiModel;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.SharedFlowImpl;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.portal.components.PortalSliderComposableKt$PortalSliderComposable$1$1", f = "PortalSliderComposable.kt", l = {EACTags.CARD_SEQUENCE_NUMBER}, m = "invokeSuspend", v = 2)
final class PortalSliderComposableKt$PortalSliderComposable$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f63276b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PermissionsViewModelImpl f63277c;
    public final /* synthetic */ PortalSliderViewModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ SnackbarHostState f63278e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ NotificationBuilder f63279f;
    public final /* synthetic */ Context g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ HapticFeedback f63280h;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.portal.components.PortalSliderComposableKt$PortalSliderComposable$1$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", ""}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.portal.components.PortalSliderComposableKt$PortalSliderComposable$1$1$1", f = "PortalSliderComposable.kt", l = {EACTags.CURRENCY_EXPONENT}, m = "invokeSuspend", v = 2)
    final class AnonymousClass1 extends SuspendLambda implements Function2<Boolean, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f63281b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ PortalSliderViewModel f63282c;
        public final /* synthetic */ SnackbarHostState d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ NotificationBuilder f63283e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final /* synthetic */ Context f63284f;
        public final /* synthetic */ HapticFeedback g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(PortalSliderViewModel portalSliderViewModel, SnackbarHostState snackbarHostState, NotificationBuilder notificationBuilder, Context context, HapticFeedback hapticFeedback, Continuation continuation) {
            super(2, continuation);
            this.f63282c = portalSliderViewModel;
            this.d = snackbarHostState;
            this.f63283e = notificationBuilder;
            this.f63284f = context;
            this.g = hapticFeedback;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass1(this.f63282c, this.d, this.f63283e, this.f63284f, this.g, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            Boolean bool = (Boolean) obj;
            bool.booleanValue();
            return ((AnonymousClass1) create(bool, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f63281b;
            if (i2 == 0) {
                ResultKt.b(obj);
                this.f63282c.bc(PortalTrackingUiModel.OnNotifyMeSuccessEvent.f63321a);
                NotificationUiModel notificationUiModelA = NotificationBuilder.a(this.f63283e, new StringResourceUiModel.ResId(R.string.toast_success_register, null, 2, null), false, null, null, 62);
                NotificationBuilder notificationBuilder = NotificationBuilderKt.f51837a;
                LVSnackbarVisuals lVSnackbarVisualsB = NotificationBuilderKt.b(notificationUiModelA, this.f63284f, LVColorScheme.DEFAULT);
                this.f63281b = 1;
                if (this.d.a(lVSnackbarVisualsB, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i2 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
            HapticFeedbackType.f9193b.getClass();
            int i3 = PlatformHapticFeedbackType.f9196a;
            this.g.a(0);
            return Unit.f71739a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PortalSliderComposableKt$PortalSliderComposable$1$1(PermissionsViewModelImpl permissionsViewModelImpl, PortalSliderViewModel portalSliderViewModel, SnackbarHostState snackbarHostState, NotificationBuilder notificationBuilder, Context context, HapticFeedback hapticFeedback, Continuation continuation) {
        super(2, continuation);
        this.f63277c = permissionsViewModelImpl;
        this.d = portalSliderViewModel;
        this.f63278e = snackbarHostState;
        this.f63279f = notificationBuilder;
        this.g = context;
        this.f63280h = hapticFeedback;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PortalSliderComposableKt$PortalSliderComposable$1$1(this.f63277c, this.d, this.f63278e, this.f63279f, this.g, this.f63280h, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PortalSliderComposableKt$PortalSliderComposable$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f63276b;
        if (i2 == 0) {
            ResultKt.b(obj);
            SharedFlowImpl sharedFlowImpl = this.f63277c.t;
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.d, this.f63278e, this.f63279f, this.g, this.f63280h, null);
            this.f63276b = 1;
            if (FlowKt.g(sharedFlowImpl, anonymousClass1, this) == coroutineSingletons) {
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
