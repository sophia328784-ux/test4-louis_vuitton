package com.vuitton.android.presentation.screen.feed.models.uimodels;

import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/feed/models/uimodels/ContactabilityUiModel;", "", "Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;", "title", "description", "ctaText", "Lcom/vuitton/android/presentation/screen/feed/models/uimodels/ContactabilityActionUIModel;", "action", "<init>", "(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Lcom/vuitton/android/presentation/screen/feed/models/uimodels/ContactabilityActionUIModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ContactabilityUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final StringResourceUiModel f57980a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final StringResourceUiModel f57981b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final StringResourceUiModel f57982c;
    public final ContactabilityActionUIModel d;

    public ContactabilityUiModel(StringResourceUiModel stringResourceUiModel, StringResourceUiModel stringResourceUiModel2, StringResourceUiModel stringResourceUiModel3, ContactabilityActionUIModel contactabilityActionUIModel) {
        stringResourceUiModel.getClass();
        stringResourceUiModel2.getClass();
        stringResourceUiModel3.getClass();
        contactabilityActionUIModel.getClass();
        this.f57980a = stringResourceUiModel;
        this.f57981b = stringResourceUiModel2;
        this.f57982c = stringResourceUiModel3;
        this.d = contactabilityActionUIModel;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ContactabilityUiModel)) {
            return false;
        }
        ContactabilityUiModel contactabilityUiModel = (ContactabilityUiModel) obj;
        return Intrinsics.c(this.f57980a, contactabilityUiModel.f57980a) && Intrinsics.c(this.f57981b, contactabilityUiModel.f57981b) && Intrinsics.c(this.f57982c, contactabilityUiModel.f57982c) && this.d == contactabilityUiModel.d;
    }

    public final int hashCode() {
        return this.d.hashCode() + ((this.f57982c.hashCode() + ((this.f57981b.hashCode() + (this.f57980a.hashCode() * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "ContactabilityUiModel(title=" + this.f57980a + ", description=" + this.f57981b + ", ctaText=" + this.f57982c + ", action=" + this.d + ")";
    }
}
