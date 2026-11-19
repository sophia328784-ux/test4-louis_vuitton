package com.perfectcorp.perfectlib.makeupcam.video;

import android.opengl.EGL14;
import android.opengl.GLES20;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;

/* JADX INFO: loaded from: classes3.dex */
final class b implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ int f41043a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private /* synthetic */ int f41044b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private /* synthetic */ a f41045c;

    public b(a aVar, int i2, int i3) {
        this.f41045c = aVar;
        this.f41043a = i2;
        this.f41044b = i3;
    }

    @Override // java.lang.Runnable
    public final void run() throws ExecutionException, InterruptedException {
        int i2;
        int i3 = this.f41043a;
        if (i3 <= 0 || (i2 = this.f41044b) <= 0) {
            a aVar = this.f41045c;
            int i4 = aVar.g;
            i2 = aVar.f25446h;
            i3 = i4;
        }
        a.i iVar = this.f41045c.p;
        FutureTask futureTask = new FutureTask(new c(iVar, EGL14.eglGetCurrentContext(), i3 - (i3 % 16), i2 - (i2 % 16)), null);
        iVar.f41017a.post(futureTask);
        futureTask.get();
        a aVar2 = this.f41045c;
        aVar2.getClass();
        aVar2.C.getClass();
        a.i iVar2 = aVar2.p;
        if (iVar2 != null) {
            a.j jVar = iVar2.f41017a;
            jVar.sendMessage(jVar.obtainMessage(6, 0));
        }
        a aVar3 = this.f41045c;
        aVar3.k();
        aVar3.t = new int[2];
        aVar3.u = new int[2];
        aVar3.B = new a.l[2];
        int[] iArr = new int[1];
        GLES20.glGetIntegerv(36006, iArr, 0);
        GLES20.glGenFramebuffers(2, aVar3.t, 0);
        GLES20.glGenTextures(2, aVar3.u, 0);
        for (int i5 = 0; i5 < 2; i5++) {
            GLES20.glBindTexture(3553, aVar3.u[i5]);
            a.d dVar = aVar3.C;
            GLES20.glTexImage2D(3553, 0, 6408, dVar.f41012f, dVar.g, 0, 6408, 5121, null);
            GLES20.glTexParameterf(3553, 10240, 9729.0f);
            GLES20.glTexParameterf(3553, 10241, 9729.0f);
            GLES20.glTexParameterf(3553, 10242, 33071.0f);
            GLES20.glTexParameterf(3553, 10243, 33071.0f);
            GLES20.glBindFramebuffer(36160, aVar3.t[i5]);
            GLES20.glFramebufferTexture2D(36160, 36064, 3553, aVar3.u[i5], 0);
            GLES20.glBindTexture(3553, 0);
            GLES20.glBindFramebuffer(36160, iArr[0]);
            aVar3.B[i5] = new a.l(aVar3.t[i5], aVar3.u[i5]);
        }
    }
}
