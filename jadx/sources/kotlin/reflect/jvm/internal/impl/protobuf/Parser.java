package kotlin.reflect.jvm.internal.impl.protobuf;

import java.io.InputStream;

/* JADX INFO: loaded from: classes4.dex */
public interface Parser<MessageType> {
    Object a(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite);

    MessageLite b(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite);
}
