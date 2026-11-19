package com.vuitton.foundation.model.domain.model.immersivearticle;

import com.vuitton.foundation.model.domain.model.common.AssetImage;
import com.vuitton.foundation.model.domain.model.common.Sound;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveAudio;", "", "Lcom/vuitton/foundation/model/domain/model/common/AssetImage;", "asset", "", "title", "subtitle", "Lcom/vuitton/foundation/model/domain/model/common/Sound;", "sound", "<init>", "(Lcom/vuitton/foundation/model/domain/model/common/AssetImage;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/Sound;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ImmersiveAudio {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AssetImage f67706a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67707b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f67708c;
    public final Sound d;

    public ImmersiveAudio(AssetImage assetImage, String str, String str2, Sound sound) {
        assetImage.getClass();
        str.getClass();
        sound.getClass();
        this.f67706a = assetImage;
        this.f67707b = str;
        this.f67708c = str2;
        this.d = sound;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImmersiveAudio)) {
            return false;
        }
        ImmersiveAudio immersiveAudio = (ImmersiveAudio) obj;
        return Intrinsics.c(this.f67706a, immersiveAudio.f67706a) && Intrinsics.c(this.f67707b, immersiveAudio.f67707b) && Intrinsics.c(this.f67708c, immersiveAudio.f67708c) && Intrinsics.c(this.d, immersiveAudio.d);
    }

    public final int hashCode() {
        int iB = fc.b(this.f67706a.hashCode() * 31, 31, this.f67707b);
        String str = this.f67708c;
        return this.d.hashCode() + ((iB + (str == null ? 0 : str.hashCode())) * 31);
    }

    public final String toString() {
        return "ImmersiveAudio(asset=" + this.f67706a + ", title=" + this.f67707b + ", subtitle=" + this.f67708c + ", sound=" + this.d + ")";
    }
}
