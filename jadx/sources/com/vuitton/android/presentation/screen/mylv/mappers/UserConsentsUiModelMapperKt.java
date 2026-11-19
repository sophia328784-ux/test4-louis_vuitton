package com.vuitton.android.presentation.screen.mylv.mappers;

import androidx.compose.runtime.SnapshotStateKt;
import com.vuitton.android.presentation.screen.mylv.models.KisaUserConsentsUiModel;
import com.vuitton.android.presentation.screen.mylv.models.MarketingUserConsentsUiModel;
import com.vuitton.android.presentation.screen.mylv.models.UserConsentsUiModel;
import com.vuitton.foundation.model.domain.model.account.consent.KisaConsents;
import com.vuitton.foundation.model.domain.model.account.consent.MarketingConsents;
import com.vuitton.foundation.model.domain.model.account.consent.UserConsents;
import kotlin.Metadata;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class UserConsentsUiModelMapperKt {
    public static final UserConsentsUiModel a(UserConsents userConsents) {
        MarketingUserConsentsUiModel marketingUserConsentsUiModel;
        userConsents.getClass();
        KisaConsents kisaConsents = userConsents.f66292a;
        KisaUserConsentsUiModel kisaUserConsentsUiModel = kisaConsents != null ? new KisaUserConsentsUiModel(kisaConsents.f66268a, kisaConsents.f66269b, kisaConsents.f66270c, kisaConsents.d, kisaConsents.f66271e, kisaConsents.f66272f, kisaConsents.g, kisaConsents.f66273h) : null;
        MarketingConsents marketingConsents = userConsents.f66293b;
        if (marketingConsents != null) {
            Boolean bool = marketingConsents.f66281a;
            boolean zBooleanValue = bool != null ? bool.booleanValue() : false;
            Boolean bool2 = marketingConsents.f66282b;
            boolean zBooleanValue2 = bool2 != null ? bool2.booleanValue() : false;
            Boolean bool3 = marketingConsents.f66283c;
            boolean zBooleanValue3 = bool3 != null ? bool3.booleanValue() : false;
            Boolean bool4 = marketingConsents.d;
            boolean zBooleanValue4 = bool4 != null ? bool4.booleanValue() : false;
            Boolean bool5 = marketingConsents.f66284e;
            marketingUserConsentsUiModel = new MarketingUserConsentsUiModel(zBooleanValue, zBooleanValue2, zBooleanValue3, zBooleanValue4, Boolean.valueOf(bool5 != null ? bool5.booleanValue() : false), marketingConsents.f66285f, marketingConsents.g);
        } else {
            marketingUserConsentsUiModel = new MarketingUserConsentsUiModel(false, false, false, false, null, null, null, CertificateBody.profileType, null);
        }
        return new UserConsentsUiModel(kisaUserConsentsUiModel, SnapshotStateKt.g(marketingUserConsentsUiModel));
    }
}
