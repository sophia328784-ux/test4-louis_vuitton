package com.vuitton.android.presentation.utils;

import com.networkbench.agent.impl.NBSSpanMetricUnit;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.vuitton.android.R;
import com.vuitton.foundation.model.domain.model.product.universal.ProductBackground;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001:\u0002\u0002\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/presentation/utils/ProductUtils;", "", "ProductImageRatio", "ProductImageTypeItemView", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class ProductUtils {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/presentation/utils/ProductUtils$ProductImageRatio;", "", "R1_1", "R4_5", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class ProductImageRatio {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ ProductImageRatio[] $VALUES;
        public static final ProductImageRatio R1_1;
        public static final ProductImageRatio R4_5;

        static {
            ProductImageRatio productImageRatio = new ProductImageRatio("R1_1", 0);
            R1_1 = productImageRatio;
            ProductImageRatio productImageRatio2 = new ProductImageRatio("R4_5", 1);
            R4_5 = productImageRatio2;
            ProductImageRatio[] productImageRatioArr = {productImageRatio, productImageRatio2};
            $VALUES = productImageRatioArr;
            $ENTRIES = EnumEntriesKt.a(productImageRatioArr);
        }

        public static ProductImageRatio valueOf(String str) {
            return (ProductImageRatio) Enum.valueOf(ProductImageRatio.class, str);
        }

        public static ProductImageRatio[] values() {
            return (ProductImageRatio[]) $VALUES.clone();
        }
    }

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.vuitton.android.presentation.utils.ProductUtils$ProductImageTypeItemView[], still in use, count: 1, list:
      (r0v1 com.vuitton.android.presentation.utils.ProductUtils$ProductImageTypeItemView[]) from 0x001e: INVOKE (r0v1 com.vuitton.android.presentation.utils.ProductUtils$ProductImageTypeItemView[]) STATIC call: kotlin.enums.EnumEntriesKt.a(java.lang.Enum[]):kotlin.enums.EnumEntries A[MD:(java.lang.Enum[]):kotlin.enums.EnumEntries (m), WRAPPED]
    	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
    	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
    	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:101)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
    	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:100)
    	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:257)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:187)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/utils/ProductUtils$ProductImageTypeItemView;", "", "", ConfigurationName.KEY, "Ljava/lang/String;", NBSSpanMetricUnit.Bit, "()Ljava/lang/String;", "FRONT", "WORN", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class ProductImageTypeItemView {
        FRONT("front"),
        WORN("worn");

        private static final /* synthetic */ EnumEntries $ENTRIES;
        private final String key;

        static {
            $ENTRIES = EnumEntriesKt.a(productImageTypeItemViewArr);
        }

        public ProductImageTypeItemView(String str) {
            super(str, i);
            this.key = str;
        }

        public static EnumEntries a() {
            return $ENTRIES;
        }

        public static ProductImageTypeItemView valueOf(String str) {
            return (ProductImageTypeItemView) Enum.valueOf(ProductImageTypeItemView.class, str);
        }

        public static ProductImageTypeItemView[] values() {
            return (ProductImageTypeItemView[]) $VALUES.clone();
        }

        /* JADX INFO: renamed from: b, reason: from getter */
        public final String getKey() {
            return this.key;
        }
    }

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f65876a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f65877b;

        static {
            int[] iArr = new int[ProductImageRatio.values().length];
            try {
                iArr[ProductImageRatio.R1_1.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ProductImageRatio.R4_5.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f65876a = iArr;
            int[] iArr2 = new int[ProductBackground.values().length];
            try {
                iArr2[ProductBackground.DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[ProductBackground.FLOOR.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            f65877b = iArr2;
        }
    }

    public static int a(ProductImageTypeItemView productImageTypeItemView, ProductBackground productBackground, ProductImageRatio productImageRatio) {
        productImageRatio.getClass();
        if (productImageTypeItemView != ProductImageTypeItemView.FRONT) {
            return R.drawable.background_product_default;
        }
        if (productBackground == null) {
            productBackground = ProductBackground.DEFAULT;
        }
        int i2 = WhenMappings.f65877b[productBackground.ordinal()];
        if (i2 == 1) {
            return R.drawable.background_product_default;
        }
        if (i2 != 2) {
            v40.g();
            return 0;
        }
        int i3 = WhenMappings.f65876a[productImageRatio.ordinal()];
        if (i3 == 1) {
            return R.drawable.background_product_floor_1_1;
        }
        if (i3 == 2) {
            return R.drawable.background_product_floor_4_5;
        }
        v40.g();
        return 0;
    }

    public static int b(String str, ProductBackground productBackground, ProductImageRatio productImageRatio) {
        productImageRatio.getClass();
        for (ProductImageTypeItemView productImageTypeItemView : ProductImageTypeItemView.a()) {
            if (StringsKt.k(str, productImageTypeItemView.getKey(), true)) {
                return a(productImageTypeItemView, productBackground, productImageRatio);
            }
        }
        productImageTypeItemView = null;
        return a(productImageTypeItemView, productBackground, productImageRatio);
    }
}
