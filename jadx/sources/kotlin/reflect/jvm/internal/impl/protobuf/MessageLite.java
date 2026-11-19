package kotlin.reflect.jvm.internal.impl.protobuf;

/* JADX INFO: loaded from: classes4.dex */
public interface MessageLite extends MessageLiteOrBuilder {

    public interface Builder extends Cloneable, MessageLiteOrBuilder {
        MessageLite build();

        Builder n(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite);
    }

    Builder b();

    int c();

    Builder d();

    void e(CodedOutputStream codedOutputStream);
}
