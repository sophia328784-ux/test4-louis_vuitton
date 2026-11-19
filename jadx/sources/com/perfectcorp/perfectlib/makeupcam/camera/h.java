package com.perfectcorp.perfectlib.makeupcam.camera;

import java.util.TimerTask;

/* JADX INFO: loaded from: classes3.dex */
final class h extends TimerTask {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ g f40892a;

    public h(g gVar) {
        this.f40892a = gVar;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public final void run() {
        g gVar = this.f40892a;
        gVar.f40887a.post(gVar.f40888b);
    }
}
