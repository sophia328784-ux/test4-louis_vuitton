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
public final class ProtoBuf$PackageFragment extends GeneratedMessageLite.ExtendableMessage<ProtoBuf$PackageFragment> implements ProtoBuf$PackageFragmentOrBuilder {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final ProtoBuf$PackageFragment f73426k;
    public static final Parser l = new AnonymousClass1();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ByteString f73427c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public ProtoBuf$StringTable f73428e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public ProtoBuf$QualifiedNameTable f73429f;
    public ProtoBuf$Package g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public List f73430h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public byte f73431i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f73432j;

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$PackageFragment$1, reason: invalid class name */
    public static class AnonymousClass1 extends AbstractParser<ProtoBuf$PackageFragment> {
        @Override // kotlin.reflect.jvm.internal.impl.protobuf.Parser
        public final Object a(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
            return new ProtoBuf$PackageFragment(codedInputStream, extensionRegistryLite);
        }
    }

    public static final class Builder extends GeneratedMessageLite.ExtendableBuilder<ProtoBuf$PackageFragment, Builder> implements ProtoBuf$PackageFragmentOrBuilder {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f73433e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public ProtoBuf$StringTable f73434f = ProtoBuf$StringTable.f73465f;
        public ProtoBuf$QualifiedNameTable g = ProtoBuf$QualifiedNameTable.f73450f;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public ProtoBuf$Package f73435h = ProtoBuf$Package.l;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public List f73436i = Collections.EMPTY_LIST;

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite.Builder
        public final MessageLite build() {
            ProtoBuf$PackageFragment protoBuf$PackageFragmentK = k();
            if (protoBuf$PackageFragmentK.a()) {
                return protoBuf$PackageFragmentK;
            }
            throw new UninitializedMessageException(protoBuf$PackageFragmentK);
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
            l((ProtoBuf$PackageFragment) generatedMessageLite);
            return this;
        }

        public final ProtoBuf$PackageFragment k() {
            ProtoBuf$PackageFragment protoBuf$PackageFragment = new ProtoBuf$PackageFragment(this);
            int i2 = this.f73433e;
            int i3 = (i2 & 1) != 1 ? 0 : 1;
            protoBuf$PackageFragment.f73428e = this.f73434f;
            if ((i2 & 2) == 2) {
                i3 |= 2;
            }
            protoBuf$PackageFragment.f73429f = this.g;
            if ((i2 & 4) == 4) {
                i3 |= 4;
            }
            protoBuf$PackageFragment.g = this.f73435h;
            if ((i2 & 8) == 8) {
                this.f73436i = Collections.unmodifiableList(this.f73436i);
                this.f73433e &= -9;
            }
            protoBuf$PackageFragment.f73430h = this.f73436i;
            protoBuf$PackageFragment.d = i3;
            return protoBuf$PackageFragment;
        }

