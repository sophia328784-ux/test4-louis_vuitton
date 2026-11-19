package com.vuitton.android.presentation.screen.mylv.models;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B#\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;", "", "Lcom/vuitton/android/presentation/screen/mylv/models/KisaUserConsentsUiModel;", "kisa", "Landroidx/compose/runtime/MutableState;", "Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;", "marketing", "<init>", "(Lcom/vuitton/android/presentation/screen/mylv/models/KisaUserConsentsUiModel;Landroidx/compose/runtime/MutableState;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class UserConsentsUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final KisaUserConsentsUiModel f59456a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MutableState f59457b;

    public /* synthetic */ UserConsentsUiModel(KisaUserConsentsUiModel kisaUserConsentsUiModel, MutableState mutableState, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : kisaUserConsentsUiModel, (i2 & 2) != 0 ? SnapshotStateKt.g(new MarketingUserConsentsUiModel(false, false, false, false, null, null, null, CertificateBody.profileType, null)) : mutableState);
    }

    public static UserConsentsUiModel a(UserConsentsUiModel userConsentsUiModel, MutableState mutableState) {
        KisaUserConsentsUiModel kisaUserConsentsUiModel = userConsentsUiModel.f59456a;
        userConsentsUiModel.getClass();
        return new UserConsentsUiModel(kisaUserConsentsUiModel, mutableState);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof UserConsentsUiModel)) {
            return false;
        }
        UserConsentsUiModel userConsentsUiModel = (UserConsentsUiModel) obj;
        return Intrinsics.c(this.f59456a, userConsentsUiModel.f59456a) && Intrinsics.c(this.f59457b, userConsentsUiModel.f59457b);
    }

    public final int hashCode() {
        KisaUserConsentsUiModel kisaUserConsentsUiModel = this.f59456a;
        return this.f59457b.hashCode() + ((kisaUserConsentsUiModel == null ? 0 : kisaUserConsentsUiModel.hashCode()) * 31);
    }

    public final String toString() {
        return "UserConsentsUiModel(kisa=" + this.f59456a + ", marketing=" + this.f59457b + ")";
    }

    public UserConsentsUiModel(KisaUserConsentsUiModel kisaUserConsentsUiModel, MutableState<MarketingUserConsentsUiModel> mutableState) {
        mutableState.getClass();
        this.f59456a = kisaUserConsentsUiModel;
        this.f59457b = mutableState;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public UserConsentsUiModel() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }
}
