package androidx.datastore.preferences.protobuf;

/* JADX INFO: loaded from: classes.dex */
@CheckReturnValue
public interface MessageLite extends MessageLiteOrBuilder {

    public interface Builder extends MessageLiteOrBuilder, Cloneable {
        GeneratedMessageLite o();
    }

    GeneratedMessageLite.Builder b();

    int c();

    GeneratedMessageLite.Builder d();

    ByteString e();

    Parser g();

    void h(CodedOutputStream codedOutputStream);
}
