package com.vuitton.android.presentation.screen.connectivity.lightup;

import com.vuitton.android.presentation.utils.PermissionUtils;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"com/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity$checkGps$1", "Lcom/vuitton/android/presentation/utils/PermissionUtils$PermissionListener;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class LightUpActivity$checkGps$1 implements PermissionUtils.PermissionListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ LightUpActivity f56108a;

    public LightUpActivity$checkGps$1(LightUpActivity lightUpActivity) {
        this.f56108a = lightUpActivity;
    }

    @Override // com.vuitton.android.presentation.utils.PermissionUtils.PermissionListener
    public final void onSuccess() {
        LightUpActivity.Companion companion = LightUpActivity.t;
        this.f56108a.P();
    }
}
