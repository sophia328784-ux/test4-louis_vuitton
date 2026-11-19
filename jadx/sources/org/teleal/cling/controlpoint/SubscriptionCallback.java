package org.teleal.cling.controlpoint;

import defpackage.cj;
import java.beans.PropertyChangeSupport;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Objects;
import java.util.logging.Level;
import java.util.logging.Logger;
import k.a;
import org.teleal.cling.model.gena.CancelReason;
import org.teleal.cling.model.gena.GENASubscription;
import org.teleal.cling.model.gena.LocalGENASubscription;
import org.teleal.cling.model.gena.RemoteGENASubscription;
import org.teleal.cling.model.message.UpnpResponse;
import org.teleal.cling.model.meta.LocalService;
import org.teleal.cling.model.meta.RemoteService;
import org.teleal.cling.model.meta.Service;
import org.teleal.common.util.Exceptions;

/* JADX INFO: loaded from: classes5.dex */
public abstract class SubscriptionCallback implements Runnable {
    protected static Logger log = Logger.getLogger(SubscriptionCallback.class.getName());
    private ControlPoint controlPoint;
    protected final Integer requestedDurationSeconds;
    protected final Service service;
    private GENASubscription subscription;

    public SubscriptionCallback(Service service) {
        this.service = service;
        this.requestedDurationSeconds = 1800;
    }

    public static String createDefaultFailureMessage(UpnpResponse upnpResponse, Exception exc) {
        if (upnpResponse != null) {
            return "Subscription failed:  HTTP response was: ".concat(upnpResponse.a());
        }
        return exc != null ? cj.j("Subscription failed:  Exception occured: ", exc) : "Subscription failed:  No response received.";
    }

    private void endLocalSubscription(LocalGENASubscription localGENASubscription) {
        log.fine("Removing local subscription and ending it in callback: " + localGENASubscription);
        getControlPoint().b().f(localGENASubscription);
        localGENASubscription.f(null);
    }

    private void endRemoteSubscription(RemoteGENASubscription remoteGENASubscription) {
        log.fine("Ending remote subscription: " + remoteGENASubscription);
        getControlPoint().getConfiguration().o().execute(getControlPoint().a().d(remoteGENASubscription));
    }

    private void establishLocalSubscription(LocalService localService) {
        LocalGENASubscription localGENASubscription;
        if (getControlPoint().b().a(localService.f78482e.f78444a.f78458a) == null) {
            log.fine("Local device service is currently not registered, failing subscription immediately");
            failed(null, null, new IllegalStateException("Local device is not registered"));
            return;
        }
        try {
            List list = Collections.EMPTY_LIST;
            localGENASubscription = new LocalGENASubscription(this, localService) { // from class: org.teleal.cling.controlpoint.SubscriptionCallback.1

                /* JADX INFO: renamed from: j, reason: collision with root package name */
                public final /* synthetic */ SubscriptionCallback f78370j;

                {
                    List list2 = Collections.EMPTY_LIST;
                    this.f78370j = this;
                }

                @Override // org.teleal.cling.model.gena.GENASubscription
                public final void a() {
                    synchronized (this.f78370j) {
                        this.f78370j.setSubscription(this);
                        this.f78370j.established(this);
                    }
                }

                @Override // org.teleal.cling.model.gena.GENASubscription
                public final void b() {
                    synchronized (this.f78370j) {
                        SubscriptionCallback.log.fine("Local service state updated, notifying callback, sequence is: " + c());
                        this.f78370j.eventReceived(this);
                        h();
                    }
                }

                @Override // org.teleal.cling.model.gena.LocalGENASubscription
                public final void g(CancelReason cancelReason) {
                    synchronized (this.f78370j) {
                        this.f78370j.setSubscription(null);
                        this.f78370j.ended(this, cancelReason, null);
                    }
                }
            };
            try {
                log.fine("Local device service is currently registered, also registering subscription");
                getControlPoint().b().d(localGENASubscription);
                log.fine("Notifying subscription callback of local subscription availablity");
                synchronized (localGENASubscription) {
                    localGENASubscription.a();
                }
                log.fine("Simulating first initial event for local subscription callback, sequence: " + localGENASubscription.c());
                eventReceived(localGENASubscription);
                localGENASubscription.h();
                log.fine("Starting to monitor state changes of local service");
                synchronized (localGENASubscription) {
                    ((LocalService) localGENASubscription.d()).d();
                    throw null;
                }
            } catch (Exception e2) {
                e = e2;
                log.fine("Local callback creation failed: " + e.toString());
                log.log(Level.FINE, "Exception root cause: ", Exceptions.a(e));
                if (localGENASubscription != null) {
                    getControlPoint().b().f(localGENASubscription);
                }
                failed(localGENASubscription, null, e);
            }
        } catch (Exception e3) {
            e = e3;
            localGENASubscription = null;
        }
    }

