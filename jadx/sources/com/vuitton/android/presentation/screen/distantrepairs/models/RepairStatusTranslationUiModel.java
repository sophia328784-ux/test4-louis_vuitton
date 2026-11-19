package com.vuitton.android.presentation.screen.distantrepairs.models;

import com.batch.android.s.b;
import defpackage.fc;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusTranslationUiModel;", "", "Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;", b.a.f24015b, "", "status", "statusLong", "<init>", "(Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class RepairStatusTranslationUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final RepairStatusUiModel f57396a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f57397b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f57398c;

    public RepairStatusTranslationUiModel(RepairStatusUiModel repairStatusUiModel, String str, String str2) {
        repairStatusUiModel.getClass();
        str.getClass();
        str2.getClass();
        this.f57396a = repairStatusUiModel;
        this.f57397b = str;
        this.f57398c = str2;
    }

    public static RepairStatusTranslationUiModel a(RepairStatusUiModel repairStatusUiModel, String str, String str2) {
        repairStatusUiModel.getClass();
        return new RepairStatusTranslationUiModel(repairStatusUiModel, str, str2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RepairStatusTranslationUiModel)) {
            return false;
        }
        RepairStatusTranslationUiModel repairStatusTranslationUiModel = (RepairStatusTranslationUiModel) obj;
        return this.f57396a == repairStatusTranslationUiModel.f57396a && Intrinsics.c(this.f57397b, repairStatusTranslationUiModel.f57397b) && Intrinsics.c(this.f57398c, repairStatusTranslationUiModel.f57398c);
    }

    public final int hashCode() {
        return this.f57398c.hashCode() + fc.b(this.f57396a.hashCode() * 31, 31, this.f57397b);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("RepairStatusTranslationUiModel(id=");
        sb.append(this.f57396a);
        sb.append(", status=");
        sb.append(this.f57397b);
        sb.append(", statusLong=");
        return n00.r(this.f57398c, ")", sb);
    }
}
