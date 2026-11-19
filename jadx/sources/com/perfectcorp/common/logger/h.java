package com.perfectcorp.common.logger;

import java.io.BufferedWriter;
import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
final class h implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ a f39293a;

    public h(a aVar) {
        this.f39293a = aVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        BufferedWriter bufferedWriter = this.f39293a.f39275h;
        if (bufferedWriter != null) {
            try {
                bufferedWriter.flush();
            } catch (IOException unused) {
            }
        }
    }
}
