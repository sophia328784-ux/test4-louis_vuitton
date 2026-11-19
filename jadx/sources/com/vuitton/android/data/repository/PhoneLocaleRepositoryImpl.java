package com.vuitton.android.data.repository;

import android.content.res.Resources;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.domain.repository.PhoneLocaleRepository;
import com.vuitton.foundation.model.domain.model.dispatch.locale.component.LanguageTagBcp47;
import com.vuitton.foundation.model.domain.model.dispatch.locale.component.RegionCode;
import java.util.Locale;
import javax.inject.Inject;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\t\b\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/data/repository/PhoneLocaleRepositoryImpl;", "Lcom/vuitton/android/domain/repository/PhoneLocaleRepository;", "<init>", "()V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class PhoneLocaleRepositoryImpl implements PhoneLocaleRepository {
    @Inject
    public PhoneLocaleRepositoryImpl() {
    }

    @Override // com.vuitton.android.domain.repository.PhoneLocaleRepository
    public final String a() {
        LanguageTagBcp47.Companion companion = LanguageTagBcp47.f67506b;
        Locale locale = Resources.getSystem().getConfiguration().getLocales().get(0);
        locale.getClass();
        companion.getClass();
        String languageTag = locale.toLanguageTag();
        languageTag.getClass();
        return LanguageTagBcp47.Companion.b(languageTag);
    }

    @Override // com.vuitton.android.domain.repository.PhoneLocaleRepository
    public final String b() {
        RegionCode.Companion companion = RegionCode.f67513b;
        Locale locale = Resources.getSystem().getConfiguration().getLocales().get(0);
        locale.getClass();
        String country = locale.getCountry();
        country.getClass();
        companion.getClass();
        return RegionCode.Companion.a(country);
    }
}
