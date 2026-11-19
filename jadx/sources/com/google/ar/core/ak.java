package com.google.ar.core;

import android.app.PendingIntent;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import com.google.ar.core.exceptions.UnavailableDeviceNotCompatibleException;
import com.google.ar.core.exceptions.UnavailableUserDeclinedInstallationException;

/* JADX INFO: loaded from: classes2.dex */
abstract class ak {
    public static PendingIntent a(Context context) {
        try {
            Bundle bundleCall = context.getContentResolver().call(new Uri.Builder().scheme("content").authority("com.google.ar.core.services.arcorecontentprovider").path("").build(), "getSetupIntent", context.getPackageName(), (Bundle) null);
            if (bundleCall != null) {
                PendingIntent pendingIntent = (PendingIntent) bundleCall.getParcelable("intent");
                if (pendingIntent != null) {
                    return pendingIntent;
                }
                String string = bundleCall.getString("exceptionType", "");
                if (!string.isEmpty()) {
                    if (string.equals(UnavailableDeviceNotCompatibleException.class.getName())) {
                        throw new UnavailableDeviceNotCompatibleException();
                    }
                    if (string.equals(UnavailableUserDeclinedInstallationException.class.getName())) {
                        throw new UnavailableUserDeclinedInstallationException();
                    }
                    Class<? extends U> clsAsSubclass = Class.forName(string).asSubclass(RuntimeException.class);
                    String string2 = bundleCall.getString("exceptionText", null);
                    if (string2 != null) {
                        throw ((RuntimeException) clsAsSubclass.getConstructor(String.class).newInstance(string2));
                    }
                    throw ((RuntimeException) clsAsSubclass.getConstructor(null).newInstance(null));
                }
            }
        } catch (ReflectiveOperationException | RuntimeException unused) {
        }
        return null;
    }
}
