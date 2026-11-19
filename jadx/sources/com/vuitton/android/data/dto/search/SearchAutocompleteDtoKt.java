package com.vuitton.android.data.dto.search;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.AssetImageDto;
import com.vuitton.android.data.dto.common.mapper.AssetMapperKt;
import com.vuitton.android.data.dto.linktype.ContributionLinkLegacyDto;
import com.vuitton.android.data.dto.linktype.LinkTypeDto;
import com.vuitton.android.data.dto.linktype.mapper.LinkTypeMapperKt;
import com.vuitton.foundation.model.domain.model.common.AssetImage;
import com.vuitton.foundation.model.domain.model.search.AutocompleteDisplay;
import com.vuitton.foundation.model.domain.model.search.SearchAutocomplete;
import com.vuitton.foundation.model.domain.model.search.SearchHint;
import com.vuitton.foundation.model.domain.model.search.SearchMatch;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class SearchAutocompleteDtoKt {
    public static final SearchAutocomplete a(SearchAutocompleteDto searchAutocompleteDto) {
        searchAutocompleteDto.getClass();
        List list = searchAutocompleteDto.f46781a;
        list.getClass();
        List<SearchMatchDto> list2 = list;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list2, 10));
        for (SearchMatchDto searchMatchDto : list2) {
            searchMatchDto.getClass();
            String str = searchMatchDto.f46789a;
            List list3 = searchMatchDto.f46790b;
            list3.getClass();
            List<AutocompleteDisplayDto> list4 = list3;
            ArrayList arrayList2 = new ArrayList(CollectionsKt.t(list4, 10));
            for (AutocompleteDisplayDto autocompleteDisplayDto : list4) {
                autocompleteDisplayDto.getClass();
                arrayList2.add(new AutocompleteDisplay(autocompleteDisplayDto.f46773a, autocompleteDisplayDto.f46774b));
            }
            arrayList.add(new SearchMatch(str, arrayList2));
        }
        List list5 = searchAutocompleteDto.f46782b;
        list5.getClass();
        List<SearchHintDto> list6 = list5;
        ArrayList arrayList3 = new ArrayList(CollectionsKt.t(list6, 10));
        for (SearchHintDto searchHintDto : list6) {
            searchHintDto.getClass();
            String str2 = searchHintDto.f46784a;
            String str3 = searchHintDto.f46785b;
            AssetImageDto assetImageDto = searchHintDto.f46786c;
            AssetImage assetImageB = assetImageDto != null ? AssetMapperKt.b(assetImageDto) : null;
            ContributionLinkLegacyDto contributionLinkLegacyDto = searchHintDto.d;
            LinkTypeDto linkTypeDto = contributionLinkLegacyDto.f46030a;
            String str4 = contributionLinkLegacyDto.f46031b;
            if (str4 == null) {
                str4 = "";
            }
            arrayList3.add(new SearchHint(str2, str3, assetImageB, LinkTypeMapperKt.a(linkTypeDto, str4, null)));
        }
        return new SearchAutocomplete(arrayList, arrayList3);
    }
}
