package kotlin.reflect.jvm.internal.impl.metadata;

import java.io.IOException;
import kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite;
import kotlin.reflect.jvm.internal.impl.protobuf.AbstractParser;
import kotlin.reflect.jvm.internal.impl.protobuf.ByteString;
import kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream;
import kotlin.reflect.jvm.internal.impl.protobuf.CodedOutputStream;
import kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;
import kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException;
import kotlin.reflect.jvm.internal.impl.protobuf.MessageLite;
import kotlin.reflect.jvm.internal.impl.protobuf.Parser;
import kotlin.reflect.jvm.internal.impl.protobuf.UninitializedMessageException;

/* JADX INFO: loaded from: classes4.dex */
public final class ProtoBuf$CompilerPluginData extends GeneratedMessageLite implements ProtoBuf$CompilerPluginDataOrBuilder {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final ProtoBuf$CompilerPluginData f73342h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final Parser f73343i = new AnonymousClass1();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ByteString f73344b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f73345c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public ByteString f73346e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public byte f73347f;
    public int g;

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$CompilerPluginData$1, reason: invalid class name */
    public static class AnonymousClass1 extends AbstractParser<ProtoBuf$CompilerPluginData> {
        @Override // kotlin.reflect.jvm.internal.impl.protobuf.Parser
        public final Object a(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
            return new ProtoBuf$CompilerPluginData(codedInputStream);
        }
    }

