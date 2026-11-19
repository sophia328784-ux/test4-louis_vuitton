package com.vuitton.android.presentation.screen.storemode.components.plp;

import android.content.Context;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.material3.SnackbarResult;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.molecules.LVSnackbarVisuals;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModelKt;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.notification.NotificationBuilderKt;
import com.vuitton.android.presentation.notification.NotificationUiModel;
import com.vuitton.android.presentation.screen.plp.models.PLPWishlistFeedbackUiModel;
import com.vuitton.android.presentation.screen.plp.viewmodels.AddedToWishlistAction;
import com.vuitton.android.presentation.utils.AccessibilityUtils;
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
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.storemode.components.plp.PLPStoreModeSnackBarKt$PLPStoreModeSnackBar$2$1", f = "PLPStoreModeSnackBar.kt", l = {EACTags.CARDHOLDER_HANDWRITTEN_SIGNATURE}, m = "invokeSuspend", v = 2)
final class PLPStoreModeSnackBarKt$PLPStoreModeSnackBar$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f64909b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Flow f64910c;
    public final /* synthetic */ Context d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ SnackbarHostState f64911e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Function0 f64912f;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.storemode.components.plp.PLPStoreModeSnackBarKt$PLPStoreModeSnackBar$2$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "feedback", "Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistFeedbackUiModel;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.storemode.components.plp.PLPStoreModeSnackBarKt$PLPStoreModeSnackBar$2$1$1", f = "PLPStoreModeSnackBar.kt", l = {EACTags.MESSAGE_REFERENCE}, m = "invokeSuspend", v = 2)
    final class AnonymousClass1 extends SuspendLambda implements Function2<PLPWishlistFeedbackUiModel, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f64913b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public /* synthetic */ Object f64914c;
        public final /* synthetic */ Context d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ SnackbarHostState f64915e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final /* synthetic */ Function0 f64916f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Context context, SnackbarHostState snackbarHostState, Continuation continuation, Function0 function0) {
            super(2, continuation);
            this.d = context;
            this.f64915e = snackbarHostState;
            this.f64916f = function0;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.d, this.f64915e, continuation, this.f64916f);
            anonymousClass1.f64914c = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((PLPWishlistFeedbackUiModel) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            PLPWishlistFeedbackUiModel pLPWishlistFeedbackUiModel = (PLPWishlistFeedbackUiModel) this.f64914c;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f64913b;
            if (i2 == 0) {
                ResultKt.b(obj);
                if (pLPWishlistFeedbackUiModel instanceof PLPWishlistFeedbackUiModel.Message) {
                    NotificationUiModel notificationUiModel = ((PLPWishlistFeedbackUiModel.Message) pLPWishlistFeedbackUiModel).f62904a;
                    StringResourceUiModel stringResourceUiModel = notificationUiModel.f51841a;
                    Context context = this.d;
                    AccessibilityUtils.a(context, StringResourceUiModelKt.a(stringResourceUiModel, context));
                    NotificationBuilder notificationBuilder = NotificationBuilderKt.f51837a;
                    LVSnackbarVisuals lVSnackbarVisualsB = NotificationBuilderKt.b(notificationUiModel, context, LVColorScheme.DEFAULT);
                    this.f64914c = pLPWishlistFeedbackUiModel;
                    this.f64913b = 1;
                    obj = this.f64915e.a(lVSnackbarVisualsB, this);
                    if (obj == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                }
                return Unit.f71739a;
            }
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            SnackbarResult snackbarResult = (SnackbarResult) obj;
            if ((((PLPWishlistFeedbackUiModel.Message) pLPWishlistFeedbackUiModel).f62904a.g instanceof AddedToWishlistAction) && snackbarResult == SnackbarResult.ActionPerformed) {
                this.f64916f.mo47invoke();
            }
            return Unit.f71739a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PLPStoreModeSnackBarKt$PLPStoreModeSnackBar$2$1(Flow flow, Context context, SnackbarHostState snackbarHostState, Function0 function0, Continuation continuation) {
        super(2, continuation);
        this.f64910c = flow;
        this.d = context;
        this.f64911e = snackbarHostState;
        this.f64912f = function0;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PLPStoreModeSnackBarKt$PLPStoreModeSnackBar$2$1(this.f64910c, this.d, this.f64911e, this.f64912f, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PLPStoreModeSnackBarKt$PLPStoreModeSnackBar$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f64909b;
        if (i2 == 0) {
            ResultKt.b(obj);
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.d, this.f64911e, null, this.f64912f);
            this.f64909b = 1;
            if (FlowKt.g(this.f64910c, anonymousClass1, this) == coroutineSingletons) {
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
