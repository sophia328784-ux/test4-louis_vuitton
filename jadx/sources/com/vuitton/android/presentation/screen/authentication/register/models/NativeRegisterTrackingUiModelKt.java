package com.vuitton.android.presentation.screen.authentication.register.models;

import com.vuitton.foundation.model.domain.model.analytics.AdditionalProperty;
import com.vuitton.foundation.model.domain.model.analytics.Hit;
import defpackage.be0;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class NativeRegisterTrackingUiModelKt {
    public static final Hit.EventHit.DefaultEventHit a(String str, ConsentDataTracking consentDataTracking, MarketingChannelDataTracking marketingChannelDataTracking) {
        return new Hit.EventHit.DefaultEventHit(null, "account_creation", str, "mylv_native", "click", "mylv_native_authentification", CollectionsKt.P(new AdditionalProperty.ContentId(CollectionsKt.K(MapsKt.i(new Pair("email", Boolean.valueOf(consentDataTracking.f53915a)), new Pair("email_tracking", Boolean.valueOf(consentDataTracking.d)), new Pair("online_platforms", Boolean.valueOf(consentDataTracking.f53917c)), new Pair("sms", Boolean.valueOf(consentDataTracking.f53916b))).entrySet(), ", ", "{", "}", new be0(25), 24)), new AdditionalProperty.MarketingChannelType(CollectionsKt.K(MapsKt.i(new Pair("marketing_email", Integer.valueOf(marketingChannelDataTracking.f53918a ? 1 : 0)), new Pair("marketing_sms", Integer.valueOf(marketingChannelDataTracking.f53919b ? 1 : 0)), new Pair("gcm", Integer.valueOf(marketingChannelDataTracking.f53920c ? 1 : 0))).entrySet(), "|", null, null, new be0(26), 30))), 1, null);
    }
}
