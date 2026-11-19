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
import kotlin.reflect.jvm.internal.impl.protobuf.Internal;
import kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException;
import kotlin.reflect.jvm.internal.impl.protobuf.MessageLite;
import kotlin.reflect.jvm.internal.impl.protobuf.MessageLiteOrBuilder;
import kotlin.reflect.jvm.internal.impl.protobuf.Parser;
import kotlin.reflect.jvm.internal.impl.protobuf.UninitializedMessageException;

/* JADX INFO: loaded from: classes4.dex */
public final class ProtoBuf$QualifiedNameTable extends GeneratedMessageLite implements ProtoBuf$QualifiedNameTableOrBuilder {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final ProtoBuf$QualifiedNameTable f73450f;
    public static final Parser g = new AnonymousClass1();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ByteString f73451b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public List f73452c;
    public byte d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f73453e;

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$QualifiedNameTable$1, reason: invalid class name */
    public static class AnonymousClass1 extends AbstractParser<ProtoBuf$QualifiedNameTable> {
        @Override // kotlin.reflect.jvm.internal.impl.protobuf.Parser
        public final Object a(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
            return new ProtoBuf$QualifiedNameTable(codedInputStream, extensionRegistryLite);
        }
    }

    public static final class Builder extends GeneratedMessageLite.Builder<ProtoBuf$QualifiedNameTable, Builder> implements ProtoBuf$QualifiedNameTableOrBuilder {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f73454c;
        public List d = Collections.EMPTY_LIST;

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite.Builder
        public final MessageLite build() {
            ProtoBuf$QualifiedNameTable protoBuf$QualifiedNameTableJ = j();
            if (protoBuf$QualifiedNameTableJ.a()) {
                return protoBuf$QualifiedNameTableJ;
            }
            throw new UninitializedMessageException(protoBuf$QualifiedNameTableJ);
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
            k((ProtoBuf$QualifiedNameTable) generatedMessageLite);
            return this;
        }

        public final ProtoBuf$QualifiedNameTable j() {
            ProtoBuf$QualifiedNameTable protoBuf$QualifiedNameTable = new ProtoBuf$QualifiedNameTable(this);
            if ((this.f73454c & 1) == 1) {
                this.d = Collections.unmodifiableList(this.d);
                this.f73454c &= -2;
            }
            protoBuf$QualifiedNameTable.f73452c = this.d;
            return protoBuf$QualifiedNameTable;
        }

        public final void k(ProtoBuf$QualifiedNameTable protoBuf$QualifiedNameTable) {
            if (protoBuf$QualifiedNameTable == ProtoBuf$QualifiedNameTable.f73450f) {
                return;
            }
            if (!protoBuf$QualifiedNameTable.f73452c.isEmpty()) {
                if (this.d.isEmpty()) {
                    this.d = protoBuf$QualifiedNameTable.f73452c;
                    this.f73454c &= -2;
                } else {
                    if ((this.f73454c & 1) != 1) {
                        this.d = new ArrayList(this.d);
                        this.f73454c |= 1;
                    }
                    this.d.addAll(protoBuf$QualifiedNameTable.f73452c);
                }
            }
            this.f73731b = this.f73731b.b(protoBuf$QualifiedNameTable.f73451b);
        }

