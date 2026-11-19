package com.vuitton.android.presentation.screen.pdp.models.uimodels;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.cj;
import defpackage.fc;
import defpackage.o60;
import defpackage.pq0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationConfigurationUiModel;", "Landroid/os/Parcelable;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "sku", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdUiModel;", "identifier", "", "title", "", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationInformationUiModel;", "informationList", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdUiModel;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CustomizationConfigurationUiModel implements Parcelable {
    public static final Parcelable.Creator<CustomizationConfigurationUiModel> CREATOR = new Creator();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f61668b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CustomizationIdUiModel f61669c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f61670e;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<CustomizationConfigurationUiModel> {
        @Override // android.os.Parcelable.Creator
        public final CustomizationConfigurationUiModel createFromParcel(Parcel parcel) {
            parcel.getClass();
            String str = SkuIdUiModel.CREATOR.createFromParcel(parcel).f61764b;
            CustomizationIdUiModel customizationIdUiModelCreateFromParcel = CustomizationIdUiModel.CREATOR.createFromParcel(parcel);
            String string = parcel.readString();
            int i2 = parcel.readInt();
            ArrayList arrayList = new ArrayList(i2);
            int iD = 0;
            while (iD != i2) {
                iD = pq0.d(CustomizationInformationUiModel.CREATOR, parcel, arrayList, iD, 1);
            }
            return new CustomizationConfigurationUiModel(str, customizationIdUiModelCreateFromParcel, string, arrayList, null);
        }

        @Override // android.os.Parcelable.Creator
        public final CustomizationConfigurationUiModel[] newArray(int i2) {
            return new CustomizationConfigurationUiModel[i2];
        }
    }

    public CustomizationConfigurationUiModel(String str, CustomizationIdUiModel customizationIdUiModel, String str2, List list, DefaultConstructorMarker defaultConstructorMarker) {
        str.getClass();
        customizationIdUiModel.getClass();
        str2.getClass();
        list.getClass();
        this.f61668b = str;
        this.f61669c = customizationIdUiModel;
        this.d = str2;
        this.f61670e = list;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CustomizationConfigurationUiModel)) {
            return false;
        }
        CustomizationConfigurationUiModel customizationConfigurationUiModel = (CustomizationConfigurationUiModel) obj;
        String str = customizationConfigurationUiModel.f61668b;
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        return this.f61668b.equals(str) && this.f61669c.equals(customizationConfigurationUiModel.f61669c) && this.d.equals(customizationConfigurationUiModel.d) && this.f61670e.equals(customizationConfigurationUiModel.f61670e);
    }

    public final int hashCode() {
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        return this.f61670e.hashCode() + fc.b((this.f61669c.hashCode() + (this.f61668b.hashCode() * 31)) * 31, 31, this.d);
    }

    public final String toString() {
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        StringBuilder sb = new StringBuilder("CustomizationConfigurationUiModel(sku=");
        sb.append(this.f61668b);
        sb.append(", identifier=");
        sb.append(this.f61669c);
        sb.append(", title=");
        return o60.o(this.d, ", informationList=", ")", sb, this.f61670e);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        parcel.writeString(this.f61668b);
        this.f61669c.writeToParcel(parcel, i2);
        parcel.writeString(this.d);
        Iterator itP = cj.p(this.f61670e, parcel);
        while (itP.hasNext()) {
            ((CustomizationInformationUiModel) itP.next()).writeToParcel(parcel, i2);
        }
    }
}
