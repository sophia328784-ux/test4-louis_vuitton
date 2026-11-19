package com.vuitton.android.presentation.screen.authentication.social.models;

import com.vuitton.android.presentation.screen.dynamicform.model.FormUiModel;
import defpackage.n00;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001BC\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007\u0012\b\b\u0002\u0010\t\u001a\u00020\u0007\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterViewState;", "", "Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;", "socialRegisterUiModel", "Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;", "socialRegisterForm", "socialRegisterConsentForm", "", "isLoading", "isCompleteFormValid", "Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterFeatureFlags;", "featureFlags", "<init>", "(Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;ZZLcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterFeatureFlags;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class SocialRegisterViewState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SocialRegisterUiModel f54235a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FormUiModel f54236b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final FormUiModel f54237c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f54238e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final SocialRegisterFeatureFlags f54239f;

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ SocialRegisterViewState(SocialRegisterUiModel socialRegisterUiModel, FormUiModel formUiModel, FormUiModel formUiModel2, boolean z, boolean z2, SocialRegisterFeatureFlags socialRegisterFeatureFlags, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        FormUiModel formUiModelA;
        FormUiModel formUiModelA2;
        SocialRegisterUiModel socialRegisterUiModel2 = (i2 & 1) != 0 ? new SocialRegisterUiModel(null, null, null, null, null, null, false, null, null, null, null, null, null, null, null, 32767, null) : socialRegisterUiModel;
        if ((i2 & 2) != 0) {
            FormUiModel.f57485b.getClass();
            formUiModelA = FormUiModel.Companion.a();
        } else {
            formUiModelA = formUiModel;
        }
        if ((i2 & 4) != 0) {
            FormUiModel.f57485b.getClass();
            formUiModelA2 = FormUiModel.Companion.a();
        } else {
            formUiModelA2 = formUiModel2;
        }
        this(socialRegisterUiModel2, formUiModelA, formUiModelA2, (i2 & 8) != 0 ? false : z, (i2 & 16) != 0 ? formUiModelA.i() && formUiModelA2.i() : z2, (i2 & 32) != 0 ? new SocialRegisterFeatureFlags(false, false, 3, null) : socialRegisterFeatureFlags);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SocialRegisterViewState)) {
            return false;
        }
        SocialRegisterViewState socialRegisterViewState = (SocialRegisterViewState) obj;
        return Intrinsics.c(this.f54235a, socialRegisterViewState.f54235a) && Intrinsics.c(this.f54236b, socialRegisterViewState.f54236b) && Intrinsics.c(this.f54237c, socialRegisterViewState.f54237c) && this.d == socialRegisterViewState.d && this.f54238e == socialRegisterViewState.f54238e && Intrinsics.c(this.f54239f, socialRegisterViewState.f54239f);
    }

    public final int hashCode() {
        return this.f54239f.hashCode() + o60.b(o60.b(n00.a(n00.a(this.f54235a.hashCode() * 31, 31, this.f54236b.f57486a), 31, this.f54237c.f57486a), 31, this.d), 31, this.f54238e);
    }

    public final String toString() {
        return "SocialRegisterViewState(socialRegisterUiModel=" + this.f54235a + ", socialRegisterForm=" + this.f54236b + ", socialRegisterConsentForm=" + this.f54237c + ", isLoading=" + this.d + ", isCompleteFormValid=" + this.f54238e + ", featureFlags=" + this.f54239f + ")";
    }

    public SocialRegisterViewState(SocialRegisterUiModel socialRegisterUiModel, FormUiModel formUiModel, FormUiModel formUiModel2, boolean z, boolean z2, SocialRegisterFeatureFlags socialRegisterFeatureFlags) {
        socialRegisterUiModel.getClass();
        formUiModel.getClass();
        formUiModel2.getClass();
        socialRegisterFeatureFlags.getClass();
        this.f54235a = socialRegisterUiModel;
        this.f54236b = formUiModel;
        this.f54237c = formUiModel2;
        this.d = z;
        this.f54238e = z2;
        this.f54239f = socialRegisterFeatureFlags;
    }

    public SocialRegisterViewState() {
        this(null, null, null, false, false, null, 63, null);
    }
}
