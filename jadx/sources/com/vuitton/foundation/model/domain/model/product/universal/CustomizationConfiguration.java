package com.vuitton.foundation.model.domain.model.product.universal;

import com.vuitton.foundation.model.domain.model.product.SkuId;
import defpackage.fc;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationConfiguration;", "", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "sku", "", "title", "Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationId;", "identifier", "", "Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationInformation;", "informationList", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationId;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CustomizationConfiguration {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67959a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67960b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CustomizationId f67961c;
    public final List d;

    public CustomizationConfiguration(String str, String str2, CustomizationId customizationId, List list, DefaultConstructorMarker defaultConstructorMarker) {
        str.getClass();
        str2.getClass();
        customizationId.getClass();
        list.getClass();
        this.f67959a = str;
        this.f67960b = str2;
        this.f67961c = customizationId;
        this.d = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CustomizationConfiguration)) {
            return false;
        }
        CustomizationConfiguration customizationConfiguration = (CustomizationConfiguration) obj;
        String str = customizationConfiguration.f67959a;
        SkuId.Companion companion = SkuId.INSTANCE;
        return this.f67959a.equals(str) && this.f67960b.equals(customizationConfiguration.f67960b) && this.f67961c.equals(customizationConfiguration.f67961c) && this.d.equals(customizationConfiguration.d);
    }

    public final int hashCode() {
        SkuId.Companion companion = SkuId.INSTANCE;
        return this.d.hashCode() + ((this.f67961c.hashCode() + fc.b(this.f67959a.hashCode() * 31, 31, this.f67960b)) * 31);
    }

    public final String toString() {
        SkuId.Companion companion = SkuId.INSTANCE;
        StringBuilder sbS = fc.s("CustomizationConfiguration(sku=", this.f67959a, ", title=", this.f67960b, ", identifier=");
        sbS.append(this.f67961c);
        sbS.append(", informationList=");
        sbS.append(this.d);
        sbS.append(")");
        return sbS.toString();
    }
}
