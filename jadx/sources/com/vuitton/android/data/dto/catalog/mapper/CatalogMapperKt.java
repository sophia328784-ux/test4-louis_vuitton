package com.vuitton.android.data.dto.catalog.mapper;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.catalog.CatalogDto;
import com.vuitton.android.data.dto.catalog.CategoryDto;
import com.vuitton.android.data.dto.catalog.CategoryRedirectionDto;
import com.vuitton.android.data.dto.catalog.CategoryTagDto;
import com.vuitton.android.data.dto.catalog.PLPEntryDto;
import com.vuitton.android.data.dto.catalog.SectionDto;
import com.vuitton.android.data.dto.catalog.SubcategoryDto;
import com.vuitton.android.data.dto.catalog.SubcategoryGroupsDto;
import com.vuitton.android.data.dto.catalog.SubcategoryRedirectionDto;
import com.vuitton.android.data.dto.common.editorial.EditorialModuleDto;
import com.vuitton.android.data.dto.common.editorial.mapper.EditorialModuleMapperKt;
import com.vuitton.android.data.dto.common.mapper.AssetMapperKt;
import com.vuitton.android.data.dto.linktype.ContributionLinkDto;
import com.vuitton.android.data.dto.linktype.mapper.ContributionLinkMapperKt;
import com.vuitton.foundation.model.domain.model.catalog.Catalog;
import com.vuitton.foundation.model.domain.model.catalog.Category;
import com.vuitton.foundation.model.domain.model.catalog.CategoryRedirection;
import com.vuitton.foundation.model.domain.model.catalog.CategoryTag;
import com.vuitton.foundation.model.domain.model.catalog.Section;
import com.vuitton.foundation.model.domain.model.catalog.Subcategory;
import com.vuitton.foundation.model.domain.model.catalog.SubcategoryGroups;
import com.vuitton.foundation.model.domain.model.catalog.SubcategoryRedirection;
import com.vuitton.foundation.model.domain.model.common.Asset;
import com.vuitton.foundation.model.domain.model.common.editorial.EditorialModule;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class CatalogMapperKt {
    public static final Catalog a(CatalogDto catalogDto) throws Throwable {
        ArrayList arrayList;
        ArrayList arrayList2;
        ArrayList arrayList3;
        SubcategoryRedirection subcategoryRedirection;
        ArrayList arrayList4;
        ArrayList arrayList5;
        catalogDto.getClass();
        Asset assetA = AssetMapperKt.a(catalogDto.f45088a);
        List list = catalogDto.f45089b;
        int i2 = 10;
        ArrayList arrayList6 = new ArrayList(CollectionsKt.t(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            SectionDto sectionDto = (SectionDto) it.next();
            sectionDto.getClass();
            String str = sectionDto.f45109a;
            List list2 = sectionDto.f45110b;
            ArrayList arrayList7 = new ArrayList(CollectionsKt.t(list2, i2));
            Iterator it2 = list2.iterator();
            while (it2.hasNext()) {
                CategoryDto categoryDto = (CategoryDto) it2.next();
                categoryDto.getClass();
                String str2 = categoryDto.f45091a;
                String str3 = categoryDto.f45092b;
                Asset assetA2 = AssetMapperKt.a(categoryDto.f45093c);
                CategoryTagDto categoryTagDto = categoryDto.d;
                CategoryTag categoryTag = categoryTagDto != null ? new CategoryTag(categoryTagDto.f45102a) : null;
                EditorialModuleDto.CarouselMediumSectionDto carouselMediumSectionDto = categoryDto.f45094e;
                EditorialModule.CarouselMedium carouselMediumE = carouselMediumSectionDto != null ? EditorialModuleMapperKt.e(carouselMediumSectionDto, categoryDto.f45091a) : null;
                CategoryRedirectionDto categoryRedirectionDto = categoryDto.f45095f;
                categoryRedirectionDto.getClass();
                List list3 = categoryRedirectionDto.f45098a;
                if (list3 != null) {
                    List list4 = list3;
                    arrayList = new ArrayList(CollectionsKt.t(list4, i2));
                    Iterator it3 = list4.iterator();
                    while (it3.hasNext()) {
                        arrayList.add(PLPEntryMapperKt.a((PLPEntryDto) it3.next()));
                    }
                } else {
                    arrayList = null;
                }
                List list5 = categoryRedirectionDto.f45099b;
                if (list5 != null) {
                    List list6 = list5;
                    arrayList2 = new ArrayList(CollectionsKt.t(list6, i2));
                    Iterator it4 = list6.iterator();
                    while (it4.hasNext()) {
                        arrayList2.add(PLPEntryMapperKt.a((PLPEntryDto) it4.next()));
                    }
                } else {
                    arrayList2 = null;
                }
                List list7 = categoryRedirectionDto.f45100c;
                if (list7 != null) {
                    List list8 = list7;
                    arrayList3 = new ArrayList(CollectionsKt.t(list8, i2));
                    Iterator it5 = list8.iterator();
                    while (it5.hasNext()) {
                        SubcategoryGroupsDto subcategoryGroupsDto = (SubcategoryGroupsDto) it5.next();
                        subcategoryGroupsDto.getClass();
                        String str4 = subcategoryGroupsDto.f45117a;
                        List list9 = subcategoryGroupsDto.f45118b;
                        Iterator it6 = it5;
                        String str5 = str2;
                        String str6 = str3;
                        ArrayList arrayList8 = new ArrayList(CollectionsKt.t(list9, 10));
                        Iterator it7 = list9.iterator();
                        while (it7.hasNext()) {
                            SubcategoryDto subcategoryDto = (SubcategoryDto) it7.next();
                            subcategoryDto.getClass();
                            Iterator it8 = it7;
                            String str7 = subcategoryDto.f45112a;
                            Asset asset = assetA2;
                            String str8 = subcategoryDto.f45113b;
                            SubcategoryRedirectionDto subcategoryRedirectionDto = subcategoryDto.f45114c;
                            if (subcategoryRedirectionDto != null) {
                                List list10 = subcategoryRedirectionDto.f45120a;
                                if (list10 != null) {
                                    List list11 = list10;
                                    arrayList4 = new ArrayList(CollectionsKt.t(list11, 10));
                                    Iterator it9 = list11.iterator();
                                    while (it9.hasNext()) {
                                        arrayList4.add(PLPEntryMapperKt.a((PLPEntryDto) it9.next()));
                                    }
                                } else {
                                    arrayList4 = null;
                                }
                                List list12 = subcategoryRedirectionDto.f45121b;
                                if (list12 != null) {
                                    List list13 = list12;
                                    arrayList5 = new ArrayList(CollectionsKt.t(list13, 10));
                                    Iterator it10 = list13.iterator();
                                    while (it10.hasNext()) {
                                        arrayList5.add(PLPEntryMapperKt.a((PLPEntryDto) it10.next()));
                                    }
                                } else {
                                    arrayList5 = null;
                                }
                                ContributionLinkDto contributionLinkDto = subcategoryRedirectionDto.f45122c;
                                subcategoryRedirection = new SubcategoryRedirection(arrayList4, arrayList5, contributionLinkDto != null ? ContributionLinkMapperKt.a(contributionLinkDto) : null);
                            } else {
                                assetA = assetA;
                                arrayList6 = arrayList6;
                                str = str;
                                carouselMediumE = carouselMediumE;
                                subcategoryRedirection = null;
                            }
                            arrayList8.add(new Subcategory(str7, str8, subcategoryRedirection));
                            str = str;
                            it7 = it8;
                            assetA2 = asset;
                            categoryTag = categoryTag;
                            carouselMediumE = carouselMediumE;
                            assetA = assetA;
                            arrayList6 = arrayList6;
                        }
                        arrayList3.add(new SubcategoryGroups(str4, arrayList8));
                        i2 = 10;
                        it5 = it6;
                        str2 = str5;
                        str3 = str6;
                        categoryTag = categoryTag;
                        assetA = assetA;
                    }
                } else {
                    arrayList3 = null;
                }
                Asset asset2 = assetA;
                ArrayList arrayList9 = arrayList6;
                String str9 = str;
                String str10 = str2;
                String str11 = str3;
                Asset asset3 = assetA2;
                CategoryTag categoryTag2 = categoryTag;
                EditorialModule.CarouselMedium carouselMedium = carouselMediumE;
                int i3 = i2;
                ContributionLinkDto contributionLinkDto2 = categoryRedirectionDto.d;
                arrayList7.add(new Category(str10, str11, asset3, categoryTag2, carouselMedium, new CategoryRedirection(arrayList, arrayList2, arrayList3, contributionLinkDto2 != null ? ContributionLinkMapperKt.a(contributionLinkDto2) : null)));
                i2 = i3;
                it = it;
                it2 = it2;
                str = str9;
                assetA = asset2;
                arrayList6 = arrayList9;
            }
            arrayList6 = arrayList6;
            arrayList6.add(new Section(str, arrayList7));
            it = it;
            assetA = assetA;
        }
        return new Catalog(assetA, arrayList6);
    }
}
