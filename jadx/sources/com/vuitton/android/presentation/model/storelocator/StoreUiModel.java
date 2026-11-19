package com.vuitton.android.presentation.model.storelocator;

import com.batch.android.s.b;
import defpackage.fc;
import defpackage.n00;
import defpackage.o60;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001BY\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\r\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\u0012\u0010\u0013¨\u0006\u0014"}, d2 = {"Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;", "", "", b.a.f24015b, "name", "Lcom/vuitton/android/presentation/model/storelocator/StoreTypeUIModel;", "storeType", "phone", "Lcom/vuitton/android/presentation/model/storelocator/StoreAddressUiModel;", "address", "imageUrl", "", "stockAvailability", "", "Lcom/vuitton/android/presentation/model/storelocator/StoreOpeningHoursUiModel;", "openingHours", "Lcom/vuitton/android/presentation/model/storelocator/MegatrioUiModel;", "megatrio", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/storelocator/StoreTypeUIModel;Ljava/lang/String;Lcom/vuitton/android/presentation/model/storelocator/StoreAddressUiModel;Ljava/lang/String;ZLjava/util/List;Lcom/vuitton/android/presentation/model/storelocator/MegatrioUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class StoreUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f51817a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f51818b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final StoreTypeUIModel f51819c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final StoreAddressUiModel f51820e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f51821f;
    public final boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final List f51822h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final MegatrioUiModel f51823i;

    public StoreUiModel(String str, String str2, StoreTypeUIModel storeTypeUIModel, String str3, StoreAddressUiModel storeAddressUiModel, String str4, boolean z, List<StoreOpeningHoursUiModel> list, MegatrioUiModel megatrioUiModel) {
        str.getClass();
        str2.getClass();
        storeTypeUIModel.getClass();
        str3.getClass();
        storeAddressUiModel.getClass();
        str4.getClass();
        list.getClass();
        this.f51817a = str;
        this.f51818b = str2;
        this.f51819c = storeTypeUIModel;
        this.d = str3;
        this.f51820e = storeAddressUiModel;
        this.f51821f = str4;
        this.g = z;
        this.f51822h = list;
        this.f51823i = megatrioUiModel;
    }

    public static StoreUiModel a(StoreUiModel storeUiModel, String str) {
        String str2 = storeUiModel.f51818b;
        StoreTypeUIModel storeTypeUIModel = storeUiModel.f51819c;
        String str3 = storeUiModel.d;
        StoreAddressUiModel storeAddressUiModel = storeUiModel.f51820e;
        String str4 = storeUiModel.f51821f;
        boolean z = storeUiModel.g;
        List list = storeUiModel.f51822h;
        MegatrioUiModel megatrioUiModel = storeUiModel.f51823i;
        str2.getClass();
        storeTypeUIModel.getClass();
        str3.getClass();
        storeAddressUiModel.getClass();
        str4.getClass();
        list.getClass();
        return new StoreUiModel(str, str2, storeTypeUIModel, str3, storeAddressUiModel, str4, z, list, megatrioUiModel);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof StoreUiModel)) {
            return false;
        }
        StoreUiModel storeUiModel = (StoreUiModel) obj;
        return Intrinsics.c(this.f51817a, storeUiModel.f51817a) && Intrinsics.c(this.f51818b, storeUiModel.f51818b) && this.f51819c == storeUiModel.f51819c && Intrinsics.c(this.d, storeUiModel.d) && Intrinsics.c(this.f51820e, storeUiModel.f51820e) && Intrinsics.c(this.f51821f, storeUiModel.f51821f) && this.g == storeUiModel.g && Intrinsics.c(this.f51822h, storeUiModel.f51822h) && Intrinsics.c(this.f51823i, storeUiModel.f51823i);
    }

    public final int hashCode() {
        int iA = n00.a(o60.b(fc.b((this.f51820e.hashCode() + fc.b((this.f51819c.hashCode() + fc.b(this.f51817a.hashCode() * 31, 31, this.f51818b)) * 31, 31, this.d)) * 31, 31, this.f51821f), 31, this.g), 31, this.f51822h);
        MegatrioUiModel megatrioUiModel = this.f51823i;
        return iA + (megatrioUiModel == null ? 0 : megatrioUiModel.hashCode());
    }

    public final String toString() {
        StringBuilder sbS = fc.s("StoreUiModel(id=", this.f51817a, ", name=", this.f51818b, ", storeType=");
        sbS.append(this.f51819c);
        sbS.append(", phone=");
        sbS.append(this.d);
        sbS.append(", address=");
        sbS.append(this.f51820e);
        sbS.append(", imageUrl=");
        sbS.append(this.f51821f);
        sbS.append(", stockAvailability=");
        sbS.append(this.g);
        sbS.append(", openingHours=");
        sbS.append(this.f51822h);
        sbS.append(", megatrio=");
        sbS.append(this.f51823i);
        sbS.append(")");
        return sbS.toString();
    }

    public /* synthetic */ StoreUiModel(String str, String str2, StoreTypeUIModel storeTypeUIModel, String str3, StoreAddressUiModel storeAddressUiModel, String str4, boolean z, List list, MegatrioUiModel megatrioUiModel, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, storeTypeUIModel, str3, storeAddressUiModel, str4, z, list, (i2 & 256) != 0 ? null : megatrioUiModel);
    }
}
