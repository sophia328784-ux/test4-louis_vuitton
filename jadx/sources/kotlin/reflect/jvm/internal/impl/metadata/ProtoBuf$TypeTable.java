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
public final class ProtoBuf$TypeTable extends GeneratedMessageLite implements ProtoBuf$TypeTableOrBuilder {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final ProtoBuf$TypeTable f73519h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final Parser f73520i = new AnonymousClass1();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ByteString f73521b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f73522c;
    public List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f73523e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public byte f73524f;
    public int g;

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeTable$1, reason: invalid class name */
    public static class AnonymousClass1 extends AbstractParser<ProtoBuf$TypeTable> {
        @Override // kotlin.reflect.jvm.internal.impl.protobuf.Parser
        public final Object a(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
            return new ProtoBuf$TypeTable(codedInputStream, extensionRegistryLite);
        }
    }

    public static final class Builder extends GeneratedMessageLite.Builder<ProtoBuf$TypeTable, Builder> implements ProtoBuf$TypeTableOrBuilder {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f73525c;
        public List d = Collections.EMPTY_LIST;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f73526e = -1;

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite.Builder
        public final MessageLite build() {
            ProtoBuf$TypeTable protoBuf$TypeTableJ = j();
            if (protoBuf$TypeTableJ.a()) {
                return protoBuf$TypeTableJ;
            }
            throw new UninitializedMessageException(protoBuf$TypeTableJ);
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
            k((ProtoBuf$TypeTable) generatedMessageLite);
            return this;
        }

        public final ProtoBuf$TypeTable j() {
            ProtoBuf$TypeTable protoBuf$TypeTable = new ProtoBuf$TypeTable(this);
            int i2 = this.f73525c;
            if ((i2 & 1) == 1) {
                this.d = Collections.unmodifiableList(this.d);
                this.f73525c &= -2;
            }
            protoBuf$TypeTable.d = this.d;
            int i3 = (i2 & 2) != 2 ? 0 : 1;
            protoBuf$TypeTable.f73523e = this.f73526e;
            protoBuf$TypeTable.f73522c = i3;
            return protoBuf$TypeTable;
        }

        public final void k(ProtoBuf$TypeTable protoBuf$TypeTable) {
            if (protoBuf$TypeTable == ProtoBuf$TypeTable.f73519h) {
                return;
            }
            if (!protoBuf$TypeTable.d.isEmpty()) {
                if (this.d.isEmpty()) {
                    this.d = protoBuf$TypeTable.d;
                    this.f73525c &= -2;
                } else {
                    if ((this.f73525c & 1) != 1) {
                        this.d = new ArrayList(this.d);
                        this.f73525c |= 1;
                    }
                    this.d.addAll(protoBuf$TypeTable.d);
                }
            }
            if ((protoBuf$TypeTable.f73522c & 1) == 1) {
                int i2 = protoBuf$TypeTable.f73523e;
                this.f73525c |= 2;
                this.f73526e = i2;
            }
            this.f73731b = this.f73731b.b(protoBuf$TypeTable.f73521b);
        }

        /* JADX WARN: Code duplicated, block: B:14:0x001d  */
        public final void l(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
            ProtoBuf$TypeTable protoBuf$TypeTable = null;
            try {
                try {
                    ((AnonymousClass1) ProtoBuf$TypeTable.f73520i).getClass();
                    k(new ProtoBuf$TypeTable(codedInputStream, extensionRegistryLite));
                } catch (InvalidProtocolBufferException e2) {
                    ProtoBuf$TypeTable protoBuf$TypeTable2 = (ProtoBuf$TypeTable) e2.f73743b;
                    try {
                        throw e2;
                    } catch (Throwable th) {
                        th = th;
                        protoBuf$TypeTable = protoBuf$TypeTable2;
                        if (protoBuf$TypeTable != null) {
                            k(protoBuf$TypeTable);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (protoBuf$TypeTable != null) {
                    k(protoBuf$TypeTable);
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
        ProtoBuf$TypeTable protoBuf$TypeTable = new ProtoBuf$TypeTable();
        f73519h = protoBuf$TypeTable;
        protoBuf$TypeTable.d = Collections.EMPTY_LIST;
        protoBuf$TypeTable.f73523e = -1;
    }

    public ProtoBuf$TypeTable(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
        this.f73524f = (byte) -1;
        this.g = -1;
        this.d = Collections.EMPTY_LIST;
        this.f73523e = -1;
        ByteString.Output output = new ByteString.Output();
        CodedOutputStream codedOutputStreamJ = CodedOutputStream.j(output, 1);
        boolean z = false;
        boolean z2 = false;
        while (!z) {
            try {
                try {
                    try {
                        int iO = codedInputStream.o();
                        if (iO != 0) {
                            if (iO == 10) {
                                if (!z2) {
                                    this.d = new ArrayList();
                                    z2 = true;
                                }
                                this.d.add(codedInputStream.h(ProtoBuf$Type.w, extensionRegistryLite));
                            } else if (iO == 16) {
                                this.f73522c |= 1;
                                this.f73523e = codedInputStream.l();
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
                if (z2) {
                    this.d = Collections.unmodifiableList(this.d);
                }
                try {
                    codedOutputStreamJ.k();
                } catch (IOException unused) {
                } finally {
                    this.f73521b = output.j();
                }
                throw th;
            }
        }
        if (z2) {
            this.d = Collections.unmodifiableList(this.d);
        }
        try {
            codedOutputStreamJ.k();
        } catch (IOException unused2) {
        } finally {
            this.f73521b = output.j();
        }
    }

    public static Builder i(ProtoBuf$TypeTable protoBuf$TypeTable) {
        Builder builder = new Builder();
        builder.k(protoBuf$TypeTable);
        return builder;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLiteOrBuilder
    public final boolean a() {
        byte b2 = this.f73524f;
        if (b2 == 1) {
            return true;
        }
        if (b2 == 0) {
            return false;
        }
        for (int i2 = 0; i2 < this.d.size(); i2++) {
            if (!((ProtoBuf$Type) this.d.get(i2)).a()) {
                this.f73524f = (byte) 0;
                return false;
            }
        }
        this.f73524f = (byte) 1;
        return true;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite
    public final MessageLite.Builder b() {
        return i(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite
    public final int c() {
        int i2 = this.g;
        if (i2 != -1) {
            return i2;
        }
        int iB = 0;
        for (int i3 = 0; i3 < this.d.size(); i3++) {
            iB += CodedOutputStream.d(1, (MessageLite) this.d.get(i3));
        }
        if ((this.f73522c & 1) == 1) {
            iB += CodedOutputStream.b(2, this.f73523e);
        }
        int size = this.f73521b.size() + iB;
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
        for (int i2 = 0; i2 < this.d.size(); i2++) {
            codedOutputStream.o(1, (MessageLite) this.d.get(i2));
        }
        if ((this.f73522c & 1) == 1) {
            codedOutputStream.m(2, this.f73523e);
        }
        codedOutputStream.r(this.f73521b);
    }

    public ProtoBuf$TypeTable() {
        this.f73524f = (byte) -1;
        this.g = -1;
        this.f73521b = ByteString.f73706b;
    }

    public ProtoBuf$TypeTable(Builder builder) {
        this.f73524f = (byte) -1;
        this.g = -1;
        this.f73521b = builder.f73731b;
    }
}
