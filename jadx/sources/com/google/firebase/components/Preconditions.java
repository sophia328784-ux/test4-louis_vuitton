package com.google.firebase.components;

import defpackage.r81;

/* JADX INFO: loaded from: classes2.dex */
public final class Preconditions {
    public static void a(Object obj, String str) {
        if (obj != null) {
            return;
        }
        r81.d(str);
    }
}
