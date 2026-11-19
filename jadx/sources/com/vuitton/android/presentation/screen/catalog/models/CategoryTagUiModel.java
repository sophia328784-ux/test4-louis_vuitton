package com.vuitton.android.presentation.screen.catalog.models;

import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/catalog/models/CategoryTagUiModel;", "", "", "title", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CategoryTagUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f55362a;

    public CategoryTagUiModel(String str) {
        str.getClass();
        this.f55362a = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof CategoryTagUiModel) && Intrinsics.c(this.f55362a, ((CategoryTagUiModel) obj).f55362a);
    }

    public final int hashCode() {
        return this.f55362a.hashCode();
    }

    public final String toString() {
        return fc.h("CategoryTagUiModel(title=", this.f55362a, ")");
    }
}
