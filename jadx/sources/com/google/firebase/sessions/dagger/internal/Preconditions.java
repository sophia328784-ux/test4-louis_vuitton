package com.google.firebase.sessions.dagger.internal;

import defpackage.no0;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Preconditions {
    public static void a(Class cls, Object obj) {
        if (obj != null) {
            return;
        }
        no0.l(cls.getCanonicalName(), " must be set");
    }
}
