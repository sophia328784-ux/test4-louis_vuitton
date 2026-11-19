package com.vuitton.android.presentation.screen.options.notifications.components;

import com.vuitton.android.presentation.screen.options.notifications.NotificationsPreferencesViewModel;
import com.vuitton.android.presentation.screen.options.notifications.models.NotificationsPreferencesDestination;
import defpackage.md;
import defpackage.v40;
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
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.options.notifications.components.NotificationsPreferencesComposableKt$NotificationsPreferencesComposable$6$1", f = "NotificationsPreferencesComposable.kt", l = {108}, m = "invokeSuspend", v = 2)
final class NotificationsPreferencesComposableKt$NotificationsPreferencesComposable$6$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f59918b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ NotificationsPreferencesViewModel f59919c;
    public final /* synthetic */ Function0 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function0 f59920e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Function0 f59921f;
    public final /* synthetic */ Function0 g;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.options.notifications.components.NotificationsPreferencesComposableKt$NotificationsPreferencesComposable$6$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "notificationsPreferenceDestination", "Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesDestination;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.options.notifications.components.NotificationsPreferencesComposableKt$NotificationsPreferencesComposable$6$1$1", f = "NotificationsPreferencesComposable.kt", l = {}, m = "invokeSuspend", v = 2)
    final class AnonymousClass1 extends SuspendLambda implements Function2<NotificationsPreferencesDestination, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public /* synthetic */ Object f59922b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ Function0 f59923c;
        public final /* synthetic */ Function0 d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ Function0 f59924e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final /* synthetic */ Function0 f59925f;

        /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.options.notifications.components.NotificationsPreferencesComposableKt$NotificationsPreferencesComposable$6$1$1$WhenMappings */
        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final /* synthetic */ class WhenMappings {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final /* synthetic */ int[] f59926a;

            static {
                int[] iArr = new int[NotificationsPreferencesDestination.values().length];
                try {
                    iArr[NotificationsPreferencesDestination.DEVICE_SETTINGS.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[NotificationsPreferencesDestination.PRIVACY_POLICY.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[NotificationsPreferencesDestination.BACKWARD.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[NotificationsPreferencesDestination.LEGAL_SETTINGS.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                f59926a = iArr;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Function0 function0, Function0 function1, Function0 function2, Function0 function3, Continuation continuation) {
            super(2, continuation);
            this.f59923c = function0;
            this.d = function1;
            this.f59924e = function2;
            this.f59925f = function3;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f59923c, this.d, this.f59924e, this.f59925f, continuation);
            anonymousClass1.f59922b = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((NotificationsPreferencesDestination) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            NotificationsPreferencesDestination notificationsPreferencesDestination = (NotificationsPreferencesDestination) this.f59922b;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            ResultKt.b(obj);
            int i2 = WhenMappings.f59926a[notificationsPreferencesDestination.ordinal()];
            if (i2 == 1) {
                this.f59923c.mo47invoke();
            } else if (i2 == 2) {
                this.d.mo47invoke();
            } else if (i2 == 3) {
                this.f59924e.mo47invoke();
            } else {
                if (i2 != 4) {
                    v40.g();
                    return null;
                }
                this.f59925f.mo47invoke();
            }
            return Unit.f71739a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NotificationsPreferencesComposableKt$NotificationsPreferencesComposable$6$1(NotificationsPreferencesViewModel notificationsPreferencesViewModel, Function0 function0, Function0 function1, Function0 function2, Function0 function3, Continuation continuation) {
        super(2, continuation);
        this.f59919c = notificationsPreferencesViewModel;
        this.d = function0;
        this.f59920e = function1;
        this.f59921f = function2;
        this.g = function3;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new NotificationsPreferencesComposableKt$NotificationsPreferencesComposable$6$1(this.f59919c, this.d, this.f59920e, this.f59921f, this.g, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((NotificationsPreferencesComposableKt$NotificationsPreferencesComposable$6$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f59918b;
        if (i2 == 0) {
            ResultKt.b(obj);
            Flow s = this.f59919c.getS();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.d, this.f59920e, this.f59921f, this.g, null);
            this.f59918b = 1;
            if (FlowKt.g(s, anonymousClass1, this) == coroutineSingletons) {
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
