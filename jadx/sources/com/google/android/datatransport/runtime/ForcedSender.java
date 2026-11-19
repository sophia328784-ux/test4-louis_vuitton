package com.google.android.datatransport.runtime;

import android.util.Log;
import com.google.android.datatransport.Priority;
import com.google.android.datatransport.Transport;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ForcedSender {
    public static void a(Transport transport, Priority priority) {
        if (transport instanceof TransportImpl) {
            TransportRuntime.a().d.a(((TransportImpl) transport).f27978a.e(priority), 1);
        } else if (Log.isLoggable("TRuntime.".concat("ForcedSender"), 5)) {
            String.format("Expected instance of `TransportImpl`, got `%s`.", transport);
        }
    }
}
