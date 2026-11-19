package com.vuitton.android.presentation.screen.repairs.detail.components;

import android.content.Context;
import androidx.compose.material3.SnackbarHostState;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.molecules.LVSnackbarVisuals;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.notification.NotificationBuilderKt;
import com.vuitton.android.presentation.notification.NotificationUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.bff.DistantRepairAssessmentBffViewModel;
import com.vuitton.android.presentation.screen.repairs.RepairBffViewModel;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.repairs.detail.components.RepairDetailBffComposableKt$RepairDetailBffComposable$3$1", f = "RepairDetailBffComposable.kt", l = {}, m = "invokeSuspend", v = 2)
final class RepairDetailBffComposableKt$RepairDetailBffComposable$3$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f63797b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ DistantRepairAssessmentBffViewModel f63798c;
    public final /* synthetic */ SnackbarHostState d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Context f63799e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ RepairBffViewModel f63800f;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.repairs.detail.components.RepairDetailBffComposableKt$RepairDetailBffComposable$3$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.repairs.detail.components.RepairDetailBffComposableKt$RepairDetailBffComposable$3$1$1", f = "RepairDetailBffComposable.kt", l = {84}, m = "invokeSuspend", v = 2)
    final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f63801b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ DistantRepairAssessmentBffViewModel f63802c;
        public final /* synthetic */ SnackbarHostState d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ Context f63803e;

        /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.repairs.detail.components.RepairDetailBffComposableKt$RepairDetailBffComposable$3$1$1$1, reason: invalid class name and collision with other inner class name */
        @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "notification", "Lcom/vuitton/android/presentation/notification/NotificationUiModel;"}, k = 3, mv = {2, 3, 0}, xi = 48)
        @DebugMetadata(c = "com.vuitton.android.presentation.screen.repairs.detail.components.RepairDetailBffComposableKt$RepairDetailBffComposable$3$1$1$1", f = "RepairDetailBffComposable.kt", l = {85}, m = "invokeSuspend", v = 2)
        final class C03111 extends SuspendLambda implements Function2<NotificationUiModel, Continuation<? super Unit>, Object> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f63804b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public /* synthetic */ Object f63805c;
            public final /* synthetic */ SnackbarHostState d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public final /* synthetic */ Context f63806e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C03111(SnackbarHostState snackbarHostState, Context context, Continuation continuation) {
                super(2, continuation);
                this.d = snackbarHostState;
                this.f63806e = context;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                C03111 c03111 = new C03111(this.d, this.f63806e, continuation);
                c03111.f63805c = obj;
                return c03111;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ((C03111) create((NotificationUiModel) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                NotificationUiModel notificationUiModel = (NotificationUiModel) this.f63805c;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i2 = this.f63804b;
                if (i2 == 0) {
                    ResultKt.b(obj);
                    NotificationBuilder notificationBuilder = NotificationBuilderKt.f51837a;
                    LVSnackbarVisuals lVSnackbarVisualsB = NotificationBuilderKt.b(notificationUiModel, this.f63806e, LVColorScheme.DEFAULT);
                    this.f63805c = null;
                    this.f63804b = 1;
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
        public AnonymousClass1(DistantRepairAssessmentBffViewModel distantRepairAssessmentBffViewModel, SnackbarHostState snackbarHostState, Context context, Continuation continuation) {
            super(2, continuation);
            this.f63802c = distantRepairAssessmentBffViewModel;
            this.d = snackbarHostState;
            this.f63803e = context;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass1(this.f63802c, this.d, this.f63803e, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f63801b;
            if (i2 == 0) {
                ResultKt.b(obj);
                Flow flowB = this.f63802c.b();
                C03111 c03111 = new C03111(this.d, this.f63803e, null);
                this.f63801b = 1;
                if (FlowKt.g(flowB, c03111, this) == coroutineSingletons) {
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

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.repairs.detail.components.RepairDetailBffComposableKt$RepairDetailBffComposable$3$1$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.repairs.detail.components.RepairDetailBffComposableKt$RepairDetailBffComposable$3$1$2", f = "RepairDetailBffComposable.kt", l = {89}, m = "invokeSuspend", v = 2)
    final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f63807b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ RepairBffViewModel f63808c;
        public final /* synthetic */ SnackbarHostState d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ Context f63809e;

        /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.repairs.detail.components.RepairDetailBffComposableKt$RepairDetailBffComposable$3$1$2$1, reason: invalid class name */
        @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "notification", "Lcom/vuitton/android/presentation/notification/NotificationUiModel;"}, k = 3, mv = {2, 3, 0}, xi = 48)
        @DebugMetadata(c = "com.vuitton.android.presentation.screen.repairs.detail.components.RepairDetailBffComposableKt$RepairDetailBffComposable$3$1$2$1", f = "RepairDetailBffComposable.kt", l = {Sink.ORIENTATION_90}, m = "invokeSuspend", v = 2)
        final class AnonymousClass1 extends SuspendLambda implements Function2<NotificationUiModel, Continuation<? super Unit>, Object> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f63810b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public /* synthetic */ Object f63811c;
            public final /* synthetic */ SnackbarHostState d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public final /* synthetic */ Context f63812e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass1(SnackbarHostState snackbarHostState, Context context, Continuation continuation) {
                super(2, continuation);
                this.d = snackbarHostState;
                this.f63812e = context;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.d, this.f63812e, continuation);
                anonymousClass1.f63811c = obj;
                return anonymousClass1;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ((AnonymousClass1) create((NotificationUiModel) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                NotificationUiModel notificationUiModel = (NotificationUiModel) this.f63811c;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i2 = this.f63810b;
                if (i2 == 0) {
                    ResultKt.b(obj);
                    NotificationBuilder notificationBuilder = NotificationBuilderKt.f51837a;
                    LVSnackbarVisuals lVSnackbarVisualsB = NotificationBuilderKt.b(notificationUiModel, this.f63812e, LVColorScheme.DEFAULT);
                    this.f63811c = null;
                    this.f63810b = 1;
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
        public AnonymousClass2(RepairBffViewModel repairBffViewModel, SnackbarHostState snackbarHostState, Context context, Continuation continuation) {
            super(2, continuation);
            this.f63808c = repairBffViewModel;
            this.d = snackbarHostState;
            this.f63809e = context;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass2(this.f63808c, this.d, this.f63809e, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f63807b;
            if (i2 == 0) {
                ResultKt.b(obj);
                Flow flowB = this.f63808c.b();
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.d, this.f63809e, null);
                this.f63807b = 1;
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
    public RepairDetailBffComposableKt$RepairDetailBffComposable$3$1(DistantRepairAssessmentBffViewModel distantRepairAssessmentBffViewModel, SnackbarHostState snackbarHostState, Context context, RepairBffViewModel repairBffViewModel, Continuation continuation) {
        super(2, continuation);
        this.f63798c = distantRepairAssessmentBffViewModel;
        this.d = snackbarHostState;
        this.f63799e = context;
        this.f63800f = repairBffViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        RepairDetailBffComposableKt$RepairDetailBffComposable$3$1 repairDetailBffComposableKt$RepairDetailBffComposable$3$1 = new RepairDetailBffComposableKt$RepairDetailBffComposable$3$1(this.f63798c, this.d, this.f63799e, this.f63800f, continuation);
        repairDetailBffComposableKt$RepairDetailBffComposable$3$1.f63797b = obj;
        return repairDetailBffComposableKt$RepairDetailBffComposable$3$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((RepairDetailBffComposableKt$RepairDetailBffComposable$3$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineScope coroutineScope = (CoroutineScope) this.f63797b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        DistantRepairAssessmentBffViewModel distantRepairAssessmentBffViewModel = this.f63798c;
        SnackbarHostState snackbarHostState = this.d;
        Context context = this.f63799e;
        BuildersKt.c(coroutineScope, null, null, new AnonymousClass1(distantRepairAssessmentBffViewModel, snackbarHostState, context, null), 3);
        BuildersKt.c(coroutineScope, null, null, new AnonymousClass2(this.f63800f, snackbarHostState, context, null), 3);
        return Unit.f71739a;
    }
}
