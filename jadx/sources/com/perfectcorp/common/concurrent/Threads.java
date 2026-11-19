package com.perfectcorp.common.concurrent;

import com.perfectcorp.common.PfCommons;
import defpackage.md;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Threads {
    public static void a() {
        if (PfCommons.a()) {
            return;
        }
        md.h("You must call this method on the main thread.");
    }

    public static void b() {
        if (PfCommons.a()) {
            md.h("You must call this method on a worker thread.");
        }
    }
}
