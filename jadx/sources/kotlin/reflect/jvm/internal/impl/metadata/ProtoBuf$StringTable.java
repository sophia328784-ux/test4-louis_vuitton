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
import kotlin.reflect.jvm.internal.impl.protobuf.LazyStringArrayList;
import kotlin.reflect.jvm.internal.impl.protobuf.LazyStringList;
import kotlin.reflect.jvm.internal.impl.protobuf.MessageLite;
import kotlin.reflect.jvm.internal.impl.protobuf.Parser;
import kotlin.reflect.jvm.internal.impl.protobuf.UninitializedMessageException;

/* JADX INFO: loaded from: classes4.dex */
public final class ProtoBuf$StringTable extends GeneratedMessageLite implements ProtoBuf$StringTableOrBuilder {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final ProtoBuf$StringTable f73465f;
    public static final Parser g = new AnonymousClass1();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ByteString f73466b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public LazyStringList f73467c;
    public byte d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f73468e;

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$StringTable$1, reason: invalid class name */
    public static class AnonymousClass1 extends AbstractParser<ProtoBuf$StringTable> {
        @Override // kotlin.reflect.jvm.internal.impl.protobuf.Parser
        public final Object a(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
            return new ProtoBuf$StringTable(codedInputStream);
        }
    }

    public static final class Builder extends GeneratedMessageLite.Builder<ProtoBuf$StringTable, Builder> implements ProtoBuf$StringTableOrBuilder {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f73469c;
        public LazyStringList d = LazyStringArrayList.f73744c;

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite.Builder
        public final MessageLite build() {
            ProtoBuf$StringTable protoBuf$StringTableJ = j();
            if (protoBuf$StringTableJ.a()) {
                return protoBuf$StringTableJ;
            }
            throw new UninitializedMessageException(protoBuf$StringTableJ);
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
            k((ProtoBuf$StringTable) generatedMessageLite);
            return this;
        }

        public final ProtoBuf$StringTable j() {
            ProtoBuf$StringTable protoBuf$StringTable = new ProtoBuf$StringTable(this);
            if ((this.f73469c & 1) == 1) {
                this.d = this.d.q0();
                this.f73469c &= -2;
            }
            protoBuf$StringTable.f73467c = this.d;
            return protoBuf$StringTable;
        }

        public final void k(ProtoBuf$StringTable protoBuf$StringTable) {
            if (protoBuf$StringTable == ProtoBuf$StringTable.f73465f) {
                return;
            }
            if (!protoBuf$StringTable.f73467c.isEmpty()) {
                if (this.d.isEmpty()) {
                    this.d = protoBuf$StringTable.f73467c;
                    this.f73469c &= -2;
                } else {
                    if ((this.f73469c & 1) != 1) {
                        this.d = new LazyStringArrayList(this.d);
                        this.f73469c |= 1;
                    }
                    this.d.addAll(protoBuf$StringTable.f73467c);
                }
            }
            this.f73731b = this.f73731b.b(protoBuf$StringTable.f73466b);
        }

        /* JADX WARN: Code duplicated, block: B:14:0x001d  */
        public final void l(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
            ProtoBuf$StringTable protoBuf$StringTable = null;
            try {
                try {
                    ((AnonymousClass1) ProtoBuf$StringTable.g).getClass();
                    k(new ProtoBuf$StringTable(codedInputStream));
                } catch (InvalidProtocolBufferException e2) {
                    ProtoBuf$StringTable protoBuf$StringTable2 = (ProtoBuf$StringTable) e2.f73743b;
                    try {
                        throw e2;
                    } catch (Throwable th) {
                        th = th;
                        protoBuf$StringTable = protoBuf$StringTable2;
                        if (protoBuf$StringTable != null) {
                            k(protoBuf$StringTable);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (protoBuf$StringTable != null) {
                    k(protoBuf$StringTable);
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
        ProtoBuf$StringTable protoBuf$StringTable = new ProtoBuf$StringTable();
        f73465f = protoBuf$StringTable;
        protoBuf$StringTable.f73467c = LazyStringArrayList.f73744c;
    }

    public ProtoBuf$StringTable(CodedInputStream codedInputStream) {
        this.d = (byte) -1;
        this.f73468e = -1;
        this.f73467c = LazyStringArrayList.f73744c;
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
                            ByteString byteStringF = codedInputStream.f();
                            if (!z2) {
                                this.f73467c = new LazyStringArrayList();
                                z2 = true;
                            }
                            this.f73467c.E0(byteStringF);
                        } else if (!codedInputStream.r(iO, codedOutputStreamJ)) {
                        }
                    }
                    z = true;
                } catch (Throwable th) {
                    if (z2) {
                        this.f73467c = this.f73467c.q0();
                    }
                    try {
                        codedOutputStreamJ.k();
                    } catch (IOException unused) {
                    } finally {
                        this.f73466b = output.j();
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
            this.f73467c = this.f73467c.q0();
        }
        try {
            codedOutputStreamJ.k();
        } catch (IOException unused2) {
        } finally {
            this.f73466b = output.j();
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
        int i2 = this.f73468e;
        if (i2 != -1) {
            return i2;
        }
        int i3 = 0;
        int size = 0;
        while (true) {
            int size2 = this.f73467c.size();
            LazyStringList lazyStringList = this.f73467c;
            if (i3 >= size2) {
                int size3 = this.f73466b.size() + lazyStringList.size() + size;
                this.f73468e = size3;
                return size3;
            }
            ByteString byteStringH = lazyStringList.H(i3);
            size += byteStringH.size() + CodedOutputStream.f(byteStringH.size());
            i3++;
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite
    public final MessageLite.Builder d() {
        return new Builder();
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite
    public final void e(CodedOutputStream codedOutputStream) {
        c();
        for (int i2 = 0; i2 < this.f73467c.size(); i2++) {
            ByteString byteStringH = this.f73467c.H(i2);
            codedOutputStream.x(1, 2);
            codedOutputStream.v(byteStringH.size());
            codedOutputStream.r(byteStringH);
        }
        codedOutputStream.r(this.f73466b);
    }

    public ProtoBuf$StringTable() {
        this.d = (byte) -1;
        this.f73468e = -1;
        this.f73466b = ByteString.f73706b;
    }

    public ProtoBuf$StringTable(Builder builder) {
        this.d = (byte) -1;
        this.f73468e = -1;
        this.f73466b = builder.f73731b;
    }
}
