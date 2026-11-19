package com.vuitton.android.presentation.screen.distantrepairs.models;

import defpackage.d21;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhotosStateUIModel;", "", "", "Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairPhoto;", "photos", "<init>", "(Ljava/util/List;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class PhotosStateUIModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f57395a;

    public /* synthetic */ PhotosStateUIModel(List list, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? CollectionsKt.U(null, null, null, null, null) : list);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof PhotosStateUIModel) && Intrinsics.c(this.f57395a, ((PhotosStateUIModel) obj).f57395a);
    }

    public final int hashCode() {
        return this.f57395a.hashCode();
    }

    public final String toString() {
        return d21.o("PhotosStateUIModel(photos=", ")", this.f57395a);
    }

    public PhotosStateUIModel(List<DistantRepairPhoto> list) {
        list.getClass();
        this.f57395a = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public PhotosStateUIModel() {
        this(null, 1, 0 == true ? 1 : 0);
    }
}
