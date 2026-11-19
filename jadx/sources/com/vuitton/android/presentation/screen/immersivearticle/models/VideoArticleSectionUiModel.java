package com.vuitton.android.presentation.screen.immersivearticle.models;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.vuitton.android.presentation.model.common.AssetUiModel;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/models/VideoArticleSectionUiModel;", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSectionUiModel;", "", ConfigurationName.KEY, "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;", "ratio", "Lcom/vuitton/android/presentation/model/common/AssetUiModel;", "asset", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;Lcom/vuitton/android/presentation/model/common/AssetUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class VideoArticleSectionUiModel extends ImmersiveArticleSectionUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f58838a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ImmersiveArticleSizeCardUiModel f58839b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AssetUiModel f58840c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VideoArticleSectionUiModel(String str, ImmersiveArticleSizeCardUiModel immersiveArticleSizeCardUiModel, AssetUiModel assetUiModel) {
        super(null);
        str.getClass();
        immersiveArticleSizeCardUiModel.getClass();
        this.f58838a = str;
        this.f58839b = immersiveArticleSizeCardUiModel;
        this.f58840c = assetUiModel;
    }

    @Override // com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleSectionUiModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final String getF58838a() {
        return this.f58838a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof VideoArticleSectionUiModel)) {
            return false;
        }
        VideoArticleSectionUiModel videoArticleSectionUiModel = (VideoArticleSectionUiModel) obj;
        return Intrinsics.c(this.f58838a, videoArticleSectionUiModel.f58838a) && this.f58839b == videoArticleSectionUiModel.f58839b && Intrinsics.c(this.f58840c, videoArticleSectionUiModel.f58840c);
    }

    public final int hashCode() {
        int iHashCode = (this.f58839b.hashCode() + (this.f58838a.hashCode() * 31)) * 31;
        AssetUiModel assetUiModel = this.f58840c;
        return iHashCode + (assetUiModel == null ? 0 : assetUiModel.hashCode());
    }

    public final String toString() {
        return "VideoArticleSectionUiModel(key=" + this.f58838a + ", ratio=" + this.f58839b + ", asset=" + this.f58840c + ")";
    }
}
