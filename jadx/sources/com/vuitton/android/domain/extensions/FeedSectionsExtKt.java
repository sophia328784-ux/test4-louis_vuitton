package com.vuitton.android.domain.extensions;

import com.vuitton.foundation.model.domain.model.common.editorial.EditorialModule;
import com.vuitton.foundation.model.domain.model.common.editorial.EditorialModuleSlide;
import com.vuitton.foundation.model.domain.model.contributionlink.ContributionLink;
import com.vuitton.foundation.model.domain.model.exclusivesales.ExclusiveSalesCategoryLinks;
import com.vuitton.foundation.model.domain.model.feed.Feed;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"domain"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class FeedSectionsExtKt {
    /* JADX WARN: Code duplicated, block: B:23:0x0060 A[EDGE_INSN: B:23:0x0060->B:126:0x0203 BREAK  A[LOOP:1: B:18:0x0048->B:136:?]] */
    public static final ArrayList a(Feed feed, List list) {
        feed.getClass();
        list.getClass();
        List<Object> list2 = feed.f67577a;
        ArrayList arrayList = new ArrayList();
        for (Object objA : list2) {
            if (objA instanceof EditorialModule.Card) {
                ContributionLink contributionLink = ((EditorialModule.Card) objA).f67159c;
                ContributionLink.ExclusiveOffer exclusiveOffer = contributionLink instanceof ContributionLink.ExclusiveOffer ? (ContributionLink.ExclusiveOffer) contributionLink : null;
                if (exclusiveOffer != null) {
                    List list3 = list;
                    if (!(list3 instanceof Collection) || !list3.isEmpty()) {
                        Iterator it = list3.iterator();
                        do {
                            if (!it.hasNext()) {
                                objA = null;
                                break;
                            }
                        } while (!Intrinsics.c(((ExclusiveSalesCategoryLinks) it.next()).f67571a, exclusiveOffer.f67435a));
                    } else {
                        objA = null;
                        break;
                    }
                }
            } else if (objA instanceof EditorialModule.Event) {
                ContributionLink contributionLink2 = ((EditorialModule.Event) objA).f67179c;
                ContributionLink.ExclusiveOffer exclusiveOffer2 = contributionLink2 instanceof ContributionLink.ExclusiveOffer ? (ContributionLink.ExclusiveOffer) contributionLink2 : null;
                if (exclusiveOffer2 != null) {
                    List list4 = list;
                    if (!(list4 instanceof Collection) || !list4.isEmpty()) {
                        Iterator it2 = list4.iterator();
                        do {
                            if (!it2.hasNext()) {
                                objA = null;
                                break;
                            }
                        } while (!Intrinsics.c(((ExclusiveSalesCategoryLinks) it2.next()).f67571a, exclusiveOffer2.f67435a));
                    } else {
                        objA = null;
                        break;
                    }
                }
            } else if (objA instanceof EditorialModule.CarouselLargeSingle) {
                ContributionLink contributionLink3 = ((EditorialModule.CarouselLargeSingle) objA).f67168e;
                ContributionLink.ExclusiveOffer exclusiveOffer3 = contributionLink3 instanceof ContributionLink.ExclusiveOffer ? (ContributionLink.ExclusiveOffer) contributionLink3 : null;
                if (exclusiveOffer3 != null) {
                    List list5 = list;
                    if (!(list5 instanceof Collection) || !list5.isEmpty()) {
                        Iterator it3 = list5.iterator();
                        do {
                            if (!it3.hasNext()) {
                                objA = null;
                                break;
                            }
                        } while (!Intrinsics.c(((ExclusiveSalesCategoryLinks) it3.next()).f67571a, exclusiveOffer3.f67435a));
                    } else {
                        objA = null;
                        break;
                    }
                }
            } else if (objA instanceof EditorialModule.CarouselLargeMultiple) {
                EditorialModule.CarouselLargeMultiple carouselLargeMultiple = (EditorialModule.CarouselLargeMultiple) objA;
                List list6 = carouselLargeMultiple.f67164c;
                ArrayList arrayList2 = new ArrayList();
                for (Object obj : list6) {
                    ContributionLink contributionLink4 = ((EditorialModuleSlide) obj).d;
                    ContributionLink.ExclusiveOffer exclusiveOffer4 = contributionLink4 instanceof ContributionLink.ExclusiveOffer ? (ContributionLink.ExclusiveOffer) contributionLink4 : null;
                    if (exclusiveOffer4 != null) {
                        List list7 = list;
                        if (!(list7 instanceof Collection) || !list7.isEmpty()) {
                            Iterator it4 = list7.iterator();
                            while (it4.hasNext()) {
                                if (Intrinsics.c(((ExclusiveSalesCategoryLinks) it4.next()).f67571a, exclusiveOffer4.f67435a)) {
                                }
                            }
                        }
                    }
                    arrayList2.add(obj);
                }
                objA = EditorialModule.CarouselLargeMultiple.a(carouselLargeMultiple, arrayList2);
            } else if (objA instanceof EditorialModule.CarouselMedium) {
                EditorialModule.CarouselMedium carouselMedium = (EditorialModule.CarouselMedium) objA;
                List list8 = carouselMedium.f67171c;
                ArrayList arrayList3 = new ArrayList();
                for (Object obj2 : list8) {
                    ContributionLink contributionLink5 = ((EditorialModuleSlide) obj2).d;
                    ContributionLink.ExclusiveOffer exclusiveOffer5 = contributionLink5 instanceof ContributionLink.ExclusiveOffer ? (ContributionLink.ExclusiveOffer) contributionLink5 : null;
                    if (exclusiveOffer5 != null) {
                        List list9 = list;
                        if (!(list9 instanceof Collection) || !list9.isEmpty()) {
                            Iterator it5 = list9.iterator();
                            while (it5.hasNext()) {
                                if (Intrinsics.c(((ExclusiveSalesCategoryLinks) it5.next()).f67571a, exclusiveOffer5.f67435a)) {
                                }
                            }
                        }
                    }
                    arrayList3.add(obj2);
                }
                objA = EditorialModule.CarouselMedium.a(carouselMedium, arrayList3);
            } else if (objA instanceof EditorialModule.SlideShow) {
                EditorialModule.SlideShow slideShow = (EditorialModule.SlideShow) objA;
                List list10 = slideShow.f67204c;
                ArrayList arrayList4 = new ArrayList();
                for (Object obj3 : list10) {
                    ContributionLink contributionLink6 = ((EditorialModuleSlide) obj3).d;
                    ContributionLink.ExclusiveOffer exclusiveOffer6 = contributionLink6 instanceof ContributionLink.ExclusiveOffer ? (ContributionLink.ExclusiveOffer) contributionLink6 : null;
                    if (exclusiveOffer6 != null) {
                        List list11 = list;
                        if (!(list11 instanceof Collection) || !list11.isEmpty()) {
                            Iterator it6 = list11.iterator();
                            while (it6.hasNext()) {
                                if (Intrinsics.c(((ExclusiveSalesCategoryLinks) it6.next()).f67571a, exclusiveOffer6.f67435a)) {
                                }
                            }
                        }
                    }
                    arrayList4.add(obj3);
                }
                objA = EditorialModule.SlideShow.a(slideShow, arrayList4);
            }
            if (objA != null) {
                arrayList.add(objA);
            }
        }
        return arrayList;
    }

    public static final boolean b(Feed feed) {
        boolean z;
        feed.getClass();
        List<EditorialModule> list = feed.f67577a;
        if ((list instanceof Collection) && list.isEmpty()) {
            return false;
        }
        for (EditorialModule editorialModule : list) {
            if (editorialModule instanceof EditorialModule.Card) {
                z = ((EditorialModule.Card) editorialModule).f67159c instanceof ContributionLink.ExclusiveOffer;
            } else if (editorialModule instanceof EditorialModule.Event) {
                z = ((EditorialModule.Event) editorialModule).f67179c instanceof ContributionLink.ExclusiveOffer;
            } else if (editorialModule instanceof EditorialModule.SlideShow) {
                List list2 = ((EditorialModule.SlideShow) editorialModule).f67204c;
                if (!(list2 instanceof Collection) || !list2.isEmpty()) {
                    Iterator it = list2.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            if (((EditorialModuleSlide) it.next()).d instanceof ContributionLink.ExclusiveOffer) {
                                z = true;
                            }
                        }
                    }
                }
                z = false;
            } else if (editorialModule instanceof EditorialModule.CarouselMedium) {
                List list3 = ((EditorialModule.CarouselMedium) editorialModule).f67171c;
                if (!(list3 instanceof Collection) || !list3.isEmpty()) {
                    Iterator it2 = list3.iterator();
                    while (true) {
                        if (it2.hasNext()) {
                            if (((EditorialModuleSlide) it2.next()).d instanceof ContributionLink.ExclusiveOffer) {
                                z = true;
                            }
                        }
                    }
                }
                z = false;
            } else {
                if (editorialModule instanceof EditorialModule.CarouselLargeMultiple) {
                    List list4 = ((EditorialModule.CarouselLargeMultiple) editorialModule).f67164c;
                    if (!(list4 instanceof Collection) || !list4.isEmpty()) {
                        Iterator it3 = list4.iterator();
                        while (true) {
                            if (it3.hasNext()) {
                                if (((EditorialModuleSlide) it3.next()).d instanceof ContributionLink.ExclusiveOffer) {
                                    z = true;
                                }
                            }
                        }
                    }
                } else if (editorialModule instanceof EditorialModule.CarouselLargeSingle) {
                    z = ((EditorialModule.CarouselLargeSingle) editorialModule).f67168e instanceof ContributionLink.ExclusiveOffer;
                }
                z = false;
            }
            if (z) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:10:0x002c  */
    public static final ArrayList c(Feed feed) {
        feed.getClass();
        List<Object> list = feed.f67577a;
        ArrayList arrayList = new ArrayList();
        for (Object objA : list) {
            if (objA instanceof EditorialModule.PushCard) {
                if (((EditorialModule.PushCard) objA).d instanceof ContributionLink.AICompanion) {
                    objA = null;
                }
            } else if (objA instanceof EditorialModule.Card) {
                if (((EditorialModule.Card) objA).f67159c instanceof ContributionLink.AICompanion) {
                    objA = null;
                }
            } else if (objA instanceof EditorialModule.Event) {
                if (((EditorialModule.Event) objA).f67179c instanceof ContributionLink.AICompanion) {
                    objA = null;
                }
            } else if (objA instanceof EditorialModule.CarouselLargeSingle) {
                if (((EditorialModule.CarouselLargeSingle) objA).f67168e instanceof ContributionLink.AICompanion) {
                    objA = null;
                }
            } else if (objA instanceof EditorialModule.CarouselLargeMultiple) {
                EditorialModule.CarouselLargeMultiple carouselLargeMultiple = (EditorialModule.CarouselLargeMultiple) objA;
                List list2 = carouselLargeMultiple.f67164c;
                ArrayList arrayList2 = new ArrayList();
                for (Object obj : list2) {
                    if (!(((EditorialModuleSlide) obj).d instanceof ContributionLink.AICompanion)) {
                        arrayList2.add(obj);
                    }
                }
                objA = EditorialModule.CarouselLargeMultiple.a(carouselLargeMultiple, arrayList2);
            } else if (objA instanceof EditorialModule.CarouselMedium) {
                EditorialModule.CarouselMedium carouselMedium = (EditorialModule.CarouselMedium) objA;
                List list3 = carouselMedium.f67171c;
                ArrayList arrayList3 = new ArrayList();
                for (Object obj2 : list3) {
                    if (!(((EditorialModuleSlide) obj2).d instanceof ContributionLink.AICompanion)) {
                        arrayList3.add(obj2);
                    }
                }
                objA = EditorialModule.CarouselMedium.a(carouselMedium, arrayList3);
            } else if (objA instanceof EditorialModule.SlideShow) {
                EditorialModule.SlideShow slideShow = (EditorialModule.SlideShow) objA;
                List list4 = slideShow.f67204c;
                ArrayList arrayList4 = new ArrayList();
                for (Object obj3 : list4) {
                    if (!(((EditorialModuleSlide) obj3).d instanceof ContributionLink.AICompanion)) {
                        arrayList4.add(obj3);
                    }
                }
                objA = EditorialModule.SlideShow.a(slideShow, arrayList4);
            }
            if (objA != null) {
                arrayList.add(objA);
            }
        }
        return arrayList;
    }

    public static final ArrayList d(List list) {
        list.getClass();
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            EditorialModule editorialModule = (EditorialModule) obj;
            if (editorialModule instanceof EditorialModule.CarouselLargeMultiple) {
                if (!((EditorialModule.CarouselLargeMultiple) editorialModule).f67164c.isEmpty()) {
                    arrayList.add(obj);
                }
            } else if (editorialModule instanceof EditorialModule.CarouselMedium) {
                if (!((EditorialModule.CarouselMedium) editorialModule).f67171c.isEmpty()) {
                    arrayList.add(obj);
                }
            } else if (!(editorialModule instanceof EditorialModule.SlideShow) || !((EditorialModule.SlideShow) editorialModule).f67204c.isEmpty()) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    /* JADX WARN: Code duplicated, block: B:10:0x002c  */
    public static final ArrayList e(Feed feed) {
        feed.getClass();
        List<Object> list = feed.f67577a;
        ArrayList arrayList = new ArrayList();
        for (Object objA : list) {
            if (objA instanceof EditorialModule.Card) {
                if (((EditorialModule.Card) objA).f67159c instanceof ContributionLink.ExclusiveOffer) {
                    objA = null;
                }
            } else if (objA instanceof EditorialModule.Event) {
                if (((EditorialModule.Event) objA).f67179c instanceof ContributionLink.ExclusiveOffer) {
                    objA = null;
                }
            } else if (objA instanceof EditorialModule.CarouselLargeSingle) {
                if (((EditorialModule.CarouselLargeSingle) objA).f67168e instanceof ContributionLink.ExclusiveOffer) {
                    objA = null;
                }
            } else if (objA instanceof EditorialModule.CarouselLargeMultiple) {
                EditorialModule.CarouselLargeMultiple carouselLargeMultiple = (EditorialModule.CarouselLargeMultiple) objA;
                List list2 = carouselLargeMultiple.f67164c;
                ArrayList arrayList2 = new ArrayList();
                for (Object obj : list2) {
                    if (!(((EditorialModuleSlide) obj).d instanceof ContributionLink.ExclusiveOffer)) {
                        arrayList2.add(obj);
                    }
                }
                objA = EditorialModule.CarouselLargeMultiple.a(carouselLargeMultiple, arrayList2);
            } else if (objA instanceof EditorialModule.CarouselMedium) {
                EditorialModule.CarouselMedium carouselMedium = (EditorialModule.CarouselMedium) objA;
                List list3 = carouselMedium.f67171c;
                ArrayList arrayList3 = new ArrayList();
                for (Object obj2 : list3) {
                    if (!(((EditorialModuleSlide) obj2).d instanceof ContributionLink.ExclusiveOffer)) {
                        arrayList3.add(obj2);
                    }
                }
                objA = EditorialModule.CarouselMedium.a(carouselMedium, arrayList3);
            } else if (objA instanceof EditorialModule.SlideShow) {
                EditorialModule.SlideShow slideShow = (EditorialModule.SlideShow) objA;
                List list4 = slideShow.f67204c;
                ArrayList arrayList4 = new ArrayList();
                for (Object obj3 : list4) {
                    if (!(((EditorialModuleSlide) obj3).d instanceof ContributionLink.ExclusiveOffer)) {
                        arrayList4.add(obj3);
                    }
                }
                objA = EditorialModule.SlideShow.a(slideShow, arrayList4);
            }
            if (objA != null) {
                arrayList.add(objA);
            }
        }
        return arrayList;
    }
}
