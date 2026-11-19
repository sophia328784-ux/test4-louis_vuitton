package com.vuitton.android.presentation.screen.personalselections.detail.models;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionProductInteractionUiModel;", "", "", "isLiked", "", "token", "<init>", "(ZLjava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class SelectionProductInteractionUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f62582a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f62583b;

    public SelectionProductInteractionUiModel(boolean z, String str) {
        str.getClass();
        this.f62582a = z;
        this.f62583b = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SelectionProductInteractionUiModel)) {
            return false;
        }
        SelectionProductInteractionUiModel selectionProductInteractionUiModel = (SelectionProductInteractionUiModel) obj;
        return this.f62582a == selectionProductInteractionUiModel.f62582a && Intrinsics.c(this.f62583b, selectionProductInteractionUiModel.f62583b);
    }

    public final int hashCode() {
        return this.f62583b.hashCode() + (Boolean.hashCode(this.f62582a) * 31);
    }

    public final String toString() {
        return "SelectionProductInteractionUiModel(isLiked=" + this.f62582a + ", token=" + this.f62583b + ")";
    }
}
