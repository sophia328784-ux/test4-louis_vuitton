package com.vuitton.android.presentation.screen.options.notifications.components;

import com.vuitton.android.presentation.screen.options.notifications.NotificationsPreferencesViewModel;
import com.vuitton.foundation.model.domain.model.account.notifications.NotificationPreferenceType;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class NotificationsPreferencesComposableKt$NotificationsPreferencesComposable$9$1$1 extends FunctionReferenceImpl implements Function2<NotificationPreferenceType, Boolean, Unit> {
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        NotificationPreferenceType notificationPreferenceType = (NotificationPreferenceType) obj;
        boolean zBooleanValue = ((Boolean) obj2).booleanValue();
        notificationPreferenceType.getClass();
        ((NotificationsPreferencesViewModel) this.receiver).s2(notificationPreferenceType, zBooleanValue);
        return Unit.f71739a;
    }
}
