package com.vuitton.android.presentation.screen.catalog.mappers;

import com.vuitton.android.presentation.model.common.mapper.AssetMapperKt;
import com.vuitton.android.presentation.screen.catalog.models.PLPEntryUiModel;
import com.vuitton.foundation.model.domain.model.catalog.PLPEntry;
import com.vuitton.foundation.model.domain.model.common.AssetImage;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PLPEntryMapperKt {
    public static final PLPEntryUiModel a(PLPEntry pLPEntry) {
        pLPEntry.getClass();
        String str = pLPEntry.f67018a;
        String str2 = pLPEntry.f67019b;
        String str3 = pLPEntry.f67020c;
        AssetImage assetImage = pLPEntry.d;
        return new PLPEntryUiModel(str, str2, str3, assetImage != null ? AssetMapperKt.a(assetImage) : null);
    }
}
