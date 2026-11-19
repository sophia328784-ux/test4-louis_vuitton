package com.vuitton.android.presentation.screen.catalog.mappers;

import com.vuitton.android.presentation.common.editorial.mapper.EditorialModuleUiModelMapperKt;
import com.vuitton.android.presentation.common.editorial.models.EditorialModuleUiModel;
import com.vuitton.android.presentation.contributionlink.ContributionLinkUiModelKt;
import com.vuitton.android.presentation.model.common.AssetUiModel;
import com.vuitton.android.presentation.model.common.mapper.AssetMapperKt;
import com.vuitton.android.presentation.screen.catalog.models.CatalogUiModel;
import com.vuitton.android.presentation.screen.catalog.models.CategoryRedirectionUiModel;
import com.vuitton.android.presentation.screen.catalog.models.CategoryTagUiModel;
import com.vuitton.android.presentation.screen.catalog.models.CategoryUiModel;
import com.vuitton.android.presentation.screen.catalog.models.SectionUiModel;
import com.vuitton.android.presentation.screen.catalog.models.SubcategoryGroupsUiModel;
import com.vuitton.android.presentation.screen.catalog.models.SubcategoryRedirectionUiModel;
import com.vuitton.android.presentation.screen.catalog.models.SubcategoryUiModel;
import com.vuitton.foundation.model.domain.model.catalog.Catalog;
import com.vuitton.foundation.model.domain.model.catalog.Category;
import com.vuitton.foundation.model.domain.model.catalog.CategoryRedirection;
import com.vuitton.foundation.model.domain.model.catalog.CategoryTag;
import com.vuitton.foundation.model.domain.model.catalog.PLPEntry;
import com.vuitton.foundation.model.domain.model.catalog.Section;
import com.vuitton.foundation.model.domain.model.catalog.Subcategory;
import com.vuitton.foundation.model.domain.model.catalog.SubcategoryGroups;
import com.vuitton.foundation.model.domain.model.catalog.SubcategoryRedirection;
import com.vuitton.foundation.model.domain.model.common.editorial.EditorialModule;
import com.vuitton.foundation.model.domain.model.contributionlink.ContributionLink;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class CatalogMapperKt {
    public static final CatalogUiModel a(Catalog catalog) {
        ArrayList arrayList;
        ArrayList arrayList2;
        ArrayList arrayList3;
        SubcategoryRedirectionUiModel subcategoryRedirectionUiModel;
        ArrayList arrayList4;
        ArrayList arrayList5;
        catalog.getClass();
        AssetUiModel assetUiModelB = AssetMapperKt.b(catalog.f67007a);
        List list = catalog.f67008b;
        int i2 = 10;
        ArrayList arrayList6 = new ArrayList(CollectionsKt.t(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Section section = (Section) it.next();
            section.getClass();
            String str = section.f67021a;
            List list2 = section.f67022b;
            ArrayList arrayList7 = new ArrayList(CollectionsKt.t(list2, i2));
            Iterator it2 = list2.iterator();
            while (it2.hasNext()) {
                Category category = (Category) it2.next();
                category.getClass();
                String str2 = category.f67009a;
                String str3 = category.f67010b;
                AssetUiModel assetUiModelB2 = AssetMapperKt.b(category.f67011c);
                CategoryTag categoryTag = category.d;
                CategoryTagUiModel categoryTagUiModel = categoryTag != null ? new CategoryTagUiModel(categoryTag.f67017a) : null;
                EditorialModule.CarouselMedium carouselMedium = category.f67012e;
                EditorialModuleUiModel.CarouselMUiModel carouselMUiModel = (EditorialModuleUiModel.CarouselMUiModel) (carouselMedium != null ? EditorialModuleUiModelMapperKt.b(carouselMedium) : null);
                CategoryRedirection categoryRedirection = category.f67013f;
                categoryRedirection.getClass();
                List list3 = categoryRedirection.f67014a;
                if (list3 != null) {
                    List list4 = list3;
                    arrayList = new ArrayList(CollectionsKt.t(list4, i2));
                    Iterator it3 = list4.iterator();
                    while (it3.hasNext()) {
                        arrayList.add(PLPEntryMapperKt.a((PLPEntry) it3.next()));
                    }
                } else {
                    arrayList = null;
                }
                List list5 = categoryRedirection.f67015b;
                if (list5 != null) {
                    List list6 = list5;
                    arrayList2 = new ArrayList(CollectionsKt.t(list6, i2));
                    Iterator it4 = list6.iterator();
                    while (it4.hasNext()) {
                        arrayList2.add(PLPEntryMapperKt.a((PLPEntry) it4.next()));
                    }
                } else {
                    arrayList2 = null;
                }
                List list7 = categoryRedirection.f67016c;
                if (list7 != null) {
                    List list8 = list7;
                    arrayList3 = new ArrayList(CollectionsKt.t(list8, i2));
                    Iterator it5 = list8.iterator();
                    while (it5.hasNext()) {
                        SubcategoryGroups subcategoryGroups = (SubcategoryGroups) it5.next();
                        subcategoryGroups.getClass();
                        String str4 = subcategoryGroups.f67026a;
                        List list9 = subcategoryGroups.f67027b;
                        Iterator it6 = it5;
                        String str5 = str2;
                        String str6 = str3;
                        ArrayList arrayList8 = new ArrayList(CollectionsKt.t(list9, 10));
                        Iterator it7 = list9.iterator();
                        while (it7.hasNext()) {
                            Subcategory subcategory = (Subcategory) it7.next();
                            subcategory.getClass();
                            Iterator it8 = it7;
                            String str7 = subcategory.f67023a;
                            AssetUiModel assetUiModel = assetUiModelB2;
                            String str8 = subcategory.f67024b;
                            SubcategoryRedirection subcategoryRedirection = subcategory.f67025c;
                            if (subcategoryRedirection != null) {
                                List list10 = subcategoryRedirection.f67028a;
                                if (list10 != null) {
                                    List list11 = list10;
                                    arrayList4 = new ArrayList(CollectionsKt.t(list11, 10));
                                    Iterator it9 = list11.iterator();
                                    while (it9.hasNext()) {
                                        arrayList4.add(PLPEntryMapperKt.a((PLPEntry) it9.next()));
                                    }
                                } else {
                                    arrayList4 = null;
                                }
                                List list12 = subcategoryRedirection.f67029b;
                                if (list12 != null) {
                                    List list13 = list12;
                                    arrayList5 = new ArrayList(CollectionsKt.t(list13, 10));
                                    Iterator it10 = list13.iterator();
                                    while (it10.hasNext()) {
                                        arrayList5.add(PLPEntryMapperKt.a((PLPEntry) it10.next()));
                                    }
                                } else {
                                    arrayList5 = null;
                                }
                                ContributionLink contributionLink = subcategoryRedirection.f67030c;
                                subcategoryRedirectionUiModel = new SubcategoryRedirectionUiModel(arrayList4, arrayList5, contributionLink != null ? ContributionLinkUiModelKt.a(contributionLink) : null);
                            } else {
                                assetUiModelB = assetUiModelB;
                                arrayList6 = arrayList6;
                                str = str;
                                carouselMUiModel = carouselMUiModel;
                                subcategoryRedirectionUiModel = null;
                            }
                            arrayList8.add(new SubcategoryUiModel(str7, str8, subcategoryRedirectionUiModel));
                            str = str;
                            it7 = it8;
                            assetUiModelB2 = assetUiModel;
                            categoryTagUiModel = categoryTagUiModel;
                            carouselMUiModel = carouselMUiModel;
                            assetUiModelB = assetUiModelB;
                            arrayList6 = arrayList6;
                        }
                        arrayList3.add(new SubcategoryGroupsUiModel(str4, arrayList8));
                        i2 = 10;
                        it5 = it6;
                        str2 = str5;
                        str3 = str6;
                        categoryTagUiModel = categoryTagUiModel;
                        assetUiModelB = assetUiModelB;
                    }
                } else {
                    arrayList3 = null;
                }
                AssetUiModel assetUiModel2 = assetUiModelB;
                ArrayList arrayList9 = arrayList6;
                String str9 = str;
                String str10 = str2;
                String str11 = str3;
                AssetUiModel assetUiModel3 = assetUiModelB2;
                CategoryTagUiModel categoryTagUiModel2 = categoryTagUiModel;
                EditorialModuleUiModel.CarouselMUiModel carouselMUiModel2 = carouselMUiModel;
                int i3 = i2;
                ContributionLink contributionLink2 = categoryRedirection.d;
                arrayList7.add(new CategoryUiModel(str10, str11, assetUiModel3, categoryTagUiModel2, carouselMUiModel2, new CategoryRedirectionUiModel(arrayList, arrayList2, arrayList3, contributionLink2 != null ? ContributionLinkUiModelKt.a(contributionLink2) : null)));
                i2 = i3;
                it = it;
                it2 = it2;
                str = str9;
                assetUiModelB = assetUiModel2;
                arrayList6 = arrayList9;
            }
            arrayList6 = arrayList6;
            arrayList6.add(new SectionUiModel(str, arrayList7));
            it = it;
            assetUiModelB = assetUiModelB;
        }
        return new CatalogUiModel(assetUiModelB, arrayList6);
    }
}
