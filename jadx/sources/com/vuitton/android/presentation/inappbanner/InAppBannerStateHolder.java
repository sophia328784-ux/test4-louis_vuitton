package com.vuitton.android.presentation.inappbanner;

import com.vuitton.android.core.schedulers.CoroutineDispatchers;
import com.vuitton.android.domain.usecase.inappbanner.ClearActiveInAppBannerUseCase;
import com.vuitton.android.domain.usecase.inappbanner.ObserveActiveInAppBannerUseCase;
import com.vuitton.android.domain.usecase.inappbanner.SaveActiveInAppBannerUseCase;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.SupervisorKt;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest;
import kotlinx.coroutines.internal.ContextScope;

/* JADX INFO: loaded from: classes3.dex */
@Singleton
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B)\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/inappbanner/InAppBannerStateHolder;", "", "Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;", "coroutineDispatchers", "Lcom/vuitton/android/domain/usecase/inappbanner/ObserveActiveInAppBannerUseCase;", "observeActiveInAppBannerUseCase", "Lcom/vuitton/android/domain/usecase/inappbanner/SaveActiveInAppBannerUseCase;", "saveActiveInAppBannerUseCase", "Lcom/vuitton/android/domain/usecase/inappbanner/ClearActiveInAppBannerUseCase;", "clearActiveInAppBannerUseCase", "<init>", "(Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;Lcom/vuitton/android/domain/usecase/inappbanner/ObserveActiveInAppBannerUseCase;Lcom/vuitton/android/domain/usecase/inappbanner/SaveActiveInAppBannerUseCase;Lcom/vuitton/android/domain/usecase/inappbanner/ClearActiveInAppBannerUseCase;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class InAppBannerStateHolder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SaveActiveInAppBannerUseCase f51564a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ClearActiveInAppBannerUseCase f51565b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final StateFlow f51566c;

    @Inject
    public InAppBannerStateHolder(CoroutineDispatchers coroutineDispatchers, ObserveActiveInAppBannerUseCase observeActiveInAppBannerUseCase, SaveActiveInAppBannerUseCase saveActiveInAppBannerUseCase, ClearActiveInAppBannerUseCase clearActiveInAppBannerUseCase) {
        coroutineDispatchers.getClass();
        observeActiveInAppBannerUseCase.getClass();
        saveActiveInAppBannerUseCase.getClass();
        clearActiveInAppBannerUseCase.getClass();
        this.f51564a = saveActiveInAppBannerUseCase;
        this.f51565b = clearActiveInAppBannerUseCase;
        ContextScope contextScopeA = CoroutineScopeKt.a(SupervisorKt.b().plus(coroutineDispatchers.getF43529a()));
        ChannelFlowTransformLatest channelFlowTransformLatestA = observeActiveInAppBannerUseCase.a();
        SharingStarted.f74985a.getClass();
        this.f51566c = FlowKt.A(channelFlowTransformLatestA, contextScopeA, SharingStarted.Companion.f74988c, null);
    }
}
