package com.vuitton.foundation.model.domain.model.story;

import com.batch.android.s.b;
import defpackage.cj;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B?\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/story/StorySlide;", "", "", b.a.f24015b, "title", "surtitle", "description", "Lcom/vuitton/foundation/model/domain/model/story/StoryAsset;", "asset", "Lcom/vuitton/foundation/model/domain/model/story/StoryCta;", "cta", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/story/StoryAsset;Lcom/vuitton/foundation/model/domain/model/story/StoryCta;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class StorySlide {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f68275a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f68276b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f68277c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final StoryAsset f68278e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final StoryCta f68279f;

    public StorySlide(String str, String str2, String str3, String str4, StoryAsset storyAsset, StoryCta storyCta) {
        str.getClass();
        str2.getClass();
        this.f68275a = str;
        this.f68276b = str2;
        this.f68277c = str3;
        this.d = str4;
        this.f68278e = storyAsset;
        this.f68279f = storyCta;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof StorySlide)) {
            return false;
        }
        StorySlide storySlide = (StorySlide) obj;
        return Intrinsics.c(this.f68275a, storySlide.f68275a) && Intrinsics.c(this.f68276b, storySlide.f68276b) && Intrinsics.c(this.f68277c, storySlide.f68277c) && Intrinsics.c(this.d, storySlide.d) && Intrinsics.c(this.f68278e, storySlide.f68278e) && Intrinsics.c(this.f68279f, storySlide.f68279f);
    }

    public final int hashCode() {
        int iB = fc.b(this.f68275a.hashCode() * 31, 31, this.f68276b);
        String str = this.f68277c;
        int iHashCode = (iB + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.d;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        StoryAsset storyAsset = this.f68278e;
        int iHashCode3 = (iHashCode2 + (storyAsset == null ? 0 : storyAsset.hashCode())) * 31;
        StoryCta storyCta = this.f68279f;
        return iHashCode3 + (storyCta != null ? storyCta.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("StorySlide(id=", this.f68275a, ", title=", this.f68276b, ", surtitle=");
        cj.C(sbS, this.f68277c, ", description=", this.d, ", asset=");
        sbS.append(this.f68278e);
        sbS.append(", cta=");
        sbS.append(this.f68279f);
        sbS.append(")");
        return sbS.toString();
    }
}
