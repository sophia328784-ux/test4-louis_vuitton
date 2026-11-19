package com.vuitton.android.presentation.screen.personalselections.list.models;

import java.util.List;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B'\u0012\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSelectionsListUiModel;", "", "", "Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSharingUiModel;", "inStore", "wardrobe", "<init>", "(Ljava/util/List;Ljava/util/List;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class PersonalSelectionsListUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f62643a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f62644b;

    public PersonalSelectionsListUiModel(List list, List list2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? EmptyList.f71768b : list, (i2 & 2) != 0 ? EmptyList.f71768b : list2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PersonalSelectionsListUiModel)) {
            return false;
        }
        PersonalSelectionsListUiModel personalSelectionsListUiModel = (PersonalSelectionsListUiModel) obj;
        return Intrinsics.c(this.f62643a, personalSelectionsListUiModel.f62643a) && Intrinsics.c(this.f62644b, personalSelectionsListUiModel.f62644b);
    }

    public final int hashCode() {
        return this.f62644b.hashCode() + (this.f62643a.hashCode() * 31);
    }

    public final String toString() {
        return "PersonalSelectionsListUiModel(inStore=" + this.f62643a + ", wardrobe=" + this.f62644b + ")";
    }

    public PersonalSelectionsListUiModel(List<PersonalSharingUiModel> list, List<PersonalSharingUiModel> list2) {
        list.getClass();
        list2.getClass();
        this.f62643a = list;
        this.f62644b = list2;
    }

    public PersonalSelectionsListUiModel() {
        this(null, null, 3, null);
    }
}
