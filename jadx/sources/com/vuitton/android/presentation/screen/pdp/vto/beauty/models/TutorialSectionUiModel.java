package com.vuitton.android.presentation.screen.pdp.vto.beauty.models;

import com.batch.android.s.b;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TutorialSectionUiModel;", "", "", b.a.f24015b, "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TutorialSectionTypeUiModel;", "type", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TutorialSectionDataUiModel;", DbParams.KEY_DATA, "<init>", "(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TutorialSectionTypeUiModel;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TutorialSectionDataUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class TutorialSectionUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f62196a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TutorialSectionTypeUiModel f62197b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TutorialSectionDataUiModel f62198c;

    public TutorialSectionUiModel(String str, TutorialSectionTypeUiModel tutorialSectionTypeUiModel, TutorialSectionDataUiModel tutorialSectionDataUiModel) {
        str.getClass();
        tutorialSectionTypeUiModel.getClass();
        tutorialSectionDataUiModel.getClass();
        this.f62196a = str;
        this.f62197b = tutorialSectionTypeUiModel;
        this.f62198c = tutorialSectionDataUiModel;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TutorialSectionUiModel)) {
            return false;
        }
        TutorialSectionUiModel tutorialSectionUiModel = (TutorialSectionUiModel) obj;
        return Intrinsics.c(this.f62196a, tutorialSectionUiModel.f62196a) && this.f62197b == tutorialSectionUiModel.f62197b && Intrinsics.c(this.f62198c, tutorialSectionUiModel.f62198c);
    }

    public final int hashCode() {
        return this.f62198c.hashCode() + ((this.f62197b.hashCode() + (this.f62196a.hashCode() * 31)) * 31);
    }

    public final String toString() {
        return "TutorialSectionUiModel(id=" + this.f62196a + ", type=" + this.f62197b + ", data=" + this.f62198c + ")";
    }
}
