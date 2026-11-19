package com.vuitton.android.presentation.screen.pdp.models.uimodels;

import android.os.Parcel;
import android.os.Parcelable;
import com.networkbench.nbslens.nbsnativecrashlib.m;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bw\u0018\u00002\u00020\u0001:\u0004\u0002\u0003\u0004\u0005\u0082\u0001\u0004\u0006\u0007\b\t¨\u0006\nÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/NotSellableReasonUiModel;", "Landroid/os/Parcelable;", "NotECommerceUiModel", "WebOnlyUiModel", "MandatoryCustomizationUiModel", "UnavailableUiModel", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/NotSellableReasonUiModel$MandatoryCustomizationUiModel;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/NotSellableReasonUiModel$NotECommerceUiModel;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/NotSellableReasonUiModel$UnavailableUiModel;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/NotSellableReasonUiModel$WebOnlyUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface NotSellableReasonUiModel extends Parcelable {
    /* JADX INFO: renamed from: h */
    PriceUiModel getF61705b();

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/NotSellableReasonUiModel$MandatoryCustomizationUiModel;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/NotSellableReasonUiModel;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceUiModel;", "price", "", m.v, "<init>", "(Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceUiModel;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class MandatoryCustomizationUiModel implements NotSellableReasonUiModel {
        public static final Parcelable.Creator<MandatoryCustomizationUiModel> CREATOR = new Creator();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final PriceUiModel f61699b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f61700c;

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<MandatoryCustomizationUiModel> {
            @Override // android.os.Parcelable.Creator
            public final MandatoryCustomizationUiModel createFromParcel(Parcel parcel) {
                parcel.getClass();
                return new MandatoryCustomizationUiModel(parcel.readInt() == 0 ? null : PriceUiModel.CREATOR.createFromParcel(parcel), parcel.readString());
            }

            @Override // android.os.Parcelable.Creator
            public final MandatoryCustomizationUiModel[] newArray(int i2) {
                return new MandatoryCustomizationUiModel[i2];
            }
        }

        public MandatoryCustomizationUiModel(PriceUiModel priceUiModel, String str) {
            str.getClass();
            this.f61699b = priceUiModel;
            this.f61700c = str;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof MandatoryCustomizationUiModel)) {
                return false;
            }
            MandatoryCustomizationUiModel mandatoryCustomizationUiModel = (MandatoryCustomizationUiModel) obj;
            return Intrinsics.c(this.f61699b, mandatoryCustomizationUiModel.f61699b) && Intrinsics.c(this.f61700c, mandatoryCustomizationUiModel.f61700c);
        }

        @Override // com.vuitton.android.presentation.screen.pdp.models.uimodels.NotSellableReasonUiModel
        /* JADX INFO: renamed from: h, reason: from getter */
        public final PriceUiModel getF61705b() {
            return this.f61699b;
        }

        public final int hashCode() {
            PriceUiModel priceUiModel = this.f61699b;
            return this.f61700c.hashCode() + ((priceUiModel == null ? 0 : priceUiModel.hashCode()) * 31);
        }

        public final String toString() {
            return "MandatoryCustomizationUiModel(price=" + this.f61699b + ", code=" + this.f61700c + ")";
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            PriceUiModel priceUiModel = this.f61699b;
            if (priceUiModel == null) {
                parcel.writeInt(0);
            } else {
                parcel.writeInt(1);
                priceUiModel.writeToParcel(parcel, i2);
            }
            parcel.writeString(this.f61700c);
        }

        public /* synthetic */ MandatoryCustomizationUiModel(PriceUiModel priceUiModel, String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(priceUiModel, (i2 & 2) != 0 ? "customizable" : str);
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/NotSellableReasonUiModel$NotECommerceUiModel;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/NotSellableReasonUiModel;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceUiModel;", "price", "", m.v, "<init>", "(Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceUiModel;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class NotECommerceUiModel implements NotSellableReasonUiModel {
        public static final Parcelable.Creator<NotECommerceUiModel> CREATOR = new Creator();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final PriceUiModel f61701b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f61702c;

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<NotECommerceUiModel> {
            @Override // android.os.Parcelable.Creator
            public final NotECommerceUiModel createFromParcel(Parcel parcel) {
                parcel.getClass();
                return new NotECommerceUiModel(parcel.readInt() == 0 ? null : PriceUiModel.CREATOR.createFromParcel(parcel), parcel.readString());
            }

            @Override // android.os.Parcelable.Creator
            public final NotECommerceUiModel[] newArray(int i2) {
                return new NotECommerceUiModel[i2];
            }
        }

        public NotECommerceUiModel(PriceUiModel priceUiModel, String str) {
            str.getClass();
            this.f61701b = priceUiModel;
            this.f61702c = str;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof NotECommerceUiModel)) {
                return false;
            }
            NotECommerceUiModel notECommerceUiModel = (NotECommerceUiModel) obj;
            return Intrinsics.c(this.f61701b, notECommerceUiModel.f61701b) && Intrinsics.c(this.f61702c, notECommerceUiModel.f61702c);
        }

        @Override // com.vuitton.android.presentation.screen.pdp.models.uimodels.NotSellableReasonUiModel
        /* JADX INFO: renamed from: h, reason: from getter */
        public final PriceUiModel getF61705b() {
            return this.f61701b;
        }

        public final int hashCode() {
            PriceUiModel priceUiModel = this.f61701b;
            return this.f61702c.hashCode() + ((priceUiModel == null ? 0 : priceUiModel.hashCode()) * 31);
        }

        public final String toString() {
            return "NotECommerceUiModel(price=" + this.f61701b + ", code=" + this.f61702c + ")";
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            PriceUiModel priceUiModel = this.f61701b;
            if (priceUiModel == null) {
                parcel.writeInt(0);
            } else {
                parcel.writeInt(1);
                priceUiModel.writeToParcel(parcel, i2);
            }
            parcel.writeString(this.f61702c);
        }

        public /* synthetic */ NotECommerceUiModel(PriceUiModel priceUiModel, String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(priceUiModel, (i2 & 2) != 0 ? "not_ecommerce" : str);
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/NotSellableReasonUiModel$UnavailableUiModel;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/NotSellableReasonUiModel;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceUiModel;", "price", "", m.v, "<init>", "(Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceUiModel;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class UnavailableUiModel implements NotSellableReasonUiModel {
        public static final Parcelable.Creator<UnavailableUiModel> CREATOR = new Creator();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final PriceUiModel f61703b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f61704c;

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<UnavailableUiModel> {
            @Override // android.os.Parcelable.Creator
            public final UnavailableUiModel createFromParcel(Parcel parcel) {
                parcel.getClass();
                return new UnavailableUiModel(parcel.readInt() == 0 ? null : PriceUiModel.CREATOR.createFromParcel(parcel), parcel.readString());
            }

            @Override // android.os.Parcelable.Creator
            public final UnavailableUiModel[] newArray(int i2) {
                return new UnavailableUiModel[i2];
            }
        }

        public UnavailableUiModel(PriceUiModel priceUiModel, String str) {
            str.getClass();
            this.f61703b = priceUiModel;
            this.f61704c = str;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof UnavailableUiModel)) {
                return false;
            }
            UnavailableUiModel unavailableUiModel = (UnavailableUiModel) obj;
            return Intrinsics.c(this.f61703b, unavailableUiModel.f61703b) && Intrinsics.c(this.f61704c, unavailableUiModel.f61704c);
        }

        @Override // com.vuitton.android.presentation.screen.pdp.models.uimodels.NotSellableReasonUiModel
        /* JADX INFO: renamed from: h, reason: from getter */
        public final PriceUiModel getF61705b() {
            return this.f61703b;
        }

        public final int hashCode() {
            PriceUiModel priceUiModel = this.f61703b;
            return this.f61704c.hashCode() + ((priceUiModel == null ? 0 : priceUiModel.hashCode()) * 31);
        }

        public final String toString() {
            return "UnavailableUiModel(price=" + this.f61703b + ", code=" + this.f61704c + ")";
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            PriceUiModel priceUiModel = this.f61703b;
            if (priceUiModel == null) {
                parcel.writeInt(0);
            } else {
                parcel.writeInt(1);
                priceUiModel.writeToParcel(parcel, i2);
            }
            parcel.writeString(this.f61704c);
        }

        public /* synthetic */ UnavailableUiModel(PriceUiModel priceUiModel, String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(priceUiModel, (i2 & 2) != 0 ? "unavailable" : str);
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/NotSellableReasonUiModel$WebOnlyUiModel;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/NotSellableReasonUiModel;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceUiModel;", "price", "", m.v, "<init>", "(Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceUiModel;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class WebOnlyUiModel implements NotSellableReasonUiModel {
        public static final Parcelable.Creator<WebOnlyUiModel> CREATOR = new Creator();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final PriceUiModel f61705b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f61706c;

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<WebOnlyUiModel> {
            @Override // android.os.Parcelable.Creator
            public final WebOnlyUiModel createFromParcel(Parcel parcel) {
                parcel.getClass();
                return new WebOnlyUiModel(parcel.readInt() == 0 ? null : PriceUiModel.CREATOR.createFromParcel(parcel), parcel.readString());
            }

            @Override // android.os.Parcelable.Creator
            public final WebOnlyUiModel[] newArray(int i2) {
                return new WebOnlyUiModel[i2];
            }
        }

        public WebOnlyUiModel(PriceUiModel priceUiModel, String str) {
            str.getClass();
            this.f61705b = priceUiModel;
            this.f61706c = str;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof WebOnlyUiModel)) {
                return false;
            }
            WebOnlyUiModel webOnlyUiModel = (WebOnlyUiModel) obj;
            return Intrinsics.c(this.f61705b, webOnlyUiModel.f61705b) && Intrinsics.c(this.f61706c, webOnlyUiModel.f61706c);
        }

        @Override // com.vuitton.android.presentation.screen.pdp.models.uimodels.NotSellableReasonUiModel
        /* JADX INFO: renamed from: h, reason: from getter */
        public final PriceUiModel getF61705b() {
            return this.f61705b;
        }

        public final int hashCode() {
            PriceUiModel priceUiModel = this.f61705b;
            return this.f61706c.hashCode() + ((priceUiModel == null ? 0 : priceUiModel.hashCode()) * 31);
        }

        public final String toString() {
            return "WebOnlyUiModel(price=" + this.f61705b + ", code=" + this.f61706c + ")";
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            PriceUiModel priceUiModel = this.f61705b;
            if (priceUiModel == null) {
                parcel.writeInt(0);
            } else {
                parcel.writeInt(1);
                priceUiModel.writeToParcel(parcel, i2);
            }
            parcel.writeString(this.f61706c);
        }

        public /* synthetic */ WebOnlyUiModel(PriceUiModel priceUiModel, String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(priceUiModel, (i2 & 2) != 0 ? "web_only" : str);
        }
    }
}
