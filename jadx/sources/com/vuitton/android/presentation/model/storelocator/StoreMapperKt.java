package com.vuitton.android.presentation.model.storelocator;

import com.sightcall.universal.media.offline.FileUtils;
import com.vuitton.android.presentation.contributionlink.ContributionLinkUiModelKt;
import com.vuitton.android.presentation.model.common.CtaUiModel;
import com.vuitton.foundation.model.domain.model.common.Cta;
import com.vuitton.foundation.model.domain.model.storelocator.Megatrio;
import com.vuitton.foundation.model.domain.model.storelocator.Store;
import com.vuitton.foundation.model.domain.model.storelocator.StoreAddress;
import com.vuitton.foundation.model.domain.model.storelocator.StoreOpeningHours;
import com.vuitton.foundation.model.domain.model.storelocator.exception.StoreTypeException;
import defpackage.tr;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class StoreMapperKt {
    public static final StoreUiModel a(Store store, boolean z) throws StoreTypeException.InvalidStoreType {
        Object next;
        MegatrioUiModel megatrioUiModel;
        store.getClass();
        String str = store.f68242a;
        String str2 = store.f68243b;
        Iterator<E> it = StoreTypeUIModel.a().iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!Intrinsics.c(((StoreTypeUIModel) next).getLabel(), store.f68244c));
        StoreTypeUIModel storeTypeUIModel = (StoreTypeUIModel) next;
        if (storeTypeUIModel == null) {
            throw new StoreTypeException.InvalidStoreType();
        }
        String str3 = store.d;
        StoreAddress storeAddress = store.f68245e;
        storeAddress.getClass();
        StoreAddressUiModel storeAddressUiModel = new StoreAddressUiModel(storeAddress.f68249a, storeAddress.f68250b, storeAddress.f68251c, storeAddress.d, storeAddress.f68252e);
        String str4 = store.f68246f;
        boolean z2 = store.g;
        List<StoreOpeningHours> list = store.f68247h;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
        for (StoreOpeningHours storeOpeningHours : list) {
            storeOpeningHours.getClass();
            String strConcat = storeOpeningHours.f68253a;
            if (!z && strConcat.length() >= 3) {
                IntRange intRangeJ = RangesKt.j(0, 3);
                intRangeJ.getClass();
                strConcat = strConcat.substring(intRangeJ.f71951b, intRangeJ.f71952c + 1).concat(FileUtils.HIDDEN_PREFIX);
            }
            arrayList.add(new StoreOpeningHoursUiModel(strConcat, tr.h(storeOpeningHours.f68254b, " - ", storeOpeningHours.f68255c)));
        }
        Megatrio megatrio = store.f68248i;
        if (megatrio != null) {
            String str5 = megatrio.f68239a;
            String str6 = megatrio.f68240b;
            if (str6 == null) {
                str6 = "";
            }
            List<Cta> list2 = megatrio.f68241c;
            ArrayList arrayList2 = new ArrayList(CollectionsKt.t(list2, 10));
            for (Cta cta : list2) {
                cta.getClass();
                arrayList2.add(new CtaUiModel(cta.f67118a, ContributionLinkUiModelKt.a(cta.f67119b)));
            }
            megatrioUiModel = new MegatrioUiModel(str5, str6, arrayList2);
        } else {
            megatrioUiModel = null;
        }
        return new StoreUiModel(str, str2, storeTypeUIModel, str3, storeAddressUiModel, str4, z2, arrayList, megatrioUiModel);
    }
}
