package com.vuitton.android.presentation.screen.distantrepairs.models;

import defpackage.n00;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B+\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step3StateUIModel;", "", "", "minPhotoNumber", "", "Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairPhoto;", "photosList", "", "productDescription", "<init>", "(ILjava/util/List;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class Step3StateUIModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f57409a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f57410b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f57411c;

    public /* synthetic */ Step3StateUIModel(int i2, List list, String str, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? 5 : i2, (i3 & 2) != 0 ? new ArrayList() : list, (i3 & 4) != 0 ? "" : str);
    }

    public static Step3StateUIModel a(Step3StateUIModel step3StateUIModel, ArrayList arrayList, String str, int i2) {
        int i3 = step3StateUIModel.f57409a;
        List list = arrayList;
        if ((i2 & 2) != 0) {
            list = step3StateUIModel.f57410b;
        }
        if ((i2 & 4) != 0) {
            str = step3StateUIModel.f57411c;
        }
        step3StateUIModel.getClass();
        list.getClass();
        str.getClass();
        return new Step3StateUIModel(i3, list, str);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Step3StateUIModel)) {
            return false;
        }
        Step3StateUIModel step3StateUIModel = (Step3StateUIModel) obj;
        return this.f57409a == step3StateUIModel.f57409a && Intrinsics.c(this.f57410b, step3StateUIModel.f57410b) && Intrinsics.c(this.f57411c, step3StateUIModel.f57411c);
    }

    public final int hashCode() {
        return this.f57411c.hashCode() + n00.a(Integer.hashCode(this.f57409a) * 31, 31, this.f57410b);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Step3StateUIModel(minPhotoNumber=");
        sb.append(this.f57409a);
        sb.append(", photosList=");
        sb.append(this.f57410b);
        sb.append(", productDescription=");
        return n00.r(this.f57411c, ")", sb);
    }

    public Step3StateUIModel(int i2, List<DistantRepairPhoto> list, String str) {
        list.getClass();
        str.getClass();
        this.f57409a = i2;
        this.f57410b = list;
        this.f57411c = str;
    }

    public Step3StateUIModel() {
        this(0, null, null, 7, null);
    }
}
