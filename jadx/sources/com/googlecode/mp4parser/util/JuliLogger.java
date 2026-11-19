package com.googlecode.mp4parser.util;

import java.util.logging.Level;

/* JADX INFO: loaded from: classes2.dex */
public class JuliLogger extends Logger {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.util.logging.Logger f35732a;

    public JuliLogger(String str) {
        this.f35732a = java.util.logging.Logger.getLogger(str);
    }

    @Override // com.googlecode.mp4parser.util.Logger
    public final void b(String str) {
        this.f35732a.log(Level.FINE, str);
    }
}
