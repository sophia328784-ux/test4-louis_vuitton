package com.vuitton.android.presentation.screen.options.legaltext;

import androidx.lifecycle.ViewModel;
import com.vuitton.android.R;
import com.vuitton.android.domain.usecase.dispatch.RequireUserInAppDispatchUseCase;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.android.presentation.screen.options.legaltext.models.LegalTextViewState;
import com.vuitton.android.presentation.screen.options.models.OptionsTrackingUiModel;
import com.vuitton.android.presentation.screen.options.models.OptionsTrackingUiModelKt;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatchExtKt;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0019\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/legaltext/LegalTextViewModelImpl;", "Landroidx/lifecycle/ViewModel;", "Lcom/vuitton/android/presentation/screen/options/legaltext/LegalTextViewModel;", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;", "requireUserInAppDispatchUseCase", "<init>", "(Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class LegalTextViewModelImpl extends ViewModel implements LegalTextViewModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AnalyticsTracker f59843a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final StateFlow f59844b;

    @Inject
    public LegalTextViewModelImpl(AnalyticsTracker analyticsTracker, RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCase) {
        analyticsTracker.getClass();
        requireUserInAppDispatchUseCase.getClass();
        this.f59843a = analyticsTracker;
        InAppDispatch inAppDispatchB = requireUserInAppDispatchUseCase.f49912a.b();
        this.f59844b = FlowKt.b(StateFlowKt.a(new LegalTextViewState((InAppDispatchExtKt.b(inAppDispatchB) && InAppDispatchExtKt.k(inAppDispatchB)) ? new StringResourceUiModel.ResId(R.string.pc_cgu_content_canada, null, 2, null).a(new StringResourceUiModel.ResId(R.string.pc_cgu_content_2_canada, null, 2, null)) : new StringResourceUiModel.ResId(R.string.pc_cgu_content, null, 2, null).a(new StringResourceUiModel.ResId(R.string.pc_cgu_content_2, null, 2, null)), (InAppDispatchExtKt.b(inAppDispatchB) && InAppDispatchExtKt.k(inAppDispatchB)) ? new StringResourceUiModel.ResId(R.string.mylv_privacypolicy_canada, null, 2, null).a(new StringResourceUiModel.ResId(R.string.mylv_privacypolicy_2_canada, null, 2, null)) : InAppDispatchExtKt.c(inAppDispatchB) ? new StringResourceUiModel.ResId(R.string.mylv_privacypolicy_china1, null, 2, null).a(new StringResourceUiModel.ResId(R.string.mylv_privacypolicy_china2, null, 2, null)).a(new StringResourceUiModel.ResId(R.string.mylv_privacypolicy_2, null, 2, null)) : new StringResourceUiModel.ResId(R.string.mylv_privacypolicy, null, 2, null).a(new StringResourceUiModel.ResId(R.string.mylv_privacypolicy_2, null, 2, null)))));
    }

    @Override // com.vuitton.android.presentation.screen.options.legaltext.LegalTextViewModel
    public final void U0(OptionsTrackingUiModel optionsTrackingUiModel) {
        this.f59843a.a(OptionsTrackingUiModelKt.a(optionsTrackingUiModel));
    }

    @Override // com.vuitton.android.presentation.screen.options.legaltext.LegalTextViewModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final StateFlow getF59844b() {
        return this.f59844b;
    }
}
