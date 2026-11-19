package com.vuitton.android.presentation.model.storelocator;

import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/model/storelocator/StoreOpeningHoursUiModel;", "", "", "dayOfWeek", "openingRange", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class StoreOpeningHoursUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f51815a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f51816b;

    public StoreOpeningHoursUiModel(String str, String str2) {
        str.getClass();
        str2.getClass();
        this.f51815a = str;
        this.f51816b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof StoreOpeningHoursUiModel)) {
            return false;
        }
        StoreOpeningHoursUiModel storeOpeningHoursUiModel = (StoreOpeningHoursUiModel) obj;
        return Intrinsics.c(this.f51815a, storeOpeningHoursUiModel.f51815a) && Intrinsics.c(this.f51816b, storeOpeningHoursUiModel.f51816b);
    }

    public final int hashCode() {
        return this.f51816b.hashCode() + (this.f51815a.hashCode() * 31);
    }

    public final String toString() {
        return d21.l("StoreOpeningHoursUiModel(dayOfWeek=", this.f51815a, ", openingRange=", this.f51816b, ")");
    }
}
