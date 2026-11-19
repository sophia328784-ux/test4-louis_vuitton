package com.android.wiimu.upnp.impl;

import defpackage.tr;
import org.teleal.cling.model.action.ActionInvocation;
import org.teleal.cling.model.message.UpnpResponse;

/* JADX INFO: loaded from: classes.dex */
public class c extends Exception {
    public c() {
    }

    public static c a(String str, String str2) {
        return a(str + " with " + str2 + ",  is not implemented");
    }

    private static String b(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str) {
        if (actionInvocation.d == null) {
            return tr.g("Have occurred WiimuActionFailureException : ", str);
        }
        if (upnpResponse == null) {
            return "";
        }
        return upnpResponse.a() + ";" + str + ";" + actionInvocation.d;
    }

    public c(String str, Throwable th) {
        super(str, th);
    }

    public c(String str) {
        super(str);
    }

    public c(Throwable th) {
        super(th);
    }

    public static c a(String str) {
        return new c(str);
    }

    public static c a(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str) {
        return new c(b(actionInvocation, upnpResponse, str));
    }
}
