package com.vuitton.android.presentation.screen.story.models;

import defpackage.a;
import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import defpackage.o60;
import defpackage.tr;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0087\b\u0018\u00002\u00020\u0001Bk\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u000e\b\u0002\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0002¢\u0006\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, d2 = {"Lcom/vuitton/android/presentation/screen/story/models/StoryViewState;", "", "", "isError", "isLoading", "Lcom/vuitton/android/presentation/screen/story/models/StoryHeaderUiModel;", "storyHeader", "", "Lcom/vuitton/android/presentation/screen/story/models/StorySlideUiModel;", "stories", "", "storyPosition", "Lcom/vuitton/android/presentation/screen/story/models/StoryCloseUiModel;", "shouldClose", "isNavigationSimplified", "isAutoPlayDisabled", "isContrastEnhanced", "<init>", "(ZZLcom/vuitton/android/presentation/screen/story/models/StoryHeaderUiModel;Ljava/util/List;ILcom/vuitton/android/presentation/screen/story/models/StoryCloseUiModel;ZZZ)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class StoryViewState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f65173a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f65174b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final StoryHeaderUiModel f65175c;
    public final List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f65176e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final StoryCloseUiModel f65177f;
    public final boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f65178h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f65179i;

    public StoryViewState(boolean z, boolean z2, StoryHeaderUiModel storyHeaderUiModel, List list, int i2, StoryCloseUiModel storyCloseUiModel, boolean z3, boolean z4, boolean z5, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? false : z, (i3 & 2) != 0 ? false : z2, (i3 & 4) != 0 ? null : storyHeaderUiModel, (i3 & 8) != 0 ? EmptyList.f71768b : list, (i3 & 16) != 0 ? 0 : i2, (i3 & 32) != 0 ? null : storyCloseUiModel, (i3 & 64) != 0 ? false : z3, (i3 & 128) != 0 ? false : z4, (i3 & 256) != 0 ? false : z5);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof StoryViewState)) {
            return false;
        }
        StoryViewState storyViewState = (StoryViewState) obj;
        return this.f65173a == storyViewState.f65173a && this.f65174b == storyViewState.f65174b && Intrinsics.c(this.f65175c, storyViewState.f65175c) && Intrinsics.c(this.d, storyViewState.d) && this.f65176e == storyViewState.f65176e && this.f65177f == storyViewState.f65177f && this.g == storyViewState.g && this.f65178h == storyViewState.f65178h && this.f65179i == storyViewState.f65179i;
    }

    public final int hashCode() {
        int iB = o60.b(Boolean.hashCode(this.f65173a) * 31, 31, this.f65174b);
        StoryHeaderUiModel storyHeaderUiModel = this.f65175c;
        int iB2 = tr.b(this.f65176e, n00.a((iB + (storyHeaderUiModel == null ? 0 : storyHeaderUiModel.hashCode())) * 31, 31, this.d), 31);
        StoryCloseUiModel storyCloseUiModel = this.f65177f;
        return Boolean.hashCode(this.f65179i) + o60.b(o60.b((iB2 + (storyCloseUiModel != null ? storyCloseUiModel.hashCode() : 0)) * 31, 31, this.g), 31, this.f65178h);
    }

    public final String toString() {
        StringBuilder sbM = cj.m("StoryViewState(isError=", ", isLoading=", ", storyHeader=", this.f65173a, this.f65174b);
        sbM.append(this.f65175c);
        sbM.append(", stories=");
        sbM.append(this.d);
        sbM.append(", storyPosition=");
        sbM.append(this.f65176e);
        sbM.append(", shouldClose=");
        sbM.append(this.f65177f);
        sbM.append(", isNavigationSimplified=");
        fc.y(sbM, this.g, ", isAutoPlayDisabled=", this.f65178h, ", isContrastEnhanced=");
        return a.p(sbM, this.f65179i, ")");
    }

    public StoryViewState(boolean z, boolean z2, StoryHeaderUiModel storyHeaderUiModel, List<StorySlideUiModel> list, int i2, StoryCloseUiModel storyCloseUiModel, boolean z3, boolean z4, boolean z5) {
        list.getClass();
        this.f65173a = z;
        this.f65174b = z2;
        this.f65175c = storyHeaderUiModel;
        this.d = list;
        this.f65176e = i2;
        this.f65177f = storyCloseUiModel;
        this.g = z3;
        this.f65178h = z4;
        this.f65179i = z5;
    }

    public StoryViewState() {
        this(false, false, null, null, 0, null, false, false, false, 511, null);
    }
}
