package com.vuitton.foundation.model.domain.model.immersivearticle;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/immersivearticle/Model3dAsset;", "", "Lcom/vuitton/foundation/model/domain/model/immersivearticle/Model3dAssetType;", "type", "", ConfigurationName.DOWNLOAD_PLUGIN_URL, "Lcom/vuitton/foundation/model/domain/model/immersivearticle/Model3dAssetName;", "name", "<init>", "(Lcom/vuitton/foundation/model/domain/model/immersivearticle/Model3dAssetType;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/immersivearticle/Model3dAssetName;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class Model3dAsset {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Model3dAssetType f67709a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67710b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Model3dAssetName f67711c;

    public Model3dAsset(Model3dAssetType model3dAssetType, String str, Model3dAssetName model3dAssetName) {
        model3dAssetType.getClass();
        str.getClass();
        model3dAssetName.getClass();
        this.f67709a = model3dAssetType;
        this.f67710b = str;
        this.f67711c = model3dAssetName;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Model3dAsset)) {
            return false;
        }
        Model3dAsset model3dAsset = (Model3dAsset) obj;
        return this.f67709a == model3dAsset.f67709a && Intrinsics.c(this.f67710b, model3dAsset.f67710b) && this.f67711c == model3dAsset.f67711c;
    }

    public final int hashCode() {
        return this.f67711c.hashCode() + fc.b(this.f67709a.hashCode() * 31, 31, this.f67710b);
    }

    public final String toString() {
        return "Model3dAsset(type=" + this.f67709a + ", url=" + this.f67710b + ", name=" + this.f67711c + ")";
    }
}
