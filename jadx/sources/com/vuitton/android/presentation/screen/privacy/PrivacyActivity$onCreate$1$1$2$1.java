package com.vuitton.android.presentation.screen.privacy;

import android.app.Application;
import androidx.activity.result.ActivityResultLauncher;
import com.batch.android.e.x;
import com.vuitton.android.domain.usecase.permissions.ShouldRequestNotificationsPermissionUseCase;
import com.vuitton.android.presentation.utils.NotificationUtils;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class PrivacyActivity$onCreate$1$1$2$1 extends FunctionReferenceImpl implements Function0<Unit> {
    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        PrivacyActivity privacyActivity = (PrivacyActivity) this.receiver;
        PrivacyActivity.Companion companion = PrivacyActivity.s;
        privacyActivity.H().O4();
        PrivacyViewModelImpl privacyViewModelImplH = privacyActivity.H();
        ShouldRequestNotificationsPermissionUseCase shouldRequestNotificationsPermissionUseCase = privacyViewModelImplH.d;
        Application application = privacyViewModelImplH.f13405a;
        application.getClass();
        if (shouldRequestNotificationsPermissionUseCase.a(NotificationUtils.a(application), false)) {
            privacyActivity.H().f63350e.f50212a.b();
            ActivityResultLauncher activityResultLauncher = privacyActivity.p;
            if (activityResultLauncher == null) {
                Intrinsics.h("requestPermissionLauncher");
                throw null;
            }
            activityResultLauncher.a(x.d);
        } else {
            privacyActivity.I();
        }
        return Unit.f71739a;
    }
}
