package com.vuitton.android.presentation.screen.deeplink;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import com.vuitton.android.domain.repository.AppLinkRepository;
import com.vuitton.android.domain.usecase.config.CachedAppConfigOrNullUseCase;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B!\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherViewModel;", "Landroidx/lifecycle/ViewModel;", "Lcom/vuitton/android/domain/usecase/config/CachedAppConfigOrNullUseCase;", "cachedAppConfigOrNullUseCase", "Lcom/vuitton/android/domain/repository/AppLinkRepository;", "appLinkRepository", "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;", "isFeatureAvailableUseCase", "<init>", "(Lcom/vuitton/android/domain/usecase/config/CachedAppConfigOrNullUseCase;Lcom/vuitton/android/domain/repository/AppLinkRepository;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class DeepLinkDispatcherViewModel extends ViewModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CachedAppConfigOrNullUseCase f56855a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppLinkRepository f56856b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final IsFeatureAvailableUseCase f56857c;
    public final MutableStateFlow d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final StateFlow f56858e;

    @Inject
    public DeepLinkDispatcherViewModel(CachedAppConfigOrNullUseCase cachedAppConfigOrNullUseCase, AppLinkRepository appLinkRepository, IsFeatureAvailableUseCase isFeatureAvailableUseCase) {
        cachedAppConfigOrNullUseCase.getClass();
        appLinkRepository.getClass();
        isFeatureAvailableUseCase.getClass();
        this.f56855a = cachedAppConfigOrNullUseCase;
        this.f56856b = appLinkRepository;
        this.f56857c = isFeatureAvailableUseCase;
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(RoutingDataState.Loading.f56870a);
        this.d = mutableStateFlowA;
        this.f56858e = FlowKt.b(mutableStateFlowA);
        BuildersKt.c(ViewModelKt.a(this), null, null, new DeepLinkDispatcherViewModel$onInitialLoad$1(this, null), 3);
    }
}
