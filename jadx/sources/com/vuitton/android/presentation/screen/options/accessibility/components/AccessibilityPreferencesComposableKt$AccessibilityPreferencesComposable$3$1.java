package com.vuitton.android.presentation.screen.options.accessibility.components;

import android.content.Context;
import androidx.compose.material3.SnackbarHostState;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.molecules.LVSnackbarVisuals;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.notification.NotificationBuilderKt;
import com.vuitton.android.presentation.notification.NotificationUiModel;
import com.vuitton.android.presentation.screen.options.accessibility.AccessibilityPreferencesViewModel;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.SharedFlowImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.options.accessibility.components.AccessibilityPreferencesComposableKt$AccessibilityPreferencesComposable$3$1", f = "AccessibilityPreferencesComposable.kt", l = {130}, m = "invokeSuspend", v = 2)
final class AccessibilityPreferencesComposableKt$AccessibilityPreferencesComposable$3$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f59711b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AccessibilityPreferencesViewModel f59712c;
    public final /* synthetic */ Function0 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ SnackbarHostState f59713e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ NotificationBuilder f59714f;
    public final /* synthetic */ Context g;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.options.accessibility.components.AccessibilityPreferencesComposableKt$AccessibilityPreferencesComposable$3$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "success", ""}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.options.accessibility.components.AccessibilityPreferencesComposableKt$AccessibilityPreferencesComposable$3$1$1", f = "AccessibilityPreferencesComposable.kt", l = {70}, m = "invokeSuspend", v = 2)
    final class AnonymousClass1 extends SuspendLambda implements Function2<Boolean, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f59715b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public /* synthetic */ boolean f59716c;
        public final /* synthetic */ Function0 d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ SnackbarHostState f59717e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final /* synthetic */ NotificationBuilder f59718f;
        public final /* synthetic */ Context g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Function0 function0, SnackbarHostState snackbarHostState, NotificationBuilder notificationBuilder, Context context, Continuation continuation) {
            super(2, continuation);
            this.d = function0;
            this.f59717e = snackbarHostState;
            this.f59718f = notificationBuilder;
            this.g = context;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.d, this.f59717e, this.f59718f, this.g, continuation);
            anonymousClass1.f59716c = ((Boolean) obj).booleanValue();
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            Boolean bool = (Boolean) obj;
            bool.booleanValue();
            return ((AnonymousClass1) create(bool, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            boolean z = this.f59716c;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f59715b;
            if (i2 == 0) {
                ResultKt.b(obj);
                if (z) {
                    this.d.mo47invoke();
                } else {
                    NotificationUiModel notificationUiModelA = NotificationBuilder.a(this.f59718f, new StringResourceUiModel.ResId(R.string.error_generic, null, 2, null), false, null, null, 60);
                    NotificationBuilder notificationBuilder = NotificationBuilderKt.f51837a;
                    LVSnackbarVisuals lVSnackbarVisualsB = NotificationBuilderKt.b(notificationUiModelA, this.g, LVColorScheme.DEFAULT);
                    this.f59716c = z;
                    this.f59715b = 1;
                    if (this.f59717e.a(lVSnackbarVisualsB, this) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
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
    public AccessibilityPreferencesComposableKt$AccessibilityPreferencesComposable$3$1(AccessibilityPreferencesViewModel accessibilityPreferencesViewModel, Function0 function0, SnackbarHostState snackbarHostState, NotificationBuilder notificationBuilder, Context context, Continuation continuation) {
        super(2, continuation);
        this.f59712c = accessibilityPreferencesViewModel;
        this.d = function0;
        this.f59713e = snackbarHostState;
        this.f59714f = notificationBuilder;
        this.g = context;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AccessibilityPreferencesComposableKt$AccessibilityPreferencesComposable$3$1(this.f59712c, this.d, this.f59713e, this.f59714f, this.g, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AccessibilityPreferencesComposableKt$AccessibilityPreferencesComposable$3$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f59711b;
        if (i2 == 0) {
            ResultKt.b(obj);
            SharedFlowImpl l = this.f59712c.getL();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.d, this.f59713e, this.f59714f, this.g, null);
            l.getClass();
            this.f59711b = 1;
            if (FlowKt.g(l, anonymousClass1, this) == coroutineSingletons) {
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
