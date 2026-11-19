package com.vuitton.android.presentation.screen.pdp.models.uimodels;

import android.os.Parcel;
import android.os.Parcelable;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0087\b\u0018\u00002\u00020\u0001:\u0001\bB\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductDisclaimerUiModel;", "Landroid/os/Parcelable;", "Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;", "disclaimerStringResource", "popInTitle", "popInContent", "<init>", "(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ProductDisclaimerUiModel implements Parcelable {
    public static final Parcelable.Creator<ProductDisclaimerUiModel> CREATOR;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final StringResourceUiModel f61729b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final StringResourceUiModel f61730c;
    public final StringResourceUiModel d;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductDisclaimerUiModel$Companion;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<ProductDisclaimerUiModel> {
        @Override // android.os.Parcelable.Creator
        public final ProductDisclaimerUiModel createFromParcel(Parcel parcel) {
            parcel.getClass();
            return new ProductDisclaimerUiModel((StringResourceUiModel) parcel.readParcelable(ProductDisclaimerUiModel.class.getClassLoader()), (StringResourceUiModel) parcel.readParcelable(ProductDisclaimerUiModel.class.getClassLoader()), (StringResourceUiModel) parcel.readParcelable(ProductDisclaimerUiModel.class.getClassLoader()));
        }

        @Override // android.os.Parcelable.Creator
        public final ProductDisclaimerUiModel[] newArray(int i2) {
            return new ProductDisclaimerUiModel[i2];
        }
    }

    static {
        new Companion(null);
        CREATOR = new Creator();
    }

    public ProductDisclaimerUiModel(StringResourceUiModel stringResourceUiModel, StringResourceUiModel stringResourceUiModel2, StringResourceUiModel stringResourceUiModel3) {
        stringResourceUiModel.getClass();
        stringResourceUiModel2.getClass();
        stringResourceUiModel3.getClass();
        this.f61729b = stringResourceUiModel;
        this.f61730c = stringResourceUiModel2;
        this.d = stringResourceUiModel3;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ProductDisclaimerUiModel)) {
            return false;
        }
        ProductDisclaimerUiModel productDisclaimerUiModel = (ProductDisclaimerUiModel) obj;
        return Intrinsics.c(this.f61729b, productDisclaimerUiModel.f61729b) && Intrinsics.c(this.f61730c, productDisclaimerUiModel.f61730c) && Intrinsics.c(this.d, productDisclaimerUiModel.d);
    }

    public final int hashCode() {
        return this.d.hashCode() + ((this.f61730c.hashCode() + (this.f61729b.hashCode() * 31)) * 31);
    }

    public final String toString() {
        return "ProductDisclaimerUiModel(disclaimerStringResource=" + this.f61729b + ", popInTitle=" + this.f61730c + ", popInContent=" + this.d + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        parcel.writeParcelable(this.f61729b, i2);
        parcel.writeParcelable(this.f61730c, i2);
        parcel.writeParcelable(this.d, i2);
    }
}
