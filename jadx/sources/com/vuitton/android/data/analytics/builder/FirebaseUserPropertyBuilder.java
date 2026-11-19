package com.vuitton.android.data.analytics.builder;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.foundation.model.domain.extensions.StringKtExtKt;
import com.vuitton.foundation.model.domain.model.analytics.UserProperty;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001:\u0001\u0004B\t\b\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/data/analytics/builder/FirebaseUserPropertyBuilder;", "Lcom/vuitton/android/data/analytics/builder/AnalyticsUserPropertyBuilder;", "<init>", "()V", "Companion", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class FirebaseUserPropertyBuilder implements AnalyticsUserPropertyBuilder {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/data/analytics/builder/FirebaseUserPropertyBuilder$Companion;", "", "", "FIREBASE_USER_PROP_MAX_LENGTH", "I", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    @Inject
    public FirebaseUserPropertyBuilder() {
    }

    @Override // com.vuitton.android.data.analytics.builder.AnalyticsUserPropertyBuilder
    public final Pair a(UserProperty.WebViewUserProperty webViewUserProperty) {
        return new Pair(webViewUserProperty.f66532a, StringKtExtKt.k(36, webViewUserProperty.f66533b));
    }
}
