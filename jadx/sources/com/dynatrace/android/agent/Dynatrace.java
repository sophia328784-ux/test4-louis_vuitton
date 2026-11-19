package com.dynatrace.android.agent;

import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
public class Dynatrace {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Object f27305a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final AtomicBoolean f27306b;

    static {
        String str = AdkSettings.f27246h;
        boolean z = Global.f27307a;
        f27305a = new Object();
        f27306b = new AtomicBoolean(false);
    }

    public static DTXAction a(String str) {
        return !Global.f27308b.get() ? NullAction.f27309a : DTXActionImpl.q(str, null);
    }

    public static DTXAction b(String str, DTXAction dTXAction) {
        return (!Global.f27308b.get() || (dTXAction instanceof NullAction)) ? NullAction.f27309a : DTXActionImpl.q(str, dTXAction);
    }

    public static boolean c() {
        if (Global.f27308b.get()) {
            return Core.f27288k.f27270k.get();
        }
        return false;
    }
}