        public final void l(ProtoBuf$PackageFragment protoBuf$PackageFragment) {
            ProtoBuf$Package protoBuf$Package;
            ProtoBuf$QualifiedNameTable protoBuf$QualifiedNameTable;
            ProtoBuf$StringTable protoBuf$StringTable;
            if (protoBuf$PackageFragment == ProtoBuf$PackageFragment.f73426k) {
                return;
            }
            if ((protoBuf$PackageFragment.d & 1) == 1) {
                ProtoBuf$StringTable protoBuf$StringTable2 = protoBuf$PackageFragment.f73428e;
                if ((this.f73433e & 1) != 1 || (protoBuf$StringTable = this.f73434f) == ProtoBuf$StringTable.f73465f) {
                    this.f73434f = protoBuf$StringTable2;
                } else {
                    ProtoBuf$StringTable.Builder builder = new ProtoBuf$StringTable.Builder();
                    builder.k(protoBuf$StringTable);
                    builder.k(protoBuf$StringTable2);
                    this.f73434f = builder.j();
                }
                this.f73433e |= 1;
            }
            if ((protoBuf$PackageFragment.d & 2) == 2) {
                ProtoBuf$QualifiedNameTable protoBuf$QualifiedNameTable2 = protoBuf$PackageFragment.f73429f;
                if ((this.f73433e & 2) != 2 || (protoBuf$QualifiedNameTable = this.g) == ProtoBuf$QualifiedNameTable.f73450f) {
                    this.g = protoBuf$QualifiedNameTable2;
                } else {
                    ProtoBuf$QualifiedNameTable.Builder builder2 = new ProtoBuf$QualifiedNameTable.Builder();
                    builder2.k(protoBuf$QualifiedNameTable);
                    builder2.k(protoBuf$QualifiedNameTable2);
                    this.g = builder2.j();
                }
                this.f73433e |= 2;
            }
            if ((protoBuf$PackageFragment.d & 4) == 4) {
                ProtoBuf$Package protoBuf$Package2 = protoBuf$PackageFragment.g;
                if ((this.f73433e & 4) != 4 || (protoBuf$Package = this.f73435h) == ProtoBuf$Package.l) {
                    this.f73435h = protoBuf$Package2;
                } else {
                    ProtoBuf$Package.Builder builder3 = new ProtoBuf$Package.Builder();
                    builder3.l(protoBuf$Package);
                    builder3.l(protoBuf$Package2);
                    this.f73435h = builder3.k();
                }
                this.f73433e |= 4;
            }
            if (!protoBuf$PackageFragment.f73430h.isEmpty()) {
                if (this.f73436i.isEmpty()) {
                    this.f73436i = protoBuf$PackageFragment.f73430h;
                    this.f73433e &= -9;
                } else {
                    if ((this.f73433e & 8) != 8) {
                        this.f73436i = new ArrayList(this.f73436i);
                        this.f73433e |= 8;
                    }
                    this.f73436i.addAll(protoBuf$PackageFragment.f73430h);
                }
            }
            j(protoBuf$PackageFragment);
            this.f73731b = this.f73731b.b(protoBuf$PackageFragment.f73427c);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite.Builder, kotlin.reflect.jvm.internal.impl.protobuf.MessageLite.Builder
        public final /* bridge */ /* synthetic */ MessageLite.Builder n(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
            u(codedInputStream, extensionRegistryLite);
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:14:0x001d  */
        public final void u(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
            ProtoBuf$PackageFragment protoBuf$PackageFragment = null;
            try {
                try {
                    ((AnonymousClass1) ProtoBuf$PackageFragment.l).getClass();
                    l(new ProtoBuf$PackageFragment(codedInputStream, extensionRegistryLite));
                } catch (InvalidProtocolBufferException e2) {
                    ProtoBuf$PackageFragment protoBuf$PackageFragment2 = (ProtoBuf$PackageFragment) e2.f73743b;
                    try {
                        throw e2;
                    } catch (Throwable th) {
                        th = th;
                        protoBuf$PackageFragment = protoBuf$PackageFragment2;
                        if (protoBuf$PackageFragment != null) {
                            l(protoBuf$PackageFragment);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (protoBuf$PackageFragment != null) {
                    l(protoBuf$PackageFragment);
                }
                throw th;
            }
        }
    }

    static {
        ProtoBuf$PackageFragment protoBuf$PackageFragment = new ProtoBuf$PackageFragment();
        f73426k = protoBuf$PackageFragment;
        protoBuf$PackageFragment.f73428e = ProtoBuf$StringTable.f73465f;
        protoBuf$PackageFragment.f73429f = ProtoBuf$QualifiedNameTable.f73450f;
        protoBuf$PackageFragment.g = ProtoBuf$Package.l;
        protoBuf$PackageFragment.f73430h = Collections.EMPTY_LIST;
    }

    public ProtoBuf$PackageFragment(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
        this.f73431i = (byte) -1;
        this.f73432j = -1;
        this.f73428e = ProtoBuf$StringTable.f73465f;
        this.f73429f = ProtoBuf$QualifiedNameTable.f73450f;
        this.g = ProtoBuf$Package.l;
        this.f73430h = Collections.EMPTY_LIST;
        ByteString.Output output = new ByteString.Output();
        CodedOutputStream codedOutputStreamJ = CodedOutputStream.j(output, 1);
        boolean z = false;
        char c2 = 0;
        while (!z) {
            try {
                try {
                    int iO = codedInputStream.o();
                    if (iO != 0) {
                        ProtoBuf$Package.Builder builder = null;
                        ProtoBuf$StringTable.Builder builder2 = null;
                        ProtoBuf$QualifiedNameTable.Builder builder3 = null;
                        if (iO == 10) {
                            if ((this.d & 1) == 1) {
                                ProtoBuf$StringTable protoBuf$StringTable = this.f73428e;
                                protoBuf$StringTable.getClass();
                                builder2 = new ProtoBuf$StringTable.Builder();
                                builder2.k(protoBuf$StringTable);
                            }
                            ProtoBuf$StringTable protoBuf$StringTable2 = (ProtoBuf$StringTable) codedInputStream.h(ProtoBuf$StringTable.g, extensionRegistryLite);
                            this.f73428e = protoBuf$StringTable2;
                            if (builder2 != null) {
                                builder2.k(protoBuf$StringTable2);
                                this.f73428e = builder2.j();
                            }
                            this.d |= 1;
                        } else if (iO == 18) {
                            if ((this.d & 2) == 2) {
                                ProtoBuf$QualifiedNameTable protoBuf$QualifiedNameTable = this.f73429f;
                                protoBuf$QualifiedNameTable.getClass();
                                builder3 = new ProtoBuf$QualifiedNameTable.Builder();
                                builder3.k(protoBuf$QualifiedNameTable);
                            }
                            ProtoBuf$QualifiedNameTable protoBuf$QualifiedNameTable2 = (ProtoBuf$QualifiedNameTable) codedInputStream.h(ProtoBuf$QualifiedNameTable.g, extensionRegistryLite);
                            this.f73429f = protoBuf$QualifiedNameTable2;
                            if (builder3 != null) {
                                builder3.k(protoBuf$QualifiedNameTable2);
                                this.f73429f = builder3.j();
                            }
                            this.d |= 2;
                        } else if (iO == 26) {
                            if ((this.d & 4) == 4) {
                                ProtoBuf$Package protoBuf$Package = this.g;
                                protoBuf$Package.getClass();
                                builder = new ProtoBuf$Package.Builder();
                                builder.l(protoBuf$Package);
                            }
                            ProtoBuf$Package protoBuf$Package2 = (ProtoBuf$Package) codedInputStream.h(ProtoBuf$Package.m, extensionRegistryLite);
                            this.g = protoBuf$Package2;
                            if (builder != null) {
                                builder.l(protoBuf$Package2);
                                this.g = builder.k();
                            }
                            this.d |= 4;
                        } else if (iO == 34) {
                            int i2 = (c2 == true ? 1 : 0) & '\b';
                            c2 = c2;
                            if (i2 != 8) {
                                this.f73430h = new ArrayList();
                                c2 = '\b';
                            }
                            this.f73430h.add(codedInputStream.h(ProtoBuf$Class.I, extensionRegistryLite));
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
                if (((c2 == true ? 1 : 0) & '\b') == 8) {
                    this.f73430h = Collections.unmodifiableList(this.f73430h);
                }
                try {
                    codedOutputStreamJ.k();
                } catch (IOException unused) {
                } finally {
                    this.f73427c = output.j();
                }
                p();
                throw th;
            }
        }
        if (((c2 == true ? 1 : 0) & '\b') == 8) {
            this.f73430h = Collections.unmodifiableList(this.f73430h);
        }
        try {
            codedOutputStreamJ.k();
        } catch (IOException unused2) {
        } finally {
            this.f73427c = output.j();
        }
        p();
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLiteOrBuilder
    public final boolean a() {
        byte b2 = this.f73431i;
        if (b2 == 1) {
            return true;
        }
        if (b2 == 0) {
            return false;
        }
        if ((this.d & 2) == 2 && !this.f73429f.a()) {
            this.f73431i = (byte) 0;
            return false;
        }
        if ((this.d & 4) == 4 && !this.g.a()) {
            this.f73431i = (byte) 0;
            return false;
        }
        for (int i2 = 0; i2 < this.f73430h.size(); i2++) {
            if (!((ProtoBuf$Class) this.f73430h.get(i2)).a()) {
                this.f73431i = (byte) 0;
                return false;
            }
        }
        if (i()) {
            this.f73431i = (byte) 1;
            return true;
        }
        this.f73431i = (byte) 0;
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
        int i2 = this.f73432j;
        if (i2 != -1) {
            return i2;
        }
        int iD = (this.d & 1) == 1 ? CodedOutputStream.d(1, this.f73428e) : 0;
        if ((this.d & 2) == 2) {
            iD += CodedOutputStream.d(2, this.f73429f);
        }
        if ((this.d & 4) == 4) {
            iD += CodedOutputStream.d(3, this.g);
        }
        for (int i3 = 0; i3 < this.f73430h.size(); i3++) {
            iD += CodedOutputStream.d(4, (MessageLite) this.f73430h.get(i3));
        }
        int size = this.f73427c.size() + j() + iD;
        this.f73432j = size;
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
            codedOutputStream.o(1, this.f73428e);
        }
        if ((this.d & 2) == 2) {
            codedOutputStream.o(2, this.f73429f);
        }
        if ((this.d & 4) == 4) {
            codedOutputStream.o(3, this.g);
        }
        for (int i2 = 0; i2 < this.f73430h.size(); i2++) {
            codedOutputStream.o(4, (MessageLite) this.f73430h.get(i2));
        }
        extensionWriter.a(200, codedOutputStream);
        codedOutputStream.r(this.f73427c);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLiteOrBuilder
    public final MessageLite f() {
        return f73426k;
    }

    public ProtoBuf$PackageFragment() {
        this.f73431i = (byte) -1;
        this.f73432j = -1;
        this.f73427c = ByteString.f73706b;
    }

    public ProtoBuf$PackageFragment(Builder builder) {
        super(builder);
        this.f73431i = (byte) -1;
        this.f73432j = -1;
        this.f73427c = builder.f73731b;
    }
}
