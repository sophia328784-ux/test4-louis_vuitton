package com.vuitton.android.presentation.screen.storemode.models;

import com.vuitton.foundation.model.domain.model.common.Asset;
import defpackage.a;
import defpackage.fc;
import defpackage.n00;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001BI\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\u0007\u0012\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\u0007¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeUiModel;", "", "", "displayName", "storeName", "Lcom/vuitton/foundation/model/domain/model/common/Asset;", "storeAsset", "", "storeCarousel", "Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeSectionUiModel;", "storeModeSection", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/Asset;Ljava/util/List;Ljava/util/List;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class StoreModeUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f65077a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f65078b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Asset f65079c;
    public final List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f65080e;

    public StoreModeUiModel(String str, String str2, Asset asset, List list, List list2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? new String() : str2, (i2 & 4) != 0 ? null : asset, (i2 & 8) != 0 ? EmptyList.f71768b : list, (i2 & 16) != 0 ? EmptyList.f71768b : list2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof StoreModeUiModel)) {
            return false;
        }
        StoreModeUiModel storeModeUiModel = (StoreModeUiModel) obj;
        return Intrinsics.c(this.f65077a, storeModeUiModel.f65077a) && Intrinsics.c(this.f65078b, storeModeUiModel.f65078b) && Intrinsics.c(this.f65079c, storeModeUiModel.f65079c) && Intrinsics.c(this.d, storeModeUiModel.d) && Intrinsics.c(this.f65080e, storeModeUiModel.f65080e);
    }

    public final int hashCode() {
        String str = this.f65077a;
        int iB = fc.b((str == null ? 0 : str.hashCode()) * 31, 31, this.f65078b);
        Asset asset = this.f65079c;
        return this.f65080e.hashCode() + n00.a((iB + (asset != null ? asset.hashCode() : 0)) * 31, 31, this.d);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("StoreModeUiModel(displayName=", this.f65077a, ", storeName=", this.f65078b, ", storeAsset=");
        sbS.append(this.f65079c);
        sbS.append(", storeCarousel=");
        sbS.append(this.d);
        sbS.append(", storeModeSection=");
        return a.o(sbS, this.f65080e, ")");
    }

    public StoreModeUiModel(String str, String str2, Asset asset, List<Asset> list, List<StoreModeSectionUiModel> list2) {
        str2.getClass();
        list.getClass();
        list2.getClass();
        this.f65077a = str;
        this.f65078b = str2;
        this.f65079c = asset;
        this.d = list;
        this.f65080e = list2;
    }

    public StoreModeUiModel() {
        this(null, null, null, null, null, 31, null);
    }
}
