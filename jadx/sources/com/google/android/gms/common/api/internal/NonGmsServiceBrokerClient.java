package com.google.android.gms.common.api.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Looper;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.IAccountAccessor;
import com.google.android.gms.common.internal.Preconditions;
import defpackage.md;
import java.util.Collections;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public final class NonGmsServiceBrokerClient implements Api.Client, ServiceConnection {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f29041b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f29042c;
    public final ComponentName d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Context f29043e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ConnectionCallbacks f29044f;
    public final com.google.android.gms.internal.base.zao g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final OnConnectionFailedListener f29045h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public IBinder f29046i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f29047j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public String f29048k;

    /* JADX WARN: Code restructure failed: missing block: B:7:0x001e, code lost:
    
        if (r6 != null) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public NonGmsServiceBrokerClient(android.content.Context r2, android.os.Looper r3, java.lang.String r4, java.lang.String r5, android.content.ComponentName r6, com.google.android.gms.common.api.internal.ConnectionCallbacks r7, com.google.android.gms.common.api.internal.OnConnectionFailedListener r8) {
        /*
            r1 = this;
            r1.<init>()
            r0 = 0
            r1.f29047j = r0
            r0 = 0
            r1.f29048k = r0
            r1.f29043e = r2
            com.google.android.gms.internal.base.zao r2 = new com.google.android.gms.internal.base.zao
            r2.<init>(r3)
            r1.g = r2
            r1.f29044f = r7
            r1.f29045h = r8
            if (r4 == 0) goto L1e
            if (r5 == 0) goto L1e
            if (r6 != 0) goto L27
            r6 = r0
            goto L20
        L1e:
            if (r6 == 0) goto L27
        L20:
            r1.f29041b = r4
            r1.f29042c = r5
            r1.d = r6
            return
        L27:
            java.lang.String r1 = "Must specify either package or component, but not both"
            defpackage.md.h(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.internal.NonGmsServiceBrokerClient.<init>(android.content.Context, android.os.Looper, java.lang.String, java.lang.String, android.content.ComponentName, com.google.android.gms.common.api.internal.ConnectionCallbacks, com.google.android.gms.common.api.internal.OnConnectionFailedListener):void");
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final void a(String str) {
        o();
        this.f29048k = str;
        disconnect();
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final boolean b() {
        o();
        return this.f29047j;
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final String c() {
        String str = this.f29041b;
        if (str != null) {
            return str;
        }
        ComponentName componentName = this.d;
        Preconditions.h(componentName);
        return componentName.getPackageName();
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final void d(BaseGmsClient.ConnectionProgressReportCallbacks connectionProgressReportCallbacks) {
        o();
        p();
        if (isConnected()) {
            try {
                a("connect() called when already connected");
            } catch (Exception unused) {
            }
        }
        try {
            Intent intent = new Intent();
            ComponentName componentName = this.d;
            if (componentName != null) {
                intent.setComponent(componentName);
            } else {
                intent.setPackage(this.f29041b).setAction(this.f29042c);
            }
            boolean zBindService = this.f29043e.bindService(intent, this, 4225);
            this.f29047j = zBindService;
            if (!zBindService) {
                this.f29046i = null;
                this.f29045h.onConnectionFailed(new ConnectionResult(16));
            }
            p();
        } catch (SecurityException e2) {
            this.f29047j = false;
            this.f29046i = null;
            throw e2;
        }
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final void disconnect() {
        o();
        p();
        try {
            this.f29043e.unbindService(this);
        } catch (IllegalArgumentException unused) {
        }
        this.f29047j = false;
        this.f29046i = null;
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final boolean e() {
        return false;
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final boolean g() {
        return false;
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final Set h() {
        return Collections.EMPTY_SET;
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final void i(IAccountAccessor iAccountAccessor, Set set) {
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final boolean isConnected() {
        o();
        return this.f29046i != null;
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final void j(BaseGmsClient.SignOutCallbacks signOutCallbacks) {
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final int l() {
        return 0;
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final Feature[] m() {
        return new Feature[0];
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final String n() {
        return this.f29048k;
    }

    public final void o() {
        if (Thread.currentThread() == this.g.getLooper().getThread()) {
            return;
        }
        md.k("This method should only run on the NonGmsServiceBrokerClient's handler thread.");
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, final IBinder iBinder) {
        this.g.post(new Runnable() { // from class: com.google.android.gms.common.api.internal.zacb
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                NonGmsServiceBrokerClient nonGmsServiceBrokerClient = this.zaa;
                IBinder iBinder2 = iBinder;
                nonGmsServiceBrokerClient.f29047j = false;
                nonGmsServiceBrokerClient.f29046i = iBinder2;
                nonGmsServiceBrokerClient.p();
                nonGmsServiceBrokerClient.f29044f.onConnected(new Bundle());
            }
        });
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        this.g.post(new Runnable() { // from class: com.google.android.gms.common.api.internal.zaca
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                NonGmsServiceBrokerClient nonGmsServiceBrokerClient = this.zaa;
                nonGmsServiceBrokerClient.f29047j = false;
                nonGmsServiceBrokerClient.f29046i = null;
                nonGmsServiceBrokerClient.p();
                nonGmsServiceBrokerClient.f29044f.onConnectionSuspended(1);
            }
        });
    }

    public final void p() {
        String.valueOf(this.f29046i);
        String.valueOf(this.f29047j);
    }

    public NonGmsServiceBrokerClient(Context context, Looper looper, ComponentName componentName, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
        this(context, looper, null, null, componentName, connectionCallbacks, onConnectionFailedListener);
    }

    public NonGmsServiceBrokerClient(Context context, Looper looper, String str, String str2, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
        this(context, looper, str, str2, null, connectionCallbacks, onConnectionFailedListener);
    }
}
