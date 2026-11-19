package com.vuitton.android.presentation.notification;

import com.vuitton.android.domain.usecase.account.accessibility.GetAccessibilityValueUseCase;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.foundation.model.domain.model.account.accessibility.AccessibilityPreferenceType;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/notification/NotificationBuilder;", "", "Lcom/vuitton/android/domain/usecase/account/accessibility/GetAccessibilityValueUseCase;", "getAccessibilityValueUseCase", "<init>", "(Lcom/vuitton/android/domain/usecase/account/accessibility/GetAccessibilityValueUseCase;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class NotificationBuilder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final GetAccessibilityValueUseCase f51836a;

    @Inject
    public NotificationBuilder(GetAccessibilityValueUseCase getAccessibilityValueUseCase) {
        getAccessibilityValueUseCase.getClass();
        this.f51836a = getAccessibilityValueUseCase;
    }

    public static NotificationUiModel a(NotificationBuilder notificationBuilder, StringResourceUiModel stringResourceUiModel, boolean z, NotificationDuration notificationDuration, NotificationAction notificationAction, int i2) {
        boolean z2 = (i2 & 2) != 0 ? true : z;
        if ((i2 & 4) != 0) {
            notificationDuration = NotificationDuration.SHORT;
        }
        NotificationDuration notificationDuration2 = notificationDuration;
        boolean z3 = (i2 & 8) != 0 ? !z2 : true;
        boolean z4 = (i2 & 16) == 0;
        if ((i2 & 32) != 0) {
            notificationAction = NotificationAction.NoAction.f51835b;
        }
        NotificationAction notificationAction2 = notificationAction;
        notificationBuilder.getClass();
        stringResourceUiModel.getClass();
        notificationDuration2.getClass();
        notificationAction2.getClass();
        Object objA = notificationBuilder.f51836a.a(AccessibilityPreferenceType.DISABLE_AUTOPLAY);
        Boolean bool = Boolean.FALSE;
        Result.Companion companion = Result.INSTANCE;
        if (objA instanceof Result.Failure) {
            objA = bool;
        }
        return new NotificationUiModel(stringResourceUiModel, ((Boolean) objA).booleanValue(), notificationDuration2, z2, z3, z4, notificationAction2, Unit.f71739a);
    }
}
