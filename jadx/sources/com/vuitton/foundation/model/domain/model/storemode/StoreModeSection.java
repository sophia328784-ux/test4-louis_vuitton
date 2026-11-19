package com.vuitton.foundation.model.domain.model.storemode;

import com.batch.android.s.b;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/storemode/StoreModeSection;", "", "", b.a.f24015b, "Lcom/vuitton/foundation/model/domain/model/storemode/StoreModeType;", "type", "Lcom/vuitton/foundation/model/domain/model/storemode/StoreModeData;", DbParams.KEY_DATA, "<init>", "(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/storemode/StoreModeType;Lcom/vuitton/foundation/model/domain/model/storemode/StoreModeData;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class StoreModeSection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f68265a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final StoreModeType f68266b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final StoreModeData f68267c;

    public StoreModeSection(String str, StoreModeType storeModeType, StoreModeData storeModeData) {
        str.getClass();
        storeModeType.getClass();
        this.f68265a = str;
        this.f68266b = storeModeType;
        this.f68267c = storeModeData;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof StoreModeSection)) {
            return false;
        }
        StoreModeSection storeModeSection = (StoreModeSection) obj;
        return Intrinsics.c(this.f68265a, storeModeSection.f68265a) && this.f68266b == storeModeSection.f68266b && Intrinsics.c(this.f68267c, storeModeSection.f68267c);
    }

    public final int hashCode() {
        int iHashCode = (this.f68266b.hashCode() + (this.f68265a.hashCode() * 31)) * 31;
        StoreModeData storeModeData = this.f68267c;
        return iHashCode + (storeModeData == null ? 0 : storeModeData.hashCode());
    }

    public final String toString() {
        return "StoreModeSection(id=" + this.f68265a + ", type=" + this.f68266b + ", data=" + this.f68267c + ")";
    }
}
