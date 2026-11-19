package com.google.android.datatransport;

/* JADX INFO: loaded from: classes2.dex */
public interface Transport<T> {
    void a(Event event, TransportScheduleCallback transportScheduleCallback);

    void b(Event event);
}
