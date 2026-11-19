package com.vuitton.android.presentation.screen.catalog.models;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Triple;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class CatalogUiModelKt {
    public static final CategoryUiModel a(CatalogUiModel catalogUiModel, String str) {
        Object next;
        catalogUiModel.getClass();
        str.getClass();
        List list = catalogUiModel.f55353b;
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            CollectionsKt.j(arrayList, ((SectionUiModel) it.next()).f55376b);
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            next = it2.next();
            if (Intrinsics.c(((CategoryUiModel) next).f55363a, str)) {
                return (CategoryUiModel) next;
            }
        }
        next = null;
        return (CategoryUiModel) next;
    }

    /* JADX WARN: Code duplicated, block: B:33:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:35:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:48:0x00da  */
    public static final Triple b(CatalogUiModel catalogUiModel, String str) {
        Triple triple;
        SubcategoryRedirectionUiModel subcategoryRedirectionUiModel;
        Triple triple2;
        List list;
        List list2;
        str.getClass();
        List list3 = catalogUiModel.f55353b;
        ArrayList arrayList = new ArrayList();
        Iterator it = list3.iterator();
        while (it.hasNext()) {
            CollectionsKt.j(arrayList, ((SectionUiModel) it.next()).f55376b);
        }
        Iterator it2 = arrayList.iterator();
        do {
            triple = null;
            if (!it2.hasNext()) {
                break;
            }
            CategoryUiModel categoryUiModel = (CategoryUiModel) it2.next();
            List list4 = categoryUiModel.f55367f.f55361c;
            if (list4 != null) {
                ArrayList<SubcategoryUiModel> arrayList2 = new ArrayList();
                Iterator it3 = list4.iterator();
                while (it3.hasNext()) {
                    CollectionsKt.j(arrayList2, ((SubcategoryGroupsUiModel) it3.next()).f55378b);
                }
                for (SubcategoryUiModel subcategoryUiModel : arrayList2) {
                    SubcategoryRedirectionUiModel subcategoryRedirectionUiModel2 = subcategoryUiModel.f55384c;
                    if (subcategoryRedirectionUiModel2 != null && (list2 = subcategoryRedirectionUiModel2.f55379a) != null) {
                        List list5 = list2;
                        if ((list5 instanceof Collection) && list5.isEmpty()) {
                            subcategoryRedirectionUiModel = subcategoryUiModel.f55384c;
                            if (subcategoryRedirectionUiModel != null) {
                                triple2 = null;
                                break;
                                break;
                            }
                            triple2 = null;
                            break;
                            break;
                        }
                        Iterator it4 = list5.iterator();
                        while (true) {
                            if (!it4.hasNext()) {
                                subcategoryRedirectionUiModel = subcategoryUiModel.f55384c;
                                if (subcategoryRedirectionUiModel != null) {
                                    triple2 = null;
                                    break;
                                    break;
                                }
                                triple2 = null;
                                break;
                                break;
                            }
                            if (Intrinsics.c(((PLPEntryUiModel) it4.next()).f55373b, str)) {
                                triple2 = new Triple(categoryUiModel, subcategoryUiModel, PlpEntryType.Classic);
                            }
                        }
                    } else {
                        subcategoryRedirectionUiModel = subcategoryUiModel.f55384c;
                        if (subcategoryRedirectionUiModel != null || (list = subcategoryRedirectionUiModel.f55380b) == null) {
                            triple2 = null;
                            break;
                        }
                        List list6 = list;
                        if (!(list6 instanceof Collection) || !list6.isEmpty()) {
                            Iterator it5 = list6.iterator();
                            while (true) {
                                if (!it5.hasNext()) {
                                    triple2 = null;
                                    break;
                                    break;
                                }
                                if (Intrinsics.c(((PLPEntryUiModel) it5.next()).f55373b, str)) {
                                    triple2 = new Triple(categoryUiModel, subcategoryUiModel, PlpEntryType.Thematic);
                                    break;
                                }
                            }
                        } else {
                            triple2 = null;
                            break;
                            break;
                        }
                    }
                    if (triple2 != null) {
                        triple = triple2;
                        break;
                    }
                }
            }
        } while (triple == null);
        return triple;
    }

    public static final SubcategoryUiModel c(CategoryUiModel categoryUiModel, String str) {
        List list = categoryUiModel.f55367f.f55361c;
        Object obj = null;
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            CollectionsKt.j(arrayList, ((SubcategoryGroupsUiModel) it.next()).f55378b);
        }
        for (Object obj2 : arrayList) {
            if (Intrinsics.c(((SubcategoryUiModel) obj2).f55382a, str)) {
                obj = obj2;
                break;
            }
        }
        return (SubcategoryUiModel) obj;
    }

    public static final List d(CatalogUiModel catalogUiModel, String str, String str2) {
        CategoryRedirectionUiModel categoryRedirectionUiModel;
        SubcategoryUiModel subcategoryUiModelC;
        SubcategoryRedirectionUiModel subcategoryRedirectionUiModel;
        str.getClass();
        List list = null;
        CategoryUiModel categoryUiModelA = catalogUiModel != null ? a(catalogUiModel, str) : null;
        if (str2 != null) {
            List list2 = (categoryUiModelA == null || (subcategoryUiModelC = c(categoryUiModelA, str2)) == null || (subcategoryRedirectionUiModel = subcategoryUiModelC.f55384c) == null) ? null : subcategoryRedirectionUiModel.f55380b;
            if (list2 == null) {
                list2 = EmptyList.f71768b;
            }
            if (list2 != null) {
                return list2;
            }
        }
        if (categoryUiModelA != null && (categoryRedirectionUiModel = categoryUiModelA.f55367f) != null) {
            list = categoryRedirectionUiModel.f55360b;
        }
        return list == null ? EmptyList.f71768b : list;
    }
}
