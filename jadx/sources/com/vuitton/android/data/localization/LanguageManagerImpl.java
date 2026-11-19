package com.vuitton.android.data.localization;

import androidx.appcompat.app.AppCompatDelegate;
import androidx.core.os.LocaleListCompat;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.domain.service.localization.LanguageManager;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\t\b\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/data/localization/LanguageManagerImpl;", "Lcom/vuitton/android/domain/service/localization/LanguageManager;", "<init>", "()V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class LanguageManagerImpl implements LanguageManager {
    @Inject
    public LanguageManagerImpl() {
    }

    @Override // com.vuitton.android.domain.service.localization.LanguageManager
    public final void a(List list) {
        LocaleListCompat localeListCompatA = LocaleListCompat.a(CollectionsKt.K(list, ",", null, null, LanguageManagerImpl$setSupportedLanguages$languageTagsAsString$1.f46969b, 30));
        localeListCompatA.getClass();
        AppCompatDelegate.k(localeListCompatA);
    }
}
