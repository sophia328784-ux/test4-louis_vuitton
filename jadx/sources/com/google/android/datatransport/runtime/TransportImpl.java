package com.google.android.datatransport.runtime;

import com.google.android.datatransport.Encoding;
import com.google.android.datatransport.Event;
import com.google.android.datatransport.EventContext;
import com.google.android.datatransport.Transformer;
import com.google.android.datatransport.Transport;
import com.google.android.datatransport.TransportScheduleCallback;
import com.google.android.datatransport.runtime.scheduling.Scheduler;
import defpackage.b21;
import defpackage.md;
import defpackage.r81;

/* JADX INFO: loaded from: classes2.dex */
final class TransportImpl<T> implements Transport<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TransportContext f27978a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f27979b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Encoding f27980c;
    public final Transformer d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final TransportRuntime f27981e;

    public TransportImpl(TransportContext transportContext, String str, Encoding encoding, Transformer transformer, TransportRuntime transportRuntime) {
        this.f27978a = transportContext;
        this.f27979b = str;
        this.f27980c = encoding;
        this.d = transformer;
        this.f27981e = transportRuntime;
    }

    @Override // com.google.android.datatransport.Transport
    public final void a(Event event, TransportScheduleCallback transportScheduleCallback) {
        AutoValue_SendRequest$Builder autoValue_SendRequest$Builder = new AutoValue_SendRequest$Builder();
        TransportContext transportContext = this.f27978a;
        if (transportContext == null) {
            r81.d("Null transportContext");
            return;
        }
        autoValue_SendRequest$Builder.f27951a = transportContext;
        autoValue_SendRequest$Builder.f27953c = event;
        autoValue_SendRequest$Builder.f27952b = this.f27979b;
        Transformer transformer = this.d;
        if (transformer == null) {
            r81.d("Null transformer");
            return;
        }
        autoValue_SendRequest$Builder.d = transformer;
        autoValue_SendRequest$Builder.f27954e = this.f27980c;
        String strConcat = autoValue_SendRequest$Builder.d == null ? "".concat(" transformer") : "";
        if (autoValue_SendRequest$Builder.f27954e == null) {
            strConcat = strConcat.concat(" encoding");
        }
        if (!strConcat.isEmpty()) {
            md.k("Missing required properties:".concat(strConcat));
            return;
        }
        TransportContext transportContext2 = autoValue_SendRequest$Builder.f27951a;
        String str = autoValue_SendRequest$Builder.f27952b;
        Event event2 = autoValue_SendRequest$Builder.f27953c;
        Transformer transformer2 = autoValue_SendRequest$Builder.d;
        Encoding encoding = autoValue_SendRequest$Builder.f27954e;
        TransportRuntime transportRuntime = this.f27981e;
        Scheduler scheduler = transportRuntime.f27985c;
        TransportContext transportContextE = transportContext2.e(event2.d());
        AutoValue_EventInternal.Builder builder = (AutoValue_EventInternal.Builder) EventInternal.a();
        builder.d = Long.valueOf(transportRuntime.f27983a.a());
        builder.f27946e = Long.valueOf(transportRuntime.f27984b.a());
        builder.k(str);
        builder.f27945c = new EncodedPayload(encoding, (byte[]) transformer2.apply(event2.c()));
        builder.f27944b = event2.a();
        if (event2.e() != null && event2.e().a() != null) {
            builder.g = event2.e().a();
        }
        if (event2.b() != null) {
            EventContext eventContextB = event2.b();
            if (eventContextB.c() != null) {
                builder.f27948h = eventContextB.c();
            }
            if (eventContextB.a() != null) {
                builder.f27949i = eventContextB.a();
            }
            if (eventContextB.b() != null) {
                builder.f27950j = eventContextB.b();
            }
        }
        scheduler.a(transportContextE, builder.b(), transportScheduleCallback);
    }

    @Override // com.google.android.datatransport.Transport
    public final void b(Event event) {
        a(event, new b21(9));
    }
}
