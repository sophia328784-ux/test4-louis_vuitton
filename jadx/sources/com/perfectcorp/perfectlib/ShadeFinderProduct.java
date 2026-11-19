package com.perfectcorp.perfectlib;

import com.perfectcorp.thirdparty.com.google.common.base.MoreObjects;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class ShadeFinderProduct {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ProductInfo f39851a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SkuInfo f39852b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Type f39853c;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class Type {
        public static final Type BEST_MATCH;
        public static final Type COOLER;
        public static final Type DARKER;
        public static final Type LIGHTER;
        public static final Type WARMER;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final /* synthetic */ Type[] f39854a;

        static {
            Type type = new Type("BEST_MATCH", 0);
            BEST_MATCH = type;
            Type type2 = new Type("WARMER", 1);
            WARMER = type2;
            Type type3 = new Type("COOLER", 2);
            COOLER = type3;
            Type type4 = new Type("LIGHTER", 3);
            LIGHTER = type4;
            Type type5 = new Type("DARKER", 4);
            DARKER = type5;
            f39854a = new Type[]{type, type2, type3, type4, type5};
        }

        public static Type valueOf(String str) {
            return (Type) Enum.valueOf(Type.class, str);
        }

        public static Type[] values() {
            return (Type[]) f39854a.clone();
        }
    }

    public ShadeFinderProduct(ProductInfo productInfo, SkuInfo skuInfo, Type type) {
        Objects.requireNonNull(productInfo);
        this.f39851a = productInfo;
        Objects.requireNonNull(skuInfo);
        this.f39852b = skuInfo;
        Objects.requireNonNull(type);
        this.f39853c = type;
    }

    public final String getProductGuid() {
        return this.f39851a.getGuid();
    }

    public final String getSkuGuid() {
        return this.f39852b.getGuid();
    }

    public final Type getType() {
        return this.f39853c;
    }

    public final String toString() {
        MoreObjects.ToStringHelper toStringHelper = new MoreObjects.ToStringHelper("ShadeFinderProduct");
        toStringHelper.b("ProductGuid", getProductGuid());
        toStringHelper.b("SkuGuid", getSkuGuid());
        toStringHelper.b("Type", getType());
        return toStringHelper.toString();
    }
}
