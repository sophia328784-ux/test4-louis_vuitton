package com.vuitton.foundation.model.domain.model.dynamicyield;

import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004\u0082\u0001\u0003\u0005\u0006\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYPageType;", "", "HOMEPAGE", "PRODUCT", "CATEGORY", "Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYPageType$CATEGORY;", "Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYPageType$HOMEPAGE;", "Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYPageType$PRODUCT;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class DYPageType {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYPageType$CATEGORY;", "Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYPageType;", "", "categoryId", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CATEGORY extends DYPageType {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f67557a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CATEGORY(String str) {
            super(null);
            str.getClass();
            this.f67557a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof CATEGORY) && Intrinsics.c(this.f67557a, ((CATEGORY) obj).f67557a);
        }

        public final int hashCode() {
            return this.f67557a.hashCode();
        }

        public final String toString() {
            return fc.h("CATEGORY(categoryId=", this.f67557a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYPageType$HOMEPAGE;", "Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYPageType;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class HOMEPAGE extends DYPageType {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final HOMEPAGE f67558a = new HOMEPAGE(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof HOMEPAGE);
        }

        public final int hashCode() {
            return 114470911;
        }

        public final String toString() {
            return "HOMEPAGE";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYPageType$PRODUCT;", "Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYPageType;", "", "sku", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class PRODUCT extends DYPageType {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f67559a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PRODUCT(String str) {
            super(null);
            str.getClass();
            this.f67559a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof PRODUCT) && Intrinsics.c(this.f67559a, ((PRODUCT) obj).f67559a);
        }

        public final int hashCode() {
            return this.f67559a.hashCode();
        }

        public final String toString() {
            return fc.h("PRODUCT(sku=", this.f67559a, ")");
        }
    }

    public DYPageType(DefaultConstructorMarker defaultConstructorMarker) {
    }
}
