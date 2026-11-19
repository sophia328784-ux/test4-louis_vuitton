package com.vuitton.android.domain.extensions;

import com.vuitton.foundation.model.domain.model.common.Coordinates;
import com.vuitton.foundation.model.domain.model.common.editorial.EditorialModule;
import com.vuitton.foundation.model.domain.model.common.editorial.EditorialModuleSlide;
import com.vuitton.foundation.model.domain.model.common.editorial.EditorialModuleSlideSingle;
import com.vuitton.foundation.model.domain.model.common.editorial.EditorialModuleTitles;
import com.vuitton.foundation.model.domain.model.common.editorial.Geolocation;
import com.vuitton.foundation.model.domain.model.common.editorial.Targeting;
import com.vuitton.foundation.model.domain.model.contributionlink.ContributionLink;
import com.vuitton.foundation.model.domain.model.feed.Feed;
import defpackage.v40;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"domain"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class FeedExtKt {
    public static final Feed a(Feed feed, Coordinates coordinates) {
        Targeting targeting;
        feed.getClass();
        if (coordinates == null) {
            return feed;
        }
        List list = feed.f67577a;
        ArrayList<Object> arrayList = new ArrayList();
        for (Object obj : list) {
            EditorialModule editorialModule = (EditorialModule) obj;
            if (editorialModule instanceof EditorialModule.Card) {
                targeting = ((EditorialModule.Card) editorialModule).g;
            } else if (editorialModule instanceof EditorialModule.Event) {
                targeting = ((EditorialModule.Event) editorialModule).g;
            } else if (editorialModule instanceof EditorialModule.Live) {
                targeting = ((EditorialModule.Live) editorialModule).g;
            } else if (editorialModule instanceof EditorialModule.HighlightCard) {
                targeting = ((EditorialModule.HighlightCard) editorialModule).f67188e;
            } else if (editorialModule instanceof EditorialModule.SlideShow) {
                targeting = ((EditorialModule.SlideShow) editorialModule).d;
            } else if (editorialModule instanceof EditorialModule.CarouselMedium) {
                targeting = ((EditorialModule.CarouselMedium) editorialModule).d;
            } else if (editorialModule instanceof EditorialModule.CarouselLargeMultiple) {
                targeting = ((EditorialModule.CarouselLargeMultiple) editorialModule).d;
            } else if (editorialModule instanceof EditorialModule.CarouselLargeSingle) {
                targeting = ((EditorialModule.CarouselLargeSingle) editorialModule).d;
            } else {
                if (!(editorialModule instanceof EditorialModule.GridSmall) && !(editorialModule instanceof EditorialModule.CarouselSmall) && !(editorialModule instanceof EditorialModule.Authentication) && !(editorialModule instanceof EditorialModule.PushCard) && !(editorialModule instanceof EditorialModule.ProductCarousel) && !(editorialModule instanceof EditorialModule.Contactability)) {
                    v40.g();
                    return null;
                }
                targeting = null;
            }
            if (b(targeting, coordinates)) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(CollectionsKt.t(arrayList, 10));
        for (Object carouselLargeSingle : arrayList) {
            if (carouselLargeSingle instanceof EditorialModule.SlideShow) {
                EditorialModule.SlideShow slideShow = (EditorialModule.SlideShow) carouselLargeSingle;
                List list2 = slideShow.f67204c;
                ArrayList arrayList3 = new ArrayList();
                for (Object obj2 : list2) {
                    if (b(((EditorialModuleSlide) obj2).f67208e, coordinates)) {
                        arrayList3.add(obj2);
                    }
                }
                carouselLargeSingle = EditorialModule.SlideShow.a(slideShow, arrayList3);
            } else if (carouselLargeSingle instanceof EditorialModule.CarouselMedium) {
                EditorialModule.CarouselMedium carouselMedium = (EditorialModule.CarouselMedium) carouselLargeSingle;
                List list3 = carouselMedium.f67171c;
                ArrayList arrayList4 = new ArrayList();
                for (Object obj3 : list3) {
                    if (b(((EditorialModuleSlide) obj3).f67208e, coordinates)) {
                        arrayList4.add(obj3);
                    }
                }
                carouselLargeSingle = EditorialModule.CarouselMedium.a(carouselMedium, arrayList4);
            } else if (carouselLargeSingle instanceof EditorialModule.CarouselLargeMultiple) {
                EditorialModule.CarouselLargeMultiple carouselLargeMultiple = (EditorialModule.CarouselLargeMultiple) carouselLargeSingle;
                List list4 = carouselLargeMultiple.f67164c;
                ArrayList arrayList5 = new ArrayList();
                for (Object obj4 : list4) {
                    if (b(((EditorialModuleSlide) obj4).f67208e, coordinates)) {
                        arrayList5.add(obj4);
                    }
                }
                carouselLargeSingle = EditorialModule.CarouselLargeMultiple.a(carouselLargeMultiple, arrayList5);
            } else if (carouselLargeSingle instanceof EditorialModule.CarouselLargeSingle) {
                EditorialModule.CarouselLargeSingle carouselLargeSingle2 = (EditorialModule.CarouselLargeSingle) carouselLargeSingle;
                List list5 = carouselLargeSingle2.f67167c;
                ArrayList arrayList6 = new ArrayList();
                for (Object obj5 : list5) {
                    if (b(((EditorialModuleSlideSingle) obj5).f67211c, coordinates)) {
                        arrayList6.add(obj5);
                    }
                }
                String str = carouselLargeSingle2.f67165a;
                EditorialModuleTitles editorialModuleTitles = carouselLargeSingle2.f67166b;
                Targeting targeting2 = carouselLargeSingle2.d;
                ContributionLink contributionLink = carouselLargeSingle2.f67168e;
                str.getClass();
                contributionLink.getClass();
                carouselLargeSingle = new EditorialModule.CarouselLargeSingle(str, editorialModuleTitles, arrayList6, targeting2, contributionLink);
            }
            arrayList2.add(carouselLargeSingle);
        }
        return new Feed(arrayList2);
    }

    public static final boolean b(Targeting targeting, Coordinates coordinates) {
        if (targeting != null) {
            List list = targeting.f67220a;
            if (!list.isEmpty()) {
                List<Geolocation> list2 = list;
                if ((list2 instanceof Collection) && list2.isEmpty()) {
                    return false;
                }
                for (Geolocation geolocation : list2) {
                    double d = coordinates.f67116a;
                    double d2 = coordinates.f67117b;
                    double d3 = geolocation.f67214a;
                    double d4 = geolocation.f67215b;
                    double radians = Math.toRadians(d3 - d);
                    double d5 = radians / 2.0d;
                    double radians2 = Math.toRadians(d4 - d2) / 2.0d;
                    double dSin = (Math.sin(radians2) * Math.sin(radians2) * Math.cos(Math.toRadians(d3)) * Math.cos(Math.toRadians(d))) + (Math.sin(d5) * Math.sin(d5));
                    if (((float) (Math.atan2(Math.sqrt(dSin), Math.sqrt(1.0d - dSin)) * 2.0d * 6371000.0d)) <= geolocation.f67216c) {
                        return true;
                    }
                }
                return false;
            }
        }
        return true;
    }
}
