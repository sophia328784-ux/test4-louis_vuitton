package com.bumptech.glide.util.pool;

import defpackage.md;

/* JADX INFO: loaded from: classes2.dex */
public abstract class StateVerifier {

    public static class DefaultStateVerifier extends StateVerifier {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public volatile boolean f25005a;

        @Override // com.bumptech.glide.util.pool.StateVerifier
        public final void b() {
            if (this.f25005a) {
                md.k("Already released");
            }
        }
    }

    public static StateVerifier a() {
        return new DefaultStateVerifier();
    }

    public abstract void b();
}
