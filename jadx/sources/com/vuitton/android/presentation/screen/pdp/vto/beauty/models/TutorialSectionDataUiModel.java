package com.vuitton.android.presentation.screen.pdp.vto.beauty.models;

import com.vuitton.android.presentation.model.common.AssetUiModel;
import defpackage.cj;
import defpackage.d21;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TutorialSectionDataUiModel;", "", "AssetListSectionUiModel", "StepsSectionUiModel", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TutorialSectionDataUiModel$AssetListSectionUiModel;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TutorialSectionDataUiModel$StepsSectionUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class TutorialSectionDataUiModel {

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TutorialSectionDataUiModel$AssetListSectionUiModel;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TutorialSectionDataUiModel;", "", "Lcom/vuitton/android/presentation/model/common/AssetUiModel;", "assetList", "<init>", "(Ljava/util/List;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class AssetListSectionUiModel extends TutorialSectionDataUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f62193a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AssetListSectionUiModel(List<AssetUiModel> list) {
            super(null);
            list.getClass();
            this.f62193a = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof AssetListSectionUiModel) && Intrinsics.c(this.f62193a, ((AssetListSectionUiModel) obj).f62193a);
        }

        public final int hashCode() {
            return this.f62193a.hashCode();
        }

        public final String toString() {
            return d21.o("AssetListSectionUiModel(assetList=", ")", this.f62193a);
        }
    }

    public TutorialSectionDataUiModel(DefaultConstructorMarker defaultConstructorMarker) {
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B!\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TutorialSectionDataUiModel$StepsSectionUiModel;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TutorialSectionDataUiModel;", "", "title", "", "stepList", "<init>", "(Ljava/lang/String;Ljava/util/List;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class StepsSectionUiModel extends TutorialSectionDataUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f62194a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final List f62195b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public StepsSectionUiModel(String str, List<String> list) {
            super(null);
            list.getClass();
            this.f62194a = str;
            this.f62195b = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof StepsSectionUiModel)) {
                return false;
            }
            StepsSectionUiModel stepsSectionUiModel = (StepsSectionUiModel) obj;
            return Intrinsics.c(this.f62194a, stepsSectionUiModel.f62194a) && Intrinsics.c(this.f62195b, stepsSectionUiModel.f62195b);
        }

        public final int hashCode() {
            String str = this.f62194a;
            return this.f62195b.hashCode() + ((str == null ? 0 : str.hashCode()) * 31);
        }

        public final String toString() {
            return cj.k("StepsSectionUiModel(title=", this.f62194a, ", stepList=", this.f62195b, ")");
        }

        public /* synthetic */ StepsSectionUiModel(String str, List list, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? null : str, list);
        }
    }
}
