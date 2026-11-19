package com.google.crypto.tink.shaded.protobuf;

import defpackage.md;
import defpackage.r81;

/* JADX INFO: loaded from: classes2.dex */
class GeneratedMessageInfoFactory implements MessageInfoFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final GeneratedMessageInfoFactory f34186a = new GeneratedMessageInfoFactory();

    @Override // com.google.crypto.tink.shaded.protobuf.MessageInfoFactory
    public final MessageInfo a(Class cls) {
        if (!GeneratedMessageLite.class.isAssignableFrom(cls)) {
            md.n("Unsupported message type: ".concat(cls.getName()));
            return null;
        }
        try {
            return (MessageInfo) GeneratedMessageLite.r(cls.asSubclass(GeneratedMessageLite.class)).o(GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO);
        } catch (Exception e2) {
            r81.g("Unable to get message info for ".concat(cls.getName()), e2);
            return null;
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.MessageInfoFactory
    public final boolean b(Class cls) {
        return GeneratedMessageLite.class.isAssignableFrom(cls);
    }
}
