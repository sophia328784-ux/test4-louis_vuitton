package com.vuitton.android.presentation.screen.audioplayer.model;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.vuitton.foundation.model.domain.model.common.AssetImage;
import defpackage.cj;
import defpackage.d21;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0087\b\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\b\u001a\u00020\u0004\u0012\u0006\u0010\t\u001a\u00020\u0004¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerItemUiModel;", "", "", "duration", "", ConfigurationName.DOWNLOAD_PLUGIN_URL, "Lcom/vuitton/foundation/model/domain/model/common/AssetImage;", "image", "title", "subtitle", "<init>", "(JLjava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/AssetImage;Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class AudioPlayerItemUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f53256a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f53257b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AssetImage f53258c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f53259e;

    public AudioPlayerItemUiModel(long j2, String str, AssetImage assetImage, String str2, String str3) {
        cj.z(str, str2, str3);
        this.f53256a = j2;
        this.f53257b = str;
        this.f53258c = assetImage;
        this.d = str2;
        this.f53259e = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AudioPlayerItemUiModel)) {
            return false;
        }
        AudioPlayerItemUiModel audioPlayerItemUiModel = (AudioPlayerItemUiModel) obj;
        return this.f53256a == audioPlayerItemUiModel.f53256a && Intrinsics.c(this.f53257b, audioPlayerItemUiModel.f53257b) && Intrinsics.c(this.f53258c, audioPlayerItemUiModel.f53258c) && Intrinsics.c(this.d, audioPlayerItemUiModel.d) && Intrinsics.c(this.f53259e, audioPlayerItemUiModel.f53259e);
    }

    public final int hashCode() {
        int iB = fc.b(Long.hashCode(this.f53256a) * 31, 31, this.f53257b);
        AssetImage assetImage = this.f53258c;
        return this.f53259e.hashCode() + fc.b((iB + (assetImage == null ? 0 : assetImage.hashCode())) * 31, 31, this.d);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AudioPlayerItemUiModel(duration=");
        sb.append(this.f53256a);
        sb.append(", url=");
        sb.append(this.f53257b);
        sb.append(", image=");
        sb.append(this.f53258c);
        sb.append(", title=");
        sb.append(this.d);
        return d21.p(sb, ", subtitle=", this.f53259e, ")");
    }
}
