package com.batch.android;

import defpackage.md;

/* JADX INFO: loaded from: classes2.dex */
public class UserAction {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f22856a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private UserActionRunnable f22857b;

    public UserAction(String str, UserActionRunnable userActionRunnable) {
        if (str == null) {
            md.n("identifier cannot be null");
            throw null;
        }
        if ("".equals(str.trim())) {
            md.n("identifier cannot be empty");
            throw null;
        }
        if (userActionRunnable == null) {
            md.n("runnable cannot be null");
            throw null;
        }
        this.f22856a = str;
        this.f22857b = userActionRunnable;
    }

    public String getIdentifier() {
        return this.f22856a;
    }

    public UserActionRunnable getRunnable() {
        return this.f22857b;
    }
}
