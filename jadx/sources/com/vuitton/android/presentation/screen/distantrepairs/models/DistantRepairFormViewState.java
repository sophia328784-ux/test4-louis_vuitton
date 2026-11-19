package com.vuitton.android.presentation.screen.distantrepairs.models;

import com.vuitton.android.presentation.screen.distantrepairs.form.models.DistantRepairsFormFeatureFlags;
import com.vuitton.android.presentation.screen.dynamicform.model.FormUiModel;
import com.vuitton.android.presentation.screen.repairs.models.DistantRepairsConfigUiModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceIdUiModel;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001Bs\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\b\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n\u0012\b\b\u0002\u0010\r\u001a\u00020\f\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u000e\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0010\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0012\u0012\b\b\u0002\u0010\u0015\u001a\u00020\u0014\u0012\b\b\u0002\u0010\u0017\u001a\u00020\u0016¢\u0006\u0004\b\u0018\u0010\u0019¨\u0006\u001a"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;", "", "Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;", "inAppDispatch", "Lcom/vuitton/android/presentation/screen/distantrepairs/models/FormStateUIModel;", "formStateUIModel", "Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step1StateUIModel;", "step1StateUIModel", "Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;", "step2StateUIModel", "Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step3StateUIModel;", "step3StateUIModel", "Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhotosStateUIModel;", "photosStateUIModel", "", "isLoading", "Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;", "careServiceId", "Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairsFormFeatureFlags;", "formFeatureFlags", "Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;", "distantRepairsConfig", "Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;", "careServiceForm", "<init>", "(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/presentation/screen/distantrepairs/models/FormStateUIModel;Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step1StateUIModel;Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step3StateUIModel;Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhotosStateUIModel;ZLjava/lang/String;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairsFormFeatureFlags;Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class DistantRepairFormViewState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InAppDispatch f57379a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FormStateUIModel f57380b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Step1StateUIModel f57381c;
    public final Step2StateUIModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Step3StateUIModel f57382e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final PhotosStateUIModel f57383f;
    public final boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f57384h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final DistantRepairsFormFeatureFlags f57385i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final DistantRepairsConfigUiModel f57386j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final FormUiModel f57387k;

    /* JADX WARN: Illegal instructions before constructor call */
    /* JADX WARN: Multi-variable type inference failed */
    public DistantRepairFormViewState(InAppDispatch inAppDispatch, FormStateUIModel formStateUIModel, Step1StateUIModel step1StateUIModel, Step2StateUIModel step2StateUIModel, Step3StateUIModel step3StateUIModel, PhotosStateUIModel photosStateUIModel, boolean z, String str, DistantRepairsFormFeatureFlags distantRepairsFormFeatureFlags, DistantRepairsConfigUiModel distantRepairsConfigUiModel, FormUiModel formUiModel, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        String str2;
        FormUiModel formUiModelA;
        FormStateUIModel formStateUIModel2 = (i2 & 2) != 0 ? new FormStateUIModel(null, null, null, null, 15, null) : formStateUIModel;
        Step1StateUIModel step1StateUIModel2 = (i2 & 4) != 0 ? new Step1StateUIModel(null, null, null, 7, null) : step1StateUIModel;
        Step2StateUIModel step2StateUIModel2 = (i2 & 8) != 0 ? new Step2StateUIModel(null, null, null, null, null, null, null, CertificateBody.profileType, null) : step2StateUIModel;
        Step3StateUIModel step3StateUIModel2 = (i2 & 16) != 0 ? new Step3StateUIModel(0, null, null, 7, null) : step3StateUIModel;
        PhotosStateUIModel photosStateUIModel2 = (i2 & 32) != 0 ? new PhotosStateUIModel(null, 1, 0 == true ? 1 : 0) : photosStateUIModel;
        boolean z2 = (i2 & 64) != 0 ? false : z;
        if ((i2 & 128) != 0) {
            CareServiceIdUiModel.f64059c.getClass();
            str2 = CareServiceIdUiModel.d;
        } else {
            str2 = str;
        }
        DistantRepairsFormFeatureFlags distantRepairsFormFeatureFlags2 = (i2 & 256) != 0 ? new DistantRepairsFormFeatureFlags(false, false, false, false, 15, null) : distantRepairsFormFeatureFlags;
        DistantRepairsConfigUiModel distantRepairsConfigUiModel2 = (i2 & 512) != 0 ? new DistantRepairsConfigUiModel(null, null, null, null, null, null, null, null, null, 511, null) : distantRepairsConfigUiModel;
        if ((i2 & 1024) != 0) {
            FormUiModel.f57485b.getClass();
            formUiModelA = FormUiModel.Companion.a();
        } else {
            formUiModelA = formUiModel;
        }
        this(inAppDispatch, formStateUIModel2, step1StateUIModel2, step2StateUIModel2, step3StateUIModel2, photosStateUIModel2, z2, str2, distantRepairsFormFeatureFlags2, distantRepairsConfigUiModel2, formUiModelA, null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DistantRepairFormViewState)) {
            return false;
        }
        DistantRepairFormViewState distantRepairFormViewState = (DistantRepairFormViewState) obj;
        if (!Intrinsics.c(this.f57379a, distantRepairFormViewState.f57379a) || !Intrinsics.c(this.f57380b, distantRepairFormViewState.f57380b) || !Intrinsics.c(this.f57381c, distantRepairFormViewState.f57381c) || !Intrinsics.c(this.d, distantRepairFormViewState.d) || !Intrinsics.c(this.f57382e, distantRepairFormViewState.f57382e) || !Intrinsics.c(this.f57383f, distantRepairFormViewState.f57383f) || this.g != distantRepairFormViewState.g) {
            return false;
        }
        String str = distantRepairFormViewState.f57384h;
        CareServiceIdUiModel.Companion companion = CareServiceIdUiModel.f64059c;
        return Intrinsics.c(this.f57384h, str) && Intrinsics.c(this.f57385i, distantRepairFormViewState.f57385i) && Intrinsics.c(this.f57386j, distantRepairFormViewState.f57386j) && Intrinsics.c(this.f57387k, distantRepairFormViewState.f57387k);
    }

    public final int hashCode() {
        int iB = o60.b(n00.a((this.f57382e.hashCode() + ((this.d.hashCode() + ((this.f57381c.hashCode() + ((this.f57380b.hashCode() + (this.f57379a.hashCode() * 31)) * 31)) * 31)) * 31)) * 31, 31, this.f57383f.f57395a), 31, this.g);
        CareServiceIdUiModel.Companion companion = CareServiceIdUiModel.f64059c;
        return this.f57387k.f57486a.hashCode() + ((this.f57386j.hashCode() + ((this.f57385i.hashCode() + fc.b(iB, 31, this.f57384h)) * 31)) * 31);
    }

    public final String toString() {
        CareServiceIdUiModel.Companion companion = CareServiceIdUiModel.f64059c;
        StringBuilder sb = new StringBuilder("DistantRepairFormViewState(inAppDispatch=");
        sb.append(this.f57379a);
        sb.append(", formStateUIModel=");
        sb.append(this.f57380b);
        sb.append(", step1StateUIModel=");
        sb.append(this.f57381c);
        sb.append(", step2StateUIModel=");
        sb.append(this.d);
        sb.append(", step3StateUIModel=");
        sb.append(this.f57382e);
        sb.append(", photosStateUIModel=");
        sb.append(this.f57383f);
        sb.append(", isLoading=");
        cj.A(", careServiceId=", this.f57384h, ", formFeatureFlags=", sb, this.g);
        sb.append(this.f57385i);
        sb.append(", distantRepairsConfig=");
        sb.append(this.f57386j);
        sb.append(", careServiceForm=");
        sb.append(this.f57387k);
        sb.append(")");
        return sb.toString();
    }

    public DistantRepairFormViewState(InAppDispatch inAppDispatch, FormStateUIModel formStateUIModel, Step1StateUIModel step1StateUIModel, Step2StateUIModel step2StateUIModel, Step3StateUIModel step3StateUIModel, PhotosStateUIModel photosStateUIModel, boolean z, String str, DistantRepairsFormFeatureFlags distantRepairsFormFeatureFlags, DistantRepairsConfigUiModel distantRepairsConfigUiModel, FormUiModel formUiModel, DefaultConstructorMarker defaultConstructorMarker) {
        inAppDispatch.getClass();
        formStateUIModel.getClass();
        step1StateUIModel.getClass();
        step2StateUIModel.getClass();
        step3StateUIModel.getClass();
        photosStateUIModel.getClass();
        str.getClass();
        distantRepairsFormFeatureFlags.getClass();
        distantRepairsConfigUiModel.getClass();
        formUiModel.getClass();
        this.f57379a = inAppDispatch;
        this.f57380b = formStateUIModel;
        this.f57381c = step1StateUIModel;
        this.d = step2StateUIModel;
        this.f57382e = step3StateUIModel;
        this.f57383f = photosStateUIModel;
        this.g = z;
        this.f57384h = str;
        this.f57385i = distantRepairsFormFeatureFlags;
        this.f57386j = distantRepairsConfigUiModel;
        this.f57387k = formUiModel;
    }
}
