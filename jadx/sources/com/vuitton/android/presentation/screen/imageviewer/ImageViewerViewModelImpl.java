package com.vuitton.android.presentation.screen.imageviewer;

import androidx.lifecycle.ViewModel;
import com.vuitton.android.domain.usecase.account.accessibility.GetAccessibilityValueUseCase;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.foundation.model.domain.model.account.accessibility.AccessibilityPreferenceType;
import com.vuitton.foundation.model.domain.model.analytics.Hit;
import defpackage.tr;
import defpackage.v40;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0019\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerViewModelImpl;", "Landroidx/lifecycle/ViewModel;", "Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerViewModel;", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "Lcom/vuitton/android/domain/usecase/account/accessibility/GetAccessibilityValueUseCase;", "getAccessibilityValueUseCase", "<init>", "(Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/usecase/account/accessibility/GetAccessibilityValueUseCase;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ImageViewerViewModelImpl extends ViewModel implements ImageViewerViewModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AnalyticsTracker f58221a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MutableStateFlow f58222b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final StateFlow f58223c;

    @Inject
    public ImageViewerViewModelImpl(AnalyticsTracker analyticsTracker, GetAccessibilityValueUseCase getAccessibilityValueUseCase) {
        Object value;
        analyticsTracker.getClass();
        getAccessibilityValueUseCase.getClass();
        this.f58221a = analyticsTracker;
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(Boolean.FALSE);
        this.f58222b = mutableStateFlowA;
        this.f58223c = FlowKt.b(mutableStateFlowA);
        Object objA = getAccessibilityValueUseCase.a(AccessibilityPreferenceType.SIMPLIFY_NAVIGATION);
        Result.Companion companion = Result.INSTANCE;
        if (objA instanceof Result.Failure) {
            return;
        }
        Boolean bool = (Boolean) objA;
        do {
            value = mutableStateFlowA.getValue();
            ((Boolean) value).getClass();
        } while (!mutableStateFlowA.i(value, bool));
    }

    @Override // com.vuitton.android.presentation.screen.imageviewer.ImageViewerViewModel
    public final void Y5(ImageViewerTrackingUiModel imageViewerTrackingUiModel) {
        Hit.EventHit.DefaultEventHit defaultEventHit;
        if (imageViewerTrackingUiModel instanceof ImageViewerTrackingUiModel.ImageViewerScreen) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, ((ImageViewerTrackingUiModel.ImageViewerScreen) imageViewerTrackingUiModel).f58218a, "", "", "zoom_visual", null, null, 97, null);
        } else if (!(imageViewerTrackingUiModel instanceof ImageViewerTrackingUiModel.Swipe)) {
            v40.g();
            return;
        } else {
            ImageViewerTrackingUiModel.Swipe swipe = (ImageViewerTrackingUiModel.Swipe) imageViewerTrackingUiModel;
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "", "", swipe.f58220b, tr.g("slider_interaction_", swipe.f58219a), null, null, 97, null);
        }
        this.f58221a.a(defaultEventHit);
    }

    @Override // com.vuitton.android.presentation.screen.imageviewer.ImageViewerViewModel
    /* JADX INFO: renamed from: c8, reason: from getter */
    public final StateFlow getF58223c() {
        return this.f58223c;
    }
}
