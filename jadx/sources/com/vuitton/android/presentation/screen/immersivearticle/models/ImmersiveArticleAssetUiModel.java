package com.vuitton.android.presentation.screen.immersivearticle.models;

import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import com.vuitton.android.presentation.model.common.AssetVideoUiModel;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B-\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleAssetUiModel;", "", "Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;", "image", "Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;", "video", "", "caption", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;", "ratio", "<init>", "(Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ImmersiveArticleAssetUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AssetImageUiModel f58639a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AssetVideoUiModel f58640b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f58641c;
    public final ImmersiveArticleSizeCardUiModel d;

    public ImmersiveArticleAssetUiModel(AssetImageUiModel assetImageUiModel, AssetVideoUiModel assetVideoUiModel, String str, ImmersiveArticleSizeCardUiModel immersiveArticleSizeCardUiModel) {
        str.getClass();
        this.f58639a = assetImageUiModel;
        this.f58640b = assetVideoUiModel;
        this.f58641c = str;
        this.d = immersiveArticleSizeCardUiModel;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImmersiveArticleAssetUiModel)) {
            return false;
        }
        ImmersiveArticleAssetUiModel immersiveArticleAssetUiModel = (ImmersiveArticleAssetUiModel) obj;
        return Intrinsics.c(this.f58639a, immersiveArticleAssetUiModel.f58639a) && Intrinsics.c(this.f58640b, immersiveArticleAssetUiModel.f58640b) && Intrinsics.c(this.f58641c, immersiveArticleAssetUiModel.f58641c) && this.d == immersiveArticleAssetUiModel.d;
    }

    public final int hashCode() {
        AssetImageUiModel assetImageUiModel = this.f58639a;
        int iHashCode = (assetImageUiModel == null ? 0 : assetImageUiModel.hashCode()) * 31;
        AssetVideoUiModel assetVideoUiModel = this.f58640b;
        int iB = fc.b((iHashCode + (assetVideoUiModel == null ? 0 : assetVideoUiModel.hashCode())) * 31, 31, this.f58641c);
        ImmersiveArticleSizeCardUiModel immersiveArticleSizeCardUiModel = this.d;
        return iB + (immersiveArticleSizeCardUiModel != null ? immersiveArticleSizeCardUiModel.hashCode() : 0);
    }

    public final String toString() {
        return "ImmersiveArticleAssetUiModel(image=" + this.f58639a + ", video=" + this.f58640b + ", caption=" + this.f58641c + ", ratio=" + this.d + ")";
    }
}
