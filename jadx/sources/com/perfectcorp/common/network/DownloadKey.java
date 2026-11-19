package com.perfectcorp.common.network;

import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public abstract class DownloadKey {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final DownloadTask.Key f39305a = new DownloadTask.Key() { // from class: com.perfectcorp.common.network.DownloadKey.1

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Object f39306a = new Object();

        public final boolean equals(Object obj) {
            return obj == this;
        }

        public final int hashCode() {
            return this.f39306a.hashCode();
        }

        public final String toString() {
            return "NULL";
        }
    };

    public static class Guid extends DownloadTask.Key {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f39307a;

        public Guid(String str) {
            Objects.requireNonNull(str);
            this.f39307a = str;
        }

        public final boolean equals(Object obj) {
            if (obj instanceof Guid) {
                return this.f39307a.equals(((Guid) obj).f39307a);
            }
            return false;
        }

        public final int hashCode() {
            return this.f39307a.hashCode();
        }

        public final String toString() {
            return this.f39307a;
        }
    }
}
