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
public final class ProtoBuf$Constructor extends GeneratedMessageLite.ExtendableMessage<ProtoBuf$Constructor> implements ProtoBuf$ConstructorOrBuilder {
    public static final ProtoBuf$Constructor l;
    public static final Parser m = new AnonymousClass1();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ByteString f73350c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f73351e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public List f73352f;
    public List g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public List f73353h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public List f73354i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public byte f73355j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f73356k;

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Constructor$1, reason: invalid class name */
    public static class AnonymousClass1 extends AbstractParser<ProtoBuf$Constructor> {
        @Override // kotlin.reflect.jvm.internal.impl.protobuf.Parser
        public final Object a(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
            return new ProtoBuf$Constructor(codedInputStream, extensionRegistryLite);
        }
    }

    public static final class Builder extends GeneratedMessageLite.ExtendableBuilder<ProtoBuf$Constructor, Builder> implements ProtoBuf$ConstructorOrBuilder {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f73357e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f73358f = 6;
        public List g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public List f73359h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public List f73360i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public List f73361j;

        public Builder() {
            List list = Collections.EMPTY_LIST;
            this.g = list;
            this.f73359h = list;
            this.f73360i = list;
            this.f73361j = list;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite.Builder
        public final MessageLite build() {
            ProtoBuf$Constructor protoBuf$ConstructorK = k();
            if (protoBuf$ConstructorK.a()) {
                return protoBuf$ConstructorK;
            }
            throw new UninitializedMessageException(protoBuf$ConstructorK);
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
            l((ProtoBuf$Constructor) generatedMessageLite);
            return this;
        }

        public final ProtoBuf$Constructor k() {
            ProtoBuf$Constructor protoBuf$Constructor = new ProtoBuf$Constructor(this);
            int i2 = this.f73357e;
            int i3 = (i2 & 1) != 1 ? 0 : 1;
            protoBuf$Constructor.f73351e = this.f73358f;
            if ((i2 & 2) == 2) {
                this.g = Collections.unmodifiableList(this.g);
                this.f73357e &= -3;
            }
            protoBuf$Constructor.f73352f = this.g;
            if ((this.f73357e & 4) == 4) {
                this.f73359h = Collections.unmodifiableList(this.f73359h);
                this.f73357e &= -5;
            }
            protoBuf$Constructor.g = this.f73359h;
            if ((this.f73357e & 8) == 8) {
                this.f73360i = Collections.unmodifiableList(this.f73360i);
                this.f73357e &= -9;
            }
            protoBuf$Constructor.f73353h = this.f73360i;
            if ((this.f73357e & 16) == 16) {
                this.f73361j = Collections.unmodifiableList(this.f73361j);
                this.f73357e &= -17;
            }
            protoBuf$Constructor.f73354i = this.f73361j;
            protoBuf$Constructor.d = i3;
            return protoBuf$Constructor;
        }

        public final void l(ProtoBuf$Constructor protoBuf$Constructor) {
            if (protoBuf$Constructor == ProtoBuf$Constructor.l) {
                return;
            }
            if ((protoBuf$Constructor.d & 1) == 1) {
                int i2 = protoBuf$Constructor.f73351e;
                this.f73357e = 1 | this.f73357e;
                this.f73358f = i2;
            }
            if (!protoBuf$Constructor.f73352f.isEmpty()) {
                if (this.g.isEmpty()) {
                    this.g = protoBuf$Constructor.f73352f;
                    this.f73357e &= -3;
                } else {
                    if ((this.f73357e & 2) != 2) {
                        this.g = new ArrayList(this.g);
                        this.f73357e |= 2;
                    }
                    this.g.addAll(protoBuf$Constructor.f73352f);
                }
            }
            if (!protoBuf$Constructor.g.isEmpty()) {
                if (this.f73359h.isEmpty()) {
                    this.f73359h = protoBuf$Constructor.g;
                    this.f73357e &= -5;
                } else {
                    if ((this.f73357e & 4) != 4) {
                        this.f73359h = new ArrayList(this.f73359h);
                        this.f73357e |= 4;
                    }
                    this.f73359h.addAll(protoBuf$Constructor.g);
                }
            }
            if (!protoBuf$Constructor.f73353h.isEmpty()) {
                if (this.f73360i.isEmpty()) {
                    this.f73360i = protoBuf$Constructor.f73353h;
                    this.f73357e &= -9;
                } else {
                    if ((this.f73357e & 8) != 8) {
                        this.f73360i = new ArrayList(this.f73360i);
                        this.f73357e |= 8;
                    }
                    this.f73360i.addAll(protoBuf$Constructor.f73353h);
                }
            }
            if (!protoBuf$Constructor.f73354i.isEmpty()) {
                if (this.f73361j.isEmpty()) {
                    this.f73361j = protoBuf$Constructor.f73354i;
                    this.f73357e &= -17;
                } else {
                    if ((this.f73357e & 16) != 16) {
                        this.f73361j = new ArrayList(this.f73361j);
                        this.f73357e |= 16;
                    }
                    this.f73361j.addAll(protoBuf$Constructor.f73354i);
                }
            }
            j(protoBuf$Constructor);
            this.f73731b = this.f73731b.b(protoBuf$Constructor.f73350c);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite.Builder, kotlin.reflect.jvm.internal.impl.protobuf.MessageLite.Builder
        public final /* bridge */ /* synthetic */ MessageLite.Builder n(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
            u(codedInputStream, extensionRegistryLite);
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:14:0x001d  */
        public final void u(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
            ProtoBuf$Constructor protoBuf$Constructor = null;
            try {
                try {
                    ((AnonymousClass1) ProtoBuf$Constructor.m).getClass();
                    l(new ProtoBuf$Constructor(codedInputStream, extensionRegistryLite));
                } catch (InvalidProtocolBufferException e2) {
                    ProtoBuf$Constructor protoBuf$Constructor2 = (ProtoBuf$Constructor) e2.f73743b;
                    try {
                        throw e2;
                    } catch (Throwable th) {
                        th = th;
                        protoBuf$Constructor = protoBuf$Constructor2;
                        if (protoBuf$Constructor != null) {
                            l(protoBuf$Constructor);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (protoBuf$Constructor != null) {
                    l(protoBuf$Constructor);
                }
                throw th;
            }
        }
    }

    static {
        ProtoBuf$Constructor protoBuf$Constructor = new ProtoBuf$Constructor();
        l = protoBuf$Constructor;
        protoBuf$Constructor.f73351e = 6;
        List list = Collections.EMPTY_LIST;
        protoBuf$Constructor.f73352f = list;
        protoBuf$Constructor.g = list;
        protoBuf$Constructor.f73353h = list;
        protoBuf$Constructor.f73354i = list;
    }

    public ProtoBuf$Constructor(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
        this.f73355j = (byte) -1;
        this.f73356k = -1;
        this.f73351e = 6;
        List list = Collections.EMPTY_LIST;
        this.f73352f = list;
        this.g = list;
        this.f73353h = list;
        this.f73354i = list;
        ByteString.Output output = new ByteString.Output();
        CodedOutputStream codedOutputStreamJ = CodedOutputStream.j(output, 1);
        boolean z = false;
        int i2 = 0;
        while (!z) {
            try {
                try {
                    int iO = codedInputStream.o();
                    if (iO != 0) {
                        if (iO == 8) {
                            this.d |= 1;
                            this.f73351e = codedInputStream.l();
                        } else if (iO == 18) {
                            if ((i2 & 2) != 2) {
                                this.f73352f = new ArrayList();
                                i2 |= 2;
                            }
                            this.f73352f.add(codedInputStream.h(ProtoBuf$ValueParameter.p, extensionRegistryLite));
                        } else if (iO == 26) {
                            if ((i2 & 16) != 16) {
                                this.f73354i = new ArrayList();
                                i2 |= 16;
                            }
                            this.f73354i.add(codedInputStream.h(ProtoBuf$Annotation.f73299i, extensionRegistryLite));
                        } else if (iO == 248) {
                            if ((i2 & 4) != 4) {
                                this.g = new ArrayList();
                                i2 |= 4;
                            }
                            this.g.add(Integer.valueOf(codedInputStream.l()));
                        } else if (iO == 250) {
                            int iE = codedInputStream.e(codedInputStream.l());
                            if ((i2 & 4) != 4 && codedInputStream.c() > 0) {
                                this.g = new ArrayList();
                                i2 |= 4;
                            }
                            while (codedInputStream.c() > 0) {
                                this.g.add(Integer.valueOf(codedInputStream.l()));
                            }
                            codedInputStream.d(iE);
                        } else if (iO == 258) {
                            if ((i2 & 8) != 8) {
                                this.f73353h = new ArrayList();
                                i2 |= 8;
                            }
                            this.f73353h.add(codedInputStream.h(ProtoBuf$CompilerPluginData.f73343i, extensionRegistryLite));
                        } else if (!q(codedInputStream, codedOutputStreamJ, extensionRegistryLite, iO)) {
                        }
                    }
                    z = true;
                } catch (Throwable th) {
                    if ((i2 & 2) == 2) {
                        this.f73352f = Collections.unmodifiableList(this.f73352f);
                    }
                    if ((i2 & 16) == 16) {
                        this.f73354i = Collections.unmodifiableList(this.f73354i);
                    }
                    if ((i2 & 4) == 4) {
                        this.g = Collections.unmodifiableList(this.g);
                    }
                    if ((i2 & 8) == 8) {
                        this.f73353h = Collections.unmodifiableList(this.f73353h);
                    }
                    try {
                        codedOutputStreamJ.k();
                    } catch (IOException unused) {
                    } finally {
                        this.f73350c = output.j();
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
        if ((i2 & 2) == 2) {
            this.f73352f = Collections.unmodifiableList(this.f73352f);
        }
        if ((i2 & 16) == 16) {
            this.f73354i = Collections.unmodifiableList(this.f73354i);
        }
        if ((i2 & 4) == 4) {
            this.g = Collections.unmodifiableList(this.g);
        }
        if ((i2 & 8) == 8) {
            this.f73353h = Collections.unmodifiableList(this.f73353h);
        }
        try {
            codedOutputStreamJ.k();
        } catch (IOException unused2) {
        } finally {
            this.f73350c = output.j();
        }
        p();
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLiteOrBuilder
    public final boolean a() {
        byte b2 = this.f73355j;
        if (b2 == 1) {
            return true;
        }
        if (b2 == 0) {
            return false;
        }
        for (int i2 = 0; i2 < this.f73352f.size(); i2++) {
            if (!((ProtoBuf$ValueParameter) this.f73352f.get(i2)).a()) {
                this.f73355j = (byte) 0;
                return false;
            }
        }
        for (int i3 = 0; i3 < this.f73353h.size(); i3++) {
            if (!((ProtoBuf$CompilerPluginData) this.f73353h.get(i3)).a()) {
                this.f73355j = (byte) 0;
                return false;
            }
        }
        for (int i4 = 0; i4 < this.f73354i.size(); i4++) {
            if (!((ProtoBuf$Annotation) this.f73354i.get(i4)).a()) {
                this.f73355j = (byte) 0;
                return false;
            }
        }
        if (i()) {
            this.f73355j = (byte) 1;
            return true;
        }
        this.f73355j = (byte) 0;
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
        List list;
        int i2 = this.f73356k;
        if (i2 != -1) {
            return i2;
        }
        int iB = (this.d & 1) == 1 ? CodedOutputStream.b(1, this.f73351e) : 0;
        for (int i3 = 0; i3 < this.f73352f.size(); i3++) {
            iB += CodedOutputStream.d(2, (MessageLite) this.f73352f.get(i3));
        }
        for (int i4 = 0; i4 < this.f73354i.size(); i4++) {
            iB += CodedOutputStream.d(3, (MessageLite) this.f73354i.get(i4));
        }
        int i5 = 0;
        int iC = 0;
        while (true) {
            int size = this.g.size();
            list = this.g;
            if (i5 >= size) {
                break;
            }
            iC += CodedOutputStream.c(((Integer) list.get(i5)).intValue());
            i5++;
        }
        int size2 = (list.size() * 2) + iB + iC;
        for (int i6 = 0; i6 < this.f73353h.size(); i6++) {
            size2 += CodedOutputStream.d(32, (MessageLite) this.f73353h.get(i6));
        }
        int size3 = this.f73350c.size() + j() + size2;
        this.f73356k = size3;
        return size3;
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
            codedOutputStream.m(1, this.f73351e);
        }
        for (int i2 = 0; i2 < this.f73352f.size(); i2++) {
            codedOutputStream.o(2, (MessageLite) this.f73352f.get(i2));
        }
        for (int i3 = 0; i3 < this.f73354i.size(); i3++) {
            codedOutputStream.o(3, (MessageLite) this.f73354i.get(i3));
        }
        for (int i4 = 0; i4 < this.g.size(); i4++) {
            codedOutputStream.m(31, ((Integer) this.g.get(i4)).intValue());
        }
        for (int i5 = 0; i5 < this.f73353h.size(); i5++) {
            codedOutputStream.o(32, (MessageLite) this.f73353h.get(i5));
        }
        extensionWriter.a(19000, codedOutputStream);
        codedOutputStream.r(this.f73350c);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLiteOrBuilder
    public final MessageLite f() {
        return l;
    }

    public ProtoBuf$Constructor() {
        this.f73355j = (byte) -1;
        this.f73356k = -1;
        this.f73350c = ByteString.f73706b;
    }

    public ProtoBuf$Constructor(Builder builder) {
        super(builder);
        this.f73355j = (byte) -1;
        this.f73356k = -1;
        this.f73350c = builder.f73731b;
    }
}
