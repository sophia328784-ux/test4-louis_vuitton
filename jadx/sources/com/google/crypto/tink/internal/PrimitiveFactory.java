package com.google.crypto.tink.internal;

import com.google.crypto.tink.shaded.protobuf.MessageLite;

/* JADX INFO: loaded from: classes2.dex */
public abstract class PrimitiveFactory<PrimitiveT, KeyProtoT extends MessageLite> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Class f34010a;

    public PrimitiveFactory(Class<PrimitiveT> cls) {
        this.f34010a = cls;
    }

    public abstract Object a(MessageLite messageLite);
}
