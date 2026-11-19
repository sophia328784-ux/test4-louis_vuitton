package com.perfectcorp.thirdparty.com.google.common.hash;

import java.util.zip.Checksum;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Hashing {

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static abstract class a implements h<Checksum> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final a f42359a = new g();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final HashFunction f42360b;

        public a() {
            super("CRC_32", 0);
            this.f42360b = new d();
        }
    }

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final HashFunction f42361a = new i();
    }

    public static HashFunction a() {
        return a.f42359a.f42360b;
    }

    public static HashFunction b() {
        return b.f42361a;
    }
}
