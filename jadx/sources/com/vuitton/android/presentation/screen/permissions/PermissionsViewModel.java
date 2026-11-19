package com.vuitton.android.presentation.screen.permissions;

import com.vuitton.android.presentation.screen.feed.models.ContactabilityTrackingUiModel;
import defpackage.ul0;
import kotlin.Metadata;
import kotlinx.coroutines.flow.SharedFlow;
import kotlinx.coroutines.flow.SharedFlowImpl;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface PermissionsViewModel {
    void A6(boolean z);

    void E4();

    void Gb();

    void Ka(ContactabilityTrackingUiModel contactabilityTrackingUiModel, String str);

    void Y6();

    SharedFlow Z2();

    StateFlow a();

    void aa(boolean z, ul0 ul0Var);

    void l4();

    SharedFlowImpl s3();

    void u8();

    void v5(PermissionContext permissionContext);

    void x9();
}
