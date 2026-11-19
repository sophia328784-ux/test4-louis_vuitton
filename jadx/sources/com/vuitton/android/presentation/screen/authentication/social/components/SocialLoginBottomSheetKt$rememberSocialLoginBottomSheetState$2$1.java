package com.vuitton.android.presentation.screen.authentication.social.components;

import android.content.Context;
import androidx.activity.compose.ManagedActivityResultLauncher;
import com.vuitton.android.presentation.screen.authentication.AuthenticationActivity;
import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthEntryPoint;
import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthOrigin;
import com.vuitton.android.presentation.screen.authentication.social.SocialLoginViewModel;
import com.vuitton.android.presentation.screen.authentication.social.SocialRegisterActivity;
import com.vuitton.android.presentation.screen.authentication.social.models.SocialLoginUiModel;
import com.vuitton.android.presentation.screen.authentication.social.models.SocialRegisterNavEvent;
import com.vuitton.foundation.model.domain.model.authentication.social.SocialAuthMode;
import defpackage.md;
import defpackage.v40;
import kotlin.Metadata;
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
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.social.components.SocialLoginBottomSheetKt$rememberSocialLoginBottomSheetState$2$1", f = "SocialLoginBottomSheet.kt", l = {92}, m = "invokeSuspend", v = 2)
final class SocialLoginBottomSheetKt$rememberSocialLoginBottomSheetState$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f54129b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SocialLoginViewModel f54130c;
    public final /* synthetic */ ManagedActivityResultLauncher d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Context f54131e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ TrackingAuthOrigin f54132f;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.authentication.social.components.SocialLoginBottomSheetKt$rememberSocialLoginBottomSheetState$2$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", MvelScriptManager.VAR_EVENT, "Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterNavEvent;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.social.components.SocialLoginBottomSheetKt$rememberSocialLoginBottomSheetState$2$1$1", f = "SocialLoginBottomSheet.kt", l = {}, m = "invokeSuspend", v = 2)
    final class AnonymousClass1 extends SuspendLambda implements Function2<SocialRegisterNavEvent, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public /* synthetic */ Object f54133b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ ManagedActivityResultLauncher f54134c;
        public final /* synthetic */ Context d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ TrackingAuthOrigin f54135e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(ManagedActivityResultLauncher managedActivityResultLauncher, Context context, TrackingAuthOrigin trackingAuthOrigin, Continuation continuation) {
            super(2, continuation);
            this.f54134c = managedActivityResultLauncher;
            this.d = context;
            this.f54135e = trackingAuthOrigin;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f54134c, this.d, this.f54135e, continuation);
            anonymousClass1.f54133b = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((SocialRegisterNavEvent) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            SocialRegisterNavEvent socialRegisterNavEvent = (SocialRegisterNavEvent) this.f54133b;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            ResultKt.b(obj);
            boolean z = socialRegisterNavEvent instanceof SocialRegisterNavEvent.ToSocialRegister;
            TrackingAuthOrigin trackingAuthOrigin = this.f54135e;
            ManagedActivityResultLauncher managedActivityResultLauncher = this.f54134c;
            if (z) {
                SocialRegisterActivity.Companion companion = SocialRegisterActivity.s;
                SocialLoginUiModel socialLoginUiModel = ((SocialRegisterNavEvent.ToSocialRegister) socialRegisterNavEvent).f54201a;
                String str = socialLoginUiModel.f54183a;
                String str2 = socialLoginUiModel.f54184b;
                String str3 = socialLoginUiModel.f54185c;
                String str4 = socialLoginUiModel.g;
                String str5 = socialLoginUiModel.f54186e;
                TrackingAuthOrigin trackingAuthOrigin2 = socialLoginUiModel.f54190j;
                TrackingAuthOrigin trackingAuthOrigin3 = trackingAuthOrigin2 == null ? trackingAuthOrigin : trackingAuthOrigin2;
                TrackingAuthEntryPoint trackingAuthEntryPoint = socialLoginUiModel.f54191k;
                SocialAuthMode socialAuthMode = socialLoginUiModel.l;
                companion.getClass();
                managedActivityResultLauncher.a(SocialRegisterActivity.Companion.a(this.d, str, str2, str3, str4, str5, trackingAuthOrigin3, trackingAuthEntryPoint, socialAuthMode, null));
            } else {
                if (!(socialRegisterNavEvent instanceof SocialRegisterNavEvent.ToKisaForSocialRegister)) {
                    v40.g();
                    return null;
                }
                AuthenticationActivity.Companion companion2 = AuthenticationActivity.u;
                AuthenticationActivity.Routes routes = AuthenticationActivity.Routes.KISA_FOR_SOCIAL_SIGN_IN;
                SocialLoginUiModel socialLoginUiModel2 = ((SocialRegisterNavEvent.ToKisaForSocialRegister) socialRegisterNavEvent).f54200a;
                TrackingAuthOrigin trackingAuthOrigin4 = socialLoginUiModel2.f54190j;
                if (trackingAuthOrigin4 != null) {
                    trackingAuthOrigin = trackingAuthOrigin4;
                }
                managedActivityResultLauncher.a(AuthenticationActivity.Companion.b(companion2, this.d, routes, socialLoginUiModel2, trackingAuthOrigin));
            }
            return Unit.f71739a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SocialLoginBottomSheetKt$rememberSocialLoginBottomSheetState$2$1(SocialLoginViewModel socialLoginViewModel, ManagedActivityResultLauncher managedActivityResultLauncher, Context context, TrackingAuthOrigin trackingAuthOrigin, Continuation continuation) {
        super(2, continuation);
        this.f54130c = socialLoginViewModel;
        this.d = managedActivityResultLauncher;
        this.f54131e = context;
        this.f54132f = trackingAuthOrigin;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new SocialLoginBottomSheetKt$rememberSocialLoginBottomSheetState$2$1(this.f54130c, this.d, this.f54131e, this.f54132f, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((SocialLoginBottomSheetKt$rememberSocialLoginBottomSheetState$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f54129b;
        if (i2 == 0) {
            ResultKt.b(obj);
            Flow y = this.f54130c.getY();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.d, this.f54131e, this.f54132f, null);
            this.f54129b = 1;
            if (FlowKt.g(y, anonymousClass1, this) == coroutineSingletons) {
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
