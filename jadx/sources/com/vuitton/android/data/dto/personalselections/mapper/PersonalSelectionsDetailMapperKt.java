package com.vuitton.android.data.dto.personalselections.mapper;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.editorial.EditorialSectionDto;
import com.vuitton.android.data.dto.common.editorial.mapper.EditorialSectionMapperKt;
import com.vuitton.android.data.dto.common.mapper.AssetMapperKt;
import com.vuitton.android.data.dto.personalselections.PersonalSelectionsDetailDto;
import com.vuitton.android.data.dto.personalselections.SelectionAssetDto;
import com.vuitton.android.data.dto.personalselections.SelectionProductDto;
import com.vuitton.android.data.dto.personalselections.SelectionProductInteractionDto;
import com.vuitton.android.data.dto.personalselections.SelectionStoreDto;
import com.vuitton.android.data.dto.personalselections.SelectionTypeDto;
import com.vuitton.foundation.model.domain.model.common.Asset;
import com.vuitton.foundation.model.domain.model.common.editorial.EditorialModule;
import com.vuitton.foundation.model.domain.model.personalselections.PersonalSelectionsDetail;
import com.vuitton.foundation.model.domain.model.personalselections.SelectionAsset;
import com.vuitton.foundation.model.domain.model.personalselections.SelectionProduct;
import com.vuitton.foundation.model.domain.model.personalselections.SelectionProductInteraction;
import com.vuitton.foundation.model.domain.model.personalselections.SelectionStore;
import com.vuitton.foundation.model.domain.model.personalselections.SelectionType;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import defpackage.v40;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PersonalSelectionsDetailMapperKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f46349a;

        static {
            int[] iArr = new int[SelectionTypeDto.values().length];
            try {
                iArr[SelectionTypeDto.IN_STORE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[SelectionTypeDto.ADVISOR_CURATION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f46349a = iArr;
        }
    }

    public static final PersonalSelectionsDetail a(PersonalSelectionsDetailDto personalSelectionsDetailDto) throws Throwable {
        SelectionType selectionType;
        personalSelectionsDetailDto.getClass();
        String str = personalSelectionsDetailDto.f46311a;
        String str2 = personalSelectionsDetailDto.f46312b;
        SelectionTypeDto selectionTypeDto = personalSelectionsDetailDto.f46313c;
        selectionTypeDto.getClass();
        int i2 = WhenMappings.f46349a[selectionTypeDto.ordinal()];
        if (i2 == 1) {
            selectionType = SelectionType.IN_STORE;
        } else {
            if (i2 != 2) {
                v40.g();
                return null;
            }
            selectionType = SelectionType.ADVISOR_CURATION;
        }
        String str3 = personalSelectionsDetailDto.d;
        String str4 = personalSelectionsDetailDto.f46314e;
        String str5 = personalSelectionsDetailDto.f46315f;
        SelectionStoreDto selectionStoreDto = personalSelectionsDetailDto.g;
        selectionStoreDto.getClass();
        String str6 = selectionStoreDto.f46345a;
        String str7 = selectionStoreDto.f46346b;
        if (str7 == null) {
            str7 = "";
        }
        SelectionStore selectionStore = new SelectionStore(str6, str7, selectionStoreDto.f46347c);
        List<SelectionAssetDto> list = personalSelectionsDetailDto.f46316h;
        int i3 = 10;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
        for (SelectionAssetDto selectionAssetDto : list) {
            selectionAssetDto.getClass();
            Asset assetA = AssetMapperKt.a(selectionAssetDto.f46334a);
            String str8 = selectionAssetDto.f46335b;
            List<String> list2 = selectionAssetDto.f46336c;
            ArrayList arrayList2 = new ArrayList(CollectionsKt.t(list2, i3));
            for (String str9 : list2) {
                SkuId.Companion companion = SkuId.INSTANCE;
                str9.getClass();
                arrayList2.add(new SkuId(str9));
            }
            arrayList.add(new SelectionAsset(assetA, str8, arrayList2));
            i3 = 10;
        }
        List list3 = personalSelectionsDetailDto.f46317i;
        HashSet hashSet = new HashSet();
        ArrayList<SelectionProductDto> arrayList3 = new ArrayList();
        for (Object obj : list3) {
            if (hashSet.add(((SelectionProductDto) obj).f46338a)) {
                arrayList3.add(obj);
            }
        }
        ArrayList arrayList4 = new ArrayList(CollectionsKt.t(arrayList3, 10));
        for (SelectionProductDto selectionProductDto : arrayList3) {
            selectionProductDto.getClass();
            String str10 = selectionProductDto.f46338a;
            SkuId.Companion companion2 = SkuId.INSTANCE;
            str10.getClass();
            String str11 = selectionProductDto.f46339b;
            String str12 = selectionProductDto.f46340c;
            SelectionProductInteractionDto selectionProductInteractionDto = selectionProductDto.d;
            arrayList4.add(new SelectionProduct(str10, str11, str12, selectionProductInteractionDto != null ? new SelectionProductInteraction(selectionProductInteractionDto.f46342a, selectionProductInteractionDto.f46343b) : null, null));
            str = str;
        }
        String str13 = str;
        List list4 = personalSelectionsDetailDto.f46318j;
        ArrayList arrayList5 = new ArrayList();
        Iterator it = list4.iterator();
        while (it.hasNext()) {
            EditorialModule editorialModuleA = EditorialSectionMapperKt.a((EditorialSectionDto) it.next());
            if (editorialModuleA != null) {
                arrayList5.add(editorialModuleA);
            }
        }
        return new PersonalSelectionsDetail(str13, str2, selectionType, str3, str4, str5, selectionStore, arrayList, arrayList4, arrayList5);
    }
}
