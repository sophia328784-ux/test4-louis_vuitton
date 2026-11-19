package com.vuitton.android.presentation.screen.pdp.vto.beauty.models;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import com.batch.android.s.b;
import com.vuitton.foundation.model.domain.model.legal.ConsentFeature;
import defpackage.fc;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B9\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00050\t¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ConsentRequirementUiModel;", "", "", b.a.f24015b, "title", "", "isMandatory", "Lcom/vuitton/foundation/model/domain/model/legal/ConsentFeature;", "feature", "Landroidx/compose/runtime/MutableState;", "isChecked", "<init>", "(Ljava/lang/String;Ljava/lang/String;ZLcom/vuitton/foundation/model/domain/model/legal/ConsentFeature;Landroidx/compose/runtime/MutableState;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ConsentRequirementUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f62161a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f62162b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f62163c;
    public final ConsentFeature d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final MutableState f62164e;

    public ConsentRequirementUiModel(String str, String str2, boolean z, ConsentFeature consentFeature, MutableState<Boolean> mutableState) {
        str.getClass();
        str2.getClass();
        mutableState.getClass();
        this.f62161a = str;
        this.f62162b = str2;
        this.f62163c = z;
        this.d = consentFeature;
        this.f62164e = mutableState;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ConsentRequirementUiModel)) {
            return false;
        }
        ConsentRequirementUiModel consentRequirementUiModel = (ConsentRequirementUiModel) obj;
        return Intrinsics.c(this.f62161a, consentRequirementUiModel.f62161a) && Intrinsics.c(this.f62162b, consentRequirementUiModel.f62162b) && this.f62163c == consentRequirementUiModel.f62163c && this.d == consentRequirementUiModel.d && Intrinsics.c(this.f62164e, consentRequirementUiModel.f62164e);
    }

    public final int hashCode() {
        int iB = o60.b(fc.b(this.f62161a.hashCode() * 31, 31, this.f62162b), 31, this.f62163c);
        ConsentFeature consentFeature = this.d;
        return this.f62164e.hashCode() + ((iB + (consentFeature == null ? 0 : consentFeature.hashCode())) * 31);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("ConsentRequirementUiModel(id=", this.f62161a, ", title=", this.f62162b, ", isMandatory=");
        sbS.append(this.f62163c);
        sbS.append(", feature=");
        sbS.append(this.d);
        sbS.append(", isChecked=");
        sbS.append(this.f62164e);
        sbS.append(")");
        return sbS.toString();
    }

    public /* synthetic */ ConsentRequirementUiModel(String str, String str2, boolean z, ConsentFeature consentFeature, MutableState mutableState, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, z, consentFeature, (i2 & 16) != 0 ? SnapshotStateKt.g(Boolean.FALSE) : mutableState);
    }
}
