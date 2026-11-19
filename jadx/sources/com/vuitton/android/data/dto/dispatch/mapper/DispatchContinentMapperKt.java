package com.vuitton.android.data.dto.dispatch.mapper;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.dispatch.DispatchContinentDto;
import com.vuitton.android.data.dto.dispatch.InAppDispatchDto;
import com.vuitton.android.data.dto.dispatch.LocalizationDto;
import com.vuitton.foundation.model.domain.model.dispatch.DispatchArea;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.dispatch.locale.DispatchLocale;
import com.vuitton.foundation.model.domain.model.dispatch.locale.ResourceLocale;
import com.vuitton.foundation.model.domain.model.dispatch.locale.component.LanguageTagBcp47;
import com.vuitton.foundation.model.domain.model.dispatch.locale.component.LanguageTagWithUnderscore;
import com.vuitton.foundation.model.domain.model.dispatch.locale.component.LocaleParts;
import com.vuitton.foundation.model.domain.model.dispatch.locale.component.RegionCode;
import com.vuitton.foundation.model.domain.model.dispatch.locale.component.RegionGroup;
import com.vuitton.foundation.model.domain.model.dispatch.locale.component.ScriptCode;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class DispatchContinentMapperKt {
    /* JADX WARN: Code duplicated, block: B:110:0x01f4  */
    /* JADX WARN: Code duplicated, block: B:152:0x02bb  */
    /* JADX WARN: Code duplicated, block: B:159:0x02be A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:24:0x0095  */
    /* JADX WARN: Code duplicated, block: B:37:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:46:0x0100  */
    /* JADX WARN: Code duplicated, block: B:67:0x014c  */
    /* JADX WARN: Code duplicated, block: B:75:0x016c  */
    /* JADX WARN: Code duplicated, block: B:89:0x01a9  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [kotlin.collections.EmptyList] */
    /* JADX WARN: Type inference failed for: r5v1, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r5v2, types: [java.util.ArrayList] */
    public static final DispatchArea a(DispatchContinentDto dispatchContinentDto) throws Throwable {
        ?? arrayList;
        Iterator it;
        String str;
        String str2;
        ResourceLocale resourceLocale;
        RegionGroup regionGroup;
        InAppDispatch inAppDispatch;
        Object next;
        Object next2;
        ResourceLocale resourceLocale2;
        Iterator it2;
        Object next3;
        boolean zEquals;
        Object next4;
        Object next5;
        boolean zEquals2;
        boolean zEquals3;
        boolean zEquals4;
        boolean zEquals5;
        dispatchContinentDto.getClass();
        int i2 = dispatchContinentDto.f45684a;
        int i3 = dispatchContinentDto.f45685b;
        String str3 = dispatchContinentDto.f45686c;
        String str4 = "";
        if (str3 == null) {
            str3 = "";
        }
        List list = dispatchContinentDto.d;
        if (list != null) {
            arrayList = new ArrayList();
            Iterator it3 = list.iterator();
            while (it3.hasNext()) {
                InAppDispatchDto inAppDispatchDto = (InAppDispatchDto) it3.next();
                inAppDispatchDto.getClass();
                InAppDispatch.Companion companion = InAppDispatch.q;
                LocalizationDto localizationDto = inAppDispatchDto.f45695j;
                List list2 = localizationDto != null ? localizationDto.f45701a : null;
                if (list2 == null) {
                    list2 = EmptyList.f71768b;
                }
                String str5 = inAppDispatchDto.f45691e;
                str5.getClass();
                String str6 = inAppDispatchDto.g;
                String str7 = inAppDispatchDto.f45694i;
                int i4 = inAppDispatchDto.f45689b;
                String str8 = inAppDispatchDto.f45690c;
                String str9 = inAppDispatchDto.d;
                Boolean bool = inAppDispatchDto.f45692f;
                String str10 = inAppDispatchDto.f45693h;
                companion.getClass();
                list2.getClass();
                str6.getClass();
                RegionCode.f67513b.getClass();
                String strA = RegionCode.Companion.a(str6);
                if (strA == null) {
                    it = it3;
                    str = str4;
                } else {
                    Iterator it4 = list2.iterator();
                    while (true) {
                        if (!it4.hasNext()) {
                            it = it3;
                            str = str4;
                            str2 = str10;
                            resourceLocale = null;
                            break;
                        }
                        String str11 = (String) it4.next();
                        InAppDispatch.q.getClass();
                        it = it3;
                        String strJ = StringsKt.J(str11, "-INT", str4);
                        LanguageTagBcp47.f67506b.getClass();
                        String strA2 = LanguageTagBcp47.Companion.a(strJ);
                        if (strA2 == null) {
                            str = str4;
                            str2 = str10;
                            it2 = it4;
                            resourceLocale2 = null;
                        } else {
                            ResourceLocale.INSTANCE.getClass();
                            LocaleParts.d.getClass();
                            LocaleParts localePartsA = LocaleParts.Companion.a(strA2);
                            if (localePartsA == null) {
                                str = str4;
                                str2 = str10;
                                it2 = it4;
                                resourceLocale2 = null;
                            } else {
                                String str12 = localePartsA.f67512c;
                                str = str4;
                                String str13 = localePartsA.f67511b;
                                String str14 = localePartsA.f67510a;
                                Iterator it5 = ResourceLocale.b().iterator();
                                while (true) {
                                    if (!it5.hasNext()) {
                                        str2 = str10;
                                        next2 = null;
                                        break;
                                    }
                                    next2 = it5.next();
                                    ResourceLocale resourceLocale3 = (ResourceLocale) next2;
                                    str2 = str10;
                                    if (Intrinsics.c(resourceLocale3.getLanguageCode(), str14)) {
                                        String scriptCode = resourceLocale3.getScriptCode();
                                        if (scriptCode == null) {
                                            if (str13 == null) {
                                                zEquals4 = true;
                                            } else {
                                                zEquals4 = false;
                                            }
                                        } else if (str13 == null) {
                                            zEquals4 = false;
                                        } else {
                                            ScriptCode.Companion companion2 = ScriptCode.f67522b;
                                            zEquals4 = scriptCode.equals(str13);
                                        }
                                        if (zEquals4) {
                                            String regionCode = resourceLocale3.getRegionCode();
                                            if (regionCode == null) {
                                                if (str12 == null) {
                                                    zEquals5 = true;
                                                } else {
                                                    zEquals5 = false;
                                                }
                                            } else if (str12 == null) {
                                                zEquals5 = false;
                                            } else {
                                                zEquals5 = regionCode.equals(str12);
                                            }
                                            if (zEquals5) {
                                                break;
                                            }
                                        } else {
                                            continue;
                                        }
                                    }
                                    str10 = str2;
                                }
                                resourceLocale2 = (ResourceLocale) next2;
                                if (resourceLocale2 == null) {
                                    if (str12 == null) {
                                        it2 = it4;
                                        resourceLocale2 = null;
                                    } else {
                                        Iterator it6 = ResourceLocale.b().iterator();
                                        while (true) {
                                            if (!it6.hasNext()) {
                                                it2 = it4;
                                                next3 = null;
                                                break;
                                            }
                                            next3 = it6.next();
                                            ResourceLocale resourceLocale4 = (ResourceLocale) next3;
                                            Iterator it7 = it6;
                                            if (Intrinsics.c(resourceLocale4.getLanguageCode(), str14)) {
                                                String scriptCode2 = resourceLocale4.getScriptCode();
                                                if (scriptCode2 == null) {
                                                    if (str13 == null) {
                                                        zEquals = true;
                                                    } else {
                                                        zEquals = false;
                                                    }
                                                } else if (str13 == null) {
                                                    zEquals = false;
                                                } else {
                                                    ScriptCode.Companion companion3 = ScriptCode.f67522b;
                                                    zEquals = scriptCode2.equals(str13);
                                                }
                                                if (zEquals) {
                                                    it2 = it4;
                                                    if (resourceLocale4.getAliasRegionCodes().contains(new RegionCode(str12))) {
                                                        break;
                                                    }
                                                } else {
                                                    it2 = it4;
                                                }
                                            } else {
                                                it2 = it4;
                                            }
                                            it6 = it7;
                                            it4 = it2;
                                        }
                                        resourceLocale2 = (ResourceLocale) next3;
                                    }
                                    if (resourceLocale2 == null) {
                                        Iterator it8 = ResourceLocale.b().iterator();
                                        while (true) {
                                            if (!it8.hasNext()) {
                                                next4 = null;
                                                break;
                                            }
                                            next4 = it8.next();
                                            ResourceLocale resourceLocale5 = (ResourceLocale) next4;
                                            Iterator it9 = it8;
                                            if (Intrinsics.c(resourceLocale5.getLanguageCode(), str14)) {
                                                String scriptCode3 = resourceLocale5.getScriptCode();
                                                if (scriptCode3 == null) {
                                                    if (str13 == null) {
                                                        zEquals3 = true;
                                                    } else {
                                                        zEquals3 = false;
                                                    }
                                                } else if (str13 == null) {
                                                    zEquals3 = false;
                                                } else {
                                                    ScriptCode.Companion companion4 = ScriptCode.f67522b;
                                                    zEquals3 = scriptCode3.equals(str13);
                                                }
                                                if (zEquals3 && resourceLocale5.getRegionCode() == null) {
                                                    break;
                                                }
                                            }
                                            it8 = it9;
                                        }
                                        resourceLocale2 = (ResourceLocale) next4;
                                        if (resourceLocale2 == null) {
                                            Iterator it10 = ResourceLocale.b().iterator();
                                            while (true) {
                                                if (!it10.hasNext()) {
                                                    next5 = null;
                                                    break;
                                                }
                                                next5 = it10.next();
                                                ResourceLocale resourceLocale6 = (ResourceLocale) next5;
                                                Iterator it11 = it10;
                                                if (Intrinsics.c(resourceLocale6.getLanguageCode(), str14)) {
                                                    String scriptCode4 = resourceLocale6.getScriptCode();
                                                    if (scriptCode4 == null) {
                                                        if (str13 == null) {
                                                            zEquals2 = true;
                                                        } else {
                                                            zEquals2 = false;
                                                        }
                                                    } else if (str13 == null) {
                                                        zEquals2 = false;
                                                    } else {
                                                        ScriptCode.Companion companion5 = ScriptCode.f67522b;
                                                        zEquals2 = scriptCode4.equals(str13);
                                                    }
                                                    if (zEquals2 && resourceLocale6.getIsDefaultForLanguage()) {
                                                        break;
                                                    }
                                                }
                                                it10 = it11;
                                            }
                                            resourceLocale2 = (ResourceLocale) next5;
                                        }
                                    }
                                } else {
                                    it2 = it4;
                                }
                            }
                        }
                        if (resourceLocale2 != null) {
                            resourceLocale = resourceLocale2;
                            break;
                        }
                        it4 = it2;
                        it3 = it;
                        str4 = str;
                        str10 = str2;
                    }
                    if (resourceLocale != null) {
                        String languageCode = resourceLocale.getLanguageCode();
                        String scriptCode5 = resourceLocale.getScriptCode();
                        if (str7 != null) {
                            RegionGroup.INSTANCE.getClass();
                            Iterator it12 = RegionGroup.a().iterator();
                            do {
                                if (!it12.hasNext()) {
                                    next = null;
                                    break;
                                }
                                next = it12.next();
                            } while (!Intrinsics.c(((RegionGroup) next).getGroupName(), str7));
                            regionGroup = (RegionGroup) next;
                        } else {
                            regionGroup = null;
                        }
                        RegionCode.f67513b.getClass();
                        DispatchLocale dispatchLocale = new DispatchLocale(languageCode, scriptCode5, strA, regionGroup, strA.equals(RegionCode.n), null);
                        InAppDispatch.Id.Companion companion6 = InAppDispatch.Id.f67485b;
                        String strH = resourceLocale.h();
                        LanguageTagWithUnderscore.f67508b.getClass();
                        String strB = LanguageTagWithUnderscore.Companion.b(strH);
                        companion6.getClass();
                        String strA3 = InAppDispatch.Id.Companion.a(strB, strA);
                        if (strA3 != null) {
                            if (str8 == null) {
                                str8 = str;
                            }
                            inAppDispatch = new InAppDispatch(strA3, dispatchLocale, str5, resourceLocale, i4, str8, str9 == 0 ? str : str9, bool != null ? bool.booleanValue() : false, str2, null);
                        }
                    }
                    if (inAppDispatch != null) {
                        arrayList.add(inAppDispatch);
                    }
                    it3 = it;
                    str4 = str;
                }
                inAppDispatch = null;
                if (inAppDispatch != null) {
                    arrayList.add(inAppDispatch);
                }
                it3 = it;
                str4 = str;
            }
        } else {
            arrayList = EmptyList.f71768b;
        }
        return new DispatchArea(i2, i3, str3, arrayList);
    }
}
