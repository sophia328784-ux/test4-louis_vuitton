package com.batch.android.dispatcher.firebase;

import android.content.Context;
import com.batch.android.BatchEventDispatcher;
import com.batch.android.eventdispatcher.DispatcherRegistrar;

/* JADX INFO: loaded from: classes.dex */
public class FirebaseRegistrar implements DispatcherRegistrar {
    private static FirebaseDispatcher instance;

    @Override // com.batch.android.eventdispatcher.DispatcherRegistrar
    public BatchEventDispatcher getDispatcher(Context context) {
        if (instance == null) {
            instance = new FirebaseDispatcher(context);
        }
        return instance;
    }
}
