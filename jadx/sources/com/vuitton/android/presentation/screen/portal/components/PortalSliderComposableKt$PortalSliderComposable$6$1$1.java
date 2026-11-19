package com.vuitton.android.presentation.screen.portal.components;

import android.content.Context;
import androidx.compose.material3.SnackbarHostState;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.molecules.LVSnackbarVisuals;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.notification.NotificationBuilderKt;
import com.vuitton.android.presentation.notification.NotificationUiModel;
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

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.portal.components.PortalSliderComposableKt$PortalSliderComposable$6$1$1", f = "PortalSliderComposable.kt", l = {85}, m = "invokeSuspend", v = 2)
final class PortalSliderComposableKt$PortalSliderComposable$6$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f63285b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SnackbarHostState f63286c;
    public final /* synthetic */ NotificationBuilder d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Context f63287e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PortalSliderComposableKt$PortalSliderComposable$6$1$1(SnackbarHostState snackbarHostState, NotificationBuilder notificationBuilder, Context context, Continuation continuation) {
        super(2, continuation);
        this.f63286c = snackbarHostState;
        this.d = notificationBuilder;
        this.f63287e = context;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PortalSliderComposableKt$PortalSliderComposable$6$1$1(this.f63286c, this.d, this.f63287e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PortalSliderComposableKt$PortalSliderComposable$6$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f63285b;
        if (i2 == 0) {
            ResultKt.b(obj);
            NotificationUiModel notificationUiModelA = NotificationBuilder.a(this.d, new StringResourceUiModel.ResId(R.string.toast_success_already_register, null, 2, null), false, null, null, 62);
            NotificationBuilder notificationBuilder = NotificationBuilderKt.f51837a;
            LVSnackbarVisuals lVSnackbarVisualsB = NotificationBuilderKt.b(notificationUiModelA, this.f63287e, LVColorScheme.DEFAULT);
            this.f63285b = 1;
            if (this.f63286c.a(lVSnackbarVisualsB, this) == coroutineSingletons) {
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
