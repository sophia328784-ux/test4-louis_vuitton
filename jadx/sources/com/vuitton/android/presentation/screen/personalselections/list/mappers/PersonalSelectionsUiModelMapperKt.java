package com.vuitton.android.presentation.screen.personalselections.list.mappers;

import com.vuitton.android.presentation.screen.personalselections.detail.models.SelectionTypeUiModel;
import com.vuitton.android.presentation.screen.personalselections.detail.models.mappers.PersonalSelectionsDetailUiModelMapperKt;
import com.vuitton.android.presentation.screen.personalselections.list.models.PersonalSharingUiModel;
import com.vuitton.android.presentation.utils.DateTimeUtils;
import com.vuitton.foundation.model.domain.model.personalselections.PersonalSharing;
import java.time.format.FormatStyle;
import java.util.Locale;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PersonalSelectionsUiModelMapperKt {
    public static final PersonalSharingUiModel a(PersonalSharing personalSharing, Locale locale) {
        personalSharing.getClass();
        String str = personalSharing.f67801a;
        String str2 = personalSharing.f67802b;
        SelectionTypeUiModel selectionTypeUiModelB = PersonalSelectionsDetailUiModelMapperKt.b(personalSharing.f67803c);
        String str3 = personalSharing.d;
        String str4 = personalSharing.f67804e;
        String strD = DateTimeUtils.d(locale, personalSharing.f67805f, "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", FormatStyle.MEDIUM);
        if (strD == null) {
            strD = "";
        }
        return new PersonalSharingUiModel(str, str2, selectionTypeUiModelB, str3, str4, strD, personalSharing.g);
    }
}
