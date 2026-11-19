package com.vuitton.android.presentation.screen.osa.form.storeselection.components;

import android.content.Context;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.State;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.molecules.LVSnackbarVisuals;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.notification.NotificationBuilderKt;
import com.vuitton.android.presentation.notification.NotificationUiModel;
import com.vuitton.android.presentation.screen.osa.form.storeselection.OsaLocationFormViewModel;
import com.vuitton.android.presentation.screen.osa.form.storeselection.models.OsaLocationFormViewState;
import com.vuitton.android.presentation.screen.osa.reasons.OsaReasonsFormViewModel;
import com.vuitton.android.presentation.screen.osa.reasons.models.OsaReasonUiModel;
import com.vuitton.android.presentation.screen.osa.reasons.models.OsaReasonsFormViewState;
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
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import net.rtccloud.sdk.Sink;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.osa.form.storeselection.components.OsaLocationFormComposableKt$OsaLocationFormComposable$3$1", f = "OsaLocationFormComposable.kt", l = {89}, m = "invokeSuspend", v = 2)
final class OsaLocationFormComposableKt$OsaLocationFormComposable$3$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f60811b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ OsaLocationFormViewModel f60812c;
    public final /* synthetic */ OsaReasonsFormViewModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ SnackbarHostState f60813e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Context f60814f;
    public final /* synthetic */ State g;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.osa.form.storeselection.components.OsaLocationFormComposableKt$OsaLocationFormComposable$3$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "notification", "Lcom/vuitton/android/presentation/notification/NotificationUiModel;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.osa.form.storeselection.components.OsaLocationFormComposableKt$OsaLocationFormComposable$3$1$1", f = "OsaLocationFormComposable.kt", l = {Sink.ORIENTATION_90}, m = "invokeSuspend", v = 2)
    final class AnonymousClass1 extends SuspendLambda implements Function2<NotificationUiModel, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f60815b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public /* synthetic */ Object f60816c;
        public final /* synthetic */ SnackbarHostState d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ Context f60817e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(SnackbarHostState snackbarHostState, Context context, Continuation continuation) {
            super(2, continuation);
            this.d = snackbarHostState;
            this.f60817e = context;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.d, this.f60817e, continuation);
            anonymousClass1.f60816c = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((NotificationUiModel) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            NotificationUiModel notificationUiModel = (NotificationUiModel) this.f60816c;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f60815b;
            if (i2 == 0) {
                ResultKt.b(obj);
                NotificationBuilder notificationBuilder = NotificationBuilderKt.f51837a;
                LVSnackbarVisuals lVSnackbarVisualsB = NotificationBuilderKt.b(notificationUiModel, this.f60817e, LVColorScheme.DEFAULT);
                this.f60816c = null;
                this.f60815b = 1;
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
            return Unit.f71739a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OsaLocationFormComposableKt$OsaLocationFormComposable$3$1(OsaLocationFormViewModel osaLocationFormViewModel, OsaReasonsFormViewModel osaReasonsFormViewModel, SnackbarHostState snackbarHostState, Context context, State state, Continuation continuation) {
        super(2, continuation);
        this.f60812c = osaLocationFormViewModel;
        this.d = osaReasonsFormViewModel;
        this.f60813e = snackbarHostState;
        this.f60814f = context;
        this.g = state;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new OsaLocationFormComposableKt$OsaLocationFormComposable$3$1(this.f60812c, this.d, this.f60813e, this.f60814f, this.g, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((OsaLocationFormComposableKt$OsaLocationFormComposable$3$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f60811b;
        if (i2 == 0) {
            ResultKt.b(obj);
            Flow flowB = this.f60812c.b();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f60813e, this.f60814f, null);
            this.f60811b = 1;
            if (FlowKt.g(flowB, anonymousClass1, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        OsaReasonsFormViewModel osaReasonsFormViewModel = this.d;
        OsaReasonUiModel osaReasonUiModel = ((OsaReasonsFormViewState) osaReasonsFormViewModel.getL().getValue()).d;
        State state = this.g;
        if ((osaReasonUiModel == null && ((OsaLocationFormViewState) state.getF10755b()).q && ((OsaLocationFormViewState) state.getF10755b()).v == null) || ((OsaLocationFormViewState) state.getF10755b()).w) {
            osaReasonsFormViewModel.e4();
        }
        return Unit.f71739a;
    }
}
