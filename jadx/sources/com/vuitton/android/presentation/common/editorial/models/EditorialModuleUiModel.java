package com.vuitton.android.presentation.common.editorial.models;

import com.batch.android.s.b;
import com.sightcall.universal.agent.Product;
import com.vuitton.android.presentation.contributionlink.ContributionLinkUiModel;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import com.vuitton.android.presentation.model.common.AssetUiModel;
import com.vuitton.android.presentation.model.common.IconUiModel;
import com.vuitton.foundation.model.domain.model.common.editorial.AlgorithmType;
import defpackage.a;
import defpackage.d21;
import defpackage.fc;
import defpackage.n00;
import defpackage.o60;
import defpackage.pq0;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\f\u0002\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u0082\u0001\f\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019¨\u0006\u001a"}, d2 = {"Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;", "", "CardUiModel", "HighLightUiModel", "SlideShowUiModel", "CarouselMUiModel", "CarouselLMultipleUiModel", "CarouselLSingleUiModel", "AuthenticationUiModel", "ContactabilityUiModel", "CarouselSmallUiModel", "GridSmallUiModel", "PushCardUiModel", "ProductCarouselUiModel", "Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$AuthenticationUiModel;", "Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CardUiModel;", "Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselLMultipleUiModel;", "Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselLSingleUiModel;", "Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselMUiModel;", "Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselSmallUiModel;", "Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$ContactabilityUiModel;", "Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$GridSmallUiModel;", "Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$HighLightUiModel;", "Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$ProductCarouselUiModel;", "Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$PushCardUiModel;", "Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$SlideShowUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class EditorialModuleUiModel {

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$AuthenticationUiModel;", "Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;", "", b.a.f24015b, "title", "description", "Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;", "image", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class AuthenticationUiModel extends EditorialModuleUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f50810a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f50811b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f50812c;
        public final AssetImageUiModel d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AuthenticationUiModel(String str, String str2, String str3, AssetImageUiModel assetImageUiModel) {
            super(null);
            str.getClass();
            str2.getClass();
            str3.getClass();
            assetImageUiModel.getClass();
            this.f50810a = str;
            this.f50811b = str2;
            this.f50812c = str3;
            this.d = assetImageUiModel;
        }

        @Override // com.vuitton.android.presentation.common.editorial.models.EditorialModuleUiModel
        /* JADX INFO: renamed from: a, reason: from getter */
        public final String getF50852a() {
            return this.f50810a;
        }

        /* JADX INFO: renamed from: b, reason: from getter */
        public final String getF50812c() {
            return this.f50812c;
        }

        /* JADX INFO: renamed from: c, reason: from getter */
        public final AssetImageUiModel getD() {
            return this.d;
        }

        /* JADX INFO: renamed from: d, reason: from getter */
        public final String getF50811b() {
            return this.f50811b;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof AuthenticationUiModel)) {
                return false;
            }
            AuthenticationUiModel authenticationUiModel = (AuthenticationUiModel) obj;
            return Intrinsics.c(this.f50810a, authenticationUiModel.f50810a) && Intrinsics.c(this.f50811b, authenticationUiModel.f50811b) && Intrinsics.c(this.f50812c, authenticationUiModel.f50812c) && Intrinsics.c(this.d, authenticationUiModel.d);
        }

        public final int hashCode() {
            return this.d.hashCode() + fc.b(fc.b(this.f50810a.hashCode() * 31, 31, this.f50811b), 31, this.f50812c);
        }

        public final String toString() {
            StringBuilder sbS = fc.s("AuthenticationUiModel(id=", this.f50810a, ", title=", this.f50811b, ", description=");
            sbS.append(this.f50812c);
            sbS.append(", image=");
            sbS.append(this.d);
            sbS.append(")");
            return sbS.toString();
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$ContactabilityUiModel;", "Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;", "", b.a.f24015b, "Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;", "image", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ContactabilityUiModel extends EditorialModuleUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f50833a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final AssetImageUiModel f50834b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ContactabilityUiModel(String str, AssetImageUiModel assetImageUiModel) {
            super(null);
            str.getClass();
            assetImageUiModel.getClass();
            this.f50833a = str;
            this.f50834b = assetImageUiModel;
        }

        @Override // com.vuitton.android.presentation.common.editorial.models.EditorialModuleUiModel
        /* JADX INFO: renamed from: a, reason: from getter */
        public final String getF50852a() {
            return this.f50833a;
        }

        /* JADX INFO: renamed from: b, reason: from getter */
        public final AssetImageUiModel getF50834b() {
            return this.f50834b;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ContactabilityUiModel)) {
                return false;
            }
            ContactabilityUiModel contactabilityUiModel = (ContactabilityUiModel) obj;
            return Intrinsics.c(this.f50833a, contactabilityUiModel.f50833a) && Intrinsics.c(this.f50834b, contactabilityUiModel.f50834b);
        }

        public final int hashCode() {
            return this.f50834b.hashCode() + (this.f50833a.hashCode() * 31);
        }

        public final String toString() {
            return "ContactabilityUiModel(id=" + this.f50833a + ", image=" + this.f50834b + ")";
        }
    }

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B;\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$PushCardUiModel;", "Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;", "", b.a.f24015b, "title", "description", "Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;", "link", "Lcom/vuitton/android/presentation/model/common/IconUiModel;", "icon", "Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;", "image", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;Lcom/vuitton/android/presentation/model/common/IconUiModel;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class PushCardUiModel extends EditorialModuleUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f50847a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f50848b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f50849c;
        public final ContributionLinkUiModel d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final IconUiModel f50850e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final AssetImageUiModel f50851f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PushCardUiModel(String str, String str2, String str3, ContributionLinkUiModel contributionLinkUiModel, IconUiModel iconUiModel, AssetImageUiModel assetImageUiModel) {
            super(null);
            str.getClass();
            str2.getClass();
            str3.getClass();
            contributionLinkUiModel.getClass();
            this.f50847a = str;
            this.f50848b = str2;
            this.f50849c = str3;
            this.d = contributionLinkUiModel;
            this.f50850e = iconUiModel;
            this.f50851f = assetImageUiModel;
        }

        @Override // com.vuitton.android.presentation.common.editorial.models.EditorialModuleUiModel
        /* JADX INFO: renamed from: a, reason: from getter */
        public final String getF50852a() {
            return this.f50847a;
        }

        /* JADX INFO: renamed from: b, reason: from getter */
        public final String getF50849c() {
            return this.f50849c;
        }

        /* JADX INFO: renamed from: c, reason: from getter */
        public final IconUiModel getF50850e() {
            return this.f50850e;
        }

        /* JADX INFO: renamed from: d, reason: from getter */
        public final AssetImageUiModel getF50851f() {
            return this.f50851f;
        }

        /* JADX INFO: renamed from: e, reason: from getter */
        public final ContributionLinkUiModel getD() {
            return this.d;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof PushCardUiModel)) {
                return false;
            }
            PushCardUiModel pushCardUiModel = (PushCardUiModel) obj;
            return Intrinsics.c(this.f50847a, pushCardUiModel.f50847a) && Intrinsics.c(this.f50848b, pushCardUiModel.f50848b) && Intrinsics.c(this.f50849c, pushCardUiModel.f50849c) && Intrinsics.c(this.d, pushCardUiModel.d) && this.f50850e == pushCardUiModel.f50850e && Intrinsics.c(this.f50851f, pushCardUiModel.f50851f);
        }

        /* JADX INFO: renamed from: f, reason: from getter */
        public final String getF50848b() {
            return this.f50848b;
        }

        public final int hashCode() {
            int iHashCode = (this.d.hashCode() + fc.b(fc.b(this.f50847a.hashCode() * 31, 31, this.f50848b), 31, this.f50849c)) * 31;
            IconUiModel iconUiModel = this.f50850e;
            int iHashCode2 = (iHashCode + (iconUiModel == null ? 0 : iconUiModel.hashCode())) * 31;
            AssetImageUiModel assetImageUiModel = this.f50851f;
            return iHashCode2 + (assetImageUiModel != null ? assetImageUiModel.hashCode() : 0);
        }

        public final String toString() {
            StringBuilder sbS = fc.s("PushCardUiModel(id=", this.f50847a, ", title=", this.f50848b, ", description=");
            sbS.append(this.f50849c);
            sbS.append(", link=");
            sbS.append(this.d);
            sbS.append(", icon=");
            sbS.append(this.f50850e);
            sbS.append(", image=");
            sbS.append(this.f50851f);
            sbS.append(")");
            return sbS.toString();
        }
    }

    public EditorialModuleUiModel(DefaultConstructorMarker defaultConstructorMarker) {
    }

    /* JADX INFO: renamed from: a */
    public abstract String getF50852a();

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$SlideShowUiModel;", "Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;", "", b.a.f24015b, "title", "", "Lcom/vuitton/android/presentation/common/editorial/models/SlideShowItemUiModel;", "slides", "Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;", "targeting", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class SlideShowUiModel extends EditorialModuleUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f50852a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f50853b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final List f50854c;
        public final TargetingUiModel d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SlideShowUiModel(String str, String str2, List<SlideShowItemUiModel> list, TargetingUiModel targetingUiModel) {
            super(null);
            pq0.B(str, str2, list);
            this.f50852a = str;
            this.f50853b = str2;
            this.f50854c = list;
            this.d = targetingUiModel;
        }

        @Override // com.vuitton.android.presentation.common.editorial.models.EditorialModuleUiModel
        /* JADX INFO: renamed from: a, reason: from getter */
        public final String getF50852a() {
            return this.f50852a;
        }

        /* JADX INFO: renamed from: b, reason: from getter */
        public final List getF50854c() {
            return this.f50854c;
        }

        /* JADX INFO: renamed from: c, reason: from getter */
        public final String getF50853b() {
            return this.f50853b;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof SlideShowUiModel)) {
                return false;
            }
            SlideShowUiModel slideShowUiModel = (SlideShowUiModel) obj;
            return Intrinsics.c(this.f50852a, slideShowUiModel.f50852a) && Intrinsics.c(this.f50853b, slideShowUiModel.f50853b) && Intrinsics.c(this.f50854c, slideShowUiModel.f50854c) && Intrinsics.c(this.d, slideShowUiModel.d);
        }

        public final int hashCode() {
            int iA = n00.a(fc.b(this.f50852a.hashCode() * 31, 31, this.f50853b), 31, this.f50854c);
            TargetingUiModel targetingUiModel = this.d;
            return iA + (targetingUiModel == null ? 0 : targetingUiModel.f50878a.hashCode());
        }

        public final String toString() {
            StringBuilder sbS = fc.s("SlideShowUiModel(id=", this.f50852a, ", title=", this.f50853b, ", slides=");
            sbS.append(this.f50854c);
            sbS.append(", targeting=");
            sbS.append(this.d);
            sbS.append(")");
            return sbS.toString();
        }

        public /* synthetic */ SlideShowUiModel(String str, String str2, List list, TargetingUiModel targetingUiModel, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, str2, list, (i2 & 8) != 0 ? null : targetingUiModel);
        }
    }

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$ProductCarouselUiModel;", "Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;", "", b.a.f24015b, "", "Lcom/vuitton/android/presentation/common/editorial/models/ProductCarouselItemUiModel;", Product.TYPE, "", "isLoading", "<init>", "(Ljava/lang/String;Ljava/util/List;Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ProductCarouselUiModel extends EditorialModuleUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f50844a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final List f50845b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f50846c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ProductCarouselUiModel(String str, List<ProductCarouselItemUiModel> list, boolean z) {
            super(null);
            str.getClass();
            list.getClass();
            this.f50844a = str;
            this.f50845b = list;
            this.f50846c = z;
        }

        public static ProductCarouselUiModel b(ProductCarouselUiModel productCarouselUiModel, ArrayList arrayList, int i2) {
            String str = productCarouselUiModel.f50844a;
            boolean z = (i2 & 4) != 0 ? productCarouselUiModel.f50846c : false;
            productCarouselUiModel.getClass();
            str.getClass();
            return new ProductCarouselUiModel(str, arrayList, z);
        }

        @Override // com.vuitton.android.presentation.common.editorial.models.EditorialModuleUiModel
        /* JADX INFO: renamed from: a, reason: from getter */
        public final String getF50852a() {
            return this.f50844a;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ProductCarouselUiModel)) {
                return false;
            }
            ProductCarouselUiModel productCarouselUiModel = (ProductCarouselUiModel) obj;
            return Intrinsics.c(this.f50844a, productCarouselUiModel.f50844a) && Intrinsics.c(this.f50845b, productCarouselUiModel.f50845b) && this.f50846c == productCarouselUiModel.f50846c;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.f50846c) + n00.a(this.f50844a.hashCode() * 31, 31, this.f50845b);
        }

        public final String toString() {
            return a.p(d21.t("ProductCarouselUiModel(id=", this.f50844a, ", products=", this.f50845b, ", isLoading="), this.f50846c, ")");
        }

        public /* synthetic */ ProductCarouselUiModel(String str, List list, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, list, (i2 & 4) != 0 ? true : z);
        }
    }

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselLMultipleUiModel;", "Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;", "", b.a.f24015b, "Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;", "titles", "", "Lcom/vuitton/android/presentation/common/editorial/models/CarouselLMultipleItemUiModel;", "slideList", "Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;", "targeting", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;Ljava/util/List;Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CarouselLMultipleUiModel extends EditorialModuleUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f50818a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final CarouselItemTitlesUiModel f50819b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final List f50820c;
        public final TargetingUiModel d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CarouselLMultipleUiModel(String str, CarouselItemTitlesUiModel carouselItemTitlesUiModel, List<CarouselLMultipleItemUiModel> list, TargetingUiModel targetingUiModel) {
            super(null);
            str.getClass();
            list.getClass();
            this.f50818a = str;
            this.f50819b = carouselItemTitlesUiModel;
            this.f50820c = list;
            this.d = targetingUiModel;
        }

        @Override // com.vuitton.android.presentation.common.editorial.models.EditorialModuleUiModel
        /* JADX INFO: renamed from: a, reason: from getter */
        public final String getF50852a() {
            return this.f50818a;
        }

        /* JADX INFO: renamed from: b, reason: from getter */
        public final List getF50820c() {
            return this.f50820c;
        }

        /* JADX INFO: renamed from: c, reason: from getter */
        public final CarouselItemTitlesUiModel getF50819b() {
            return this.f50819b;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof CarouselLMultipleUiModel)) {
                return false;
            }
            CarouselLMultipleUiModel carouselLMultipleUiModel = (CarouselLMultipleUiModel) obj;
            return Intrinsics.c(this.f50818a, carouselLMultipleUiModel.f50818a) && Intrinsics.c(this.f50819b, carouselLMultipleUiModel.f50819b) && Intrinsics.c(this.f50820c, carouselLMultipleUiModel.f50820c) && Intrinsics.c(this.d, carouselLMultipleUiModel.d);
        }

        public final int hashCode() {
            int iHashCode = this.f50818a.hashCode() * 31;
            CarouselItemTitlesUiModel carouselItemTitlesUiModel = this.f50819b;
            int iA = n00.a((iHashCode + (carouselItemTitlesUiModel == null ? 0 : carouselItemTitlesUiModel.hashCode())) * 31, 31, this.f50820c);
            TargetingUiModel targetingUiModel = this.d;
            return iA + (targetingUiModel != null ? targetingUiModel.f50878a.hashCode() : 0);
        }

        public final String toString() {
            return "CarouselLMultipleUiModel(id=" + this.f50818a + ", titles=" + this.f50819b + ", slideList=" + this.f50820c + ", targeting=" + this.d + ")";
        }

        public /* synthetic */ CarouselLMultipleUiModel(String str, CarouselItemTitlesUiModel carouselItemTitlesUiModel, List list, TargetingUiModel targetingUiModel, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, carouselItemTitlesUiModel, list, (i2 & 8) != 0 ? null : targetingUiModel);
        }
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselMUiModel;", "Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;", "", b.a.f24015b, "title", "", "Lcom/vuitton/android/presentation/common/editorial/models/CarouselMItemUiModel;", "slideList", "Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;", "targeting", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CarouselMUiModel extends EditorialModuleUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f50825a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f50826b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final List f50827c;
        public final TargetingUiModel d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CarouselMUiModel(String str, String str2, List<CarouselMItemUiModel> list, TargetingUiModel targetingUiModel) {
            super(null);
            str.getClass();
            list.getClass();
            this.f50825a = str;
            this.f50826b = str2;
            this.f50827c = list;
            this.d = targetingUiModel;
        }

        @Override // com.vuitton.android.presentation.common.editorial.models.EditorialModuleUiModel
        /* JADX INFO: renamed from: a, reason: from getter */
        public final String getF50852a() {
            return this.f50825a;
        }

        /* JADX INFO: renamed from: b, reason: from getter */
        public final List getF50827c() {
            return this.f50827c;
        }

        /* JADX INFO: renamed from: c, reason: from getter */
        public final String getF50826b() {
            return this.f50826b;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof CarouselMUiModel)) {
                return false;
            }
            CarouselMUiModel carouselMUiModel = (CarouselMUiModel) obj;
            return Intrinsics.c(this.f50825a, carouselMUiModel.f50825a) && Intrinsics.c(this.f50826b, carouselMUiModel.f50826b) && Intrinsics.c(this.f50827c, carouselMUiModel.f50827c) && Intrinsics.c(this.d, carouselMUiModel.d);
        }

        public final int hashCode() {
            int iHashCode = this.f50825a.hashCode() * 31;
            String str = this.f50826b;
            int iA = n00.a((iHashCode + (str == null ? 0 : str.hashCode())) * 31, 31, this.f50827c);
            TargetingUiModel targetingUiModel = this.d;
            return iA + (targetingUiModel != null ? targetingUiModel.f50878a.hashCode() : 0);
        }

        public final String toString() {
            StringBuilder sbS = fc.s("CarouselMUiModel(id=", this.f50825a, ", title=", this.f50826b, ", slideList=");
            sbS.append(this.f50827c);
            sbS.append(", targeting=");
            sbS.append(this.d);
            sbS.append(")");
            return sbS.toString();
        }

        public /* synthetic */ CarouselMUiModel(String str, String str2, List list, TargetingUiModel targetingUiModel, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, str2, list, (i2 & 8) != 0 ? null : targetingUiModel);
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$HighLightUiModel;", "Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;", "", b.a.f24015b, "title", "description", "Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;", "image", "Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;", "targeting", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class HighLightUiModel extends EditorialModuleUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f50840a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f50841b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f50842c;
        public final AssetImageUiModel d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final TargetingUiModel f50843e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public HighLightUiModel(String str, String str2, String str3, AssetImageUiModel assetImageUiModel, TargetingUiModel targetingUiModel) {
            super(null);
            str.getClass();
            str3.getClass();
            this.f50840a = str;
            this.f50841b = str2;
            this.f50842c = str3;
            this.d = assetImageUiModel;
            this.f50843e = targetingUiModel;
        }

        @Override // com.vuitton.android.presentation.common.editorial.models.EditorialModuleUiModel
        /* JADX INFO: renamed from: a, reason: from getter */
        public final String getF50852a() {
            return this.f50840a;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof HighLightUiModel)) {
                return false;
            }
            HighLightUiModel highLightUiModel = (HighLightUiModel) obj;
            return Intrinsics.c(this.f50840a, highLightUiModel.f50840a) && Intrinsics.c(this.f50841b, highLightUiModel.f50841b) && Intrinsics.c(this.f50842c, highLightUiModel.f50842c) && Intrinsics.c(this.d, highLightUiModel.d) && Intrinsics.c(this.f50843e, highLightUiModel.f50843e);
        }

        public final int hashCode() {
            int iHashCode = this.f50840a.hashCode() * 31;
            String str = this.f50841b;
            int iB = fc.b((iHashCode + (str == null ? 0 : str.hashCode())) * 31, 31, this.f50842c);
            AssetImageUiModel assetImageUiModel = this.d;
            int iHashCode2 = (iB + (assetImageUiModel == null ? 0 : assetImageUiModel.hashCode())) * 31;
            TargetingUiModel targetingUiModel = this.f50843e;
            return iHashCode2 + (targetingUiModel != null ? targetingUiModel.f50878a.hashCode() : 0);
        }

        public final String toString() {
            StringBuilder sbS = fc.s("HighLightUiModel(id=", this.f50840a, ", title=", this.f50841b, ", description=");
            sbS.append(this.f50842c);
            sbS.append(", image=");
            sbS.append(this.d);
            sbS.append(", targeting=");
            sbS.append(this.f50843e);
            sbS.append(")");
            return sbS.toString();
        }

        public /* synthetic */ HighLightUiModel(String str, String str2, String str3, AssetImageUiModel assetImageUiModel, TargetingUiModel targetingUiModel, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, str2, str3, assetImageUiModel, (i2 & 16) != 0 ? null : targetingUiModel);
        }
    }

    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B;\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselLSingleUiModel;", "Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;", "", b.a.f24015b, "Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;", "titles", "", "Lcom/vuitton/android/presentation/common/editorial/models/CarouselLSingleItemUiModel;", "slideList", "Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;", "contributionLink", "Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;", "targeting", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;Ljava/util/List;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CarouselLSingleUiModel extends EditorialModuleUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f50821a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final CarouselItemTitlesUiModel f50822b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final List f50823c;
        public final ContributionLinkUiModel d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final TargetingUiModel f50824e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CarouselLSingleUiModel(String str, CarouselItemTitlesUiModel carouselItemTitlesUiModel, List<CarouselLSingleItemUiModel> list, ContributionLinkUiModel contributionLinkUiModel, TargetingUiModel targetingUiModel) {
            super(null);
            str.getClass();
            list.getClass();
            contributionLinkUiModel.getClass();
            this.f50821a = str;
            this.f50822b = carouselItemTitlesUiModel;
            this.f50823c = list;
            this.d = contributionLinkUiModel;
            this.f50824e = targetingUiModel;
        }

        @Override // com.vuitton.android.presentation.common.editorial.models.EditorialModuleUiModel
        /* JADX INFO: renamed from: a, reason: from getter */
        public final String getF50852a() {
            return this.f50821a;
        }

        /* JADX INFO: renamed from: b, reason: from getter */
        public final ContributionLinkUiModel getD() {
            return this.d;
        }

        /* JADX INFO: renamed from: c, reason: from getter */
        public final List getF50823c() {
            return this.f50823c;
        }

        /* JADX INFO: renamed from: d, reason: from getter */
        public final CarouselItemTitlesUiModel getF50822b() {
            return this.f50822b;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof CarouselLSingleUiModel)) {
                return false;
            }
            CarouselLSingleUiModel carouselLSingleUiModel = (CarouselLSingleUiModel) obj;
            return Intrinsics.c(this.f50821a, carouselLSingleUiModel.f50821a) && Intrinsics.c(this.f50822b, carouselLSingleUiModel.f50822b) && Intrinsics.c(this.f50823c, carouselLSingleUiModel.f50823c) && Intrinsics.c(this.d, carouselLSingleUiModel.d) && Intrinsics.c(this.f50824e, carouselLSingleUiModel.f50824e);
        }

        public final int hashCode() {
            int iHashCode = this.f50821a.hashCode() * 31;
            CarouselItemTitlesUiModel carouselItemTitlesUiModel = this.f50822b;
            int iHashCode2 = (this.d.hashCode() + n00.a((iHashCode + (carouselItemTitlesUiModel == null ? 0 : carouselItemTitlesUiModel.hashCode())) * 31, 31, this.f50823c)) * 31;
            TargetingUiModel targetingUiModel = this.f50824e;
            return iHashCode2 + (targetingUiModel != null ? targetingUiModel.f50878a.hashCode() : 0);
        }

        public final String toString() {
            return "CarouselLSingleUiModel(id=" + this.f50821a + ", titles=" + this.f50822b + ", slideList=" + this.f50823c + ", contributionLink=" + this.d + ", targeting=" + this.f50824e + ")";
        }

        public /* synthetic */ CarouselLSingleUiModel(String str, CarouselItemTitlesUiModel carouselItemTitlesUiModel, List list, ContributionLinkUiModel contributionLinkUiModel, TargetingUiModel targetingUiModel, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, carouselItemTitlesUiModel, list, contributionLinkUiModel, (i2 & 16) != 0 ? null : targetingUiModel);
        }
    }

    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001BY\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\b\u0012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselSmallUiModel;", "Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;", "", b.a.f24015b, "Lcom/vuitton/android/presentation/common/editorial/models/HeaderUiModel;", "header", "Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;", "algorithm", "", "skus", "Lcom/vuitton/android/presentation/common/editorial/models/CarouselSItemUiModel;", "productList", "decisionId", "", "isLoading", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/presentation/common/editorial/models/HeaderUiModel;Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CarouselSmallUiModel extends EditorialModuleUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f50828a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final HeaderUiModel f50829b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final AlgorithmType f50830c;
        public final List d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final List f50831e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final String f50832f;
        public final boolean g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CarouselSmallUiModel(String str, HeaderUiModel headerUiModel, AlgorithmType algorithmType, List<String> list, List<CarouselSItemUiModel> list2, String str2, boolean z) {
            super(null);
            str.getClass();
            algorithmType.getClass();
            list2.getClass();
            this.f50828a = str;
            this.f50829b = headerUiModel;
            this.f50830c = algorithmType;
            this.d = list;
            this.f50831e = list2;
            this.f50832f = str2;
            this.g = z;
        }

        @Override // com.vuitton.android.presentation.common.editorial.models.EditorialModuleUiModel
        /* JADX INFO: renamed from: a, reason: from getter */
        public final String getF50852a() {
            return this.f50828a;
        }

        /* JADX INFO: renamed from: b, reason: from getter */
        public final AlgorithmType getF50830c() {
            return this.f50830c;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof CarouselSmallUiModel)) {
                return false;
            }
            CarouselSmallUiModel carouselSmallUiModel = (CarouselSmallUiModel) obj;
            return Intrinsics.c(this.f50828a, carouselSmallUiModel.f50828a) && Intrinsics.c(this.f50829b, carouselSmallUiModel.f50829b) && this.f50830c == carouselSmallUiModel.f50830c && Intrinsics.c(this.d, carouselSmallUiModel.d) && Intrinsics.c(this.f50831e, carouselSmallUiModel.f50831e) && Intrinsics.c(this.f50832f, carouselSmallUiModel.f50832f) && this.g == carouselSmallUiModel.g;
        }

        public final int hashCode() {
            int iHashCode = this.f50828a.hashCode() * 31;
            HeaderUiModel headerUiModel = this.f50829b;
            int iHashCode2 = (this.f50830c.hashCode() + ((iHashCode + (headerUiModel == null ? 0 : headerUiModel.hashCode())) * 31)) * 31;
            List list = this.d;
            int iA = n00.a((iHashCode2 + (list == null ? 0 : list.hashCode())) * 31, 31, this.f50831e);
            String str = this.f50832f;
            return Boolean.hashCode(this.g) + ((iA + (str != null ? str.hashCode() : 0)) * 31);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("CarouselSmallUiModel(id=");
            sb.append(this.f50828a);
            sb.append(", header=");
            sb.append(this.f50829b);
            sb.append(", algorithm=");
            sb.append(this.f50830c);
            sb.append(", skus=");
            sb.append(this.d);
            sb.append(", productList=");
            o60.B(", decisionId=", this.f50832f, ", isLoading=", sb, this.f50831e);
            return a.p(sb, this.g, ")");
        }

        public /* synthetic */ CarouselSmallUiModel(String str, HeaderUiModel headerUiModel, AlgorithmType algorithmType, List list, List list2, String str2, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, (i2 & 2) != 0 ? null : headerUiModel, algorithmType, (i2 & 8) != 0 ? null : list, list2, (i2 & 32) != 0 ? null : str2, (i2 & 64) != 0 ? true : z);
        }
    }

    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001BY\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\b\u0012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$GridSmallUiModel;", "Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;", "", b.a.f24015b, "Lcom/vuitton/android/presentation/common/editorial/models/HeaderUiModel;", "header", "Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;", "algorithm", "", "skus", "Lcom/vuitton/android/presentation/common/editorial/models/CarouselSItemUiModel;", "productList", "decisionId", "", "isLoading", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/presentation/common/editorial/models/HeaderUiModel;Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class GridSmallUiModel extends EditorialModuleUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f50835a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final HeaderUiModel f50836b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final AlgorithmType f50837c;
        public final List d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final List f50838e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final String f50839f;
        public final boolean g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public GridSmallUiModel(String str, HeaderUiModel headerUiModel, AlgorithmType algorithmType, List<String> list, List<CarouselSItemUiModel> list2, String str2, boolean z) {
            super(null);
            str.getClass();
            algorithmType.getClass();
            list2.getClass();
            this.f50835a = str;
            this.f50836b = headerUiModel;
            this.f50837c = algorithmType;
            this.d = list;
            this.f50838e = list2;
            this.f50839f = str2;
            this.g = z;
        }

        @Override // com.vuitton.android.presentation.common.editorial.models.EditorialModuleUiModel
        /* JADX INFO: renamed from: a, reason: from getter */
        public final String getF50852a() {
            return this.f50835a;
        }

        /* JADX INFO: renamed from: b, reason: from getter */
        public final AlgorithmType getF50837c() {
            return this.f50837c;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof GridSmallUiModel)) {
                return false;
            }
            GridSmallUiModel gridSmallUiModel = (GridSmallUiModel) obj;
            return Intrinsics.c(this.f50835a, gridSmallUiModel.f50835a) && Intrinsics.c(this.f50836b, gridSmallUiModel.f50836b) && this.f50837c == gridSmallUiModel.f50837c && Intrinsics.c(this.d, gridSmallUiModel.d) && Intrinsics.c(this.f50838e, gridSmallUiModel.f50838e) && Intrinsics.c(this.f50839f, gridSmallUiModel.f50839f) && this.g == gridSmallUiModel.g;
        }

        public final int hashCode() {
            int iHashCode = this.f50835a.hashCode() * 31;
            HeaderUiModel headerUiModel = this.f50836b;
            int iHashCode2 = (this.f50837c.hashCode() + ((iHashCode + (headerUiModel == null ? 0 : headerUiModel.hashCode())) * 31)) * 31;
            List list = this.d;
            int iA = n00.a((iHashCode2 + (list == null ? 0 : list.hashCode())) * 31, 31, this.f50838e);
            String str = this.f50839f;
            return Boolean.hashCode(this.g) + ((iA + (str != null ? str.hashCode() : 0)) * 31);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("GridSmallUiModel(id=");
            sb.append(this.f50835a);
            sb.append(", header=");
            sb.append(this.f50836b);
            sb.append(", algorithm=");
            sb.append(this.f50837c);
            sb.append(", skus=");
            sb.append(this.d);
            sb.append(", productList=");
            o60.B(", decisionId=", this.f50839f, ", isLoading=", sb, this.f50838e);
            return a.p(sb, this.g, ")");
        }

        public /* synthetic */ GridSmallUiModel(String str, HeaderUiModel headerUiModel, AlgorithmType algorithmType, List list, List list2, String str2, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, (i2 & 2) != 0 ? null : headerUiModel, algorithmType, (i2 & 8) != 0 ? null : list, list2, (i2 & 32) != 0 ? null : str2, (i2 & 64) != 0 ? true : z);
        }
    }

    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001BI\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, d2 = {"Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CardUiModel;", "Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;", "", b.a.f24015b, "Lcom/vuitton/android/presentation/common/editorial/models/TitlesUiModel;", "titles", "Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;", "link", "Lcom/vuitton/android/presentation/model/common/AssetUiModel;", "asset", "Lcom/vuitton/android/presentation/common/editorial/models/RatioUiModel;", "ratio", "Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;", "targeting", "Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel;", "type", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/presentation/common/editorial/models/TitlesUiModel;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Lcom/vuitton/android/presentation/common/editorial/models/RatioUiModel;Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CardUiModel extends EditorialModuleUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f50813a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final TitlesUiModel f50814b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ContributionLinkUiModel f50815c;
        public final AssetUiModel d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final RatioUiModel f50816e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final TargetingUiModel f50817f;
        public final EditorialModuleCardTypeUiModel g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CardUiModel(String str, TitlesUiModel titlesUiModel, ContributionLinkUiModel contributionLinkUiModel, AssetUiModel assetUiModel, RatioUiModel ratioUiModel, TargetingUiModel targetingUiModel, EditorialModuleCardTypeUiModel editorialModuleCardTypeUiModel) {
            super(null);
            str.getClass();
            assetUiModel.getClass();
            ratioUiModel.getClass();
            editorialModuleCardTypeUiModel.getClass();
            this.f50813a = str;
            this.f50814b = titlesUiModel;
            this.f50815c = contributionLinkUiModel;
            this.d = assetUiModel;
            this.f50816e = ratioUiModel;
            this.f50817f = targetingUiModel;
            this.g = editorialModuleCardTypeUiModel;
        }

        @Override // com.vuitton.android.presentation.common.editorial.models.EditorialModuleUiModel
        /* JADX INFO: renamed from: a, reason: from getter */
        public final String getF50852a() {
            return this.f50813a;
        }

        /* JADX INFO: renamed from: b, reason: from getter */
        public final AssetUiModel getD() {
            return this.d;
        }

        /* JADX INFO: renamed from: c, reason: from getter */
        public final RatioUiModel getF50816e() {
            return this.f50816e;
        }

        /* JADX INFO: renamed from: d, reason: from getter */
        public final EditorialModuleCardTypeUiModel getG() {
            return this.g;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof CardUiModel)) {
                return false;
            }
            CardUiModel cardUiModel = (CardUiModel) obj;
            return Intrinsics.c(this.f50813a, cardUiModel.f50813a) && Intrinsics.c(this.f50814b, cardUiModel.f50814b) && Intrinsics.c(this.f50815c, cardUiModel.f50815c) && Intrinsics.c(this.d, cardUiModel.d) && this.f50816e == cardUiModel.f50816e && Intrinsics.c(this.f50817f, cardUiModel.f50817f) && Intrinsics.c(this.g, cardUiModel.g);
        }

        public final int hashCode() {
            int iHashCode = this.f50813a.hashCode() * 31;
            TitlesUiModel titlesUiModel = this.f50814b;
            int iHashCode2 = (iHashCode + (titlesUiModel == null ? 0 : titlesUiModel.hashCode())) * 31;
            ContributionLinkUiModel contributionLinkUiModel = this.f50815c;
            int iHashCode3 = (this.f50816e.hashCode() + ((this.d.hashCode() + ((iHashCode2 + (contributionLinkUiModel == null ? 0 : contributionLinkUiModel.hashCode())) * 31)) * 31)) * 31;
            TargetingUiModel targetingUiModel = this.f50817f;
            return this.g.hashCode() + ((iHashCode3 + (targetingUiModel != null ? targetingUiModel.f50878a.hashCode() : 0)) * 31);
        }

        public final String toString() {
            return "CardUiModel(id=" + this.f50813a + ", titles=" + this.f50814b + ", link=" + this.f50815c + ", asset=" + this.d + ", ratio=" + this.f50816e + ", targeting=" + this.f50817f + ", type=" + this.g + ")";
        }

        public /* synthetic */ CardUiModel(String str, TitlesUiModel titlesUiModel, ContributionLinkUiModel contributionLinkUiModel, AssetUiModel assetUiModel, RatioUiModel ratioUiModel, TargetingUiModel targetingUiModel, EditorialModuleCardTypeUiModel editorialModuleCardTypeUiModel, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, (i2 & 2) != 0 ? null : titlesUiModel, contributionLinkUiModel, assetUiModel, ratioUiModel, (i2 & 32) != 0 ? null : targetingUiModel, editorialModuleCardTypeUiModel);
        }
    }
}
