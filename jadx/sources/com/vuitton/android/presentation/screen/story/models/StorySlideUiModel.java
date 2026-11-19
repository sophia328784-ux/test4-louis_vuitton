package com.vuitton.android.presentation.screen.story.models;

import com.batch.android.s.b;
import defpackage.cj;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B?\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/vuitton/android/presentation/screen/story/models/StorySlideUiModel;", "", "", b.a.f24015b, "title", "surtitle", "description", "Lcom/vuitton/android/presentation/screen/story/models/StoryAssetUiModel;", "asset", "Lcom/vuitton/android/presentation/screen/story/models/StoryCtaUiModel;", "cta", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/story/models/StoryAssetUiModel;Lcom/vuitton/android/presentation/screen/story/models/StoryCtaUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class StorySlideUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f65168a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f65169b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f65170c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final StoryAssetUiModel f65171e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final StoryCtaUiModel f65172f;

    public StorySlideUiModel(String str, String str2, String str3, String str4, StoryAssetUiModel storyAssetUiModel, StoryCtaUiModel storyCtaUiModel) {
        str.getClass();
        str2.getClass();
        this.f65168a = str;
        this.f65169b = str2;
        this.f65170c = str3;
        this.d = str4;
        this.f65171e = storyAssetUiModel;
        this.f65172f = storyCtaUiModel;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof StorySlideUiModel)) {
            return false;
        }
        StorySlideUiModel storySlideUiModel = (StorySlideUiModel) obj;
        return Intrinsics.c(this.f65168a, storySlideUiModel.f65168a) && Intrinsics.c(this.f65169b, storySlideUiModel.f65169b) && Intrinsics.c(this.f65170c, storySlideUiModel.f65170c) && Intrinsics.c(this.d, storySlideUiModel.d) && Intrinsics.c(this.f65171e, storySlideUiModel.f65171e) && Intrinsics.c(this.f65172f, storySlideUiModel.f65172f);
    }

    public final int hashCode() {
        int iB = fc.b(this.f65168a.hashCode() * 31, 31, this.f65169b);
        String str = this.f65170c;
        int iHashCode = (iB + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.d;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        StoryAssetUiModel storyAssetUiModel = this.f65171e;
        int iHashCode3 = (iHashCode2 + (storyAssetUiModel == null ? 0 : storyAssetUiModel.hashCode())) * 31;
        StoryCtaUiModel storyCtaUiModel = this.f65172f;
        return iHashCode3 + (storyCtaUiModel != null ? storyCtaUiModel.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("StorySlideUiModel(id=", this.f65168a, ", title=", this.f65169b, ", surtitle=");
        cj.C(sbS, this.f65170c, ", description=", this.d, ", asset=");
        sbS.append(this.f65171e);
        sbS.append(", cta=");
        sbS.append(this.f65172f);
        sbS.append(")");
        return sbS.toString();
    }
}
