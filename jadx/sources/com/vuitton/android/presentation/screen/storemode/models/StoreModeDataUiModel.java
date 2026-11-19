package com.vuitton.android.presentation.screen.storemode.models;

import com.vuitton.android.presentation.contributionlink.ContributionLinkUiModel;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0001\u0002\u0082\u0001\u0001\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeDataUiModel;", "", "StoreModeSimpleUiModel", "Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeDataUiModel$StoreModeSimpleUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class StoreModeDataUiModel {

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeDataUiModel$StoreModeSimpleUiModel;", "Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeDataUiModel;", "", "title", "description", "Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;", "image", "Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;", "link", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class StoreModeSimpleUiModel extends StoreModeDataUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f65052a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f65053b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final AssetImageUiModel f65054c;
        public final ContributionLinkUiModel d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public StoreModeSimpleUiModel(String str, String str2, AssetImageUiModel assetImageUiModel, ContributionLinkUiModel contributionLinkUiModel) {
            super(null);
            str.getClass();
            str2.getClass();
            assetImageUiModel.getClass();
            contributionLinkUiModel.getClass();
            this.f65052a = str;
            this.f65053b = str2;
            this.f65054c = assetImageUiModel;
            this.d = contributionLinkUiModel;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof StoreModeSimpleUiModel)) {
                return false;
            }
            StoreModeSimpleUiModel storeModeSimpleUiModel = (StoreModeSimpleUiModel) obj;
            return Intrinsics.c(this.f65052a, storeModeSimpleUiModel.f65052a) && Intrinsics.c(this.f65053b, storeModeSimpleUiModel.f65053b) && Intrinsics.c(this.f65054c, storeModeSimpleUiModel.f65054c) && Intrinsics.c(this.d, storeModeSimpleUiModel.d);
        }

        public final int hashCode() {
            return this.d.hashCode() + ((this.f65054c.hashCode() + fc.b(this.f65052a.hashCode() * 31, 31, this.f65053b)) * 31);
        }

        public final String toString() {
            StringBuilder sbS = fc.s("StoreModeSimpleUiModel(title=", this.f65052a, ", description=", this.f65053b, ", image=");
            sbS.append(this.f65054c);
            sbS.append(", link=");
            sbS.append(this.d);
            sbS.append(")");
            return sbS.toString();
        }
    }

    public StoreModeDataUiModel(DefaultConstructorMarker defaultConstructorMarker) {
    }
}
