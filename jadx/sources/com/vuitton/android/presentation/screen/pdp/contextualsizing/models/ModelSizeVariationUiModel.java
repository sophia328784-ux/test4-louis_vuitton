package com.vuitton.android.presentation.screen.pdp.contextualsizing.models;

import android.os.Parcel;
import android.os.Parcelable;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductIdUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import defpackage.cj;
import defpackage.fc;
import defpackage.o60;
import defpackage.pq0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001BA\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ModelSizeVariationUiModel;", "Landroid/os/Parcelable;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "sku", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductIdUiModel;", "productId", "", "name", "mediaUrl", "dimensions", "", "Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/WearingUiModel;", "wearingList", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ModelSizeVariationUiModel implements Parcelable {
    public static final Parcelable.Creator<ModelSizeVariationUiModel> CREATOR = new Creator();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f61533b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f61534c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f61535e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f61536f;
    public final List g;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<ModelSizeVariationUiModel> {
        @Override // android.os.Parcelable.Creator
        public final ModelSizeVariationUiModel createFromParcel(Parcel parcel) {
            parcel.getClass();
            String str = SkuIdUiModel.CREATOR.createFromParcel(parcel).f61764b;
            ProductIdUiModel productIdUiModelCreateFromParcel = parcel.readInt() == 0 ? null : ProductIdUiModel.CREATOR.createFromParcel(parcel);
            String str2 = productIdUiModelCreateFromParcel != null ? productIdUiModelCreateFromParcel.f61732b : null;
            String string = parcel.readString();
            String string2 = parcel.readString();
            String string3 = parcel.readString();
            int i2 = parcel.readInt();
            ArrayList arrayList = new ArrayList(i2);
            int iD = 0;
            while (iD != i2) {
                iD = pq0.d(WearingUiModel.CREATOR, parcel, arrayList, iD, 1);
            }
            return new ModelSizeVariationUiModel(str, str2, string, string2, string3, arrayList, null);
        }

        @Override // android.os.Parcelable.Creator
        public final ModelSizeVariationUiModel[] newArray(int i2) {
            return new ModelSizeVariationUiModel[i2];
        }
    }

    public ModelSizeVariationUiModel(String str, String str2, String str3, String str4, String str5, List list, DefaultConstructorMarker defaultConstructorMarker) {
        str.getClass();
        str3.getClass();
        str5.getClass();
        list.getClass();
        this.f61533b = str;
        this.f61534c = str2;
        this.d = str3;
        this.f61535e = str4;
        this.f61536f = str5;
        this.g = list;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0023  */
    public final boolean equals(Object obj) {
        boolean zEquals;
        if (this != obj) {
            if (obj instanceof ModelSizeVariationUiModel) {
                ModelSizeVariationUiModel modelSizeVariationUiModel = (ModelSizeVariationUiModel) obj;
                String str = modelSizeVariationUiModel.f61533b;
                SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
                if (this.f61533b.equals(str)) {
                    String str2 = modelSizeVariationUiModel.f61534c;
                    String str3 = this.f61534c;
                    if (str3 == null) {
                        if (str2 == null) {
                            zEquals = true;
                        } else {
                            zEquals = false;
                        }
                    } else if (str2 == null) {
                        zEquals = false;
                    } else {
                        ProductIdUiModel.Companion companion2 = ProductIdUiModel.f61731c;
                        zEquals = str3.equals(str2);
                    }
                    if (zEquals && this.d.equals(modelSizeVariationUiModel.d) && Intrinsics.c(this.f61535e, modelSizeVariationUiModel.f61535e) && this.f61536f.equals(modelSizeVariationUiModel.f61536f) && this.g.equals(modelSizeVariationUiModel.g)) {
                    }
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        int iHashCode;
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        int iHashCode2 = this.f61533b.hashCode() * 31;
        String str = this.f61534c;
        if (str == null) {
            iHashCode = 0;
        } else {
            ProductIdUiModel.Companion companion2 = ProductIdUiModel.f61731c;
            iHashCode = str.hashCode();
        }
        int iB = fc.b((iHashCode2 + iHashCode) * 31, 31, this.d);
        String str2 = this.f61535e;
        return this.g.hashCode() + fc.b((iB + (str2 != null ? str2.hashCode() : 0)) * 31, 31, this.f61536f);
    }

    public final String toString() {
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        String str = this.f61534c;
        if (str == null) {
            str = "null";
        } else {
            ProductIdUiModel.Companion companion2 = ProductIdUiModel.f61731c;
        }
        StringBuilder sbS = fc.s("ModelSizeVariationUiModel(sku=", this.f61533b, ", productId=", str, ", name=");
        cj.C(sbS, this.d, ", mediaUrl=", this.f61535e, ", dimensions=");
        return o60.o(this.f61536f, ", wearingList=", ")", sbS, this.g);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        parcel.writeString(this.f61533b);
        String str = this.f61534c;
        if (str == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            ProductIdUiModel.Companion companion2 = ProductIdUiModel.f61731c;
            parcel.writeString(str);
        }
        parcel.writeString(this.d);
        parcel.writeString(this.f61535e);
        parcel.writeString(this.f61536f);
        Iterator itP = cj.p(this.g, parcel);
        while (itP.hasNext()) {
            ((WearingUiModel) itP.next()).writeToParcel(parcel, i2);
        }
    }
}
