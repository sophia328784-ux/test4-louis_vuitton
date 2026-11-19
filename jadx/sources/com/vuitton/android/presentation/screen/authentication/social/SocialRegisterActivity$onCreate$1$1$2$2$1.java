package com.vuitton.android.presentation.screen.authentication.social;

import androidx.lifecycle.ViewModelKt;
import com.vuitton.android.data.monitoring.DynatraceMonitorAction;
import com.vuitton.android.domain.monitoring.authentication.SocialAuthMonitoring;
import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthEntryPoint;
import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthOrigin;
import com.vuitton.android.presentation.screen.authentication.social.models.SocialRegisterTrackingUiModel;
import com.vuitton.android.presentation.screen.authentication.social.models.SocialRegisterTrackingUiModelKt;
import com.vuitton.android.presentation.screen.authentication.social.models.SocialRegisterUiModel;
import com.vuitton.foundation.model.domain.model.authentication.social.SocialAuthMode;
import java.util.LinkedHashMap;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class SocialRegisterActivity$onCreate$1$1$2$2$1 extends FunctionReferenceImpl implements Function0<Unit> {
    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final /* bridge */ /* synthetic */ Object mo47invoke() {
        p();
        return Unit.f71739a;
    }

    public final void p() {
        SocialRegisterViewModelImpl socialRegisterViewModelImpl = (SocialRegisterViewModelImpl) this.receiver;
        MutableStateFlow mutableStateFlow = socialRegisterViewModelImpl.o;
        LinkedHashMap linkedHashMap = socialRegisterViewModelImpl.p;
        Job job = (Job) linkedHashMap.get("onConfirmClickedJob");
        if (job == null || !job.isActive()) {
            TrackingAuthOrigin trackingAuthOrigin = ((SocialRegisterUiModel) mutableStateFlow.getValue()).m;
            TrackingAuthEntryPoint trackingAuthEntryPoint = ((SocialRegisterUiModel) mutableStateFlow.getValue()).n;
            SocialAuthMode socialAuthMode = ((SocialRegisterUiModel) mutableStateFlow.getValue()).o;
            if (socialAuthMode == null) {
                socialAuthMode = SocialAuthMode.GOOGLE;
            }
            socialRegisterViewModelImpl.f54086c.a(SocialRegisterTrackingUiModelKt.b(new SocialRegisterTrackingUiModel.OnSocialRegisterConfirmEvent(trackingAuthOrigin, trackingAuthEntryPoint, socialAuthMode)));
            SocialAuthMode socialAuthMode2 = ((SocialRegisterUiModel) mutableStateFlow.getValue()).o;
            if (socialAuthMode2 == null) {
                socialAuthMode2 = SocialAuthMode.GOOGLE;
            }
            DynatraceMonitorAction dynatraceMonitorActionA = socialRegisterViewModelImpl.f54085b.a(socialRegisterViewModelImpl.r, SocialAuthMonitoring.Action.ActivateAccount.f48830a);
            dynatraceMonitorActionA.c(socialAuthMode2.getApiValue(), "social");
            linkedHashMap.put("onConfirmClickedJob", BuildersKt.c(ViewModelKt.a(socialRegisterViewModelImpl), null, null, new SocialRegisterViewModelImpl$onConfirmClicked$1(socialRegisterViewModelImpl, socialAuthMode2, dynatraceMonitorActionA, null), 3));
        }
    }
}
