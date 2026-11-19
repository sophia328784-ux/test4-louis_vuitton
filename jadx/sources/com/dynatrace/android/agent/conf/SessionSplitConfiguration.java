package com.dynatrace.android.agent.conf;

import defpackage.tr;

/* JADX INFO: loaded from: classes2.dex */
public final class SessionSplitConfiguration {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final SessionSplitConfiguration f27430c = new SessionSplitConfiguration(new Builder());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f27431a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f27432b;

    public SessionSplitConfiguration(Builder builder) {
        this.f27431a = builder.f27433a;
        this.f27432b = builder.f27434b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && SessionSplitConfiguration.class == obj.getClass()) {
            SessionSplitConfiguration sessionSplitConfiguration = (SessionSplitConfiguration) obj;
            if (this.f27431a == sessionSplitConfiguration.f27431a && this.f27432b == sessionSplitConfiguration.f27432b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (this.f27431a * 31) + this.f27432b;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("SessionSplitConfiguration{maxSessionDuration=");
        sb.append(this.f27431a);
        sb.append(", inactivityTimeout=");
        return tr.k(sb, this.f27432b, '}');
    }

    public static class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f27433a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f27434b;

        public Builder() {
            this.f27433a = 360;
            this.f27434b = 600;
        }

        public Builder(SessionSplitConfiguration sessionSplitConfiguration) {
            this.f27433a = sessionSplitConfiguration.f27431a;
            this.f27434b = sessionSplitConfiguration.f27432b;
        }
    }
}
