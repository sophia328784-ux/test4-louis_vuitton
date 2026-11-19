package com.vuitton.android.presentation.common.editorial.models;

import defpackage.d21;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;", "", "", "Lcom/vuitton/android/presentation/common/editorial/models/GeolocationUiModel;", "geolocations", "<init>", "(Ljava/util/List;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class TargetingUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f50878a;

    public TargetingUiModel(List<GeolocationUiModel> list) {
        list.getClass();
        this.f50878a = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof TargetingUiModel) && Intrinsics.c(this.f50878a, ((TargetingUiModel) obj).f50878a);
    }

    public final int hashCode() {
        return this.f50878a.hashCode();
    }

    public final String toString() {
        return d21.o("TargetingUiModel(geolocations=", ")", this.f50878a);
    }
}
