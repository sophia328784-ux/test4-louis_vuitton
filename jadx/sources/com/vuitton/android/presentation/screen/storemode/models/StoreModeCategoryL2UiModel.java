package com.vuitton.android.presentation.screen.storemode.models;

import com.batch.android.s.b;
import defpackage.a;
import defpackage.fc;
import defpackage.pq0;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeCategoryL2UiModel;", "", "", b.a.f24015b, "title", "", "Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeCategoryL3UiModel;", "categoryList", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class StoreModeCategoryL2UiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f65045a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f65046b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f65047c;

    public StoreModeCategoryL2UiModel(String str, String str2, List<StoreModeCategoryL3UiModel> list) {
        pq0.B(str, str2, list);
        this.f65045a = str;
        this.f65046b = str2;
        this.f65047c = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof StoreModeCategoryL2UiModel)) {
            return false;
        }
        StoreModeCategoryL2UiModel storeModeCategoryL2UiModel = (StoreModeCategoryL2UiModel) obj;
        return Intrinsics.c(this.f65045a, storeModeCategoryL2UiModel.f65045a) && Intrinsics.c(this.f65046b, storeModeCategoryL2UiModel.f65046b) && Intrinsics.c(this.f65047c, storeModeCategoryL2UiModel.f65047c);
    }

    public final int hashCode() {
        return this.f65047c.hashCode() + fc.b(this.f65045a.hashCode() * 31, 31, this.f65046b);
    }

    public final String toString() {
        return a.o(fc.s("StoreModeCategoryL2UiModel(id=", this.f65045a, ", title=", this.f65046b, ", categoryList="), this.f65047c, ")");
    }
}
