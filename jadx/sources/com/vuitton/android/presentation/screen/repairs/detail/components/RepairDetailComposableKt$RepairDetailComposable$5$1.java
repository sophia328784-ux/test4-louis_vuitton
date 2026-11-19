package com.vuitton.android.presentation.screen.repairs.detail.components;

import android.content.Context;
import androidx.compose.material3.SnackbarHostState;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.molecules.LVSnackbarVisuals;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.notification.NotificationBuilderKt;
import com.vuitton.android.presentation.notification.NotificationUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentViewModel;
import com.vuitton.android.presentation.screen.repairs.RepairViewModel;
import defpackage.md;
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
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import net.rtccloud.sdk.Sink;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.repairs.detail.components.RepairDetailComposableKt$RepairDetailComposable$5$1", f = "RepairDetailComposable.kt", l = {}, m = "invokeSuspend", v = 2)
final class RepairDetailComposableKt$RepairDetailComposable$5$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f63829b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ DistantRepairAssessmentViewModel f63830c;
    public final /* synthetic */ SnackbarHostState d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Context f63831e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ RepairViewModel f63832f;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.repairs.detail.components.RepairDetailComposableKt$RepairDetailComposable$5$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.repairs.detail.components.RepairDetailComposableKt$RepairDetailComposable$5$1$1", f = "RepairDetailComposable.kt", l = {Sink.ORIENTATION_90}, m = "invokeSuspend", v = 2)
    final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f63833b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ DistantRepairAssessmentViewModel f63834c;
        public final /* synthetic */ SnackbarHostState d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ Context f63835e;

        /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.repairs.detail.components.RepairDetailComposableKt$RepairDetailComposable$5$1$1$1, reason: invalid class name and collision with other inner class name */
        @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "notification", "Lcom/vuitton/android/presentation/notification/NotificationUiModel;"}, k = 3, mv = {2, 3, 0}, xi = 48)
        @DebugMetadata(c = "com.vuitton.android.presentation.screen.repairs.detail.components.RepairDetailComposableKt$RepairDetailComposable$5$1$1$1", f = "RepairDetailComposable.kt", l = {91}, m = "invokeSuspend", v = 2)
        final class C03121 extends SuspendLambda implements Function2<NotificationUiModel, Continuation<? super Unit>, Object> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f63836b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public /* synthetic */ Object f63837c;
            public final /* synthetic */ SnackbarHostState d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public final /* synthetic */ Context f63838e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C03121(SnackbarHostState snackbarHostState, Context context, Continuation continuation) {
                super(2, continuation);
                this.d = snackbarHostState;
                this.f63838e = context;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                C03121 c03121 = new C03121(this.d, this.f63838e, continuation);
                c03121.f63837c = obj;
                return c03121;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ((C03121) create((NotificationUiModel) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                NotificationUiModel notificationUiModel = (NotificationUiModel) this.f63837c;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i2 = this.f63836b;
                if (i2 == 0) {
                    ResultKt.b(obj);
                    NotificationBuilder notificationBuilder = NotificationBuilderKt.f51837a;
                    LVSnackbarVisuals lVSnackbarVisualsB = NotificationBuilderKt.b(notificationUiModel, this.f63838e, LVColorScheme.DEFAULT);
                    this.f63837c = null;
                    this.f63836b = 1;
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
        public AnonymousClass1(DistantRepairAssessmentViewModel distantRepairAssessmentViewModel, SnackbarHostState snackbarHostState, Context context, Continuation continuation) {
            super(2, continuation);
            this.f63834c = distantRepairAssessmentViewModel;
            this.d = snackbarHostState;
            this.f63835e = context;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass1(this.f63834c, this.d, this.f63835e, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f63833b;
            if (i2 == 0) {
                ResultKt.b(obj);
                Flow flowB = this.f63834c.b();
                C03121 c03121 = new C03121(this.d, this.f63835e, null);
                this.f63833b = 1;
                if (FlowKt.g(flowB, c03121, this) == coroutineSingletons) {
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

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.repairs.detail.components.RepairDetailComposableKt$RepairDetailComposable$5$1$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.repairs.detail.components.RepairDetailComposableKt$RepairDetailComposable$5$1$2", f = "RepairDetailComposable.kt", l = {95}, m = "invokeSuspend", v = 2)
    final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f63839b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ RepairViewModel f63840c;
        public final /* synthetic */ SnackbarHostState d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ Context f63841e;

        /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.repairs.detail.components.RepairDetailComposableKt$RepairDetailComposable$5$1$2$1, reason: invalid class name */
        @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "notification", "Lcom/vuitton/android/presentation/notification/NotificationUiModel;"}, k = 3, mv = {2, 3, 0}, xi = 48)
        @DebugMetadata(c = "com.vuitton.android.presentation.screen.repairs.detail.components.RepairDetailComposableKt$RepairDetailComposable$5$1$2$1", f = "RepairDetailComposable.kt", l = {96}, m = "invokeSuspend", v = 2)
        final class AnonymousClass1 extends SuspendLambda implements Function2<NotificationUiModel, Continuation<? super Unit>, Object> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f63842b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public /* synthetic */ Object f63843c;
            public final /* synthetic */ SnackbarHostState d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public final /* synthetic */ Context f63844e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass1(SnackbarHostState snackbarHostState, Context context, Continuation continuation) {
                super(2, continuation);
                this.d = snackbarHostState;
                this.f63844e = context;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.d, this.f63844e, continuation);
                anonymousClass1.f63843c = obj;
                return anonymousClass1;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ((AnonymousClass1) create((NotificationUiModel) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                NotificationUiModel notificationUiModel = (NotificationUiModel) this.f63843c;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i2 = this.f63842b;
                if (i2 == 0) {
                    ResultKt.b(obj);
                    NotificationBuilder notificationBuilder = NotificationBuilderKt.f51837a;
                    LVSnackbarVisuals lVSnackbarVisualsB = NotificationBuilderKt.b(notificationUiModel, this.f63844e, LVColorScheme.DEFAULT);
                    this.f63843c = null;
                    this.f63842b = 1;
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
        public AnonymousClass2(RepairViewModel repairViewModel, SnackbarHostState snackbarHostState, Context context, Continuation continuation) {
            super(2, continuation);
            this.f63840c = repairViewModel;
            this.d = snackbarHostState;
            this.f63841e = context;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass2(this.f63840c, this.d, this.f63841e, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f63839b;
            if (i2 == 0) {
                ResultKt.b(obj);
                Flow flowB = this.f63840c.b();
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.d, this.f63841e, null);
                this.f63839b = 1;
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
            return Unit.f71739a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RepairDetailComposableKt$RepairDetailComposable$5$1(DistantRepairAssessmentViewModel distantRepairAssessmentViewModel, SnackbarHostState snackbarHostState, Context context, RepairViewModel repairViewModel, Continuation continuation) {
        super(2, continuation);
        this.f63830c = distantRepairAssessmentViewModel;
        this.d = snackbarHostState;
        this.f63831e = context;
        this.f63832f = repairViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        RepairDetailComposableKt$RepairDetailComposable$5$1 repairDetailComposableKt$RepairDetailComposable$5$1 = new RepairDetailComposableKt$RepairDetailComposable$5$1(this.f63830c, this.d, this.f63831e, this.f63832f, continuation);
        repairDetailComposableKt$RepairDetailComposable$5$1.f63829b = obj;
        return repairDetailComposableKt$RepairDetailComposable$5$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((RepairDetailComposableKt$RepairDetailComposable$5$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineScope coroutineScope = (CoroutineScope) this.f63829b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        DistantRepairAssessmentViewModel distantRepairAssessmentViewModel = this.f63830c;
        SnackbarHostState snackbarHostState = this.d;
        Context context = this.f63831e;
        BuildersKt.c(coroutineScope, null, null, new AnonymousClass1(distantRepairAssessmentViewModel, snackbarHostState, context, null), 3);
        BuildersKt.c(coroutineScope, null, null, new AnonymousClass2(this.f63832f, snackbarHostState, context, null), 3);
        return Unit.f71739a;
    }
}
