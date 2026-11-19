package com.vuitton.android.presentation.screen.connectivity.lightup.keepall;

import androidx.lifecycle.MutableLiveData;
import com.vuitton.android.domain.usecase.connectivity.lightup.GetKeepAllFaqUseCase;
import com.vuitton.android.presentation.screen.connectivity.LVViewModel;
import javax.inject.Inject;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/lightup/keepall/KeepAllDetailViewModel;", "Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel;", "Lcom/vuitton/android/presentation/screen/connectivity/lightup/keepall/KeepAllDetailView;", "Lcom/vuitton/android/domain/usecase/connectivity/lightup/GetKeepAllFaqUseCase;", "getKeepAllFaqUseCase", "<init>", "(Lcom/vuitton/android/domain/usecase/connectivity/lightup/GetKeepAllFaqUseCase;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class KeepAllDetailViewModel extends LVViewModel<KeepAllDetailView> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final GetKeepAllFaqUseCase f56209c;
    public final MutableLiveData d;

    @Inject
    public KeepAllDetailViewModel(GetKeepAllFaqUseCase getKeepAllFaqUseCase) {
        getKeepAllFaqUseCase.getClass();
        this.f56209c = getKeepAllFaqUseCase;
        this.d = new MutableLiveData();
    }
}
