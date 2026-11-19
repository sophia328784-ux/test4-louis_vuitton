package com.vuitton.android.presentation.screen.storemode.models;

import com.batch.android.s.b;
import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeCategoryL3UiModel;", "", "", b.a.f24015b, "title", "plpId", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class StoreModeCategoryL3UiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f65048a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f65049b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f65050c;

    public StoreModeCategoryL3UiModel(String str, String str2, String str3) {
        cj.z(str, str2, str3);
        this.f65048a = str;
        this.f65049b = str2;
        this.f65050c = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof StoreModeCategoryL3UiModel)) {
            return false;
        }
        StoreModeCategoryL3UiModel storeModeCategoryL3UiModel = (StoreModeCategoryL3UiModel) obj;
        return Intrinsics.c(this.f65048a, storeModeCategoryL3UiModel.f65048a) && Intrinsics.c(this.f65049b, storeModeCategoryL3UiModel.f65049b) && Intrinsics.c(this.f65050c, storeModeCategoryL3UiModel.f65050c);
    }

    public final int hashCode() {
        return this.f65050c.hashCode() + fc.b(this.f65048a.hashCode() * 31, 31, this.f65049b);
    }

    public final String toString() {
        return n00.r(this.f65050c, ")", fc.s("StoreModeCategoryL3UiModel(id=", this.f65048a, ", title=", this.f65049b, ", plpId="));
    }
}
