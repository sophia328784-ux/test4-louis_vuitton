package com.vuitton.android.presentation.screen.immersivearticle.models;

import com.batch.android.s.b;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import defpackage.d21;
import defpackage.fc;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0087\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleVideoUiModel;", "", "", b.a.f24015b, ConfigurationName.DOWNLOAD_PLUGIN_URL, "placeholder", "subtitle", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ImmersiveArticleVideoUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f58796a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f58797b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f58798c;
    public final String d;

    public ImmersiveArticleVideoUiModel(String str, String str2, String str3, String str4) {
        d21.y(str, str2, str3, str4);
        this.f58796a = str;
        this.f58797b = str2;
        this.f58798c = str3;
        this.d = str4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImmersiveArticleVideoUiModel)) {
            return false;
        }
        ImmersiveArticleVideoUiModel immersiveArticleVideoUiModel = (ImmersiveArticleVideoUiModel) obj;
        return Intrinsics.c(this.f58796a, immersiveArticleVideoUiModel.f58796a) && Intrinsics.c(this.f58797b, immersiveArticleVideoUiModel.f58797b) && Intrinsics.c(this.f58798c, immersiveArticleVideoUiModel.f58798c) && Intrinsics.c(this.d, immersiveArticleVideoUiModel.d);
    }

    public final int hashCode() {
        return this.d.hashCode() + fc.b(fc.b(this.f58796a.hashCode() * 31, 31, this.f58797b), 31, this.f58798c);
    }

    public final String toString() {
        return tr.l(fc.s("ImmersiveArticleVideoUiModel(id=", this.f58796a, ", url=", this.f58797b, ", placeholder="), this.f58798c, ", subtitle=", this.d, ")");
    }
}
