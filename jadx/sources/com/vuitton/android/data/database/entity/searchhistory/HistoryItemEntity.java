package com.vuitton.android.data.database.entity.searchhistory;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import defpackage.fc;
import defpackage.tx;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00132\u00020\u0001:\u0002\u0014\u0013BG\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\t\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\f\u0010\rBW\b\u0010\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\f\u0010\u0012¨\u0006\u0015"}, d2 = {"Lcom/vuitton/android/data/database/entity/searchhistory/HistoryItemEntity;", "", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "sku", "", "label", "image", "Lcom/vuitton/android/data/database/entity/searchhistory/ProductBackgroundEntity;", "background", "dateTime", "Lcom/vuitton/android/data/database/entity/searchhistory/ProductShortPriceEntity;", "price", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/database/entity/searchhistory/ProductBackgroundEntity;Ljava/lang/String;Lcom/vuitton/android/data/database/entity/searchhistory/ProductShortPriceEntity;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/database/entity/searchhistory/ProductBackgroundEntity;Ljava/lang/String;Lcom/vuitton/android/data/database/entity/searchhistory/ProductShortPriceEntity;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class HistoryItemEntity {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final Lazy[] g = {null, null, null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new tx(24)), null, null};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f43607a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f43608b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f43609c;
    public final ProductBackgroundEntity d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f43610e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ProductShortPriceEntity f43611f;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/database/entity/searchhistory/HistoryItemEntity$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/database/entity/searchhistory/HistoryItemEntity;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<HistoryItemEntity> serializer() {
            return HistoryItemEntity$$serializer.f43612a;
        }
    }

    public /* synthetic */ HistoryItemEntity(int i2, String str, String str2, String str3, ProductBackgroundEntity productBackgroundEntity, String str4, ProductShortPriceEntity productShortPriceEntity, SerializationConstructorMarker serializationConstructorMarker, DefaultConstructorMarker defaultConstructorMarker) {
        if (18 != (i2 & 18)) {
            PluginExceptionsKt.b(i2, 18, HistoryItemEntity$$serializer.f43612a.getF19838b());
            throw null;
        }
        if ((i2 & 1) == 0) {
            this.f43607a = null;
        } else {
            this.f43607a = str;
        }
        this.f43608b = str2;
        if ((i2 & 4) == 0) {
            this.f43609c = null;
        } else {
            this.f43609c = str3;
        }
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = productBackgroundEntity;
        }
        this.f43610e = str4;
        if ((i2 & 32) == 0) {
            this.f43611f = null;
        } else {
            this.f43611f = productShortPriceEntity;
        }
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0016  */
    public final boolean equals(Object obj) {
        boolean zC;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof HistoryItemEntity)) {
            return false;
        }
        HistoryItemEntity historyItemEntity = (HistoryItemEntity) obj;
        String str = historyItemEntity.f43607a;
        String str2 = this.f43607a;
        if (str2 == null) {
            if (str == null) {
                zC = true;
            } else {
                zC = false;
            }
        } else if (str == null) {
            zC = false;
        } else {
            SkuId.Companion companion = SkuId.INSTANCE;
            zC = Intrinsics.c(str2, str);
        }
        return zC && Intrinsics.c(this.f43608b, historyItemEntity.f43608b) && Intrinsics.c(this.f43609c, historyItemEntity.f43609c) && this.d == historyItemEntity.d && Intrinsics.c(this.f43610e, historyItemEntity.f43610e) && Intrinsics.c(this.f43611f, historyItemEntity.f43611f);
    }

    public final int hashCode() {
        int iHashCode;
        String str = this.f43607a;
        if (str == null) {
            iHashCode = 0;
        } else {
            SkuId.Companion companion = SkuId.INSTANCE;
            iHashCode = str.hashCode();
        }
        int iB = fc.b(iHashCode * 31, 31, this.f43608b);
        String str2 = this.f43609c;
        int iHashCode2 = (iB + (str2 == null ? 0 : str2.hashCode())) * 31;
        ProductBackgroundEntity productBackgroundEntity = this.d;
        int iB2 = fc.b((iHashCode2 + (productBackgroundEntity == null ? 0 : productBackgroundEntity.hashCode())) * 31, 31, this.f43610e);
        ProductShortPriceEntity productShortPriceEntity = this.f43611f;
        return iB2 + (productShortPriceEntity != null ? productShortPriceEntity.hashCode() : 0);
    }

    public final String toString() {
        String str = this.f43607a;
        if (str == null) {
            str = "null";
        } else {
            SkuId.Companion companion = SkuId.INSTANCE;
        }
        StringBuilder sbS = fc.s("HistoryItemEntity(sku=", str, ", label=", this.f43608b, ", image=");
        sbS.append(this.f43609c);
        sbS.append(", background=");
        sbS.append(this.d);
        sbS.append(", dateTime=");
        sbS.append(this.f43610e);
        sbS.append(", price=");
        sbS.append(this.f43611f);
        sbS.append(")");
        return sbS.toString();
    }

    public HistoryItemEntity(String str, String str2, String str3, ProductBackgroundEntity productBackgroundEntity, String str4, ProductShortPriceEntity productShortPriceEntity, DefaultConstructorMarker defaultConstructorMarker) {
        str2.getClass();
        str4.getClass();
        this.f43607a = str;
        this.f43608b = str2;
        this.f43609c = str3;
        this.d = productBackgroundEntity;
        this.f43610e = str4;
        this.f43611f = productShortPriceEntity;
    }

    public /* synthetic */ HistoryItemEntity(String str, String str2, String str3, ProductBackgroundEntity productBackgroundEntity, String str4, ProductShortPriceEntity productShortPriceEntity, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, str2, (i2 & 4) != 0 ? null : str3, (i2 & 8) != 0 ? null : productBackgroundEntity, str4, (i2 & 32) != 0 ? null : productShortPriceEntity, null);
    }
}
