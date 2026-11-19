package com.vuitton.android.presentation.screen.immersivearticle.models;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/models/Model3dAssetUiModel;", "", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/Model3dAssetTypeUiModel;", "type", "", ConfigurationName.DOWNLOAD_PLUGIN_URL, "Lcom/vuitton/android/presentation/screen/immersivearticle/models/Model3dAssetNameUiModel;", "name", "<init>", "(Lcom/vuitton/android/presentation/screen/immersivearticle/models/Model3dAssetTypeUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/Model3dAssetNameUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class Model3dAssetUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Model3dAssetTypeUiModel f58807a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f58808b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Model3dAssetNameUiModel f58809c;

    public Model3dAssetUiModel(Model3dAssetTypeUiModel model3dAssetTypeUiModel, String str, Model3dAssetNameUiModel model3dAssetNameUiModel) {
        model3dAssetTypeUiModel.getClass();
        str.getClass();
        model3dAssetNameUiModel.getClass();
        this.f58807a = model3dAssetTypeUiModel;
        this.f58808b = str;
        this.f58809c = model3dAssetNameUiModel;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Model3dAssetUiModel)) {
            return false;
        }
        Model3dAssetUiModel model3dAssetUiModel = (Model3dAssetUiModel) obj;
        return this.f58807a == model3dAssetUiModel.f58807a && Intrinsics.c(this.f58808b, model3dAssetUiModel.f58808b) && this.f58809c == model3dAssetUiModel.f58809c;
    }

    public final int hashCode() {
        return this.f58809c.hashCode() + fc.b(this.f58807a.hashCode() * 31, 31, this.f58808b);
    }

    public final String toString() {
        return "Model3dAssetUiModel(type=" + this.f58807a + ", url=" + this.f58808b + ", name=" + this.f58809c + ")";
    }
}
