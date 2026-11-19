package com.android.wiimu.upnp.impl;

import com.android.wiimu.upnp.IWiimuAVTransport;
import com.android.wiimu.upnp.IWiimuPlayQueue;
import com.android.wiimu.upnp.IWiimuRenderingControl;
import com.android.wiimu.upnp.sucription.IWiimuSubscriptionEvent;
import com.linkplay.core.clingx.LPSearchControlPoint;
import org.teleal.cling.android.AndroidUpnpService;
import org.teleal.cling.controlpoint.ActionCallback;
import org.teleal.cling.controlpoint.ActionCallbackNotResponse;
import org.teleal.cling.controlpoint.ControlPointImpl;
import org.teleal.cling.controlpoint.SubscriptionCallback;

/* JADX INFO: loaded from: classes.dex */
public class h {
    public static void a(ActionCallback actionCallback) {
        LPSearchControlPoint.getInstance();
        AndroidUpnpService androidUpnpService = LPSearchControlPoint.upnpservice;
        if (androidUpnpService == null) {
            throw new i("AndroidUpnpService  is null , please make sure it initialized");
        }
        if (actionCallback == null) {
            throw new i("ActionCallback is null,please input the correct ActionCallback");
        }
        ControlPointImpl controlPointImplA = androidUpnpService.a();
        controlPointImplA.getClass();
        actionCallback.setControlPoint(controlPointImplA);
        controlPointImplA.f78367a.o().execute(actionCallback);
    }

    public static IWiimuPlayQueue b() {
        return j.a();
    }

    public static IWiimuRenderingControl c() {
        return k.a();
    }

    public static IWiimuSubscriptionEvent d() {
        return com.android.wiimu.upnp.sucription.c.a();
    }

    public static void a(IWiimuAVTransport iWiimuAVTransport) {
        g.b().a(iWiimuAVTransport);
    }

    public static void a(IWiimuRenderingControl iWiimuRenderingControl) {
        k.a().a(iWiimuRenderingControl);
    }

    public static void a(IWiimuPlayQueue iWiimuPlayQueue) {
        j.a().a(iWiimuPlayQueue);
    }

    public static void a(IWiimuSubscriptionEvent iWiimuSubscriptionEvent) {
        com.android.wiimu.upnp.sucription.c.a().a(iWiimuSubscriptionEvent);
    }

    public static IWiimuAVTransport a() {
        return g.b();
    }

    public static void a(ActionCallbackNotResponse actionCallbackNotResponse) {
        LPSearchControlPoint.getInstance();
        AndroidUpnpService androidUpnpService = LPSearchControlPoint.upnpservice;
        if (androidUpnpService == null) {
            throw new i("AndroidUpnpService  is null , please make sure it initialized");
        }
        if (actionCallbackNotResponse != null) {
            ControlPointImpl controlPointImplA = androidUpnpService.a();
            controlPointImplA.getClass();
            actionCallbackNotResponse.setControlPoint(controlPointImplA);
            controlPointImplA.f78367a.o().execute(actionCallbackNotResponse);
            return;
        }
        throw new i("ActionCallback is null,please input the correct ActionCallback");
    }

    public static void a(SubscriptionCallback subscriptionCallback) {
        LPSearchControlPoint.getInstance();
        AndroidUpnpService androidUpnpService = LPSearchControlPoint.upnpservice;
        if (androidUpnpService == null) {
            throw new i("AndroidUpnpService  is null , please make sure it initialized");
        }
        if (subscriptionCallback != null) {
            ControlPointImpl controlPointImplA = androidUpnpService.a();
            controlPointImplA.getClass();
            subscriptionCallback.setControlPoint(controlPointImplA);
            controlPointImplA.f78367a.o().execute(subscriptionCallback);
            return;
        }
        throw new i("SubscriptionCallback is null,please input the correct SubscriptionCallback");
    }
}
