package com.vuitton.android.presentation.screen.search.models;

import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductShortPriceUiModel;
import defpackage.cj;
import defpackage.fc;
import defpackage.tr;
import java.time.LocalDateTime;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/search/models/HistoryItemUiModel;", "", "HistoryProductUiModel", "HistoryResearchUiModel", "Lcom/vuitton/android/presentation/screen/search/models/HistoryItemUiModel$HistoryProductUiModel;", "Lcom/vuitton/android/presentation/screen/search/models/HistoryItemUiModel$HistoryResearchUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class HistoryItemUiModel {

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B=\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\b\u0001\u0010\n\u001a\u00020\t\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/vuitton/android/presentation/screen/search/models/HistoryItemUiModel$HistoryProductUiModel;", "Lcom/vuitton/android/presentation/screen/search/models/HistoryItemUiModel;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "sku", "", "label", "image", "Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;", "price", "", "background", "Ljava/time/LocalDateTime;", "dateTime", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;ILjava/time/LocalDateTime;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class HistoryProductUiModel extends HistoryItemUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f64241a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f64242b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f64243c;
        public final ProductShortPriceUiModel d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f64244e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final LocalDateTime f64245f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public HistoryProductUiModel(String str, String str2, String str3, ProductShortPriceUiModel productShortPriceUiModel, int i2, LocalDateTime localDateTime, DefaultConstructorMarker defaultConstructorMarker) {
            super(null);
            cj.z(str, str2, str3);
            this.f64241a = str;
            this.f64242b = str2;
            this.f64243c = str3;
            this.d = productShortPriceUiModel;
            this.f64244e = i2;
            this.f64245f = localDateTime;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof HistoryProductUiModel)) {
                return false;
            }
            HistoryProductUiModel historyProductUiModel = (HistoryProductUiModel) obj;
            String str = historyProductUiModel.f64241a;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return Intrinsics.c(this.f64241a, str) && Intrinsics.c(this.f64242b, historyProductUiModel.f64242b) && Intrinsics.c(this.f64243c, historyProductUiModel.f64243c) && Intrinsics.c(this.d, historyProductUiModel.d) && this.f64244e == historyProductUiModel.f64244e && Intrinsics.c(this.f64245f, historyProductUiModel.f64245f);
        }

        public final int hashCode() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            int iB = fc.b(fc.b(this.f64241a.hashCode() * 31, 31, this.f64242b), 31, this.f64243c);
            ProductShortPriceUiModel productShortPriceUiModel = this.d;
            int iB2 = tr.b(this.f64244e, (iB + (productShortPriceUiModel == null ? 0 : productShortPriceUiModel.hashCode())) * 31, 31);
            LocalDateTime localDateTime = this.f64245f;
            return iB2 + (localDateTime != null ? localDateTime.hashCode() : 0);
        }

        public final String toString() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            StringBuilder sbS = fc.s("HistoryProductUiModel(sku=", this.f64241a, ", label=", this.f64242b, ", image=");
            sbS.append(this.f64243c);
            sbS.append(", price=");
            sbS.append(this.d);
            sbS.append(", background=");
            sbS.append(this.f64244e);
            sbS.append(", dateTime=");
            sbS.append(this.f64245f);
            sbS.append(")");
            return sbS.toString();
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/search/models/HistoryItemUiModel$HistoryResearchUiModel;", "Lcom/vuitton/android/presentation/screen/search/models/HistoryItemUiModel;", "", "label", "Ljava/time/LocalDateTime;", "dateTime", "<init>", "(Ljava/lang/String;Ljava/time/LocalDateTime;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class HistoryResearchUiModel extends HistoryItemUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f64246a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final LocalDateTime f64247b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public HistoryResearchUiModel(String str, LocalDateTime localDateTime) {
            super(null);
            str.getClass();
            this.f64246a = str;
            this.f64247b = localDateTime;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof HistoryResearchUiModel)) {
                return false;
            }
            HistoryResearchUiModel historyResearchUiModel = (HistoryResearchUiModel) obj;
            return Intrinsics.c(this.f64246a, historyResearchUiModel.f64246a) && Intrinsics.c(this.f64247b, historyResearchUiModel.f64247b);
        }

        public final int hashCode() {
            int iHashCode = this.f64246a.hashCode() * 31;
            LocalDateTime localDateTime = this.f64247b;
            return iHashCode + (localDateTime == null ? 0 : localDateTime.hashCode());
        }

        public final String toString() {
            return "HistoryResearchUiModel(label=" + this.f64246a + ", dateTime=" + this.f64247b + ")";
        }
    }

    public HistoryItemUiModel(DefaultConstructorMarker defaultConstructorMarker) {
    }
}
