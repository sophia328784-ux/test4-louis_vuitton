package com.vuitton.android.data.dto.catalog.thematicplp.mapper;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.catalog.thematicplp.CurrentThemeDto;
import com.vuitton.android.data.dto.catalog.thematicplp.ThematicPlpThemesDto;
import com.vuitton.android.data.dto.catalog.thematicplp.ThemeDto;
import com.vuitton.android.data.dto.catalog.thematicplp.ThemeItemDto;
import com.vuitton.android.data.dto.common.AssetDto;
import com.vuitton.android.data.dto.common.mapper.AssetMapperKt;
import com.vuitton.android.data.dto.productshort.mapper.ProductShortMapperKt;
import com.vuitton.foundation.model.domain.model.catalog.thematicplp.CurrentTheme;
import com.vuitton.foundation.model.domain.model.catalog.thematicplp.ThematicPlpThemes;
import com.vuitton.foundation.model.domain.model.catalog.thematicplp.Theme;
import com.vuitton.foundation.model.domain.model.catalog.thematicplp.ThemeItem;
import com.vuitton.foundation.model.domain.model.productshortlist.ProductShort;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ThematicPlpThemesMapperKt {
    public static final ThematicPlpThemes a(ThematicPlpThemesDto thematicPlpThemesDto) throws Throwable {
        thematicPlpThemesDto.getClass();
        String str = thematicPlpThemesDto.f45128a;
        List<ThemeDto> list = thematicPlpThemesDto.f45129b;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
        for (ThemeDto themeDto : list) {
            themeDto.getClass();
            arrayList.add(new Theme(themeDto.f45132a, themeDto.f45133b, themeDto.f45134c, AssetMapperKt.b(themeDto.d), themeDto.f45135e));
        }
        CurrentThemeDto currentThemeDto = thematicPlpThemesDto.f45130c;
        currentThemeDto.getClass();
        String str2 = currentThemeDto.f45124a;
        Integer num = currentThemeDto.f45125b;
        List<ThemeItemDto> list2 = currentThemeDto.f45126c;
        ArrayList arrayList2 = new ArrayList(CollectionsKt.t(list2, 10));
        for (ThemeItemDto themeItemDto : list2) {
            themeItemDto.getClass();
            ProductShort productShortA = ProductShortMapperKt.a(themeItemDto.f45137a, ThematicPlpThemesMapperKt$toDomain$3.f45140b);
            AssetDto assetDto = themeItemDto.f45138b;
            arrayList2.add(new ThemeItem(productShortA, assetDto != null ? AssetMapperKt.a(assetDto) : null));
        }
        return new ThematicPlpThemes(str, arrayList, new CurrentTheme(str2, num, arrayList2));
    }
}