    private void establishRemoteSubscription(RemoteService remoteService) {
        getControlPoint().a().b(new RemoteGENASubscription(remoteService, this.requestedDurationSeconds.intValue()) { // from class: org.teleal.cling.controlpoint.SubscriptionCallback.2
            {
                new PropertyChangeSupport(this);
            }

            @Override // org.teleal.cling.model.gena.GENASubscription
            public final void a() {
                synchronized (SubscriptionCallback.this) {
                    SubscriptionCallback.this.setSubscription(this);
                    SubscriptionCallback.this.established(this);
                }
            }

            @Override // org.teleal.cling.model.gena.GENASubscription
            public final void b() {
                synchronized (SubscriptionCallback.this) {
                    SubscriptionCallback.this.eventReceived(this);
                }
            }

            @Override // org.teleal.cling.model.gena.RemoteGENASubscription
            public final void g(CancelReason cancelReason, UpnpResponse upnpResponse) {
                synchronized (SubscriptionCallback.this) {
                    SubscriptionCallback.this.setSubscription(null);
                    SubscriptionCallback.this.ended(this, cancelReason, upnpResponse);
                }
            }

            @Override // org.teleal.cling.model.gena.RemoteGENASubscription
            public final void h(int i2) {
                synchronized (SubscriptionCallback.this) {
                    SubscriptionCallback.this.eventsMissed(this, i2);
                }
            }

            @Override // org.teleal.cling.model.gena.RemoteGENASubscription
            public final void i(UpnpResponse upnpResponse) {
                Objects.toString(upnpResponse);
                HashMap map = a.f71507a;
                synchronized (SubscriptionCallback.this) {
                    Objects.toString(upnpResponse);
                    SubscriptionCallback.this.setSubscription(null);
                    Objects.toString(upnpResponse);
                    SubscriptionCallback.this.failed(this, upnpResponse, null);
                    Objects.toString(upnpResponse);
                }
            }
        }).run();
    }

    public synchronized void end() {
        try {
            GENASubscription gENASubscription = this.subscription;
            if (gENASubscription == null) {
                return;
            }
            if (gENASubscription instanceof LocalGENASubscription) {
                endLocalSubscription((LocalGENASubscription) gENASubscription);
            } else if (gENASubscription instanceof RemoteGENASubscription) {
                endRemoteSubscription((RemoteGENASubscription) gENASubscription);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public abstract void ended(GENASubscription gENASubscription, CancelReason cancelReason, UpnpResponse upnpResponse);

    public abstract void established(GENASubscription gENASubscription);

    public abstract void eventReceived(GENASubscription gENASubscription);

    public abstract void eventsMissed(GENASubscription gENASubscription, int i2);

    public void failed(GENASubscription gENASubscription, UpnpResponse upnpResponse, Exception exc) {
        Objects.toString(upnpResponse);
        HashMap map = a.f71507a;
        failed(gENASubscription, upnpResponse, exc, createDefaultFailureMessage(upnpResponse, exc));
        Objects.toString(upnpResponse);
    }

    public abstract void failed(GENASubscription gENASubscription, UpnpResponse upnpResponse, Exception exc, String str);

    public synchronized ControlPoint getControlPoint() {
        return this.controlPoint;
    }

    public Service getService() {
        return this.service;
    }

    public synchronized GENASubscription getSubscription() {
        return this.subscription;
    }

    @Override // java.lang.Runnable
    public synchronized void run() {
        try {
            Objects.toString(this.service.f78480b);
            HashMap map = a.f71507a;
            if (getControlPoint() == null) {
                throw new IllegalStateException("Callback must be executed through ControlPoint");
            }
            if (getService() instanceof LocalService) {
                establishLocalSubscription((LocalService) this.service);
            } else if (getService() instanceof RemoteService) {
                establishRemoteSubscription((RemoteService) this.service);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void setControlPoint(ControlPoint controlPoint) {
        this.controlPoint = controlPoint;
    }

    public synchronized void setSubscription(GENASubscription gENASubscription) {
        this.subscription = gENASubscription;
    }

    public String toString() {
        return "(SubscriptionCallback) " + getService();
    }

    public SubscriptionCallback(Service service, int i2) {
        this.service = service;
        this.requestedDurationSeconds = Integer.valueOf(i2);
    }
}
