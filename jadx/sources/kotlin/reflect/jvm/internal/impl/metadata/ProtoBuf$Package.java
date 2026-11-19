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
public final class ProtoBuf$Package extends GeneratedMessageLite.ExtendableMessage<ProtoBuf$Package> implements ProtoBuf$PackageOrBuilder {
    public static final ProtoBuf$Package l;
    public static final Parser m = new AnonymousClass1();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ByteString f73414c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public List f73415e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public List f73416f;
    public List g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public ProtoBuf$TypeTable f73417h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public ProtoBuf$VersionRequirementTable f73418i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public byte f73419j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f73420k;

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Package$1, reason: invalid class name */
    public static class AnonymousClass1 extends AbstractParser<ProtoBuf$Package> {
        @Override // kotlin.reflect.jvm.internal.impl.protobuf.Parser
        public final Object a(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
            return new ProtoBuf$Package(codedInputStream, extensionRegistryLite);
        }
    }

    public static final class Builder extends GeneratedMessageLite.ExtendableBuilder<ProtoBuf$Package, Builder> implements ProtoBuf$PackageOrBuilder {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f73421e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public List f73422f;
        public List g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public List f73423h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public ProtoBuf$TypeTable f73424i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public ProtoBuf$VersionRequirementTable f73425j;

