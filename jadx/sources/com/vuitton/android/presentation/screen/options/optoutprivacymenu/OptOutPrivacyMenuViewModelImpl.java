package com.vuitton.android.presentation.screen.options.optoutprivacymenu;

import androidx.lifecycle.ViewModel;
import com.vuitton.android.R;
import com.vuitton.android.domain.usecase.config.RequireCachedAppConfigUseCase;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.android.presentation.screen.options.optoutprivacymenu.models.OptOutPrivacyMenuTrackingUiModel;
import com.vuitton.android.presentation.screen.options.optoutprivacymenu.models.OptOutPrivacyMenuViewState;
import com.vuitton.foundation.model.domain.model.analytics.Hit;
import com.vuitton.foundation.model.domain.model.config.AppConfig;
import defpackage.v40;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0019\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/optoutprivacymenu/OptOutPrivacyMenuViewModelImpl;", "Landroidx/lifecycle/ViewModel;", "Lcom/vuitton/android/presentation/screen/options/optoutprivacymenu/OptOutPrivacyMenuViewModel;", "Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;", "requireCachedAppConfigUseCase", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "<init>", "(Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class OptOutPrivacyMenuViewModelImpl extends ViewModel implements OptOutPrivacyMenuViewModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AnalyticsTracker f59963a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final StateFlow f59964b;

    @Inject
    public OptOutPrivacyMenuViewModelImpl(RequireCachedAppConfigUseCase requireCachedAppConfigUseCase, AnalyticsTracker analyticsTracker) {
        requireCachedAppConfigUseCase.getClass();
        analyticsTracker.getClass();
        this.f59963a = analyticsTracker;
        AppConfig appConfigA = requireCachedAppConfigUseCase.a();
        String str = appConfigA.c0;
        str = str == null ? "" : str;
        StringResourceUiModel.ResId resId = new StringResourceUiModel.ResId(R.string.mylv_gcm_lva_optout_email_us_subject, null, 2, null);
        String str2 = appConfigA.L;
        this.f59964b = FlowKt.b(StateFlowKt.a(new OptOutPrivacyMenuViewState(resId, str, str2 != null ? str2 : "")));
    }

    @Override // com.vuitton.android.presentation.screen.options.optoutprivacymenu.OptOutPrivacyMenuViewModel
    public final void H2(OptOutPrivacyMenuTrackingUiModel optOutPrivacyMenuTrackingUiModel) {
        Hit defaultEventHit;
        optOutPrivacyMenuTrackingUiModel.getClass();
        if (optOutPrivacyMenuTrackingUiModel.equals(OptOutPrivacyMenuTrackingUiModel.OptOutPrivacyMenuScreen.f59981a)) {
            defaultEventHit = new Hit.ScreenHit.DefaultScreenHit(null, "privacy_choices", "privacy_choices", "consent_manager", null, 17, null);
        } else if (optOutPrivacyMenuTrackingUiModel.equals(OptOutPrivacyMenuTrackingUiModel.OptOutOthersScreen.f59980a)) {
            defaultEventHit = new Hit.ScreenHit.DefaultScreenHit(null, "other_types_info_sharing", "other_types_info_sharing", "consent_manager", null, 17, null);
        } else if (optOutPrivacyMenuTrackingUiModel.equals(OptOutPrivacyMenuTrackingUiModel.OnOptOutOthersChoiceEvent.f59979a)) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "privacy_choices", "opt_out_other_info_sharing", "privacy_choices", "click", null, null, 97, null);
        } else if (optOutPrivacyMenuTrackingUiModel.equals(OptOutPrivacyMenuTrackingUiModel.OnCcpaChoiceEvent.f59976a)) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "privacy_choices", "opt_out_non_essential_cookies", "privacy_choices", "click", null, null, 97, null);
        } else if (optOutPrivacyMenuTrackingUiModel.equals(OptOutPrivacyMenuTrackingUiModel.OnEmailUsEvent.f59978a)) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "privacy_choices", "email_us", "privacy_choices", "click", null, null, 97, null);
        } else {
            if (!optOutPrivacyMenuTrackingUiModel.equals(OptOutPrivacyMenuTrackingUiModel.OnContactUsEvent.f59977a)) {
                v40.g();
                return;
            }
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "privacy_choices", "contact_us", "privacy_choices", "click", null, null, 97, null);
        }
        this.f59963a.a(defaultEventHit);
    }

    @Override // com.vuitton.android.presentation.screen.options.optoutprivacymenu.OptOutPrivacyMenuViewModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final StateFlow getF59964b() {
        return this.f59964b;
    }
}
