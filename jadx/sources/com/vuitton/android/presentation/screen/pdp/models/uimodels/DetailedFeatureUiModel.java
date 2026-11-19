package com.vuitton.android.presentation.screen.pdp.models.uimodels;

import android.os.Parcel;
import android.os.Parcelable;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import defpackage.a;
import defpackage.cj;
import defpackage.fc;
import defpackage.pq0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bw\u0018\u00002\u00020\u0001:\u0006\u0002\u0003\u0004\u0005\u0006\u0007\u0082\u0001\u0003\b\t\n¨\u0006\u000bÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/DetailedFeatureUiModel;", "Landroid/os/Parcelable;", "DescribableUiModel", "Single", "Multiple", "None", "DescriptionDetailUiModel", "ProductDetailSectionUiModel", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/DetailedFeatureUiModel$Multiple;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/DetailedFeatureUiModel$None;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/DetailedFeatureUiModel$Single;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface DetailedFeatureUiModel extends Parcelable {

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001\u0082\u0001\u0002\u0002\u0003¨\u0006\u0004À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/DetailedFeatureUiModel$DescribableUiModel;", "", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/DetailedFeatureUiModel$Multiple;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/DetailedFeatureUiModel$Single;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface DescribableUiModel {
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/DetailedFeatureUiModel$DescriptionDetailUiModel;", "Landroid/os/Parcelable;", "", "title", "description", "", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/DetailedFeatureUiModel$ProductDetailSectionUiModel;", "sections", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class DescriptionDetailUiModel implements Parcelable {
        public static final Parcelable.Creator<DescriptionDetailUiModel> CREATOR = new Creator();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f61676b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f61677c;
        public final List d;

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<DescriptionDetailUiModel> {
            @Override // android.os.Parcelable.Creator
            public final DescriptionDetailUiModel createFromParcel(Parcel parcel) {
                parcel.getClass();
                String string = parcel.readString();
                String string2 = parcel.readString();
                int i2 = parcel.readInt();
                ArrayList arrayList = new ArrayList(i2);
                int iD = 0;
                while (iD != i2) {
                    iD = pq0.d(ProductDetailSectionUiModel.CREATOR, parcel, arrayList, iD, 1);
                }
                return new DescriptionDetailUiModel(string, string2, arrayList);
            }

            @Override // android.os.Parcelable.Creator
            public final DescriptionDetailUiModel[] newArray(int i2) {
                return new DescriptionDetailUiModel[i2];
            }
        }

        public DescriptionDetailUiModel(String str, String str2, List<ProductDetailSectionUiModel> list) {
            pq0.B(str, str2, list);
            this.f61676b = str;
            this.f61677c = str2;
            this.d = list;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof DescriptionDetailUiModel)) {
                return false;
            }
            DescriptionDetailUiModel descriptionDetailUiModel = (DescriptionDetailUiModel) obj;
            return Intrinsics.c(this.f61676b, descriptionDetailUiModel.f61676b) && Intrinsics.c(this.f61677c, descriptionDetailUiModel.f61677c) && Intrinsics.c(this.d, descriptionDetailUiModel.d);
        }

        public final int hashCode() {
            return this.d.hashCode() + fc.b(this.f61676b.hashCode() * 31, 31, this.f61677c);
        }

        public final String toString() {
            return a.o(fc.s("DescriptionDetailUiModel(title=", this.f61676b, ", description=", this.f61677c, ", sections="), this.d, ")");
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            parcel.writeString(this.f61676b);
            parcel.writeString(this.f61677c);
            Iterator itP = cj.p(this.d, parcel);
            while (itP.hasNext()) {
                ((ProductDetailSectionUiModel) itP.next()).writeToParcel(parcel, i2);
            }
        }
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u00012\u00020\u0002B\u001f\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/DetailedFeatureUiModel$Multiple;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/DetailedFeatureUiModel;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/DetailedFeatureUiModel$DescribableUiModel;", "", "detail", "", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/DetailedFeatureUiModel$DescriptionDetailUiModel;", "features", "<init>", "(Ljava/lang/String;Ljava/util/List;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Multiple implements DetailedFeatureUiModel, DescribableUiModel {
        public static final Parcelable.Creator<Multiple> CREATOR = new Creator();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f61678b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final List f61679c;

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<Multiple> {
            @Override // android.os.Parcelable.Creator
            public final Multiple createFromParcel(Parcel parcel) {
                parcel.getClass();
                String string = parcel.readString();
                int i2 = parcel.readInt();
                ArrayList arrayList = new ArrayList(i2);
                int iD = 0;
                while (iD != i2) {
                    iD = pq0.d(DescriptionDetailUiModel.CREATOR, parcel, arrayList, iD, 1);
                }
                return new Multiple(string, arrayList);
            }

            @Override // android.os.Parcelable.Creator
            public final Multiple[] newArray(int i2) {
                return new Multiple[i2];
            }
        }

        public Multiple(String str, List<DescriptionDetailUiModel> list) {
            list.getClass();
            this.f61678b = str;
            this.f61679c = list;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Multiple)) {
                return false;
            }
            Multiple multiple = (Multiple) obj;
            return Intrinsics.c(this.f61678b, multiple.f61678b) && Intrinsics.c(this.f61679c, multiple.f61679c);
        }

        public final int hashCode() {
            String str = this.f61678b;
            return this.f61679c.hashCode() + ((str == null ? 0 : str.hashCode()) * 31);
        }

        public final String toString() {
            return cj.k("Multiple(detail=", this.f61678b, ", features=", this.f61679c, ")");
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            parcel.writeString(this.f61678b);
            Iterator itP = cj.p(this.f61679c, parcel);
            while (itP.hasNext()) {
                ((DescriptionDetailUiModel) itP.next()).writeToParcel(parcel, i2);
            }
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/DetailedFeatureUiModel$None;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/DetailedFeatureUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class None implements DetailedFeatureUiModel {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final None f61680b = new None();
        public static final Parcelable.Creator<None> CREATOR = new Creator();

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<None> {
            @Override // android.os.Parcelable.Creator
            public final None createFromParcel(Parcel parcel) {
                parcel.getClass();
                parcel.readInt();
                return None.f61680b;
            }

            @Override // android.os.Parcelable.Creator
            public final None[] newArray(int i2) {
                return new None[i2];
            }
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof None);
        }

        public final int hashCode() {
            return -1785275046;
        }

        public final String toString() {
            return "None";
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            parcel.writeInt(1);
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/DetailedFeatureUiModel$ProductDetailSectionUiModel;", "Landroid/os/Parcelable;", "", "text", "Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;", "image", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ProductDetailSectionUiModel implements Parcelable {
        public static final Parcelable.Creator<ProductDetailSectionUiModel> CREATOR = new Creator();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f61681b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final AssetImageUiModel f61682c;

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<ProductDetailSectionUiModel> {
            @Override // android.os.Parcelable.Creator
            public final ProductDetailSectionUiModel createFromParcel(Parcel parcel) {
                parcel.getClass();
                return new ProductDetailSectionUiModel(parcel.readString(), AssetImageUiModel.CREATOR.createFromParcel(parcel));
            }

            @Override // android.os.Parcelable.Creator
            public final ProductDetailSectionUiModel[] newArray(int i2) {
                return new ProductDetailSectionUiModel[i2];
            }
        }

        public ProductDetailSectionUiModel(String str, AssetImageUiModel assetImageUiModel) {
            str.getClass();
            assetImageUiModel.getClass();
            this.f61681b = str;
            this.f61682c = assetImageUiModel;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ProductDetailSectionUiModel)) {
                return false;
            }
            ProductDetailSectionUiModel productDetailSectionUiModel = (ProductDetailSectionUiModel) obj;
            return Intrinsics.c(this.f61681b, productDetailSectionUiModel.f61681b) && Intrinsics.c(this.f61682c, productDetailSectionUiModel.f61682c);
        }

        public final int hashCode() {
            return this.f61682c.hashCode() + (this.f61681b.hashCode() * 31);
        }

        public final String toString() {
            return "ProductDetailSectionUiModel(text=" + this.f61681b + ", image=" + this.f61682c + ")";
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            parcel.writeString(this.f61681b);
            this.f61682c.writeToParcel(parcel, i2);
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/DetailedFeatureUiModel$Single;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/DetailedFeatureUiModel;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/DetailedFeatureUiModel$DescribableUiModel;", "", "detail", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Single implements DetailedFeatureUiModel, DescribableUiModel {
        public static final Parcelable.Creator<Single> CREATOR = new Creator();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f61683b;

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<Single> {
            @Override // android.os.Parcelable.Creator
            public final Single createFromParcel(Parcel parcel) {
                parcel.getClass();
                return new Single(parcel.readString());
            }

            @Override // android.os.Parcelable.Creator
            public final Single[] newArray(int i2) {
                return new Single[i2];
            }
        }

        public Single(String str) {
            str.getClass();
            this.f61683b = str;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Single) && Intrinsics.c(this.f61683b, ((Single) obj).f61683b);
        }

        public final int hashCode() {
            return this.f61683b.hashCode();
        }

        public final String toString() {
            return fc.h("Single(detail=", this.f61683b, ")");
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            parcel.writeString(this.f61683b);
        }
    }
}
