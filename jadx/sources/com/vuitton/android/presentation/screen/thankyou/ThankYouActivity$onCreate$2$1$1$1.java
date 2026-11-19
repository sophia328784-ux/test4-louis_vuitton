package com.vuitton.android.presentation.screen.thankyou;

import androidx.compose.material3.SnackbarHostState;
import androidx.compose.material3.SnackbarResult;
import com.vuitton.android.designkit.ui.theme.molecules.LVSnackbarVisuals;
import com.vuitton.android.presentation.screen.thankyou.models.ThankYouBottomSheet;
import com.vuitton.android.presentation.screen.thankyou.models.ThankYouTrackingUiModel;
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
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.SharedFlowImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.thankyou.ThankYouActivity$onCreate$2$1$1$1", f = "ThankYouActivity.kt", l = {149}, m = "invokeSuspend", v = 2)
final class ThankYouActivity$onCreate$2$1$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f65181b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ThankYouActivity f65182c;
    public final /* synthetic */ SnackbarHostState d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ LVSnackbarVisuals f65183e;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.thankyou.ThankYouActivity$onCreate$2$1$1$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", "", "it"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.thankyou.ThankYouActivity$onCreate$2$1$1$1$1", f = "ThankYouActivity.kt", l = {88}, m = "invokeSuspend", v = 2)
    final class AnonymousClass1 extends SuspendLambda implements Function2<Unit, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f65184b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ SnackbarHostState f65185c;
        public final /* synthetic */ LVSnackbarVisuals d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ ThankYouActivity f65186e;

        /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.thankyou.ThankYouActivity$onCreate$2$1$1$1$1$WhenMappings */
        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final /* synthetic */ class WhenMappings {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final /* synthetic */ int[] f65187a;

            static {
                int[] iArr = new int[SnackbarResult.values().length];
                try {
                    iArr[SnackbarResult.ActionPerformed.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[SnackbarResult.Dismissed.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                f65187a = iArr;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(SnackbarHostState snackbarHostState, LVSnackbarVisuals lVSnackbarVisuals, ThankYouActivity thankYouActivity, Continuation continuation) {
            super(2, continuation);
            this.f65185c = snackbarHostState;
            this.d = lVSnackbarVisuals;
            this.f65186e = thankYouActivity;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass1(this.f65185c, this.d, this.f65186e, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((Unit) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f65184b;
            if (i2 == 0) {
                ResultKt.b(obj);
                this.f65184b = 1;
                obj = this.f65185c.a(this.d, this);
                if (obj == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i2 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
            int i3 = WhenMappings.f65187a[((SnackbarResult) obj).ordinal()];
            ThankYouActivity thankYouActivity = this.f65186e;
            if (i3 == 1) {
                ThankYouActivity.Companion companion = ThankYouActivity.q;
                thankYouActivity.H().Ba(ThankYouTrackingUiModel.FeedbackScreen.f65291a);
                thankYouActivity.H().V3(ThankYouBottomSheet.Feedback.f65281a);
            } else {
                if (i3 != 2) {
                    v40.g();
                    return null;
                }
                ThankYouActivity.Companion companion2 = ThankYouActivity.q;
                thankYouActivity.H().Ba(ThankYouTrackingUiModel.CloseFeedbackNotification.f65289a);
            }
            return Unit.f71739a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ThankYouActivity$onCreate$2$1$1$1(SnackbarHostState snackbarHostState, LVSnackbarVisuals lVSnackbarVisuals, ThankYouActivity thankYouActivity, Continuation continuation) {
        super(2, continuation);
        this.f65182c = thankYouActivity;
        this.d = snackbarHostState;
        this.f65183e = lVSnackbarVisuals;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ThankYouActivity$onCreate$2$1$1$1(this.d, this.f65183e, this.f65182c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ThankYouActivity$onCreate$2$1$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f65181b;
        if (i2 == 0) {
            ResultKt.b(obj);
            ThankYouActivity.Companion companion = ThankYouActivity.q;
            ThankYouActivity thankYouActivity = this.f65182c;
            SharedFlowImpl p = thankYouActivity.H().getP();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.d, this.f65183e, thankYouActivity, null);
            p.getClass();
            this.f65181b = 1;
            if (FlowKt.g(p, anonymousClass1, this) == coroutineSingletons) {
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
