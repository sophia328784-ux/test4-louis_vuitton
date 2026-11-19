package com.vuitton.android.presentation.screen.pdp.models.uimodels;

import android.os.Parcel;
import android.os.Parcelable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SellableStatusUiModel;", "Landroid/os/Parcelable;", "SellableUiModel", "NotSellableUiModel", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SellableStatusUiModel$NotSellableUiModel;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SellableStatusUiModel$SellableUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class SellableStatusUiModel implements Parcelable {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SellableStatusUiModel$NotSellableUiModel;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SellableStatusUiModel;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/NotSellableReasonUiModel;", "reason", "<init>", "(Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/NotSellableReasonUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class NotSellableUiModel extends SellableStatusUiModel {
        public static final Parcelable.Creator<NotSellableUiModel> CREATOR = new Creator();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final NotSellableReasonUiModel f61747b;

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<NotSellableUiModel> {
            @Override // android.os.Parcelable.Creator
            public final NotSellableUiModel createFromParcel(Parcel parcel) {
                parcel.getClass();
                return new NotSellableUiModel((NotSellableReasonUiModel) parcel.readParcelable(NotSellableUiModel.class.getClassLoader()));
            }

            @Override // android.os.Parcelable.Creator
            public final NotSellableUiModel[] newArray(int i2) {
                return new NotSellableUiModel[i2];
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public NotSellableUiModel(NotSellableReasonUiModel notSellableReasonUiModel) {
            super(null);
            notSellableReasonUiModel.getClass();
            this.f61747b = notSellableReasonUiModel;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            parcel.writeParcelable(this.f61747b, i2);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SellableStatusUiModel$SellableUiModel;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SellableStatusUiModel;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceUiModel;", "price", "<init>", "(Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class SellableUiModel extends SellableStatusUiModel {
        public static final Parcelable.Creator<SellableUiModel> CREATOR = new Creator();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final PriceUiModel f61748b;

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<SellableUiModel> {
            @Override // android.os.Parcelable.Creator
            public final SellableUiModel createFromParcel(Parcel parcel) {
                parcel.getClass();
                return new SellableUiModel(PriceUiModel.CREATOR.createFromParcel(parcel));
            }

            @Override // android.os.Parcelable.Creator
            public final SellableUiModel[] newArray(int i2) {
                return new SellableUiModel[i2];
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SellableUiModel(PriceUiModel priceUiModel) {
            super(null);
            priceUiModel.getClass();
            this.f61748b = priceUiModel;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            this.f61748b.writeToParcel(parcel, i2);
        }
    }

    public SellableStatusUiModel(DefaultConstructorMarker defaultConstructorMarker) {
    }
}
