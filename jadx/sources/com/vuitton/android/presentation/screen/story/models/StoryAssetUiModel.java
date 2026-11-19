package com.vuitton.android.presentation.screen.story.models;

import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import com.vuitton.android.presentation.model.common.AssetVideoUiModel;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/story/models/StoryAssetUiModel;", "", "Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;", "image", "Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;", "video", "<init>", "(Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class StoryAssetUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AssetImageUiModel f65162a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AssetVideoUiModel f65163b;

    public StoryAssetUiModel(AssetImageUiModel assetImageUiModel, AssetVideoUiModel assetVideoUiModel) {
        this.f65162a = assetImageUiModel;
        this.f65163b = assetVideoUiModel;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof StoryAssetUiModel)) {
            return false;
        }
        StoryAssetUiModel storyAssetUiModel = (StoryAssetUiModel) obj;
        return Intrinsics.c(this.f65162a, storyAssetUiModel.f65162a) && Intrinsics.c(this.f65163b, storyAssetUiModel.f65163b);
    }

    public final int hashCode() {
        AssetImageUiModel assetImageUiModel = this.f65162a;
        int iHashCode = (assetImageUiModel == null ? 0 : assetImageUiModel.hashCode()) * 31;
        AssetVideoUiModel assetVideoUiModel = this.f65163b;
        return iHashCode + (assetVideoUiModel != null ? assetVideoUiModel.hashCode() : 0);
    }

    public final String toString() {
        return "StoryAssetUiModel(image=" + this.f65162a + ", video=" + this.f65163b + ")";
    }
}
