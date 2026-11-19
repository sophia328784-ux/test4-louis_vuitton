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
public final class ProtoBuf$EnumEntry extends GeneratedMessageLite.ExtendableMessage<ProtoBuf$EnumEntry> implements ProtoBuf$EnumEntryOrBuilder {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final ProtoBuf$EnumEntry f73379i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final Parser f73380j = new AnonymousClass1();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ByteString f73381c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f73382e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public List f73383f;
    public byte g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f73384h;

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$EnumEntry$1, reason: invalid class name */
    public static class AnonymousClass1 extends AbstractParser<ProtoBuf$EnumEntry> {
        @Override // kotlin.reflect.jvm.internal.impl.protobuf.Parser
        public final Object a(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
            return new ProtoBuf$EnumEntry(codedInputStream, extensionRegistryLite);
        }
    }

    public static final class Builder extends GeneratedMessageLite.ExtendableBuilder<ProtoBuf$EnumEntry, Builder> implements ProtoBuf$EnumEntryOrBuilder {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f73385e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f73386f;
        public List g = Collections.EMPTY_LIST;

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite.Builder
        public final MessageLite build() {
            ProtoBuf$EnumEntry protoBuf$EnumEntryK = k();
            if (protoBuf$EnumEntryK.a()) {
                return protoBuf$EnumEntryK;
            }
            throw new UninitializedMessageException(protoBuf$EnumEntryK);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite.Builder
        public final Object clone() {
            Builder builder = new Builder();
            builder.l(k());
            return builder;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite.Builder
        /* JADX INFO: renamed from: g */
        public final AbstractMessageLite.Builder clone() {
            Builder builder = new Builder();
            builder.l(k());
            return builder;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite.Builder
        /* JADX INFO: renamed from: h */
        public final /* bridge */ /* synthetic */ AbstractMessageLite.Builder n(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
            u(codedInputStream, extensionRegistryLite);
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.Builder
        public final /* bridge */ /* synthetic */ GeneratedMessageLite.Builder i(GeneratedMessageLite generatedMessageLite) {
            l((ProtoBuf$EnumEntry) generatedMessageLite);
            return this;
        }

        public final ProtoBuf$EnumEntry k() {
            ProtoBuf$EnumEntry protoBuf$EnumEntry = new ProtoBuf$EnumEntry(this);
            int i2 = this.f73385e;
            int i3 = (i2 & 1) != 1 ? 0 : 1;
            protoBuf$EnumEntry.f73382e = this.f73386f;
            if ((i2 & 2) == 2) {
                this.g = Collections.unmodifiableList(this.g);
                this.f73385e &= -3;
            }
            protoBuf$EnumEntry.f73383f = this.g;
            protoBuf$EnumEntry.d = i3;
            return protoBuf$EnumEntry;
        }

        public final void l(ProtoBuf$EnumEntry protoBuf$EnumEntry) {
            if (protoBuf$EnumEntry == ProtoBuf$EnumEntry.f73379i) {
                return;
            }
            if ((protoBuf$EnumEntry.d & 1) == 1) {
                int i2 = protoBuf$EnumEntry.f73382e;
                this.f73385e = 1 | this.f73385e;
                this.f73386f = i2;
            }
            if (!protoBuf$EnumEntry.f73383f.isEmpty()) {
                if (this.g.isEmpty()) {
                    this.g = protoBuf$EnumEntry.f73383f;
                    this.f73385e &= -3;
                } else {
                    if ((this.f73385e & 2) != 2) {
                        this.g = new ArrayList(this.g);
                        this.f73385e |= 2;
                    }
                    this.g.addAll(protoBuf$EnumEntry.f73383f);
                }
            }
            j(protoBuf$EnumEntry);
            this.f73731b = this.f73731b.b(protoBuf$EnumEntry.f73381c);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite.Builder, kotlin.reflect.jvm.internal.impl.protobuf.MessageLite.Builder
        public final /* bridge */ /* synthetic */ MessageLite.Builder n(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
            u(codedInputStream, extensionRegistryLite);
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:14:0x001d  */
        public final void u(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
            ProtoBuf$EnumEntry protoBuf$EnumEntry = null;
            try {
                try {
                    ((AnonymousClass1) ProtoBuf$EnumEntry.f73380j).getClass();
                    l(new ProtoBuf$EnumEntry(codedInputStream, extensionRegistryLite));
                } catch (InvalidProtocolBufferException e2) {
                    ProtoBuf$EnumEntry protoBuf$EnumEntry2 = (ProtoBuf$EnumEntry) e2.f73743b;
                    try {
                        throw e2;
                    } catch (Throwable th) {
                        th = th;
                        protoBuf$EnumEntry = protoBuf$EnumEntry2;
                        if (protoBuf$EnumEntry != null) {
                            l(protoBuf$EnumEntry);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (protoBuf$EnumEntry != null) {
                    l(protoBuf$EnumEntry);
                }
                throw th;
            }
        }
    }

    static {
        ProtoBuf$EnumEntry protoBuf$EnumEntry = new ProtoBuf$EnumEntry();
        f73379i = protoBuf$EnumEntry;
        protoBuf$EnumEntry.f73382e = 0;
        protoBuf$EnumEntry.f73383f = Collections.EMPTY_LIST;
    }

    public ProtoBuf$EnumEntry(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
        this.g = (byte) -1;
        this.f73384h = -1;
        boolean z = false;
        this.f73382e = 0;
        this.f73383f = Collections.EMPTY_LIST;
        ByteString.Output output = new ByteString.Output();
        CodedOutputStream codedOutputStreamJ = CodedOutputStream.j(output, 1);
        char c2 = 0;
        while (!z) {
            try {
                try {
                    int iO = codedInputStream.o();
                    if (iO != 0) {
                        if (iO == 8) {
                            this.d |= 1;
                            this.f73382e = codedInputStream.l();
                        } else if (iO == 18) {
                            if ((c2 & 2) != 2) {
                                this.f73383f = new ArrayList();
                                c2 = 2;
                            }
                            this.f73383f.add(codedInputStream.h(ProtoBuf$Annotation.f73299i, extensionRegistryLite));
                        } else if (!q(codedInputStream, codedOutputStreamJ, extensionRegistryLite, iO)) {
                        }
                    }
                    z = true;
                } catch (InvalidProtocolBufferException e2) {
                    e2.f73743b = this;
                    throw e2;
                } catch (IOException e3) {
                    InvalidProtocolBufferException invalidProtocolBufferException = new InvalidProtocolBufferException(e3.getMessage());
                    invalidProtocolBufferException.f73743b = this;
                    throw invalidProtocolBufferException;
                }
            } catch (Throwable th) {
                if ((c2 & 2) == 2) {
                    this.f73383f = Collections.unmodifiableList(this.f73383f);
                }
                try {
                    codedOutputStreamJ.k();
                } catch (IOException unused) {
                } finally {
                    this.f73381c = output.j();
                }
                p();
                throw th;
            }
        }
        if ((c2 & 2) == 2) {
            this.f73383f = Collections.unmodifiableList(this.f73383f);
        }
        try {
            codedOutputStreamJ.k();
        } catch (IOException unused2) {
        } finally {
            this.f73381c = output.j();
        }
        p();
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLiteOrBuilder
    public final boolean a() {
        byte b2 = this.g;
        if (b2 == 1) {
            return true;
        }
        if (b2 == 0) {
            return false;
        }
        for (int i2 = 0; i2 < this.f73383f.size(); i2++) {
            if (!((ProtoBuf$Annotation) this.f73383f.get(i2)).a()) {
                this.g = (byte) 0;
                return false;
            }
        }
        if (i()) {
            this.g = (byte) 1;
            return true;
        }
        this.g = (byte) 0;
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite
    public final MessageLite.Builder b() {
        Builder builder = new Builder();
        builder.l(this);
        return builder;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite
    public final int c() {
        int i2 = this.f73384h;
        if (i2 != -1) {
            return i2;
        }
        int iB = (this.d & 1) == 1 ? CodedOutputStream.b(1, this.f73382e) : 0;
        for (int i3 = 0; i3 < this.f73383f.size(); i3++) {
            iB += CodedOutputStream.d(2, (MessageLite) this.f73383f.get(i3));
        }
        int size = this.f73381c.size() + j() + iB;
        this.f73384h = size;
        return size;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite
    public final MessageLite.Builder d() {
        return new Builder();
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite
    public final void e(CodedOutputStream codedOutputStream) {
        c();
        GeneratedMessageLite.ExtendableMessage.ExtensionWriter extensionWriter = new GeneratedMessageLite.ExtendableMessage.ExtensionWriter(this);
        if ((this.d & 1) == 1) {
            codedOutputStream.m(1, this.f73382e);
        }
        for (int i2 = 0; i2 < this.f73383f.size(); i2++) {
            codedOutputStream.o(2, (MessageLite) this.f73383f.get(i2));
        }
        extensionWriter.a(200, codedOutputStream);
        codedOutputStream.r(this.f73381c);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLiteOrBuilder
    public final MessageLite f() {
        return f73379i;
    }

    public ProtoBuf$EnumEntry() {
        this.g = (byte) -1;
        this.f73384h = -1;
        this.f73381c = ByteString.f73706b;
    }

    public ProtoBuf$EnumEntry(Builder builder) {
        super(builder);
        this.g = (byte) -1;
        this.f73384h = -1;
        this.f73381c = builder.f73731b;
    }
}
