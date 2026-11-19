package com.vuitton.android.presentation.screen.reinsurance.models;

import com.vuitton.foundation.model.domain.model.product.Reinsurance;
import com.vuitton.foundation.model.domain.model.product.ReinsurancePageType;
import com.vuitton.foundation.model.domain.model.product.ReinsuranceSection;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ReinsuranceUiModelKt {
    public static final ReinsuranceUiModel a(Reinsurance reinsurance) {
        ArrayList arrayList;
        reinsurance.getClass();
        String str = reinsurance.f67920a;
        ReinsuranceTypeUiModel reinsuranceTypeUiModel = ReinsuranceTypeUiModel.PAYMENT;
        if (!Intrinsics.c(str, reinsuranceTypeUiModel.getIdentifier())) {
            reinsuranceTypeUiModel = ReinsuranceTypeUiModel.DELIVERY;
            if (!Intrinsics.c(str, reinsuranceTypeUiModel.getIdentifier())) {
                reinsuranceTypeUiModel = ReinsuranceTypeUiModel.RETURN_EXCHANGE;
                if (!Intrinsics.c(str, reinsuranceTypeUiModel.getIdentifier())) {
                    reinsuranceTypeUiModel = ReinsuranceTypeUiModel.PACKAGING;
                    if (!Intrinsics.c(str, reinsuranceTypeUiModel.getIdentifier())) {
                        reinsuranceTypeUiModel = ReinsuranceTypeUiModel.COLLECT_IN_STORE;
                        if (!Intrinsics.c(str, reinsuranceTypeUiModel.getIdentifier())) {
                            reinsuranceTypeUiModel = ReinsuranceTypeUiModel.CONTACT;
                            if (!Intrinsics.c(str, reinsuranceTypeUiModel.getIdentifier())) {
                                reinsuranceTypeUiModel = ReinsuranceTypeUiModel.OTHERS;
                            }
                        }
                    }
                }
            }
        }
        ReinsuranceTypeUiModel reinsuranceTypeUiModel2 = reinsuranceTypeUiModel;
        String str2 = reinsurance.f67921b;
        String str3 = reinsurance.f67922c;
        String str4 = reinsurance.d;
        List list = reinsurance.f67923e;
        List list2 = reinsurance.f67924f;
        if (list2 != null) {
            List list3 = list2;
            arrayList = new ArrayList(CollectionsKt.t(list3, 10));
            Iterator it = list3.iterator();
            while (it.hasNext()) {
                arrayList.add(a((Reinsurance) it.next()));
            }
        } else {
            arrayList = null;
        }
        return new ReinsuranceUiModel(reinsuranceTypeUiModel2, str2, str3, str4, list, arrayList, reinsurance.g);
    }

    public static final List b(ReinsuranceSection reinsuranceSection, ReinsurancePageType reinsurancePageType) {
        reinsuranceSection.getClass();
        reinsurancePageType.getClass();
        Set<ReinsurancePageType> setKeySet = reinsuranceSection.f67931a.keySet();
        setKeySet.getClass();
        for (ReinsurancePageType reinsurancePageType2 : setKeySet) {
            if (Intrinsics.c(reinsurancePageType2.getType(), reinsurancePageType.getType())) {
                List list = (List) reinsuranceSection.f67931a.get(reinsurancePageType2);
                if (list == null) {
                    return EmptyList.f71768b;
                }
                List list2 = list;
                ArrayList arrayList = new ArrayList(CollectionsKt.t(list2, 10));
                Iterator it = list2.iterator();
                while (it.hasNext()) {
                    arrayList.add(a((Reinsurance) it.next()));
                }
                return arrayList;
            }
        }
        return EmptyList.f71768b;
    }
}
