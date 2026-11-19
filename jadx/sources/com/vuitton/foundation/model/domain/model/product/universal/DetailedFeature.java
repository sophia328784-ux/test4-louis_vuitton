package com.vuitton.foundation.model.domain.model.product.universal;

import com.vuitton.foundation.model.domain.model.common.AssetImage;
import defpackage.a;
import defpackage.cj;
import defpackage.fc;
import defpackage.pq0;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0006\u0002\u0003\u0004\u0005\u0006\u0007\u0082\u0001\u0003\b\t\n¨\u0006\u000bÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/product/universal/DetailedFeature;", "", "Describable", "Single", "Multiple", "None", "DescriptionDetail", "ProductDetailSection", "Lcom/vuitton/foundation/model/domain/model/product/universal/DetailedFeature$Multiple;", "Lcom/vuitton/foundation/model/domain/model/product/universal/DetailedFeature$None;", "Lcom/vuitton/foundation/model/domain/model/product/universal/DetailedFeature$Single;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface DetailedFeature {

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001\u0082\u0001\u0002\u0002\u0003¨\u0006\u0004À\u0006\u0003"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/product/universal/DetailedFeature$Describable;", "", "Lcom/vuitton/foundation/model/domain/model/product/universal/DetailedFeature$Multiple;", "Lcom/vuitton/foundation/model/domain/model/product/universal/DetailedFeature$Single;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface Describable {
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/product/universal/DetailedFeature$DescriptionDetail;", "", "", "title", "description", "", "Lcom/vuitton/foundation/model/domain/model/product/universal/DetailedFeature$ProductDetailSection;", "sections", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class DescriptionDetail {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f67969a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f67970b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final List f67971c;

        public DescriptionDetail(String str, String str2, List<ProductDetailSection> list) {
            pq0.B(str, str2, list);
            this.f67969a = str;
            this.f67970b = str2;
            this.f67971c = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof DescriptionDetail)) {
                return false;
            }
            DescriptionDetail descriptionDetail = (DescriptionDetail) obj;
            return Intrinsics.c(this.f67969a, descriptionDetail.f67969a) && Intrinsics.c(this.f67970b, descriptionDetail.f67970b) && Intrinsics.c(this.f67971c, descriptionDetail.f67971c);
        }

        public final int hashCode() {
            return this.f67971c.hashCode() + fc.b(this.f67969a.hashCode() * 31, 31, this.f67970b);
        }

        public final String toString() {
            return a.o(fc.s("DescriptionDetail(title=", this.f67969a, ", description=", this.f67970b, ", sections="), this.f67971c, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u00012\u00020\u0002B\u001f\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/product/universal/DetailedFeature$Multiple;", "Lcom/vuitton/foundation/model/domain/model/product/universal/DetailedFeature;", "Lcom/vuitton/foundation/model/domain/model/product/universal/DetailedFeature$Describable;", "", "detail", "", "Lcom/vuitton/foundation/model/domain/model/product/universal/DetailedFeature$DescriptionDetail;", "features", "<init>", "(Ljava/lang/String;Ljava/util/List;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Multiple implements DetailedFeature, Describable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f67972a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final List f67973b;

        public Multiple(String str, List<DescriptionDetail> list) {
            list.getClass();
            this.f67972a = str;
            this.f67973b = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Multiple)) {
                return false;
            }
            Multiple multiple = (Multiple) obj;
            return Intrinsics.c(this.f67972a, multiple.f67972a) && Intrinsics.c(this.f67973b, multiple.f67973b);
        }

        public final int hashCode() {
            String str = this.f67972a;
            return this.f67973b.hashCode() + ((str == null ? 0 : str.hashCode()) * 31);
        }

        public final String toString() {
            return cj.k("Multiple(detail=", this.f67972a, ", features=", this.f67973b, ")");
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/product/universal/DetailedFeature$None;", "Lcom/vuitton/foundation/model/domain/model/product/universal/DetailedFeature;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class None implements DetailedFeature {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final None f67974a = new None();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof None);
        }

        public final int hashCode() {
            return -1762037341;
        }

        public final String toString() {
            return "None";
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/product/universal/DetailedFeature$ProductDetailSection;", "", "", "text", "Lcom/vuitton/foundation/model/domain/model/common/AssetImage;", "image", "<init>", "(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/AssetImage;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ProductDetailSection {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f67975a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final AssetImage f67976b;

        public ProductDetailSection(String str, AssetImage assetImage) {
            str.getClass();
            assetImage.getClass();
            this.f67975a = str;
            this.f67976b = assetImage;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ProductDetailSection)) {
                return false;
            }
            ProductDetailSection productDetailSection = (ProductDetailSection) obj;
            return Intrinsics.c(this.f67975a, productDetailSection.f67975a) && Intrinsics.c(this.f67976b, productDetailSection.f67976b);
        }

        public final int hashCode() {
            return this.f67976b.hashCode() + (this.f67975a.hashCode() * 31);
        }

        public final String toString() {
            return "ProductDetailSection(text=" + this.f67975a + ", image=" + this.f67976b + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/product/universal/DetailedFeature$Single;", "Lcom/vuitton/foundation/model/domain/model/product/universal/DetailedFeature;", "Lcom/vuitton/foundation/model/domain/model/product/universal/DetailedFeature$Describable;", "", "detail", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Single implements DetailedFeature, Describable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f67977a;

        public Single(String str) {
            str.getClass();
            this.f67977a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Single) && Intrinsics.c(this.f67977a, ((Single) obj).f67977a);
        }

        public final int hashCode() {
            return this.f67977a.hashCode();
        }

        public final String toString() {
            return fc.h("Single(detail=", this.f67977a, ")");
        }
    }
}
