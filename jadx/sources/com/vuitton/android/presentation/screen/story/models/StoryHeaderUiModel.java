package com.vuitton.android.presentation.screen.story.models;

import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/story/models/StoryHeaderUiModel;", "", "", "title", "iconUrl", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class StoryHeaderUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f65166a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f65167b;

    public /* synthetic */ StoryHeaderUiModel(String str, String str2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? "" : str, (i2 & 2) != 0 ? "" : str2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof StoryHeaderUiModel)) {
            return false;
        }
        StoryHeaderUiModel storyHeaderUiModel = (StoryHeaderUiModel) obj;
        return Intrinsics.c(this.f65166a, storyHeaderUiModel.f65166a) && Intrinsics.c(this.f65167b, storyHeaderUiModel.f65167b);
    }

    public final int hashCode() {
        return this.f65167b.hashCode() + (this.f65166a.hashCode() * 31);
    }

    public final String toString() {
        return d21.l("StoryHeaderUiModel(title=", this.f65166a, ", iconUrl=", this.f65167b, ")");
    }

    public StoryHeaderUiModel(String str, String str2) {
        str.getClass();
        str2.getClass();
        this.f65166a = str;
        this.f65167b = str2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public StoryHeaderUiModel() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }
}
