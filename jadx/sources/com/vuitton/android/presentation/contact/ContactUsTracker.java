package com.vuitton.android.presentation.contact;

import com.vuitton.android.presentation.contact.compose.ContactUsMethod;
import com.vuitton.android.presentation.contact.models.ContactUsTrackingUiModel;
import com.vuitton.android.presentation.contact.models.ContactUsTrackingUiModelKt;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import javax.inject.Inject;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/contact/ContactUsTracker;", "", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "<init>", "(Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ContactUsTracker {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AnalyticsTracker f51122a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f51123b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f51124c;

    @Inject
    public ContactUsTracker(AnalyticsTracker analyticsTracker) {
        analyticsTracker.getClass();
        this.f51122a = analyticsTracker;
        this.f51123b = "";
    }

    public final void a(String str) {
        str.getClass();
        this.f51123b = str;
    }

    public final void b(ContactUsMethod contactUsMethod) {
        this.f51122a.a(ContactUsTrackingUiModelKt.a(new ContactUsTrackingUiModel.OnContactMethodClickEvent(contactUsMethod, this.f51123b)));
    }

    public final void c(boolean z) {
        this.f51122a.a(ContactUsTrackingUiModelKt.a(new ContactUsTrackingUiModel.ContactUsScreen(z, this.f51123b)));
    }
}
