package com.vuitton.android.presentation.screen.immersivearticle.models;

import androidx.compose.runtime.snapshots.SnapshotStateList;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.vuitton.android.presentation.screen.audioplayer.model.AudioPlayerItemUiModel;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001BI\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleUiModel;", "", "", ConfigurationName.KEY, "title", "Landroidx/compose/runtime/snapshots/SnapshotStateList;", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSectionUiModel;", "sections", "Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerItemUiModel;", "audio", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleBannerUiModel;", "banner", "backgroundColor", "<init>", "(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/snapshots/SnapshotStateList;Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerItemUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleBannerUiModel;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ImmersiveArticleUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f58791a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f58792b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SnapshotStateList f58793c;
    public final AudioPlayerItemUiModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ImmersiveArticleBannerUiModel f58794e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f58795f;

    public ImmersiveArticleUiModel(String str, String str2, SnapshotStateList<ImmersiveArticleSectionUiModel> snapshotStateList, AudioPlayerItemUiModel audioPlayerItemUiModel, ImmersiveArticleBannerUiModel immersiveArticleBannerUiModel, String str3) {
        this.f58791a = str;
        this.f58792b = str2;
        this.f58793c = snapshotStateList;
        this.d = audioPlayerItemUiModel;
        this.f58794e = immersiveArticleBannerUiModel;
        this.f58795f = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImmersiveArticleUiModel)) {
            return false;
        }
        ImmersiveArticleUiModel immersiveArticleUiModel = (ImmersiveArticleUiModel) obj;
        return Intrinsics.c(this.f58791a, immersiveArticleUiModel.f58791a) && Intrinsics.c(this.f58792b, immersiveArticleUiModel.f58792b) && Intrinsics.c(this.f58793c, immersiveArticleUiModel.f58793c) && Intrinsics.c(this.d, immersiveArticleUiModel.d) && Intrinsics.c(this.f58794e, immersiveArticleUiModel.f58794e) && Intrinsics.c(this.f58795f, immersiveArticleUiModel.f58795f);
    }

    public final int hashCode() {
        String str = this.f58791a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f58792b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        SnapshotStateList snapshotStateList = this.f58793c;
        int iHashCode3 = (iHashCode2 + (snapshotStateList == null ? 0 : snapshotStateList.hashCode())) * 31;
        AudioPlayerItemUiModel audioPlayerItemUiModel = this.d;
        int iHashCode4 = (iHashCode3 + (audioPlayerItemUiModel == null ? 0 : audioPlayerItemUiModel.hashCode())) * 31;
        ImmersiveArticleBannerUiModel immersiveArticleBannerUiModel = this.f58794e;
        int iHashCode5 = (iHashCode4 + (immersiveArticleBannerUiModel == null ? 0 : immersiveArticleBannerUiModel.hashCode())) * 31;
        String str3 = this.f58795f;
        return iHashCode5 + (str3 != null ? str3.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("ImmersiveArticleUiModel(key=", this.f58791a, ", title=", this.f58792b, ", sections=");
        sbS.append(this.f58793c);
        sbS.append(", audio=");
        sbS.append(this.d);
        sbS.append(", banner=");
        sbS.append(this.f58794e);
        sbS.append(", backgroundColor=");
        sbS.append(this.f58795f);
        sbS.append(")");
        return sbS.toString();
    }
}
