package com.google.firebase.heartbeatinfo;

import com.google.firebase.components.Component;
import defpackage.ym;

/* JADX INFO: loaded from: classes2.dex */
public abstract class HeartBeatConsumerComponent {

    /* JADX INFO: renamed from: com.google.firebase.heartbeatinfo.HeartBeatConsumerComponent$1, reason: invalid class name */
    class AnonymousClass1 implements HeartBeatConsumer {
    }

    public static Component a() {
        AnonymousClass1 anonymousClass1 = new AnonymousClass1();
        Component.Builder builderB = Component.b(HeartBeatConsumer.class);
        builderB.f34386e = 1;
        builderB.f34387f = new ym(anonymousClass1, 0);
        return builderB.b();
    }
}
