package com.vuitton.android.presentation.screen.distantrepairs.models;

import com.vuitton.android.presentation.screen.distantrepairs.form.models.DistantRepairContactMethod;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B+\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step1StateUIModel;", "", "Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;", "contactMethod", "Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;", "callDate", "", "formattedCallDate", "<init>", "(Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class Step1StateUIModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DistantRepairContactMethod f57401a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TimeSlotUiModel f57402b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f57403c;

    public /* synthetic */ Step1StateUIModel(DistantRepairContactMethod distantRepairContactMethod, TimeSlotUiModel timeSlotUiModel, String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : distantRepairContactMethod, (i2 & 2) != 0 ? null : timeSlotUiModel, (i2 & 4) != 0 ? null : str);
    }

    public static Step1StateUIModel a(Step1StateUIModel step1StateUIModel, TimeSlotUiModel timeSlotUiModel, String str, int i2) {
        DistantRepairContactMethod distantRepairContactMethod = step1StateUIModel.f57401a;
        if ((i2 & 2) != 0) {
            timeSlotUiModel = step1StateUIModel.f57402b;
        }
        if ((i2 & 4) != 0) {
            str = step1StateUIModel.f57403c;
        }
        step1StateUIModel.getClass();
        return new Step1StateUIModel(distantRepairContactMethod, timeSlotUiModel, str);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Step1StateUIModel)) {
            return false;
        }
        Step1StateUIModel step1StateUIModel = (Step1StateUIModel) obj;
        return this.f57401a == step1StateUIModel.f57401a && Intrinsics.c(this.f57402b, step1StateUIModel.f57402b) && Intrinsics.c(this.f57403c, step1StateUIModel.f57403c);
    }

    public final int hashCode() {
        DistantRepairContactMethod distantRepairContactMethod = this.f57401a;
        int iHashCode = (distantRepairContactMethod == null ? 0 : distantRepairContactMethod.hashCode()) * 31;
        TimeSlotUiModel timeSlotUiModel = this.f57402b;
        int iHashCode2 = (iHashCode + (timeSlotUiModel == null ? 0 : timeSlotUiModel.hashCode())) * 31;
        String str = this.f57403c;
        return iHashCode2 + (str != null ? str.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Step1StateUIModel(contactMethod=");
        sb.append(this.f57401a);
        sb.append(", callDate=");
        sb.append(this.f57402b);
        sb.append(", formattedCallDate=");
        return n00.r(this.f57403c, ")", sb);
    }

    public Step1StateUIModel(DistantRepairContactMethod distantRepairContactMethod, TimeSlotUiModel timeSlotUiModel, String str) {
        this.f57401a = distantRepairContactMethod;
        this.f57402b = timeSlotUiModel;
        this.f57403c = str;
    }

    public Step1StateUIModel() {
        this(null, null, null, 7, null);
    }
}
