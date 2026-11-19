package com.google.firebase.analytics.connector;

import com.google.android.gms.common.internal.Preconditions;
import com.google.firebase.DataCollectionDefaultChange;
import com.google.firebase.events.Event;
import com.google.firebase.events.EventHandler;

/* JADX INFO: loaded from: classes2.dex */
final /* synthetic */ class zza implements EventHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zza f34375a = new zza();

    @Override // com.google.firebase.events.EventHandler
    public final void a(Event event) {
        boolean z = ((DataCollectionDefaultChange) event.f35128b).f34328a;
        synchronized (AnalyticsConnectorImpl.class) {
            AnalyticsConnectorImpl analyticsConnectorImpl = AnalyticsConnectorImpl.f34363c;
            Preconditions.h(analyticsConnectorImpl);
            analyticsConnectorImpl.f34364a.f31528a.h(z);
        }
    }
}
