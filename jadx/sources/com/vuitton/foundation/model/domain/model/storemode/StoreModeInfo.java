package com.vuitton.foundation.model.domain.model.storemode;

import com.vuitton.foundation.model.domain.model.common.Asset;
import defpackage.a;
import defpackage.fc;
import defpackage.n00;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001BC\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\u0007\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\u0007¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/storemode/StoreModeInfo;", "", "", "displayName", "storeName", "Lcom/vuitton/foundation/model/domain/model/common/Asset;", "storeAsset", "", "storeCarousel", "Lcom/vuitton/foundation/model/domain/model/storemode/StoreModeSection;", "sections", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/Asset;Ljava/util/List;Ljava/util/List;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class StoreModeInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f68261a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f68262b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Asset f68263c;
    public final List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f68264e;

    public StoreModeInfo(String str, String str2, Asset asset, List<Asset> list, List<StoreModeSection> list2) {
        list.getClass();
        list2.getClass();
        this.f68261a = str;
        this.f68262b = str2;
        this.f68263c = asset;
        this.d = list;
        this.f68264e = list2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof StoreModeInfo)) {
            return false;
        }
        StoreModeInfo storeModeInfo = (StoreModeInfo) obj;
        return Intrinsics.c(this.f68261a, storeModeInfo.f68261a) && Intrinsics.c(this.f68262b, storeModeInfo.f68262b) && Intrinsics.c(this.f68263c, storeModeInfo.f68263c) && Intrinsics.c(this.d, storeModeInfo.d) && Intrinsics.c(this.f68264e, storeModeInfo.f68264e);
    }

    public final int hashCode() {
        String str = this.f68261a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f68262b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        Asset asset = this.f68263c;
        return this.f68264e.hashCode() + n00.a((iHashCode2 + (asset != null ? asset.hashCode() : 0)) * 31, 31, this.d);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("StoreModeInfo(displayName=", this.f68261a, ", storeName=", this.f68262b, ", storeAsset=");
        sbS.append(this.f68263c);
        sbS.append(", storeCarousel=");
        sbS.append(this.d);
        sbS.append(", sections=");
        return a.o(sbS, this.f68264e, ")");
    }

    public /* synthetic */ StoreModeInfo(String str, String str2, Asset asset, List list, List list2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, str2, asset, list, list2);
    }
}