        public Builder() {
            List list = Collections.EMPTY_LIST;
            this.f73422f = list;
            this.g = list;
            this.f73423h = list;
            this.f73424i = ProtoBuf$TypeTable.f73519h;
            this.f73425j = ProtoBuf$VersionRequirementTable.f73553f;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite.Builder
        public final MessageLite build() {
            ProtoBuf$Package protoBuf$PackageK = k();
            if (protoBuf$PackageK.a()) {
                return protoBuf$PackageK;
            }
            throw new UninitializedMessageException(protoBuf$PackageK);
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
            l((ProtoBuf$Package) generatedMessageLite);
            return this;
        }

        public final ProtoBuf$Package k() {
            ProtoBuf$Package protoBuf$Package = new ProtoBuf$Package(this);
            int i2 = this.f73421e;
            if ((i2 & 1) == 1) {
                this.f73422f = Collections.unmodifiableList(this.f73422f);
                this.f73421e &= -2;
            }
            protoBuf$Package.f73415e = this.f73422f;
            if ((this.f73421e & 2) == 2) {
                this.g = Collections.unmodifiableList(this.g);
                this.f73421e &= -3;
            }
            protoBuf$Package.f73416f = this.g;
            if ((this.f73421e & 4) == 4) {
                this.f73423h = Collections.unmodifiableList(this.f73423h);
                this.f73421e &= -5;
            }
            protoBuf$Package.g = this.f73423h;
            int i3 = (i2 & 8) != 8 ? 0 : 1;
            protoBuf$Package.f73417h = this.f73424i;
            if ((i2 & 16) == 16) {
                i3 |= 2;
            }
            protoBuf$Package.f73418i = this.f73425j;
            protoBuf$Package.d = i3;
            return protoBuf$Package;
        }

        public final void l(ProtoBuf$Package protoBuf$Package) {
            ProtoBuf$VersionRequirementTable protoBuf$VersionRequirementTable;
            ProtoBuf$TypeTable protoBuf$TypeTable;
            if (protoBuf$Package == ProtoBuf$Package.l) {
                return;
            }
            if (!protoBuf$Package.f73415e.isEmpty()) {
                if (this.f73422f.isEmpty()) {
                    this.f73422f = protoBuf$Package.f73415e;
                    this.f73421e &= -2;
                } else {
                    if ((this.f73421e & 1) != 1) {
                        this.f73422f = new ArrayList(this.f73422f);
                        this.f73421e |= 1;
                    }
                    this.f73422f.addAll(protoBuf$Package.f73415e);
                }
            }
            if (!protoBuf$Package.f73416f.isEmpty()) {
                if (this.g.isEmpty()) {
                    this.g = protoBuf$Package.f73416f;
                    this.f73421e &= -3;
                } else {
                    if ((this.f73421e & 2) != 2) {
                        this.g = new ArrayList(this.g);
                        this.f73421e |= 2;
                    }
                    this.g.addAll(protoBuf$Package.f73416f);
                }
            }
            if (!protoBuf$Package.g.isEmpty()) {
                if (this.f73423h.isEmpty()) {
                    this.f73423h = protoBuf$Package.g;
                    this.f73421e &= -5;
                } else {
                    if ((this.f73421e & 4) != 4) {
                        this.f73423h = new ArrayList(this.f73423h);
                        this.f73421e |= 4;
                    }
                    this.f73423h.addAll(protoBuf$Package.g);
                }
            }
            if ((protoBuf$Package.d & 1) == 1) {
                ProtoBuf$TypeTable protoBuf$TypeTable2 = protoBuf$Package.f73417h;
                if ((this.f73421e & 8) != 8 || (protoBuf$TypeTable = this.f73424i) == ProtoBuf$TypeTable.f73519h) {
                    this.f73424i = protoBuf$TypeTable2;
                } else {
                    ProtoBuf$TypeTable.Builder builderI = ProtoBuf$TypeTable.i(protoBuf$TypeTable);
                    builderI.k(protoBuf$TypeTable2);
                    this.f73424i = builderI.j();
                }
                this.f73421e |= 8;
            }
            if ((protoBuf$Package.d & 2) == 2) {
                ProtoBuf$VersionRequirementTable protoBuf$VersionRequirementTable2 = protoBuf$Package.f73418i;
                if ((this.f73421e & 16) != 16 || (protoBuf$VersionRequirementTable = this.f73425j) == ProtoBuf$VersionRequirementTable.f73553f) {
                    this.f73425j = protoBuf$VersionRequirementTable2;
                } else {
                    ProtoBuf$VersionRequirementTable.Builder builder = new ProtoBuf$VersionRequirementTable.Builder();
                    builder.k(protoBuf$VersionRequirementTable);
                    builder.k(protoBuf$VersionRequirementTable2);
                    this.f73425j = builder.j();
                }
                this.f73421e |= 16;
            }
            j(protoBuf$Package);
            this.f73731b = this.f73731b.b(protoBuf$Package.f73414c);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite.Builder, kotlin.reflect.jvm.internal.impl.protobuf.MessageLite.Builder
        public final /* bridge */ /* synthetic */ MessageLite.Builder n(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
            u(codedInputStream, extensionRegistryLite);
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:14:0x001d  */
        public final void u(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
            ProtoBuf$Package protoBuf$Package = null;
            try {
                try {
                    ((AnonymousClass1) ProtoBuf$Package.m).getClass();
                    l(new ProtoBuf$Package(codedInputStream, extensionRegistryLite));
                } catch (InvalidProtocolBufferException e2) {
                    ProtoBuf$Package protoBuf$Package2 = (ProtoBuf$Package) e2.f73743b;
                    try {
                        throw e2;
                    } catch (Throwable th) {
                        th = th;
                        protoBuf$Package = protoBuf$Package2;
                        if (protoBuf$Package != null) {
                            l(protoBuf$Package);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (protoBuf$Package != null) {
                    l(protoBuf$Package);
                }
                throw th;
            }
        }
    }

    static {
        ProtoBuf$Package protoBuf$Package = new ProtoBuf$Package();
        l = protoBuf$Package;
        List list = Collections.EMPTY_LIST;
        protoBuf$Package.f73415e = list;
        protoBuf$Package.f73416f = list;
        protoBuf$Package.g = list;
        protoBuf$Package.f73417h = ProtoBuf$TypeTable.f73519h;
        protoBuf$Package.f73418i = ProtoBuf$VersionRequirementTable.f73553f;
    }

    public ProtoBuf$Package(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
        this.f73419j = (byte) -1;
        this.f73420k = -1;
        List list = Collections.EMPTY_LIST;
        this.f73415e = list;
        this.f73416f = list;
        this.g = list;
        this.f73417h = ProtoBuf$TypeTable.f73519h;
        this.f73418i = ProtoBuf$VersionRequirementTable.f73553f;
        ByteString.Output output = new ByteString.Output();
        CodedOutputStream codedOutputStreamJ = CodedOutputStream.j(output, 1);
        boolean z = false;
        int i2 = 0;
        while (!z) {
            try {
                try {
                    int iO = codedInputStream.o();
                    if (iO != 0) {
                        if (iO == 26) {
                            int i3 = (i2 == true ? 1 : 0) & 1;
                            i2 = i2;
                            if (i3 != 1) {
                                this.f73415e = new ArrayList();
                                i2 = (i2 == true ? 1 : 0) | 1;
                            }
                            this.f73415e.add(codedInputStream.h(ProtoBuf$Function.A, extensionRegistryLite));
                        } else if (iO == 34) {
                            int i4 = (i2 == true ? 1 : 0) & 2;
                            i2 = i2;
                            if (i4 != 2) {
                                this.f73416f = new ArrayList();
                                i2 = (i2 == true ? 1 : 0) | 2;
                            }
                            this.f73416f.add(codedInputStream.h(ProtoBuf$Property.G, extensionRegistryLite));
                        } else if (iO != 42) {
                            ProtoBuf$VersionRequirementTable.Builder builder = null;
                            ProtoBuf$TypeTable.Builder builderI = null;
                            if (iO == 242) {
                                if ((this.d & 1) == 1) {
                                    ProtoBuf$TypeTable protoBuf$TypeTable = this.f73417h;
                                    protoBuf$TypeTable.getClass();
                                    builderI = ProtoBuf$TypeTable.i(protoBuf$TypeTable);
                                }
                                ProtoBuf$TypeTable protoBuf$TypeTable2 = (ProtoBuf$TypeTable) codedInputStream.h(ProtoBuf$TypeTable.f73520i, extensionRegistryLite);
                                this.f73417h = protoBuf$TypeTable2;
                                if (builderI != null) {
                                    builderI.k(protoBuf$TypeTable2);
                                    this.f73417h = builderI.j();
                                }
                                this.d |= 1;
                            } else if (iO == 258) {
                                if ((this.d & 2) == 2) {
                                    ProtoBuf$VersionRequirementTable protoBuf$VersionRequirementTable = this.f73418i;
                                    protoBuf$VersionRequirementTable.getClass();
                                    builder = new ProtoBuf$VersionRequirementTable.Builder();
                                    builder.k(protoBuf$VersionRequirementTable);
                                }
                                ProtoBuf$VersionRequirementTable protoBuf$VersionRequirementTable2 = (ProtoBuf$VersionRequirementTable) codedInputStream.h(ProtoBuf$VersionRequirementTable.g, extensionRegistryLite);
                                this.f73418i = protoBuf$VersionRequirementTable2;
                                if (builder != null) {
                                    builder.k(protoBuf$VersionRequirementTable2);
                                    this.f73418i = builder.j();
                                }
                                this.d |= 2;
                            } else if (!q(codedInputStream, codedOutputStreamJ, extensionRegistryLite, iO)) {
                            }
                        } else {
                            int i5 = (i2 == true ? 1 : 0) & 4;
                            i2 = i2;
                            if (i5 != 4) {
                                this.g = new ArrayList();
                                i2 = (i2 == true ? 1 : 0) | 4;
                            }
                            this.g.add(codedInputStream.h(ProtoBuf$TypeAlias.r, extensionRegistryLite));
                        }
                    }
                    z = true;
                } catch (Throwable th) {
                    if (((i2 == true ? 1 : 0) & 1) == 1) {
                        this.f73415e = Collections.unmodifiableList(this.f73415e);
                    }
                    if (((i2 == true ? 1 : 0) & 2) == 2) {
                        this.f73416f = Collections.unmodifiableList(this.f73416f);
                    }
                    if (((i2 == true ? 1 : 0) & 4) == 4) {
                        this.g = Collections.unmodifiableList(this.g);
                    }
                    try {
                        codedOutputStreamJ.k();
                    } catch (IOException unused) {
                    } finally {
                        this.f73414c = output.j();
                    }
                    p();
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
        if (((i2 == true ? 1 : 0) & 1) == 1) {
            this.f73415e = Collections.unmodifiableList(this.f73415e);
        }
        if (((i2 == true ? 1 : 0) & 2) == 2) {
            this.f73416f = Collections.unmodifiableList(this.f73416f);
        }
        if (((i2 == true ? 1 : 0) & 4) == 4) {
            this.g = Collections.unmodifiableList(this.g);
        }
        try {
            codedOutputStreamJ.k();
        } catch (IOException unused2) {
        } finally {
            this.f73414c = output.j();
        }
        p();
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLiteOrBuilder
    public final boolean a() {
        byte b2 = this.f73419j;
        if (b2 == 1) {
            return true;
        }
        if (b2 == 0) {
            return false;
        }
        for (int i2 = 0; i2 < this.f73415e.size(); i2++) {
            if (!((ProtoBuf$Function) this.f73415e.get(i2)).a()) {
                this.f73419j = (byte) 0;
                return false;
            }
        }
        for (int i3 = 0; i3 < this.f73416f.size(); i3++) {
            if (!((ProtoBuf$Property) this.f73416f.get(i3)).a()) {
                this.f73419j = (byte) 0;
                return false;
            }
        }
        for (int i4 = 0; i4 < this.g.size(); i4++) {
            if (!((ProtoBuf$TypeAlias) this.g.get(i4)).a()) {
                this.f73419j = (byte) 0;
                return false;
            }
        }
        if ((this.d & 1) == 1 && !this.f73417h.a()) {
            this.f73419j = (byte) 0;
            return false;
        }
        if (i()) {
            this.f73419j = (byte) 1;
            return true;
        }
        this.f73419j = (byte) 0;
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
        int i2 = this.f73420k;
        if (i2 != -1) {
            return i2;
        }
        int iD = 0;
        for (int i3 = 0; i3 < this.f73415e.size(); i3++) {
            iD += CodedOutputStream.d(3, (MessageLite) this.f73415e.get(i3));
        }
        for (int i4 = 0; i4 < this.f73416f.size(); i4++) {
            iD += CodedOutputStream.d(4, (MessageLite) this.f73416f.get(i4));
        }
        for (int i5 = 0; i5 < this.g.size(); i5++) {
            iD += CodedOutputStream.d(5, (MessageLite) this.g.get(i5));
        }
        if ((this.d & 1) == 1) {
            iD += CodedOutputStream.d(30, this.f73417h);
        }
        if ((this.d & 2) == 2) {
            iD += CodedOutputStream.d(32, this.f73418i);
        }
        int size = this.f73414c.size() + j() + iD;
        this.f73420k = size;
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
        for (int i2 = 0; i2 < this.f73415e.size(); i2++) {
            codedOutputStream.o(3, (MessageLite) this.f73415e.get(i2));
        }
        for (int i3 = 0; i3 < this.f73416f.size(); i3++) {
            codedOutputStream.o(4, (MessageLite) this.f73416f.get(i3));
        }
        for (int i4 = 0; i4 < this.g.size(); i4++) {
            codedOutputStream.o(5, (MessageLite) this.g.get(i4));
        }
        if ((this.d & 1) == 1) {
            codedOutputStream.o(30, this.f73417h);
        }
        if ((this.d & 2) == 2) {
            codedOutputStream.o(32, this.f73418i);
        }
        extensionWriter.a(200, codedOutputStream);
        codedOutputStream.r(this.f73414c);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLiteOrBuilder
    public final MessageLite f() {
        return l;
    }

    public ProtoBuf$Package() {
        this.f73419j = (byte) -1;
        this.f73420k = -1;
        this.f73414c = ByteString.f73706b;
    }

    public ProtoBuf$Package(Builder builder) {
        super(builder);
        this.f73419j = (byte) -1;
        this.f73420k = -1;
        this.f73414c = builder.f73731b;
    }
}
