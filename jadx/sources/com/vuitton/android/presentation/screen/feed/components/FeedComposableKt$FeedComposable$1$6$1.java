package com.vuitton.android.presentation.screen.feed.components;

import android.content.Context;
import androidx.activity.compose.ManagedActivityResultLauncher;
import androidx.appcompat.app.AppCompatActivity;
import com.vuitton.android.presentation.contributionlink.ContributionLinkUiModel;
import com.vuitton.android.presentation.extensions.ContextExtKt;
import com.vuitton.android.presentation.link.navigation.ContributionLinkNavigator;
import com.vuitton.android.presentation.screen.feed.FeedViewModel;
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

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.feed.components.FeedComposableKt$FeedComposable$1$6$1", f = "FeedComposable.kt", l = {235}, m = "invokeSuspend", v = 2)
final class FeedComposableKt$FeedComposable$1$6$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f57800b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ FeedViewModel f57801c;
    public final /* synthetic */ ContributionLinkNavigator d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Context f57802e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ ManagedActivityResultLauncher f57803f;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.feed.components.FeedComposableKt$FeedComposable$1$6$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "contributionLink", "Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.feed.components.FeedComposableKt$FeedComposable$1$6$1$1", f = "FeedComposable.kt", l = {}, m = "invokeSuspend", v = 2)
    final class AnonymousClass1 extends SuspendLambda implements Function2<ContributionLinkUiModel, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public /* synthetic */ Object f57804b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ ContributionLinkNavigator f57805c;
        public final /* synthetic */ Context d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ ManagedActivityResultLauncher f57806e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(ContributionLinkNavigator contributionLinkNavigator, Context context, ManagedActivityResultLauncher managedActivityResultLauncher, Continuation continuation) {
            super(2, continuation);
            this.f57805c = contributionLinkNavigator;
            this.d = context;
            this.f57806e = managedActivityResultLauncher;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f57805c, this.d, this.f57806e, continuation);
            anonymousClass1.f57804b = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((ContributionLinkUiModel) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            ContributionLinkUiModel contributionLinkUiModel = (ContributionLinkUiModel) this.f57804b;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            ResultKt.b(obj);
            AppCompatActivity appCompatActivityB = ContextExtKt.b(this.d);
            appCompatActivityB.getClass();
            ContributionLinkNavigator.a(this.f57805c, appCompatActivityB, contributionLinkUiModel, null, null, contributionLinkUiModel instanceof ContributionLinkUiModel.Monogram ? this.f57806e : null, 12);
            return Unit.f71739a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FeedComposableKt$FeedComposable$1$6$1(FeedViewModel feedViewModel, ContributionLinkNavigator contributionLinkNavigator, Context context, ManagedActivityResultLauncher managedActivityResultLauncher, Continuation continuation) {
        super(2, continuation);
        this.f57801c = feedViewModel;
        this.d = contributionLinkNavigator;
        this.f57802e = context;
        this.f57803f = managedActivityResultLauncher;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new FeedComposableKt$FeedComposable$1$6$1(this.f57801c, this.d, this.f57802e, this.f57803f, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((FeedComposableKt$FeedComposable$1$6$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f57800b;
        if (i2 == 0) {
            ResultKt.b(obj);
            Flow f0 = this.f57801c.getF0();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.d, this.f57802e, this.f57803f, null);
            this.f57800b = 1;
            if (FlowKt.g(f0, anonymousClass1, this) == coroutineSingletons) {
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
