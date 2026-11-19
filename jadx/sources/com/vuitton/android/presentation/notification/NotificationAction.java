package com.vuitton.android.presentation.notification;

import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0017\u0018\u00002\u00020\u0001:\u0001\u0006B\u0013\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/notification/NotificationAction;", "", "Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;", "label", "<init>", "(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;)V", "NoAction", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public class NotificationAction {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final StringResourceUiModel f51834a;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/notification/NotificationAction$NoAction;", "Lcom/vuitton/android/presentation/notification/NotificationAction;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class NoAction extends NotificationAction {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final NoAction f51835b = new NoAction(null, 1, 0 == true ? 1 : 0);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof NoAction);
        }

        public final int hashCode() {
            return -1381763516;
        }

        public final String toString() {
            return "NoAction";
        }
    }

    public /* synthetic */ NotificationAction(StringResourceUiModel stringResourceUiModel, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : stringResourceUiModel);
    }

    public NotificationAction(StringResourceUiModel stringResourceUiModel) {
        this.f51834a = stringResourceUiModel;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public NotificationAction() {
        this(null, 1, 0 == true ? 1 : 0);
    }
}
