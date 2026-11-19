package io.reactivex.rxjava3.internal.util;

import defpackage.d21;
import io.reactivex.rxjava3.exceptions.ProtocolViolationException;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;

/* JADX INFO: loaded from: classes4.dex */
public abstract class EndConsumerHelper {
    public static void a(Class cls) {
        String name = cls.getName();
        RxJavaPlugins.b(new ProtocolViolationException(d21.l("It is not allowed to subscribe with a(n) ", name, " multiple times. Please create a fresh instance of ", name, " and subscribe that to the target source instead.")));
    }
}
