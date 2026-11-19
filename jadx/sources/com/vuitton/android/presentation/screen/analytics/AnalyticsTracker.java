package com.vuitton.android.presentation.screen.analytics;

import com.vuitton.android.domain.repository.AnalyticsWrapperRepository;
import com.vuitton.android.domain.usecase.analytics.SendHitUseCase;
import com.vuitton.android.domain.usecase.analytics.SetUserPropertyUseCase;
import com.vuitton.foundation.model.domain.model.analytics.Hit;
import com.vuitton.foundation.model.domain.model.analytics.UserProperty;
import javax.inject.Inject;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0017\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "", "Lcom/vuitton/android/domain/usecase/analytics/SetUserPropertyUseCase;", "setUserPropertyUseCase", "Lcom/vuitton/android/domain/usecase/analytics/SendHitUseCase;", "sendHitUseCase", "<init>", "(Lcom/vuitton/android/domain/usecase/analytics/SetUserPropertyUseCase;Lcom/vuitton/android/domain/usecase/analytics/SendHitUseCase;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public class AnalyticsTracker {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SetUserPropertyUseCase f52936a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SendHitUseCase f52937b;

    @Inject
    public AnalyticsTracker(SetUserPropertyUseCase setUserPropertyUseCase, SendHitUseCase sendHitUseCase) {
        setUserPropertyUseCase.getClass();
        sendHitUseCase.getClass();
        this.f52936a = setUserPropertyUseCase;
        this.f52937b = sendHitUseCase;
    }

    public void a(Hit hit) {
        SendHitUseCase sendHitUseCase = this.f52937b;
        ((AnalyticsWrapperRepository) sendHitUseCase.f49193b.get()).b(sendHitUseCase.f49192a.f49912a.b(), hit);
    }

    public void b(UserProperty.WebViewUserProperty webViewUserProperty) {
        SetUserPropertyUseCase setUserPropertyUseCase = this.f52936a;
        setUserPropertyUseCase.getClass();
        ((AnalyticsWrapperRepository) setUserPropertyUseCase.f49194a.get()).d(webViewUserProperty);
    }
}
