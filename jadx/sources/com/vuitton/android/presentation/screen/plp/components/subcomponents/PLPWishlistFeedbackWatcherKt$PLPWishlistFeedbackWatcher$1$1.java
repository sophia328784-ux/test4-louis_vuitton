package com.vuitton.android.presentation.screen.plp.components.subcomponents;

import android.content.Context;
import androidx.activity.compose.ManagedActivityResultLauncher;
import androidx.compose.runtime.MutableState;
import com.vuitton.android.presentation.screen.authentication.AuthenticationActivity;
import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthOrigin;
import com.vuitton.android.presentation.screen.authentication.welcome.model.LoginContext;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.plp.models.PLPWishlistFeedbackUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.PlpProductUiModel;
import defpackage.md;
import java.util.ArrayList;
import java.util.List;
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
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.plp.components.subcomponents.PLPWishlistFeedbackWatcherKt$PLPWishlistFeedbackWatcher$1$1", f = "PLPWishlistFeedbackWatcher.kt", l = {EACTags.ELEMENT_LIST}, m = "invokeSuspend", v = 2)
final class PLPWishlistFeedbackWatcherKt$PLPWishlistFeedbackWatcher$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f62834b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Flow f62835c;
    public final /* synthetic */ ManagedActivityResultLauncher d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Context f62836e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ MutableState f62837f;
    public final /* synthetic */ MutableState g;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.plp.components.subcomponents.PLPWishlistFeedbackWatcherKt$PLPWishlistFeedbackWatcher$1$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "feedback", "Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistFeedbackUiModel;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.plp.components.subcomponents.PLPWishlistFeedbackWatcherKt$PLPWishlistFeedbackWatcher$1$1$1", f = "PLPWishlistFeedbackWatcher.kt", l = {}, m = "invokeSuspend", v = 2)
    final class AnonymousClass1 extends SuspendLambda implements Function2<PLPWishlistFeedbackUiModel, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public /* synthetic */ Object f62838b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ ManagedActivityResultLauncher f62839c;
        public final /* synthetic */ Context d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ MutableState f62840e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final /* synthetic */ MutableState f62841f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(ManagedActivityResultLauncher managedActivityResultLauncher, Context context, MutableState mutableState, MutableState mutableState2, Continuation continuation) {
            super(2, continuation);
            this.f62839c = managedActivityResultLauncher;
            this.d = context;
            this.f62840e = mutableState;
            this.f62841f = mutableState2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f62839c, this.d, this.f62840e, this.f62841f, continuation);
            anonymousClass1.f62838b = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((PLPWishlistFeedbackUiModel) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            PLPWishlistFeedbackUiModel pLPWishlistFeedbackUiModel = (PLPWishlistFeedbackUiModel) this.f62838b;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            ResultKt.b(obj);
            if (pLPWishlistFeedbackUiModel instanceof PLPWishlistFeedbackUiModel.RequestAuth) {
                this.f62840e.setValue((PLPWishlistFeedbackUiModel.RequestAuth) pLPWishlistFeedbackUiModel);
                AuthenticationActivity.Companion companion = AuthenticationActivity.u;
                AuthenticationActivity.Routes routes = AuthenticationActivity.Routes.WELCOME_PAGE_WITH_EXIT;
                LoginContext loginContext = LoginContext.WISHLIST;
                TrackingAuthOrigin trackingAuthOrigin = TrackingAuthOrigin.WISHLIST;
                companion.getClass();
                this.f62839c.a(AuthenticationActivity.Companion.a(this.d, routes, loginContext, trackingAuthOrigin));
            } else if (pLPWishlistFeedbackUiModel instanceof PLPWishlistFeedbackUiModel.UpdateItems) {
                List list = (List) this.f62841f.getF10755b();
                List list2 = ((PLPWishlistFeedbackUiModel.UpdateItems) pLPWishlistFeedbackUiModel).f62906a;
                ArrayList<PlpProductUiModel> arrayList = new ArrayList();
                for (Object obj2 : list) {
                    if (((PlpProductUiModel.SkuDataUiModel) ((PlpProductUiModel) obj2).f62934a.getF10755b()).f62948h != null) {
                        arrayList.add(obj2);
                    }
                }
                for (PlpProductUiModel plpProductUiModel : arrayList) {
                    MutableState mutableState = ((PlpProductUiModel.SkuDataUiModel) plpProductUiModel.f62934a.getF10755b()).f62948h;
                    mutableState.getClass();
                    mutableState.setValue(new PlpProductUiModel.SkuDataUiModel.PLPWishlistStateUiModel(list2.contains(new SkuIdUiModel(((PlpProductUiModel.SkuDataUiModel) plpProductUiModel.f62934a.getF10755b()).f62943a)), false));
                }
            }
            return Unit.f71739a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PLPWishlistFeedbackWatcherKt$PLPWishlistFeedbackWatcher$1$1(Flow flow, ManagedActivityResultLauncher managedActivityResultLauncher, Context context, MutableState mutableState, MutableState mutableState2, Continuation continuation) {
        super(2, continuation);
        this.f62835c = flow;
        this.d = managedActivityResultLauncher;
        this.f62836e = context;
        this.f62837f = mutableState;
        this.g = mutableState2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PLPWishlistFeedbackWatcherKt$PLPWishlistFeedbackWatcher$1$1(this.f62835c, this.d, this.f62836e, this.f62837f, this.g, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PLPWishlistFeedbackWatcherKt$PLPWishlistFeedbackWatcher$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f62834b;
        if (i2 == 0) {
            ResultKt.b(obj);
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.d, this.f62836e, this.f62837f, this.g, null);
            this.f62834b = 1;
            if (FlowKt.g(this.f62835c, anonymousClass1, this) == coroutineSingletons) {
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
