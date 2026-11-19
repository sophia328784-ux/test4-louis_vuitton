package com.vuitton.android.presentation.screen.plp.models.plp;

import com.batch.android.s.b;
import com.vuitton.android.presentation.common.editorial.models.RatioUiModel;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import com.vuitton.android.presentation.model.common.AssetUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.PlpProductUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductShortUiModel;
import defpackage.cj;
import defpackage.fc;
import java.util.List;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0006\u0002\u0003\u0004\u0005\u0006\u0007\u0082\u0001\u0006\b\t\n\u000b\f\r¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel;", "", "Products", "ProductHighlight", "ProductSlider", "ProductFullscreen", "HalfEdito", "CuratedText", "Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$CuratedText;", "Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$HalfEdito;", "Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$ProductFullscreen;", "Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$ProductHighlight;", "Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$ProductSlider;", "Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$Products;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class PlpSectionUiModel {

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001:\u0001\u000bB)\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$CuratedText;", "Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel;", "", b.a.f24015b, "Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$CuratedText$LabelUiModel;", "title", "description", "Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;", "image", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$CuratedText$LabelUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;)V", "LabelUiModel", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CuratedText extends PlpSectionUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f62914a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final LabelUiModel f62915b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f62916c;
        public final AssetImageUiModel d;

        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001:\u0001\bB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$CuratedText$LabelUiModel;", "", "", "value", "Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$CuratedText$LabelUiModel$FontUiModel;", "font", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$CuratedText$LabelUiModel$FontUiModel;)V", "FontUiModel", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class LabelUiModel {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final String f62917a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final FontUiModel f62918b;

            /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
            /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
            @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$CuratedText$LabelUiModel$FontUiModel;", "", "SMALL", "MEDIUM", "LARGE", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
            public static final class FontUiModel {
                private static final /* synthetic */ EnumEntries $ENTRIES;
                private static final /* synthetic */ FontUiModel[] $VALUES;
                public static final FontUiModel LARGE;
                public static final FontUiModel MEDIUM;
                public static final FontUiModel SMALL;

                static {
                    FontUiModel fontUiModel = new FontUiModel("SMALL", 0);
                    SMALL = fontUiModel;
                    FontUiModel fontUiModel2 = new FontUiModel("MEDIUM", 1);
                    MEDIUM = fontUiModel2;
                    FontUiModel fontUiModel3 = new FontUiModel("LARGE", 2);
                    LARGE = fontUiModel3;
                    FontUiModel[] fontUiModelArr = {fontUiModel, fontUiModel2, fontUiModel3};
                    $VALUES = fontUiModelArr;
                    $ENTRIES = EnumEntriesKt.a(fontUiModelArr);
                }

                public static FontUiModel valueOf(String str) {
                    return (FontUiModel) Enum.valueOf(FontUiModel.class, str);
                }

                public static FontUiModel[] values() {
                    return (FontUiModel[]) $VALUES.clone();
                }
            }

            public LabelUiModel(String str, FontUiModel fontUiModel) {
                str.getClass();
                fontUiModel.getClass();
                this.f62917a = str;
                this.f62918b = fontUiModel;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof LabelUiModel)) {
                    return false;
                }
                LabelUiModel labelUiModel = (LabelUiModel) obj;
                return Intrinsics.c(this.f62917a, labelUiModel.f62917a) && this.f62918b == labelUiModel.f62918b;
            }

            public final int hashCode() {
                return this.f62918b.hashCode() + (this.f62917a.hashCode() * 31);
            }

            public final String toString() {
                return "LabelUiModel(value=" + this.f62917a + ", font=" + this.f62918b + ")";
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CuratedText(String str, LabelUiModel labelUiModel, String str2, AssetImageUiModel assetImageUiModel) {
            super(null);
            str.getClass();
            labelUiModel.getClass();
            str2.getClass();
            this.f62914a = str;
            this.f62915b = labelUiModel;
            this.f62916c = str2;
            this.d = assetImageUiModel;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof CuratedText)) {
                return false;
            }
            CuratedText curatedText = (CuratedText) obj;
            return Intrinsics.c(this.f62914a, curatedText.f62914a) && Intrinsics.c(this.f62915b, curatedText.f62915b) && Intrinsics.c(this.f62916c, curatedText.f62916c) && Intrinsics.c(this.d, curatedText.d);
        }

        public final int hashCode() {
            int iB = fc.b((this.f62915b.hashCode() + (this.f62914a.hashCode() * 31)) * 31, 31, this.f62916c);
            AssetImageUiModel assetImageUiModel = this.d;
            return iB + (assetImageUiModel == null ? 0 : assetImageUiModel.hashCode());
        }

        public final String toString() {
            return "CuratedText(id=" + this.f62914a + ", title=" + this.f62915b + ", description=" + this.f62916c + ", image=" + this.d + ")";
        }
    }

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001:\u0001\u000fB?\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u0010"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$HalfEdito;", "Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel;", "", b.a.f24015b, "title", "surtitle", "description", "Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$HalfEdito$AlignmentUiModel;", "alignment", "Lcom/vuitton/android/presentation/model/common/AssetUiModel;", "asset", "Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortUiModel;", "product", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$HalfEdito$AlignmentUiModel;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortUiModel;)V", "AlignmentUiModel", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class HalfEdito extends PlpSectionUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f62919a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f62920b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f62921c;
        public final String d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final AlignmentUiModel f62922e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final AssetUiModel f62923f;
        public final ProductShortUiModel g;

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$HalfEdito$AlignmentUiModel;", "", "LEFT", "CENTER", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class AlignmentUiModel {
            private static final /* synthetic */ EnumEntries $ENTRIES;
            private static final /* synthetic */ AlignmentUiModel[] $VALUES;
            public static final AlignmentUiModel CENTER;
            public static final AlignmentUiModel LEFT;

            static {
                AlignmentUiModel alignmentUiModel = new AlignmentUiModel("LEFT", 0);
                LEFT = alignmentUiModel;
                AlignmentUiModel alignmentUiModel2 = new AlignmentUiModel("CENTER", 1);
                CENTER = alignmentUiModel2;
                AlignmentUiModel[] alignmentUiModelArr = {alignmentUiModel, alignmentUiModel2};
                $VALUES = alignmentUiModelArr;
                $ENTRIES = EnumEntriesKt.a(alignmentUiModelArr);
            }

            public static AlignmentUiModel valueOf(String str) {
                return (AlignmentUiModel) Enum.valueOf(AlignmentUiModel.class, str);
            }

            public static AlignmentUiModel[] values() {
                return (AlignmentUiModel[]) $VALUES.clone();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public HalfEdito(String str, String str2, String str3, String str4, AlignmentUiModel alignmentUiModel, AssetUiModel assetUiModel, ProductShortUiModel productShortUiModel) {
            super(null);
            str.getClass();
            str2.getClass();
            str3.getClass();
            str4.getClass();
            alignmentUiModel.getClass();
            assetUiModel.getClass();
            productShortUiModel.getClass();
            this.f62919a = str;
            this.f62920b = str2;
            this.f62921c = str3;
            this.d = str4;
            this.f62922e = alignmentUiModel;
            this.f62923f = assetUiModel;
            this.g = productShortUiModel;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof HalfEdito)) {
                return false;
            }
            HalfEdito halfEdito = (HalfEdito) obj;
            return Intrinsics.c(this.f62919a, halfEdito.f62919a) && Intrinsics.c(this.f62920b, halfEdito.f62920b) && Intrinsics.c(this.f62921c, halfEdito.f62921c) && Intrinsics.c(this.d, halfEdito.d) && this.f62922e == halfEdito.f62922e && Intrinsics.c(this.f62923f, halfEdito.f62923f) && Intrinsics.c(this.g, halfEdito.g);
        }

        public final int hashCode() {
            return this.g.hashCode() + ((this.f62923f.hashCode() + ((this.f62922e.hashCode() + fc.b(fc.b(fc.b(this.f62919a.hashCode() * 31, 31, this.f62920b), 31, this.f62921c), 31, this.d)) * 31)) * 31);
        }

        public final String toString() {
            StringBuilder sbS = fc.s("HalfEdito(id=", this.f62919a, ", title=", this.f62920b, ", surtitle=");
            cj.C(sbS, this.f62921c, ", description=", this.d, ", alignment=");
            sbS.append(this.f62922e);
            sbS.append(", asset=");
            sbS.append(this.f62923f);
            sbS.append(", product=");
            sbS.append(this.g);
            sbS.append(")");
            return sbS.toString();
        }
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$ProductFullscreen;", "Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel;", "", b.a.f24015b, "Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;", "product", "Lcom/vuitton/android/presentation/common/editorial/models/RatioUiModel;", "ratio", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;Lcom/vuitton/android/presentation/common/editorial/models/RatioUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ProductFullscreen extends PlpSectionUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f62924a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final PlpProductUiModel f62925b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final RatioUiModel f62926c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ProductFullscreen(String str, PlpProductUiModel plpProductUiModel, RatioUiModel ratioUiModel) {
            super(null);
            str.getClass();
            plpProductUiModel.getClass();
            ratioUiModel.getClass();
            this.f62924a = str;
            this.f62925b = plpProductUiModel;
            this.f62926c = ratioUiModel;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ProductFullscreen)) {
                return false;
            }
            ProductFullscreen productFullscreen = (ProductFullscreen) obj;
            return Intrinsics.c(this.f62924a, productFullscreen.f62924a) && Intrinsics.c(this.f62925b, productFullscreen.f62925b) && this.f62926c == productFullscreen.f62926c;
        }

        public final int hashCode() {
            return this.f62926c.hashCode() + ((this.f62925b.hashCode() + (this.f62924a.hashCode() * 31)) * 31);
        }

        public final String toString() {
            return "ProductFullscreen(id=" + this.f62924a + ", product=" + this.f62925b + ", ratio=" + this.f62926c + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$ProductHighlight;", "Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel;", "", b.a.f24015b, "Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;", "product", "Lcom/vuitton/android/presentation/model/common/AssetUiModel;", "asset", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;Lcom/vuitton/android/presentation/model/common/AssetUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ProductHighlight extends PlpSectionUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f62927a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final PlpProductUiModel f62928b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final AssetUiModel f62929c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ProductHighlight(String str, PlpProductUiModel plpProductUiModel, AssetUiModel assetUiModel) {
            super(null);
            str.getClass();
            plpProductUiModel.getClass();
            assetUiModel.getClass();
            this.f62927a = str;
            this.f62928b = plpProductUiModel;
            this.f62929c = assetUiModel;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ProductHighlight)) {
                return false;
            }
            ProductHighlight productHighlight = (ProductHighlight) obj;
            return Intrinsics.c(this.f62927a, productHighlight.f62927a) && Intrinsics.c(this.f62928b, productHighlight.f62928b) && Intrinsics.c(this.f62929c, productHighlight.f62929c);
        }

        public final int hashCode() {
            return this.f62929c.hashCode() + ((this.f62928b.hashCode() + (this.f62927a.hashCode() * 31)) * 31);
        }

        public final String toString() {
            return "ProductHighlight(id=" + this.f62927a + ", product=" + this.f62928b + ", asset=" + this.f62929c + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$ProductSlider;", "Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel;", "", b.a.f24015b, "Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;", "product", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ProductSlider extends PlpSectionUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f62930a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final PlpProductUiModel f62931b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ProductSlider(String str, PlpProductUiModel plpProductUiModel) {
            super(null);
            str.getClass();
            plpProductUiModel.getClass();
            this.f62930a = str;
            this.f62931b = plpProductUiModel;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ProductSlider)) {
                return false;
            }
            ProductSlider productSlider = (ProductSlider) obj;
            return Intrinsics.c(this.f62930a, productSlider.f62930a) && Intrinsics.c(this.f62931b, productSlider.f62931b);
        }

        public final int hashCode() {
            return this.f62931b.hashCode() + (this.f62930a.hashCode() * 31);
        }

        public final String toString() {
            return "ProductSlider(id=" + this.f62930a + ", product=" + this.f62931b + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$Products;", "Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel;", "", b.a.f24015b, "", "Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;", "productList", "<init>", "(Ljava/lang/String;Ljava/util/List;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Products extends PlpSectionUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f62932a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final List f62933b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Products(String str, List<PlpProductUiModel> list) {
            super(null);
            str.getClass();
            list.getClass();
            this.f62932a = str;
            this.f62933b = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Products)) {
                return false;
            }
            Products products = (Products) obj;
            return Intrinsics.c(this.f62932a, products.f62932a) && Intrinsics.c(this.f62933b, products.f62933b);
        }

        public final int hashCode() {
            return this.f62933b.hashCode() + (this.f62932a.hashCode() * 31);
        }

        public final String toString() {
            return cj.k("Products(id=", this.f62932a, ", productList=", this.f62933b, ")");
        }
    }

    public PlpSectionUiModel(DefaultConstructorMarker defaultConstructorMarker) {
    }
}
