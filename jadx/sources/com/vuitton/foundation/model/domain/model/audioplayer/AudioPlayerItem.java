package com.vuitton.foundation.model.domain.model.audioplayer;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.vuitton.foundation.model.domain.model.common.AssetImage;
import defpackage.cj;
import defpackage.d21;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0086\b\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\b\u001a\u00020\u0004\u0012\u0006\u0010\t\u001a\u00020\u0004¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/audioplayer/AudioPlayerItem;", "", "", "duration", "", ConfigurationName.DOWNLOAD_PLUGIN_URL, "Lcom/vuitton/foundation/model/domain/model/common/AssetImage;", "image", "title", "subtitle", "<init>", "(JLjava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/AssetImage;Ljava/lang/String;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class AudioPlayerItem {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f66584a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f66585b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AssetImage f66586c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f66587e;

    public AudioPlayerItem(long j2, String str, AssetImage assetImage, String str2, String str3) {
        cj.z(str, str2, str3);
        this.f66584a = j2;
        this.f66585b = str;
        this.f66586c = assetImage;
        this.d = str2;
        this.f66587e = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AudioPlayerItem)) {
            return false;
        }
        AudioPlayerItem audioPlayerItem = (AudioPlayerItem) obj;
        return this.f66584a == audioPlayerItem.f66584a && Intrinsics.c(this.f66585b, audioPlayerItem.f66585b) && Intrinsics.c(this.f66586c, audioPlayerItem.f66586c) && Intrinsics.c(this.d, audioPlayerItem.d) && Intrinsics.c(this.f66587e, audioPlayerItem.f66587e);
    }

    public final int hashCode() {
        int iB = fc.b(Long.hashCode(this.f66584a) * 31, 31, this.f66585b);
        AssetImage assetImage = this.f66586c;
        return this.f66587e.hashCode() + fc.b((iB + (assetImage == null ? 0 : assetImage.hashCode())) * 31, 31, this.d);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AudioPlayerItem(duration=");
        sb.append(this.f66584a);
        sb.append(", url=");
        sb.append(this.f66585b);
        sb.append(", image=");
        sb.append(this.f66586c);
        sb.append(", title=");
        sb.append(this.d);
        return d21.p(sb, ", subtitle=", this.f66587e, ")");
    }
}
