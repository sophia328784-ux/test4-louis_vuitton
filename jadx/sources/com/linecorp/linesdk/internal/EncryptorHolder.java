package com.linecorp.linesdk.internal;

import android.content.Context;
import com.linecorp.linesdk.internal.security.encryption.StringAesCipher;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes2.dex */
public abstract class EncryptorHolder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final StringAesCipher f36172a = new StringAesCipher();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static volatile boolean f36173b = false;

    public static class EncryptorInitializationTask implements Runnable {
        private final Context context;

        public EncryptorInitializationTask(Context context) {
            this.context = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            EncryptorHolder.f36172a.e(this.context);
        }
    }

    public static void a(Context context) {
        if (f36173b) {
            return;
        }
        f36173b = true;
        Executors.newSingleThreadExecutor().execute(new EncryptorInitializationTask(context.getApplicationContext()));
    }
}