    public static final class Builder extends GeneratedMessageLite.Builder<ProtoBuf$CompilerPluginData, Builder> implements ProtoBuf$CompilerPluginDataOrBuilder {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f73348c;
        public int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public ByteString f73349e = ByteString.f73706b;

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite.Builder
        public final MessageLite build() {
            ProtoBuf$CompilerPluginData protoBuf$CompilerPluginDataJ = j();
            if (protoBuf$CompilerPluginDataJ.a()) {
                return protoBuf$CompilerPluginDataJ;
            }
            throw new UninitializedMessageException(protoBuf$CompilerPluginDataJ);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite.Builder
        public final Object clone() {
            Builder builder = new Builder();
            builder.k(j());
            return builder;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite.Builder
        /* JADX INFO: renamed from: g */
        public final AbstractMessageLite.Builder clone() {
            Builder builder = new Builder();
            builder.k(j());
            return builder;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite.Builder
        /* JADX INFO: renamed from: h */
        public final /* bridge */ /* synthetic */ AbstractMessageLite.Builder n(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
            l(codedInputStream, extensionRegistryLite);
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.Builder
        public final /* bridge */ /* synthetic */ GeneratedMessageLite.Builder i(GeneratedMessageLite generatedMessageLite) {
            k((ProtoBuf$CompilerPluginData) generatedMessageLite);
            return this;
        }

        public final ProtoBuf$CompilerPluginData j() {
            ProtoBuf$CompilerPluginData protoBuf$CompilerPluginData = new ProtoBuf$CompilerPluginData(this);
            int i2 = this.f73348c;
            int i3 = (i2 & 1) != 1 ? 0 : 1;
            protoBuf$CompilerPluginData.d = this.d;
            if ((i2 & 2) == 2) {
                i3 |= 2;
            }
            protoBuf$CompilerPluginData.f73346e = this.f73349e;
            protoBuf$CompilerPluginData.f73345c = i3;
            return protoBuf$CompilerPluginData;
        }

        public final void k(ProtoBuf$CompilerPluginData protoBuf$CompilerPluginData) {
            if (protoBuf$CompilerPluginData == ProtoBuf$CompilerPluginData.f73342h) {
                return;
            }
            int i2 = protoBuf$CompilerPluginData.f73345c;
            if ((i2 & 1) == 1) {
                int i3 = protoBuf$CompilerPluginData.d;
                this.f73348c = 1 | this.f73348c;
                this.d = i3;
            }
            if ((i2 & 2) == 2) {
                ByteString byteString = protoBuf$CompilerPluginData.f73346e;
                byteString.getClass();
                this.f73348c = 2 | this.f73348c;
                this.f73349e = byteString;
            }
            this.f73731b = this.f73731b.b(protoBuf$CompilerPluginData.f73344b);
        }

        /* JADX WARN: Code duplicated, block: B:14:0x001d  */
        public final void l(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
            ProtoBuf$CompilerPluginData protoBuf$CompilerPluginData = null;
            try {
                try {
                    ((AnonymousClass1) ProtoBuf$CompilerPluginData.f73343i).getClass();
                    k(new ProtoBuf$CompilerPluginData(codedInputStream));
                } catch (InvalidProtocolBufferException e2) {
                    ProtoBuf$CompilerPluginData protoBuf$CompilerPluginData2 = (ProtoBuf$CompilerPluginData) e2.f73743b;
                    try {
                        throw e2;
                    } catch (Throwable th) {
                        th = th;
                        protoBuf$CompilerPluginData = protoBuf$CompilerPluginData2;
                        if (protoBuf$CompilerPluginData != null) {
                            k(protoBuf$CompilerPluginData);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (protoBuf$CompilerPluginData != null) {
                    k(protoBuf$CompilerPluginData);
                }
                throw th;
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite.Builder, kotlin.reflect.jvm.internal.impl.protobuf.MessageLite.Builder
        public final /* bridge */ /* synthetic */ MessageLite.Builder n(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
            l(codedInputStream, extensionRegistryLite);
            return this;
        }
    }

    static {
        ProtoBuf$CompilerPluginData protoBuf$CompilerPluginData = new ProtoBuf$CompilerPluginData();
        f73342h = protoBuf$CompilerPluginData;
        protoBuf$CompilerPluginData.d = 0;
        protoBuf$CompilerPluginData.f73346e = ByteString.f73706b;
    }

    public ProtoBuf$CompilerPluginData(CodedInputStream codedInputStream) {
        this.f73347f = (byte) -1;
        this.g = -1;
        boolean z = false;
        this.d = 0;
        this.f73346e = ByteString.f73706b;
        ByteString.Output output = new ByteString.Output();
        CodedOutputStream codedOutputStreamJ = CodedOutputStream.j(output, 1);
        while (!z) {
            try {
                try {
                    try {
                        int iO = codedInputStream.o();
                        if (iO != 0) {
                            if (iO == 8) {
                                this.f73345c |= 1;
                                this.d = codedInputStream.l();
                            } else if (iO == 18) {
                                this.f73345c |= 2;
                                this.f73346e = codedInputStream.f();
                            } else if (!codedInputStream.r(iO, codedOutputStreamJ)) {
                            }
                        }
                        z = true;
                    } catch (InvalidProtocolBufferException e2) {
                        e2.f73743b = this;
                        throw e2;
                    }
                } catch (IOException e3) {
                    InvalidProtocolBufferException invalidProtocolBufferException = new InvalidProtocolBufferException(e3.getMessage());
                    invalidProtocolBufferException.f73743b = this;
                    throw invalidProtocolBufferException;
                }
            } catch (Throwable th) {
                try {
                    codedOutputStreamJ.k();
                } catch (IOException unused) {
                } finally {
                    this.f73344b = output.j();
                }
                throw th;
            }
        }
        try {
            codedOutputStreamJ.k();
        } catch (IOException unused2) {
        } finally {
            this.f73344b = output.j();
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLiteOrBuilder
    public final boolean a() {
        byte b2 = this.f73347f;
        if (b2 == 1) {
            return true;
        }
        if (b2 == 0) {
            return false;
        }
        int i2 = this.f73345c;
        if ((i2 & 1) != 1) {
            this.f73347f = (byte) 0;
            return false;
        }
        if ((i2 & 2) == 2) {
            this.f73347f = (byte) 1;
            return true;
        }
        this.f73347f = (byte) 0;
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite
    public final MessageLite.Builder b() {
        Builder builder = new Builder();
        builder.k(this);
        return builder;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite
    public final int c() {
        int i2 = this.g;
        if (i2 != -1) {
            return i2;
        }
        int iB = (this.f73345c & 1) == 1 ? CodedOutputStream.b(1, this.d) : 0;
        if ((this.f73345c & 2) == 2) {
            ByteString byteString = this.f73346e;
            iB += byteString.size() + CodedOutputStream.f(byteString.size()) + CodedOutputStream.h(2);
        }
        int size = this.f73344b.size() + iB;
        this.g = size;
        return size;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite
    public final MessageLite.Builder d() {
        return new Builder();
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite
    public final void e(CodedOutputStream codedOutputStream) {
        c();
        if ((this.f73345c & 1) == 1) {
            codedOutputStream.m(1, this.d);
        }
        if ((this.f73345c & 2) == 2) {
            ByteString byteString = this.f73346e;
            codedOutputStream.x(2, 2);
            codedOutputStream.v(byteString.size());
            codedOutputStream.r(byteString);
        }
        codedOutputStream.r(this.f73344b);
    }

    public ProtoBuf$CompilerPluginData() {
        this.f73347f = (byte) -1;
        this.g = -1;
        this.f73344b = ByteString.f73706b;
    }

    public ProtoBuf$CompilerPluginData(Builder builder) {
        this.f73347f = (byte) -1;
        this.g = -1;
        this.f73344b = builder.f73731b;
    }
}
