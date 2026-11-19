package com.google.firebase.messaging;

import android.content.SharedPreferences;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class j implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f35333b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f35334c;

    public /* synthetic */ j(Object obj, int i2) {
        this.f35333b = i2;
        this.f35334c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f35333b;
        Object obj = this.f35334c;
        switch (i2) {
            case 0:
                SharedPreferencesQueue sharedPreferencesQueue = (SharedPreferencesQueue) obj;
                synchronized (sharedPreferencesQueue.d) {
                    SharedPreferences.Editor editorEdit = sharedPreferencesQueue.f35280a.edit();
                    String str = sharedPreferencesQueue.f35281b;
                    StringBuilder sb = new StringBuilder();
                    Iterator it = sharedPreferencesQueue.d.iterator();
                    while (it.hasNext()) {
                        sb.append((String) it.next());
                        sb.append(sharedPreferencesQueue.f35282c);
                    }
                    editorEdit.putString(str, sb.toString()).apply();
                    break;
                }
                return;
            default:
                WithinAppServiceConnection.BindRequest bindRequest = (WithinAppServiceConnection.BindRequest) obj;
                bindRequest.f35313a.getAction();
                bindRequest.f35314b.d(null);
                return;
        }
    }
}
