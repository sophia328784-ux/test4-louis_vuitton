package com.bumptech.glide.load.engine;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* JADX INFO: loaded from: classes2.dex */
class ResourceRecycler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f24553a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Handler f24554b = new Handler(Looper.getMainLooper(), new ResourceRecyclerCallback());

    public static final class ResourceRecyclerCallback implements Handler.Callback {
        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            if (message.what != 1) {
                return false;
            }
            ((Resource) message.obj).a();
            return true;
        }
    }

    public final synchronized void a(Resource resource, boolean z) {
        try {
            if (this.f24553a || z) {
                this.f24554b.obtainMessage(1, resource).sendToTarget();
            } else {
                this.f24553a = true;
                resource.a();
                this.f24553a = false;
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
