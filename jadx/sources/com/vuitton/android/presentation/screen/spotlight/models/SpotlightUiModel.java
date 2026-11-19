package com.vuitton.android.presentation.screen.spotlight.models;

import com.batch.android.s.b;
import defpackage.cj;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B!\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightUiModel;", "", "", b.a.f24015b, "", "Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;", "slides", "<init>", "(Ljava/lang/String;Ljava/util/List;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class SpotlightUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f64677a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f64678b;

    public SpotlightUiModel(String str, List list, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? "" : str, (i2 & 2) != 0 ? EmptyList.f71768b : list);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SpotlightUiModel)) {
            return false;
        }
        SpotlightUiModel spotlightUiModel = (SpotlightUiModel) obj;
        return Intrinsics.c(this.f64677a, spotlightUiModel.f64677a) && Intrinsics.c(this.f64678b, spotlightUiModel.f64678b);
    }

    public final int hashCode() {
        return this.f64678b.hashCode() + (this.f64677a.hashCode() * 31);
    }

    public final String toString() {
        return cj.k("SpotlightUiModel(id=", this.f64677a, ", slides=", this.f64678b, ")");
    }

    public SpotlightUiModel(String str, List<SpotlightSlideUiModel> list) {
        str.getClass();
        list.getClass();
        this.f64677a = str;
        this.f64678b = list;
    }

    public SpotlightUiModel() {
        this(null, null, 3, null);
    }
}
