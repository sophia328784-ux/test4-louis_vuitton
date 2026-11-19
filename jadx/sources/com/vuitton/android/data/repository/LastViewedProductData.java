package com.vuitton.android.data.repository;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import defpackage.cj;
import defpackage.fc;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000f2\u00020\u0001:\u0002\u0010\u000fB)\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\b\u0010\tBC\b\u0010\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\b\u0010\u000e¨\u0006\u0011"}, d2 = {"Lcom/vuitton/android/data/repository/LastViewedProductData;", "", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "skuId", "", "identifier", "dateTime", "categoryId", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class LastViewedProductData {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f47745a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f47746b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f47747c;
    public final String d;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/repository/LastViewedProductData$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/repository/LastViewedProductData;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<LastViewedProductData> serializer() {
            return LastViewedProductData$$serializer.f47748a;
        }
    }

    public /* synthetic */ LastViewedProductData(int i2, String str, String str2, String str3, String str4, SerializationConstructorMarker serializationConstructorMarker, DefaultConstructorMarker defaultConstructorMarker) {
        if (15 != (i2 & 15)) {
            PluginExceptionsKt.b(i2, 15, LastViewedProductData$$serializer.f47748a.getF19838b());
            throw null;
        }
        this.f47745a = str;
        this.f47746b = str2;
        this.f47747c = str3;
        this.d = str4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LastViewedProductData)) {
            return false;
        }
        LastViewedProductData lastViewedProductData = (LastViewedProductData) obj;
        String str = lastViewedProductData.f47745a;
        SkuId.Companion companion = SkuId.INSTANCE;
        return Intrinsics.c(this.f47745a, str) && Intrinsics.c(this.f47746b, lastViewedProductData.f47746b) && Intrinsics.c(this.f47747c, lastViewedProductData.f47747c) && Intrinsics.c(this.d, lastViewedProductData.d);
    }

    public final int hashCode() {
        SkuId.Companion companion = SkuId.INSTANCE;
        int iB = fc.b(fc.b(this.f47745a.hashCode() * 31, 31, this.f47746b), 31, this.f47747c);
        String str = this.d;
        return iB + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        SkuId.Companion companion = SkuId.INSTANCE;
        return tr.l(fc.s("LastViewedProductData(skuId=", this.f47745a, ", identifier=", this.f47746b, ", dateTime="), this.f47747c, ", categoryId=", this.d, ")");
    }

    public LastViewedProductData(String str, String str2, String str3, String str4, DefaultConstructorMarker defaultConstructorMarker) {
        cj.z(str, str2, str3);
        this.f47745a = str;
        this.f47746b = str2;
        this.f47747c = str3;
        this.d = str4;
    }
}
