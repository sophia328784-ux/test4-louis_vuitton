package com.google.crypto.tink.shaded.protobuf;

import defpackage.mt;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes2.dex */
@CheckReturnValue
final class ManifestSchemaFactory implements SchemaFactory {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final AnonymousClass1 f34203b = new AnonymousClass1();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CompositeMessageInfoFactory f34204a;

    /* JADX INFO: renamed from: com.google.crypto.tink.shaded.protobuf.ManifestSchemaFactory$1, reason: invalid class name */
    public class AnonymousClass1 implements MessageInfoFactory {
        @Override // com.google.crypto.tink.shaded.protobuf.MessageInfoFactory
        public final MessageInfo a(Class cls) {
            throw new IllegalStateException("This should never be called.");
        }

        @Override // com.google.crypto.tink.shaded.protobuf.MessageInfoFactory
        public final boolean b(Class cls) {
            return false;
        }
    }

    public static class CompositeMessageInfoFactory implements MessageInfoFactory {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public MessageInfoFactory[] f34205a;

        @Override // com.google.crypto.tink.shaded.protobuf.MessageInfoFactory
        public final MessageInfo a(Class cls) {
            for (MessageInfoFactory messageInfoFactory : this.f34205a) {
                if (messageInfoFactory.b(cls)) {
                    return messageInfoFactory.a(cls);
                }
            }
            mt.i("No factory is available for message type: ".concat(cls.getName()));
            return null;
        }

        @Override // com.google.crypto.tink.shaded.protobuf.MessageInfoFactory
        public final boolean b(Class cls) {
            for (MessageInfoFactory messageInfoFactory : this.f34205a) {
                if (messageInfoFactory.b(cls)) {
                    return true;
                }
            }
            return false;
        }
    }

    public ManifestSchemaFactory() {
        MessageInfoFactory messageInfoFactory;
        try {
            messageInfoFactory = (MessageInfoFactory) Class.forName("com.google.crypto.tink.shaded.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", null).invoke(null, null);
        } catch (Exception unused) {
            messageInfoFactory = f34203b;
        }
        MessageInfoFactory[] messageInfoFactoryArr = {GeneratedMessageInfoFactory.f34186a, messageInfoFactory};
        CompositeMessageInfoFactory compositeMessageInfoFactory = new CompositeMessageInfoFactory();
        compositeMessageInfoFactory.f34205a = messageInfoFactoryArr;
        Charset charset = Internal.f34190a;
        this.f34204a = compositeMessageInfoFactory;
    }
}
