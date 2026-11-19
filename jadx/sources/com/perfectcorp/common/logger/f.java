package com.perfectcorp.common.logger;

import java.io.BufferedWriter;
import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
final class f implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ a f39286a;

    public f(a aVar) {
        this.f39286a = aVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        a aVar = this.f39286a;
        ThreadLocal threadLocal = a.f39269j;
        BufferedWriter bufferedWriter = aVar.f39275h;
        if (bufferedWriter != null) {
            try {
                bufferedWriter.flush();
            } catch (IOException unused) {
            }
            try {
                aVar.f39275h.close();
            } catch (IOException unused2) {
            }
            aVar.f39275h = null;
        }
        this.f39286a.g.shutdownNow();
    }
}
