package com.vuitton.android.presentation.screen.immersivearticle.components;

import android.content.Context;
import androidx.compose.material3.SnackbarHostState;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.molecules.LVSnackbarVisuals;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.notification.NotificationBuilderKt;
import com.vuitton.android.presentation.notification.NotificationUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleViewModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleTrackingUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleType;
import com.vuitton.android.presentation.screen.permissions.PermissionsViewModel;
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

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.immersivearticle.components.ImmersiveArticleComposableKt$ImmersiveArticleComposable$5$1", f = "ImmersiveArticleComposable.kt", l = {107}, m = "invokeSuspend", v = 2)
final class ImmersiveArticleComposableKt$ImmersiveArticleComposable$5$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f58375b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PermissionsViewModel f58376c;
    public final /* synthetic */ ImmersiveArticleViewModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f58377e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ ImmersiveArticleType f58378f;
    public final /* synthetic */ SnackbarHostState g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ NotificationBuilder f58379h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Context f58380i;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.immersivearticle.components.ImmersiveArticleComposableKt$ImmersiveArticleComposable$5$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", ""}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.immersivearticle.components.ImmersiveArticleComposableKt$ImmersiveArticleComposable$5$1$1", f = "ImmersiveArticleComposable.kt", l = {114}, m = "invokeSuspend", v = 2)
    final class AnonymousClass1 extends SuspendLambda implements Function2<Boolean, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f58381b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ ImmersiveArticleViewModel f58382c;
        public final /* synthetic */ String d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ ImmersiveArticleType f58383e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final /* synthetic */ SnackbarHostState f58384f;
        public final /* synthetic */ NotificationBuilder g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ Context f58385h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(ImmersiveArticleViewModel immersiveArticleViewModel, String str, ImmersiveArticleType immersiveArticleType, SnackbarHostState snackbarHostState, NotificationBuilder notificationBuilder, Context context, Continuation continuation) {
            super(2, continuation);
            this.f58382c = immersiveArticleViewModel;
            this.d = str;
            this.f58383e = immersiveArticleType;
            this.f58384f = snackbarHostState;
            this.g = notificationBuilder;
            this.f58385h = context;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass1(this.f58382c, this.d, this.f58383e, this.f58384f, this.g, this.f58385h, continuation);
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
            int i2 = this.f58381b;
            if (i2 == 0) {
                ResultKt.b(obj);
                this.f58382c.U8(new ImmersiveArticleTrackingUiModel.NotifyMeSuccessEvent(this.d, this.f58383e));
                NotificationUiModel notificationUiModelA = NotificationBuilder.a(this.g, new StringResourceUiModel.ResId(R.string.toast_success_register, null, 2, null), false, null, null, 54);
                NotificationBuilder notificationBuilder = NotificationBuilderKt.f51837a;
                LVSnackbarVisuals lVSnackbarVisualsB = NotificationBuilderKt.b(notificationUiModelA, this.f58385h, LVColorScheme.DEFAULT);
                this.f58381b = 1;
                if (this.f58384f.a(lVSnackbarVisualsB, this) == coroutineSingletons) {
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
    public ImmersiveArticleComposableKt$ImmersiveArticleComposable$5$1(PermissionsViewModel permissionsViewModel, ImmersiveArticleViewModel immersiveArticleViewModel, String str, ImmersiveArticleType immersiveArticleType, SnackbarHostState snackbarHostState, NotificationBuilder notificationBuilder, Context context, Continuation continuation) {
        super(2, continuation);
        this.f58376c = permissionsViewModel;
        this.d = immersiveArticleViewModel;
        this.f58377e = str;
        this.f58378f = immersiveArticleType;
        this.g = snackbarHostState;
        this.f58379h = notificationBuilder;
        this.f58380i = context;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ImmersiveArticleComposableKt$ImmersiveArticleComposable$5$1(this.f58376c, this.d, this.f58377e, this.f58378f, this.g, this.f58379h, this.f58380i, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ImmersiveArticleComposableKt$ImmersiveArticleComposable$5$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f58375b;
        if (i2 == 0) {
            ResultKt.b(obj);
            SharedFlowImpl t = this.f58376c.getT();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.d, this.f58377e, this.f58378f, this.g, this.f58379h, this.f58380i, null);
            this.f58375b = 1;
            if (FlowKt.g(t, anonymousClass1, this) == coroutineSingletons) {
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
