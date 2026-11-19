package com.vuitton.android.data.dto.profile;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.authentication.common.RegisterConsentsDto;
import com.vuitton.android.data.dto.profile.twist.KisaConsentsDto;
import com.vuitton.android.data.dto.profile.twist.KisaConsentsPatchDto;
import com.vuitton.android.data.dto.profile.twist.MarketingConsentsDto;
import com.vuitton.android.data.dto.profile.twist.MarketingConsentsPatchDto;
import com.vuitton.android.data.dto.profile.twist.UserConsentsDto;
import com.vuitton.android.data.dto.profile.twist.UserConsentsPatchDto;
import com.vuitton.foundation.model.domain.model.account.consent.KisaConsents;
import com.vuitton.foundation.model.domain.model.account.consent.KisaConsentsPatch;
import com.vuitton.foundation.model.domain.model.account.consent.MarketingConsents;
import com.vuitton.foundation.model.domain.model.account.consent.MarketingConsentsPatch;
import com.vuitton.foundation.model.domain.model.account.consent.UserConsents;
import com.vuitton.foundation.model.domain.model.account.consent.UserConsentsPatch;
import com.vuitton.foundation.model.domain.model.authentication.RegisterConsents;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class UserConsentsMapperKt {
    public static final KisaConsents a(KisaConsentsDto kisaConsentsDto) {
        kisaConsentsDto.getClass();
        return new KisaConsents(kisaConsentsDto.f46710a, kisaConsentsDto.f46711b, Boolean.valueOf(kisaConsentsDto.f46712c), Boolean.valueOf(kisaConsentsDto.d), Boolean.valueOf(kisaConsentsDto.f46713e), Boolean.valueOf(kisaConsentsDto.f46714f), Boolean.valueOf(kisaConsentsDto.g), Boolean.valueOf(kisaConsentsDto.f46715h));
    }

    public static final UserConsents b(UserConsentsDto userConsentsDto) {
        userConsentsDto.getClass();
        KisaConsentsDto kisaConsentsDto = userConsentsDto.f46750a;
        KisaConsents kisaConsentsA = kisaConsentsDto != null ? a(kisaConsentsDto) : null;
        MarketingConsentsDto marketingConsentsDto = userConsentsDto.f46751b;
        return new UserConsents(kisaConsentsA, marketingConsentsDto != null ? new MarketingConsents(Boolean.valueOf(marketingConsentsDto.f46724a), Boolean.valueOf(marketingConsentsDto.f46725b), Boolean.valueOf(marketingConsentsDto.f46726c), Boolean.valueOf(marketingConsentsDto.d), marketingConsentsDto.f46727e, marketingConsentsDto.f46728f, marketingConsentsDto.g) : null);
    }

    public static final RegisterConsentsDto c(RegisterConsents registerConsents) {
        KisaConsentsDto kisaConsentsDto;
        MarketingConsents marketingConsents;
        KisaConsents kisaConsents;
        registerConsents.getClass();
        boolean z = registerConsents.f66601a;
        UserConsents userConsents = registerConsents.f66602b;
        MarketingConsentsDto marketingConsentsDto = null;
        if (userConsents == null || (kisaConsents = userConsents.f66292a) == null) {
            kisaConsentsDto = null;
        } else {
            Boolean bool = kisaConsents.f66268a;
            Boolean bool2 = kisaConsents.f66269b;
            Boolean bool3 = kisaConsents.f66270c;
            Boolean bool4 = Boolean.TRUE;
            kisaConsentsDto = new KisaConsentsDto(bool, bool2, Intrinsics.c(bool3, bool4), Intrinsics.c(kisaConsents.d, bool4), Intrinsics.c(kisaConsents.f66271e, bool4), Intrinsics.c(kisaConsents.f66272f, bool4), Intrinsics.c(kisaConsents.g, bool4), Intrinsics.c(kisaConsents.f66273h, bool4));
        }
        if (userConsents != null && (marketingConsents = userConsents.f66293b) != null) {
            Boolean bool5 = marketingConsents.f66281a;
            Boolean bool6 = Boolean.TRUE;
            marketingConsentsDto = new MarketingConsentsDto(Intrinsics.c(bool5, bool6), Intrinsics.c(marketingConsents.f66282b, bool6), Intrinsics.c(marketingConsents.f66283c, bool6), Intrinsics.c(marketingConsents.d, bool6), marketingConsents.f66284e, marketingConsents.f66285f, marketingConsents.g);
        }
        return new RegisterConsentsDto(z, kisaConsentsDto, marketingConsentsDto);
    }

    public static final UserConsentsPatchDto d(UserConsentsPatch userConsentsPatch) {
        userConsentsPatch.getClass();
        KisaConsentsPatch kisaConsentsPatch = userConsentsPatch.f66295a;
        KisaConsentsPatchDto kisaConsentsPatchDto = kisaConsentsPatch != null ? new KisaConsentsPatchDto(kisaConsentsPatch.f66275a, kisaConsentsPatch.f66276b, kisaConsentsPatch.f66277c, kisaConsentsPatch.d, kisaConsentsPatch.f66278e, kisaConsentsPatch.f66279f, kisaConsentsPatch.g, kisaConsentsPatch.f66280h) : null;
        MarketingConsentsPatch marketingConsentsPatch = userConsentsPatch.f66296b;
        return new UserConsentsPatchDto(kisaConsentsPatchDto, marketingConsentsPatch != null ? new MarketingConsentsPatchDto(marketingConsentsPatch.f66287a, marketingConsentsPatch.f66288b, marketingConsentsPatch.f66289c, marketingConsentsPatch.d, marketingConsentsPatch.f66290e, marketingConsentsPatch.f66291f, marketingConsentsPatch.g) : null);
    }
}
