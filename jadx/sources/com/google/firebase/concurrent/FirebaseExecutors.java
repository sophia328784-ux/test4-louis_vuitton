package com.google.firebase.concurrent;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes2.dex */
public abstract class FirebaseExecutors {
    public static Executor a(Executor executor) {
        return new SequentialExecutor(executor);
    }
}
