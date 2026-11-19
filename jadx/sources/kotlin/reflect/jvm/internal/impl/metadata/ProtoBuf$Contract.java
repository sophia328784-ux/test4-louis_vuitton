package kotlin.reflect.jvm.internal.impl.metadata;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
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
public final class ProtoBuf$Contract extends GeneratedMessageLite implements ProtoBuf$ContractOrBuilder {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final ProtoBuf$Contract f73362f;
    public static final Parser g = new AnonymousClass1();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ByteString f73363b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public List f73364c;
    public byte d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f73365e;

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Contract$1, reason: invalid class name */
    public static class AnonymousClass1 extends AbstractParser<ProtoBuf$Contract> {
        @Override // kotlin.reflect.jvm.internal.impl.protobuf.Parser
        public final Object a(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
            return new ProtoBuf$Contract(codedInputStream, extensionRegistryLite);
        }
    }

    public static final class Builder extends GeneratedMessageLite.Builder<ProtoBuf$Contract, Builder> implements ProtoBuf$ContractOrBuilder {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f73366c;
        public List d = Collections.EMPTY_LIST;

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite.Builder
        public final MessageLite build() {
            ProtoBuf$Contract protoBuf$ContractJ = j();
            if (protoBuf$ContractJ.a()) {
                return protoBuf$ContractJ;
            }
            throw new UninitializedMessageException(protoBuf$ContractJ);
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
            k((ProtoBuf$Contract) generatedMessageLite);
            return this;
        }

        public final ProtoBuf$Contract j() {
            ProtoBuf$Contract protoBuf$Contract = new ProtoBuf$Contract(this);
            if ((this.f73366c & 1) == 1) {
                this.d = Collections.unmodifiableList(this.d);
                this.f73366c &= -2;
            }
            protoBuf$Contract.f73364c = this.d;
            return protoBuf$Contract;
        }

        public final void k(ProtoBuf$Contract protoBuf$Contract) {
            if (protoBuf$Contract == ProtoBuf$Contract.f73362f) {
                return;
            }
            if (!protoBuf$Contract.f73364c.isEmpty()) {
                if (this.d.isEmpty()) {
                    this.d = protoBuf$Contract.f73364c;
                    this.f73366c &= -2;
                } else {
                    if ((this.f73366c & 1) != 1) {
                        this.d = new ArrayList(this.d);
                        this.f73366c |= 1;
                    }
                    this.d.addAll(protoBuf$Contract.f73364c);
                }
            }
            this.f73731b = this.f73731b.b(protoBuf$Contract.f73363b);
        }

        /* JADX WARN: Code duplicated, block: B:14:0x001d  */
        public final void l(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
            ProtoBuf$Contract protoBuf$Contract = null;
            try {
                try {
                    ((AnonymousClass1) ProtoBuf$Contract.g).getClass();
                    k(new ProtoBuf$Contract(codedInputStream, extensionRegistryLite));
                } catch (InvalidProtocolBufferException e2) {
                    ProtoBuf$Contract protoBuf$Contract2 = (ProtoBuf$Contract) e2.f73743b;
                    try {
                        throw e2;
                    } catch (Throwable th) {
                        th = th;
                        protoBuf$Contract = protoBuf$Contract2;
                        if (protoBuf$Contract != null) {
                            k(protoBuf$Contract);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (protoBuf$Contract != null) {
                    k(protoBuf$Contract);
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
        ProtoBuf$Contract protoBuf$Contract = new ProtoBuf$Contract();
        f73362f = protoBuf$Contract;
        protoBuf$Contract.f73364c = Collections.EMPTY_LIST;
    }

    public ProtoBuf$Contract(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
        this.d = (byte) -1;
        this.f73365e = -1;
        this.f73364c = Collections.EMPTY_LIST;
        ByteString.Output output = new ByteString.Output();
        CodedOutputStream codedOutputStreamJ = CodedOutputStream.j(output, 1);
        boolean z = false;
        boolean z2 = false;
        while (!z) {
            try {
                try {
                    int iO = codedInputStream.o();
                    if (iO != 0) {
                        if (iO == 10) {
                            if (!z2) {
                                this.f73364c = new ArrayList();
                                z2 = true;
                            }
                            this.f73364c.add(codedInputStream.h(ProtoBuf$Effect.l, extensionRegistryLite));
                        } else if (!codedInputStream.r(iO, codedOutputStreamJ)) {
                        }
                    }
                    z = true;
                } catch (Throwable th) {
                    if (z2) {
                        this.f73364c = Collections.unmodifiableList(this.f73364c);
                    }
                    try {
                        codedOutputStreamJ.k();
                    } catch (IOException unused) {
                    } finally {
                        this.f73363b = output.j();
                    }
                    throw th;
                }
            } catch (InvalidProtocolBufferException e2) {
                e2.f73743b = this;
                throw e2;
            } catch (IOException e3) {
                InvalidProtocolBufferException invalidProtocolBufferException = new InvalidProtocolBufferException(e3.getMessage());
                invalidProtocolBufferException.f73743b = this;
                throw invalidProtocolBufferException;
            }
        }
        if (z2) {
            this.f73364c = Collections.unmodifiableList(this.f73364c);
        }
        try {
            codedOutputStreamJ.k();
        } catch (IOException unused2) {
        } finally {
            this.f73363b = output.j();
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLiteOrBuilder
    public final boolean a() {
        byte b2 = this.d;
        if (b2 == 1) {
            return true;
        }
        if (b2 == 0) {
            return false;
        }
        for (int i2 = 0; i2 < this.f73364c.size(); i2++) {
            if (!((ProtoBuf$Effect) this.f73364c.get(i2)).a()) {
                this.d = (byte) 0;
                return false;
            }
        }
        this.d = (byte) 1;
        return true;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite
    public final MessageLite.Builder b() {
        Builder builder = new Builder();
        builder.k(this);
        return builder;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite
    public final int c() {
        int i2 = this.f73365e;
        if (i2 != -1) {
            return i2;
        }
        int iD = 0;
        for (int i3 = 0; i3 < this.f73364c.size(); i3++) {
            iD += CodedOutputStream.d(1, (MessageLite) this.f73364c.get(i3));
        }
        int size = this.f73363b.size() + iD;
        this.f73365e = size;
        return size;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite
    public final MessageLite.Builder d() {
        return new Builder();
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite
    public final void e(CodedOutputStream codedOutputStream) {
        c();
        for (int i2 = 0; i2 < this.f73364c.size(); i2++) {
            codedOutputStream.o(1, (MessageLite) this.f73364c.get(i2));
        }
        codedOutputStream.r(this.f73363b);
    }

    public ProtoBuf$Contract() {
        this.d = (byte) -1;
        this.f73365e = -1;
        this.f73363b = ByteString.f73706b;
    }

    public ProtoBuf$Contract(Builder builder) {
        this.d = (byte) -1;
        this.f73365e = -1;
        this.f73363b = builder.f73731b;
    }
}
