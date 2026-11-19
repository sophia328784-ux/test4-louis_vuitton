package com.vuitton.android.presentation.screen.catalog.thematicplp.models.mapper;

import com.vuitton.android.presentation.model.common.mapper.AssetMapperKt;
import com.vuitton.android.presentation.screen.catalog.thematicplp.models.CurrentThemeUiModel;
import com.vuitton.android.presentation.screen.catalog.thematicplp.models.ThemeItemUiModel;
import com.vuitton.android.presentation.screen.catalog.thematicplp.models.ThemeUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductShortUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.mapper.ProductShortMapperKt;
import com.vuitton.foundation.model.domain.model.catalog.thematicplp.CurrentTheme;
import com.vuitton.foundation.model.domain.model.catalog.thematicplp.Theme;
import com.vuitton.foundation.model.domain.model.catalog.thematicplp.ThemeItem;
import com.vuitton.foundation.model.domain.model.common.Asset;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ThematicPlpThemesMapperKt {
    public static final CurrentThemeUiModel a(CurrentTheme currentTheme) {
        currentTheme.getClass();
        String str = currentTheme.f67031a;
        Integer num = currentTheme.f67032b;
        List<ThemeItem> list = currentTheme.f67033c;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
        for (ThemeItem themeItem : list) {
            themeItem.getClass();
            ProductShortUiModel productShortUiModelD = ProductShortMapperKt.d(themeItem.f67041a);
            Asset asset = themeItem.f67042b;
            arrayList.add(new ThemeItemUiModel(productShortUiModelD, asset != null ? AssetMapperKt.b(asset) : null, false, false, 4, null));
        }
        return new CurrentThemeUiModel(str, num, arrayList);
    }

    public static final ArrayList b(List list) {
        list.getClass();
        List<Theme> list2 = list;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list2, 10));
        for (Theme theme : list2) {
            theme.getClass();
            arrayList.add(new ThemeUiModel(theme.f67037a, theme.f67038b, theme.f67039c, AssetMapperKt.a(theme.d), theme.f67040e));
        }
        return arrayList;
    }
}
