package com.vuitton.foundation.model.domain.model.product.vto;

import com.vuitton.foundation.model.domain.model.common.Asset;
import defpackage.cj;
import defpackage.d21;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@kotlin.Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/product/vto/TutorialSectionData;", "", "AssetListSection", "StepsSection", "Lcom/vuitton/foundation/model/domain/model/product/vto/TutorialSectionData$AssetListSection;", "Lcom/vuitton/foundation/model/domain/model/product/vto/TutorialSectionData$StepsSection;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class TutorialSectionData {

    @kotlin.Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/product/vto/TutorialSectionData$AssetListSection;", "Lcom/vuitton/foundation/model/domain/model/product/vto/TutorialSectionData;", "", "Lcom/vuitton/foundation/model/domain/model/common/Asset;", "assetList", "<init>", "(Ljava/util/List;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class AssetListSection extends TutorialSectionData {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f68097a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AssetListSection(List<Asset> list) {
            super(null);
            list.getClass();
            this.f68097a = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof AssetListSection) && Intrinsics.c(this.f68097a, ((AssetListSection) obj).f68097a);
        }

        public final int hashCode() {
            return this.f68097a.hashCode();
        }

        public final String toString() {
            return d21.o("AssetListSection(assetList=", ")", this.f68097a);
        }
    }

    public TutorialSectionData(DefaultConstructorMarker defaultConstructorMarker) {
    }

    @kotlin.Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B!\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/product/vto/TutorialSectionData$StepsSection;", "Lcom/vuitton/foundation/model/domain/model/product/vto/TutorialSectionData;", "", "title", "", "stepList", "<init>", "(Ljava/lang/String;Ljava/util/List;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class StepsSection extends TutorialSectionData {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f68098a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final List f68099b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public StepsSection(String str, List<String> list) {
            super(null);
            list.getClass();
            this.f68098a = str;
            this.f68099b = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof StepsSection)) {
                return false;
            }
            StepsSection stepsSection = (StepsSection) obj;
            return Intrinsics.c(this.f68098a, stepsSection.f68098a) && Intrinsics.c(this.f68099b, stepsSection.f68099b);
        }

        public final int hashCode() {
            String str = this.f68098a;
            return this.f68099b.hashCode() + ((str == null ? 0 : str.hashCode()) * 31);
        }

        public final String toString() {
            return cj.k("StepsSection(title=", this.f68098a, ", stepList=", this.f68099b, ")");
        }

        public /* synthetic */ StepsSection(String str, List list, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? null : str, list);
        }
    }
}
