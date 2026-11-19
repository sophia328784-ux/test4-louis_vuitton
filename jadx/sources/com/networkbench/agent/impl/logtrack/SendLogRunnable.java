package com.networkbench.agent.impl.logtrack;

import android.text.TextUtils;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public abstract class SendLogRunnable implements Runnable {
    public static final int FINISH = 10002;
    public static final int SENDING = 10001;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private h f37455a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private OnSendLogCallBackListener f37456b;

    public interface OnSendLogCallBackListener {
        void onCallBack(int i2);
    }

    public void a(h hVar) {
        this.f37455a = hVar;
    }

    public void finish() {
        OnSendLogCallBackListener onSendLogCallBackListener = this.f37456b;
        if (onSendLogCallBackListener != null) {
            onSendLogCallBackListener.onCallBack(FINISH);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        h hVar = this.f37455a;
        if (hVar == null || TextUtils.isEmpty(hVar.f37505b)) {
            finish();
        } else if (TextUtils.isEmpty(this.f37455a.f37506c)) {
            finish();
        } else {
            sendLog(new File(this.f37455a.f37506c));
        }
    }

    public abstract void sendLog(File file);

    public void a(OnSendLogCallBackListener onSendLogCallBackListener) {
        this.f37456b = onSendLogCallBackListener;
    }
}
