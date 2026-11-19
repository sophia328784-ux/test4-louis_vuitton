package com.vuitton.android.presentation.screen.distantrepairs.models;

import defpackage.d21;
import defpackage.fc;
import defpackage.n00;
import defpackage.o60;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0087\b\u0018\u00002\u00020\u0001B;\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0002¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/models/StoreSlotsUiModel;", "", "", "date", "", "Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;", "inStoreSlots", "distantSlots", "storeId", "storeTimeZone", "<init>", "(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class StoreSlotsUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f57412a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f57413b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f57414c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f57415e;

    public StoreSlotsUiModel(String str, List<TimeSlotUiModel> list, List<TimeSlotUiModel> list2, String str2, String str3) {
        str.getClass();
        list.getClass();
        list2.getClass();
        str2.getClass();
        str3.getClass();
        this.f57412a = str;
        this.f57413b = list;
        this.f57414c = list2;
        this.d = str2;
        this.f57415e = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof StoreSlotsUiModel)) {
            return false;
        }
        StoreSlotsUiModel storeSlotsUiModel = (StoreSlotsUiModel) obj;
        return Intrinsics.c(this.f57412a, storeSlotsUiModel.f57412a) && Intrinsics.c(this.f57413b, storeSlotsUiModel.f57413b) && Intrinsics.c(this.f57414c, storeSlotsUiModel.f57414c) && Intrinsics.c(this.d, storeSlotsUiModel.d) && Intrinsics.c(this.f57415e, storeSlotsUiModel.f57415e);
    }

    public final int hashCode() {
        return this.f57415e.hashCode() + fc.b(n00.a(n00.a(this.f57412a.hashCode() * 31, 31, this.f57413b), 31, this.f57414c), 31, this.d);
    }

    public final String toString() {
        StringBuilder sbT = d21.t("StoreSlotsUiModel(date=", this.f57412a, ", inStoreSlots=", this.f57413b, ", distantSlots=");
        o60.B(", storeId=", this.d, ", storeTimeZone=", sbT, this.f57414c);
        return n00.r(this.f57415e, ")", sbT);
    }
}
