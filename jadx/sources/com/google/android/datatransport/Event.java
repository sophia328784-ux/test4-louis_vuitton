package com.google.android.datatransport;

import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import com.google.firebase.messaging.reporting.MessagingClientEventExtension;
import com.google.firebase.sessions.SessionEvent;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Event<T> {
    public static Event f(MessagingClientEventExtension messagingClientEventExtension, ProductData productData) {
        return new AutoValue_Event(messagingClientEventExtension, Priority.DEFAULT, productData);
    }

    public static Event g(SessionEvent sessionEvent) {
        return new AutoValue_Event(sessionEvent, Priority.DEFAULT, null);
    }

    public static Event h(CrashlyticsReport crashlyticsReport) {
        return new AutoValue_Event(crashlyticsReport, Priority.HIGHEST, null);
    }

    public abstract Integer a();

    public abstract EventContext b();

    public abstract Object c();

    public abstract Priority d();

    public abstract ProductData e();
}
