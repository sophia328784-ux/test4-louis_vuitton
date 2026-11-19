package com.vuitton.foundation.model.domain.model.search;

import com.vuitton.foundation.model.domain.model.product.SkuId;
import com.vuitton.foundation.model.domain.model.product.universal.ProductBackground;
import com.vuitton.foundation.model.domain.model.productshortlist.ProductShortPrice;
import defpackage.fc;
import java.time.LocalDateTime;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/search/HistoryItem;", "", "HistoryProduct", "HistoryTextResearch", "Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryProduct;", "Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryTextResearch;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class HistoryItem {
    public HistoryItem(DefaultConstructorMarker defaultConstructorMarker) {
    }

    /* JADX INFO: renamed from: a */
    public abstract String getF68191a();

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryTextResearch;", "Lcom/vuitton/foundation/model/domain/model/search/HistoryItem;", "", "label", "Ljava/time/LocalDateTime;", "dateTime", "<init>", "(Ljava/lang/String;Ljava/time/LocalDateTime;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class HistoryTextResearch extends HistoryItem {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f68191a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final LocalDateTime f68192b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public HistoryTextResearch(String str, LocalDateTime localDateTime) {
            super(null);
            str.getClass();
            this.f68191a = str;
            this.f68192b = localDateTime;
        }

        public static HistoryTextResearch b(HistoryTextResearch historyTextResearch, LocalDateTime localDateTime) {
            String str = historyTextResearch.f68191a;
            historyTextResearch.getClass();
            str.getClass();
            return new HistoryTextResearch(str, localDateTime);
        }

        @Override // com.vuitton.foundation.model.domain.model.search.HistoryItem
        /* JADX INFO: renamed from: a, reason: from getter */
        public final String getF68191a() {
            return this.f68191a;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof HistoryTextResearch)) {
                return false;
            }
            HistoryTextResearch historyTextResearch = (HistoryTextResearch) obj;
            return Intrinsics.c(this.f68191a, historyTextResearch.f68191a) && Intrinsics.c(this.f68192b, historyTextResearch.f68192b);
        }

        public final int hashCode() {
            int iHashCode = this.f68191a.hashCode() * 31;
            LocalDateTime localDateTime = this.f68192b;
            return iHashCode + (localDateTime == null ? 0 : localDateTime.hashCode());
        }

        public final String toString() {
            return "HistoryTextResearch(label=" + this.f68191a + ", dateTime=" + this.f68192b + ")";
        }

        public /* synthetic */ HistoryTextResearch(String str, LocalDateTime localDateTime, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, (i2 & 2) != 0 ? null : localDateTime);
        }
    }

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B?\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryProduct;", "Lcom/vuitton/foundation/model/domain/model/search/HistoryItem;", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "sku", "", "label", "image", "Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;", "background", "Ljava/time/LocalDateTime;", "dateTime", "Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortPrice;", "price", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;Ljava/time/LocalDateTime;Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortPrice;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class HistoryProduct extends HistoryItem {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f68186a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f68187b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f68188c;
        public final ProductBackground d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final LocalDateTime f68189e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final ProductShortPrice f68190f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public HistoryProduct(String str, String str2, String str3, ProductBackground productBackground, LocalDateTime localDateTime, ProductShortPrice productShortPrice, DefaultConstructorMarker defaultConstructorMarker) {
            super(null);
            str.getClass();
            str2.getClass();
            str3.getClass();
            productBackground.getClass();
            this.f68186a = str;
            this.f68187b = str2;
            this.f68188c = str3;
            this.d = productBackground;
            this.f68189e = localDateTime;
            this.f68190f = productShortPrice;
        }

        public static HistoryProduct b(HistoryProduct historyProduct, LocalDateTime localDateTime) {
            String str = historyProduct.f68186a;
            String str2 = historyProduct.f68187b;
            String str3 = historyProduct.f68188c;
            ProductBackground productBackground = historyProduct.d;
            ProductShortPrice productShortPrice = historyProduct.f68190f;
            historyProduct.getClass();
            str.getClass();
            str2.getClass();
            str3.getClass();
            productBackground.getClass();
            return new HistoryProduct(str, str2, str3, productBackground, localDateTime, productShortPrice, null);
        }

        @Override // com.vuitton.foundation.model.domain.model.search.HistoryItem
        /* JADX INFO: renamed from: a, reason: from getter */
        public final String getF68191a() {
            return this.f68187b;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof HistoryProduct)) {
                return false;
            }
            HistoryProduct historyProduct = (HistoryProduct) obj;
            String str = historyProduct.f68186a;
            SkuId.Companion companion = SkuId.INSTANCE;
            return Intrinsics.c(this.f68186a, str) && Intrinsics.c(this.f68187b, historyProduct.f68187b) && Intrinsics.c(this.f68188c, historyProduct.f68188c) && this.d == historyProduct.d && Intrinsics.c(this.f68189e, historyProduct.f68189e) && Intrinsics.c(this.f68190f, historyProduct.f68190f);
        }

        public final int hashCode() {
            SkuId.Companion companion = SkuId.INSTANCE;
            int iHashCode = (this.d.hashCode() + fc.b(fc.b(this.f68186a.hashCode() * 31, 31, this.f68187b), 31, this.f68188c)) * 31;
            LocalDateTime localDateTime = this.f68189e;
            int iHashCode2 = (iHashCode + (localDateTime == null ? 0 : localDateTime.hashCode())) * 31;
            ProductShortPrice productShortPrice = this.f68190f;
            return iHashCode2 + (productShortPrice != null ? productShortPrice.hashCode() : 0);
        }

        public final String toString() {
            SkuId.Companion companion = SkuId.INSTANCE;
            StringBuilder sbS = fc.s("HistoryProduct(sku=", this.f68186a, ", label=", this.f68187b, ", image=");
            sbS.append(this.f68188c);
            sbS.append(", background=");
            sbS.append(this.d);
            sbS.append(", dateTime=");
            sbS.append(this.f68189e);
            sbS.append(", price=");
            sbS.append(this.f68190f);
            sbS.append(")");
            return sbS.toString();
        }

        public /* synthetic */ HistoryProduct(String str, String str2, String str3, ProductBackground productBackground, LocalDateTime localDateTime, ProductShortPrice productShortPrice, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, str2, str3, productBackground, (i2 & 16) != 0 ? null : localDateTime, (i2 & 32) != 0 ? null : productShortPrice, null);
        }
    }
}
