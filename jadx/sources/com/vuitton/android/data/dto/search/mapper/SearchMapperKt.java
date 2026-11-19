package com.vuitton.android.data.dto.search.mapper;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.producttiny.ProductTinyDto;
import com.vuitton.android.data.dto.producttiny.mapper.ProductTinyMapperKt;
import com.vuitton.android.data.dto.search.LiveSearchDto;
import com.vuitton.android.data.dto.search.LiveSearchTypeDto;
import com.vuitton.android.data.dto.search.TrendingDto;
import com.vuitton.foundation.model.domain.model.search.LiveSearch;
import com.vuitton.foundation.model.domain.model.search.LiveSearchType;
import com.vuitton.foundation.model.domain.model.search.Trending;
import defpackage.v40;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class SearchMapperKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f46795a;

        static {
            int[] iArr = new int[LiveSearchTypeDto.values().length];
            try {
                iArr[LiveSearchTypeDto.SEARCHING_RESULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LiveSearchTypeDto.SUGGESTION_RESULT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f46795a = iArr;
        }
    }

    public static final LiveSearch a(LiveSearchDto liveSearchDto) {
        LiveSearchType liveSearchType;
        liveSearchDto.getClass();
        List list = liveSearchDto.f46776a;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(ProductTinyMapperKt.a((ProductTinyDto) it.next()));
        }
        int i2 = WhenMappings.f46795a[liveSearchDto.f46777b.ordinal()];
        ArrayList arrayList2 = null;
        if (i2 == 1) {
            liveSearchType = LiveSearchType.SEARCHING_RESULT;
        } else {
            if (i2 != 2) {
                v40.g();
                return null;
            }
            liveSearchType = LiveSearchType.SUGGESTION_RESULT;
        }
        List list2 = liveSearchDto.f46778c;
        if (list2 != null) {
            List<TrendingDto> list3 = list2;
            arrayList2 = new ArrayList(CollectionsKt.t(list3, 10));
            for (TrendingDto trendingDto : list3) {
                trendingDto.getClass();
                arrayList2.add(new Trending(trendingDto.f46792a, trendingDto.f46793b));
            }
        }
        return new LiveSearch(arrayList, liveSearchType, arrayList2);
    }
}
