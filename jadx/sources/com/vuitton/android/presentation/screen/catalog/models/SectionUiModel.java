package com.vuitton.android.presentation.screen.catalog.models;

import com.batch.android.s.b;
import defpackage.cj;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/catalog/models/SectionUiModel;", "", "", b.a.f24015b, "", "Lcom/vuitton/android/presentation/screen/catalog/models/CategoryUiModel;", "categories", "<init>", "(Ljava/lang/String;Ljava/util/List;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class SectionUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f55375a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f55376b;

    public SectionUiModel(String str, List<CategoryUiModel> list) {
        str.getClass();
        list.getClass();
        this.f55375a = str;
        this.f55376b = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SectionUiModel)) {
            return false;
        }
        SectionUiModel sectionUiModel = (SectionUiModel) obj;
        return Intrinsics.c(this.f55375a, sectionUiModel.f55375a) && Intrinsics.c(this.f55376b, sectionUiModel.f55376b);
    }

    public final int hashCode() {
        return this.f55376b.hashCode() + (this.f55375a.hashCode() * 31);
    }

    public final String toString() {
        return cj.k("SectionUiModel(id=", this.f55375a, ", categories=", this.f55376b, ")");
    }
}
