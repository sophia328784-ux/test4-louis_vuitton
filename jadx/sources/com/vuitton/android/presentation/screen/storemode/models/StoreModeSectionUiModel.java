package com.vuitton.android.presentation.screen.storemode.models;

import com.batch.android.s.b;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeSectionUiModel;", "", "", b.a.f24015b, "Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTypeUiModel;", "type", "Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeDataUiModel;", DbParams.KEY_DATA, "<init>", "(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTypeUiModel;Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeDataUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class StoreModeSectionUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f65055a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final StoreModeTypeUiModel f65056b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final StoreModeDataUiModel f65057c;

    public StoreModeSectionUiModel(String str, StoreModeTypeUiModel storeModeTypeUiModel, StoreModeDataUiModel storeModeDataUiModel) {
        str.getClass();
        storeModeTypeUiModel.getClass();
        this.f65055a = str;
        this.f65056b = storeModeTypeUiModel;
        this.f65057c = storeModeDataUiModel;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof StoreModeSectionUiModel)) {
            return false;
        }
        StoreModeSectionUiModel storeModeSectionUiModel = (StoreModeSectionUiModel) obj;
        return Intrinsics.c(this.f65055a, storeModeSectionUiModel.f65055a) && this.f65056b == storeModeSectionUiModel.f65056b && Intrinsics.c(this.f65057c, storeModeSectionUiModel.f65057c);
    }

    public final int hashCode() {
        int iHashCode = (this.f65056b.hashCode() + (this.f65055a.hashCode() * 31)) * 31;
        StoreModeDataUiModel storeModeDataUiModel = this.f65057c;
        return iHashCode + (storeModeDataUiModel == null ? 0 : storeModeDataUiModel.hashCode());
    }

    public final String toString() {
        return "StoreModeSectionUiModel(id=" + this.f65055a + ", type=" + this.f65056b + ", data=" + this.f65057c + ")";
    }
}