        /* JADX WARN: Code duplicated, block: B:14:0x001d  */
        public final void l(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
            ProtoBuf$QualifiedNameTable protoBuf$QualifiedNameTable = null;
            try {
                try {
                    ((AnonymousClass1) ProtoBuf$QualifiedNameTable.g).getClass();
                    k(new ProtoBuf$QualifiedNameTable(codedInputStream, extensionRegistryLite));
                } catch (InvalidProtocolBufferException e2) {
                    ProtoBuf$QualifiedNameTable protoBuf$QualifiedNameTable2 = (ProtoBuf$QualifiedNameTable) e2.f73743b;
                    try {
                        throw e2;
                    } catch (Throwable th) {
                        th = th;
                        protoBuf$QualifiedNameTable = protoBuf$QualifiedNameTable2;
                        if (protoBuf$QualifiedNameTable != null) {
                            k(protoBuf$QualifiedNameTable);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (protoBuf$QualifiedNameTable != null) {
                    k(protoBuf$QualifiedNameTable);
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

    public interface QualifiedNameOrBuilder extends MessageLiteOrBuilder {
    }

    static {
        ProtoBuf$QualifiedNameTable protoBuf$QualifiedNameTable = new ProtoBuf$QualifiedNameTable();
        f73450f = protoBuf$QualifiedNameTable;
        protoBuf$QualifiedNameTable.f73452c = Collections.EMPTY_LIST;
    }

    public ProtoBuf$QualifiedNameTable(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
        this.d = (byte) -1;
        this.f73453e = -1;
        this.f73452c = Collections.EMPTY_LIST;
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
                                this.f73452c = new ArrayList();
                                z2 = true;
                            }
                            this.f73452c.add(codedInputStream.h(QualifiedName.f73456j, extensionRegistryLite));
                        } else if (!codedInputStream.r(iO, codedOutputStreamJ)) {
                        }
                    }
                    z = true;
                } catch (Throwable th) {
                    if (z2) {
                        this.f73452c = Collections.unmodifiableList(this.f73452c);
                    }
                    try {
                        codedOutputStreamJ.k();
                    } catch (IOException unused) {
                    } finally {
                        this.f73451b = output.j();
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
            this.f73452c = Collections.unmodifiableList(this.f73452c);
        }
        try {
            codedOutputStreamJ.k();
        } catch (IOException unused2) {
        } finally {
            this.f73451b = output.j();
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
        for (int i2 = 0; i2 < this.f73452c.size(); i2++) {
            if (!((QualifiedName) this.f73452c.get(i2)).a()) {
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
        int i2 = this.f73453e;
        if (i2 != -1) {
            return i2;
        }
        int iD = 0;
        for (int i3 = 0; i3 < this.f73452c.size(); i3++) {
            iD += CodedOutputStream.d(1, (MessageLite) this.f73452c.get(i3));
        }
        int size = this.f73451b.size() + iD;
        this.f73453e = size;
        return size;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite
    public final MessageLite.Builder d() {
        return new Builder();
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite
    public final void e(CodedOutputStream codedOutputStream) {
        c();
        for (int i2 = 0; i2 < this.f73452c.size(); i2++) {
            codedOutputStream.o(1, (MessageLite) this.f73452c.get(i2));
        }
        codedOutputStream.r(this.f73451b);
    }

    public ProtoBuf$QualifiedNameTable() {
        this.d = (byte) -1;
        this.f73453e = -1;
        this.f73451b = ByteString.f73706b;
    }

    public ProtoBuf$QualifiedNameTable(Builder builder) {
        this.d = (byte) -1;
        this.f73453e = -1;
        this.f73451b = builder.f73731b;
    }

    public static final class QualifiedName extends GeneratedMessageLite implements QualifiedNameOrBuilder {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public static final QualifiedName f73455i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public static final Parser f73456j = new AnonymousClass1();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ByteString f73457b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f73458c;
        public int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f73459e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public Kind f73460f;
        public byte g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f73461h;

        /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$QualifiedNameTable$QualifiedName$1, reason: invalid class name */
        public static class AnonymousClass1 extends AbstractParser<QualifiedName> {
            @Override // kotlin.reflect.jvm.internal.impl.protobuf.Parser
            public final Object a(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
                return new QualifiedName(codedInputStream);
            }
        }

        public static final class Builder extends GeneratedMessageLite.Builder<QualifiedName, Builder> implements QualifiedNameOrBuilder {

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public int f73462c;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public int f73463e;
            public int d = -1;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public Kind f73464f = Kind.PACKAGE;

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite.Builder
            public final MessageLite build() {
                QualifiedName qualifiedNameJ = j();
                if (qualifiedNameJ.a()) {
                    return qualifiedNameJ;
                }
                throw new UninitializedMessageException(qualifiedNameJ);
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
                k((QualifiedName) generatedMessageLite);
                return this;
            }

            public final QualifiedName j() {
                QualifiedName qualifiedName = new QualifiedName(this);
                int i2 = this.f73462c;
                int i3 = (i2 & 1) != 1 ? 0 : 1;
                qualifiedName.d = this.d;
                if ((i2 & 2) == 2) {
                    i3 |= 2;
                }
                qualifiedName.f73459e = this.f73463e;
                if ((i2 & 4) == 4) {
                    i3 |= 4;
                }
                qualifiedName.f73460f = this.f73464f;
                qualifiedName.f73458c = i3;
                return qualifiedName;
            }

            public final void k(QualifiedName qualifiedName) {
                if (qualifiedName == QualifiedName.f73455i) {
                    return;
                }
                int i2 = qualifiedName.f73458c;
                if ((i2 & 1) == 1) {
                    int i3 = qualifiedName.d;
                    this.f73462c = 1 | this.f73462c;
                    this.d = i3;
                }
                if ((i2 & 2) == 2) {
                    int i4 = qualifiedName.f73459e;
                    this.f73462c = 2 | this.f73462c;
                    this.f73463e = i4;
                }
                if ((i2 & 4) == 4) {
                    Kind kind = qualifiedName.f73460f;
                    kind.getClass();
                    this.f73462c = 4 | this.f73462c;
                    this.f73464f = kind;
                }
                this.f73731b = this.f73731b.b(qualifiedName.f73457b);
            }

            /* JADX WARN: Code duplicated, block: B:14:0x001d  */
            public final void l(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
                QualifiedName qualifiedName = null;
                try {
                    try {
                        ((AnonymousClass1) QualifiedName.f73456j).getClass();
                        k(new QualifiedName(codedInputStream));
                    } catch (InvalidProtocolBufferException e2) {
                        QualifiedName qualifiedName2 = (QualifiedName) e2.f73743b;
                        try {
                            throw e2;
                        } catch (Throwable th) {
                            th = th;
                            qualifiedName = qualifiedName2;
                            if (qualifiedName != null) {
                                k(qualifiedName);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (qualifiedName != null) {
                        k(qualifiedName);
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

        public enum Kind implements Internal.EnumLite {
            CLASS(0),
            PACKAGE(1),
            LOCAL(2);

            private static Internal.EnumLiteMap<Kind> internalValueMap = new AnonymousClass1();
            private final int value;

            /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$QualifiedNameTable$QualifiedName$Kind$1, reason: invalid class name */
            public static class AnonymousClass1 implements Internal.EnumLiteMap<Kind> {
            }

            Kind(int i2) {
                this.value = i2;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.Internal.EnumLite
            public final int m() {
                return this.value;
            }
        }

        static {
            QualifiedName qualifiedName = new QualifiedName();
            f73455i = qualifiedName;
            qualifiedName.d = -1;
            qualifiedName.f73459e = 0;
            qualifiedName.f73460f = Kind.PACKAGE;
        }

        public QualifiedName(CodedInputStream codedInputStream) {
            this.g = (byte) -1;
            this.f73461h = -1;
            this.d = -1;
            boolean z = false;
            this.f73459e = 0;
            this.f73460f = Kind.PACKAGE;
            ByteString.Output output = new ByteString.Output();
            CodedOutputStream codedOutputStreamJ = CodedOutputStream.j(output, 1);
            while (!z) {
                try {
                    try {
                        int iO = codedInputStream.o();
                        if (iO != 0) {
                            if (iO == 8) {
                                this.f73458c |= 1;
                                this.d = codedInputStream.l();
                            } else if (iO == 16) {
                                this.f73458c |= 2;
                                this.f73459e = codedInputStream.l();
                            } else if (iO == 24) {
                                int iL = codedInputStream.l();
                                Kind kind = iL != 0 ? iL != 1 ? iL != 2 ? null : Kind.LOCAL : Kind.PACKAGE : Kind.CLASS;
                                if (kind == null) {
                                    codedOutputStreamJ.v(iO);
                                    codedOutputStreamJ.v(iL);
                                } else {
                                    this.f73458c |= 4;
                                    this.f73460f = kind;
                                }
                            } else if (!codedInputStream.r(iO, codedOutputStreamJ)) {
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
                    try {
                        codedOutputStreamJ.k();
                    } catch (IOException unused) {
                    } finally {
                        this.f73457b = output.j();
                    }
                    throw th;
                }
            }
            try {
                codedOutputStreamJ.k();
            } catch (IOException unused2) {
            } finally {
                this.f73457b = output.j();
            }
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
            if ((this.f73458c & 2) == 2) {
                this.g = (byte) 1;
                return true;
            }
            this.g = (byte) 0;
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
            int i2 = this.f73461h;
            if (i2 != -1) {
                return i2;
            }
            int iB = (this.f73458c & 1) == 1 ? CodedOutputStream.b(1, this.d) : 0;
            if ((this.f73458c & 2) == 2) {
                iB += CodedOutputStream.b(2, this.f73459e);
            }
            if ((this.f73458c & 4) == 4) {
                iB += CodedOutputStream.a(3, this.f73460f.m());
            }
            int size = this.f73457b.size() + iB;
            this.f73461h = size;
            return size;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite
        public final MessageLite.Builder d() {
            return new Builder();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite
        public final void e(CodedOutputStream codedOutputStream) {
            c();
            if ((this.f73458c & 1) == 1) {
                codedOutputStream.m(1, this.d);
            }
            if ((this.f73458c & 2) == 2) {
                codedOutputStream.m(2, this.f73459e);
            }
            if ((this.f73458c & 4) == 4) {
                codedOutputStream.l(3, this.f73460f.m());
            }
            codedOutputStream.r(this.f73457b);
        }

        public QualifiedName() {
            this.g = (byte) -1;
            this.f73461h = -1;
            this.f73457b = ByteString.f73706b;
        }

        public QualifiedName(Builder builder) {
            this.g = (byte) -1;
            this.f73461h = -1;
            this.f73457b = builder.f73731b;
        }
    }
}
