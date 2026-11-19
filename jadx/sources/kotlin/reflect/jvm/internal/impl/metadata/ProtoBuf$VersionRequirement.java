package kotlin.reflect.jvm.internal.impl.metadata;

import java.io.IOException;
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
import kotlin.reflect.jvm.internal.impl.protobuf.Parser;
import kotlin.reflect.jvm.internal.impl.protobuf.UninitializedMessageException;

/* JADX INFO: loaded from: classes4.dex */
public final class ProtoBuf$VersionRequirement extends GeneratedMessageLite implements ProtoBuf$VersionRequirementOrBuilder {
    public static final ProtoBuf$VersionRequirement l;
    public static final Parser m = new AnonymousClass1();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ByteString f73540b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f73541c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f73542e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Level f73543f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f73544h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public VersionKind f73545i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public byte f73546j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f73547k;

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$VersionRequirement$1, reason: invalid class name */
    public static class AnonymousClass1 extends AbstractParser<ProtoBuf$VersionRequirement> {
        @Override // kotlin.reflect.jvm.internal.impl.protobuf.Parser
        public final Object a(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
            return new ProtoBuf$VersionRequirement(codedInputStream);
        }
    }

    public static final class Builder extends GeneratedMessageLite.Builder<ProtoBuf$VersionRequirement, Builder> implements ProtoBuf$VersionRequirementOrBuilder {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f73548c;
        public int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f73549e;
        public int g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f73551h;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public Level f73550f = Level.ERROR;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public VersionKind f73552i = VersionKind.LANGUAGE_VERSION;

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite.Builder
        public final MessageLite build() {
            ProtoBuf$VersionRequirement protoBuf$VersionRequirementJ = j();
            if (protoBuf$VersionRequirementJ.a()) {
                return protoBuf$VersionRequirementJ;
            }
            throw new UninitializedMessageException(protoBuf$VersionRequirementJ);
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
            k((ProtoBuf$VersionRequirement) generatedMessageLite);
            return this;
        }

        public final ProtoBuf$VersionRequirement j() {
            ProtoBuf$VersionRequirement protoBuf$VersionRequirement = new ProtoBuf$VersionRequirement(this);
            int i2 = this.f73548c;
            int i3 = (i2 & 1) != 1 ? 0 : 1;
            protoBuf$VersionRequirement.d = this.d;
            if ((i2 & 2) == 2) {
                i3 |= 2;
            }
            protoBuf$VersionRequirement.f73542e = this.f73549e;
            if ((i2 & 4) == 4) {
                i3 |= 4;
            }
            protoBuf$VersionRequirement.f73543f = this.f73550f;
            if ((i2 & 8) == 8) {
                i3 |= 8;
            }
            protoBuf$VersionRequirement.g = this.g;
            if ((i2 & 16) == 16) {
                i3 |= 16;
            }
            protoBuf$VersionRequirement.f73544h = this.f73551h;
            if ((i2 & 32) == 32) {
                i3 |= 32;
            }
            protoBuf$VersionRequirement.f73545i = this.f73552i;
            protoBuf$VersionRequirement.f73541c = i3;
            return protoBuf$VersionRequirement;
        }

        public final void k(ProtoBuf$VersionRequirement protoBuf$VersionRequirement) {
            if (protoBuf$VersionRequirement == ProtoBuf$VersionRequirement.l) {
                return;
            }
            int i2 = protoBuf$VersionRequirement.f73541c;
            if ((i2 & 1) == 1) {
                int i3 = protoBuf$VersionRequirement.d;
                this.f73548c = 1 | this.f73548c;
                this.d = i3;
            }
            if ((i2 & 2) == 2) {
                int i4 = protoBuf$VersionRequirement.f73542e;
                this.f73548c = 2 | this.f73548c;
                this.f73549e = i4;
            }
            if ((i2 & 4) == 4) {
                Level level = protoBuf$VersionRequirement.f73543f;
                level.getClass();
                this.f73548c = 4 | this.f73548c;
                this.f73550f = level;
            }
            int i5 = protoBuf$VersionRequirement.f73541c;
            if ((i5 & 8) == 8) {
                int i6 = protoBuf$VersionRequirement.g;
                this.f73548c = 8 | this.f73548c;
                this.g = i6;
            }
            if ((i5 & 16) == 16) {
                int i7 = protoBuf$VersionRequirement.f73544h;
                this.f73548c = 16 | this.f73548c;
                this.f73551h = i7;
            }
            if ((i5 & 32) == 32) {
                VersionKind versionKind = protoBuf$VersionRequirement.f73545i;
                versionKind.getClass();
                this.f73548c = 32 | this.f73548c;
                this.f73552i = versionKind;
            }
            this.f73731b = this.f73731b.b(protoBuf$VersionRequirement.f73540b);
        }

        /* JADX WARN: Code duplicated, block: B:14:0x001d  */
        public final void l(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
            ProtoBuf$VersionRequirement protoBuf$VersionRequirement = null;
            try {
                try {
                    ((AnonymousClass1) ProtoBuf$VersionRequirement.m).getClass();
                    k(new ProtoBuf$VersionRequirement(codedInputStream));
                } catch (InvalidProtocolBufferException e2) {
                    ProtoBuf$VersionRequirement protoBuf$VersionRequirement2 = (ProtoBuf$VersionRequirement) e2.f73743b;
                    try {
                        throw e2;
                    } catch (Throwable th) {
                        th = th;
                        protoBuf$VersionRequirement = protoBuf$VersionRequirement2;
                        if (protoBuf$VersionRequirement != null) {
                            k(protoBuf$VersionRequirement);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (protoBuf$VersionRequirement != null) {
                    k(protoBuf$VersionRequirement);
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

    public enum Level implements Internal.EnumLite {
        WARNING(0),
        ERROR(1),
        HIDDEN(2);

        private static Internal.EnumLiteMap<Level> internalValueMap = new AnonymousClass1();
        private final int value;

        /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$VersionRequirement$Level$1, reason: invalid class name */
        public static class AnonymousClass1 implements Internal.EnumLiteMap<Level> {
        }

        Level(int i2) {
            this.value = i2;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.Internal.EnumLite
        public final int m() {
            return this.value;
        }
    }

    public enum VersionKind implements Internal.EnumLite {
        LANGUAGE_VERSION(0),
        COMPILER_VERSION(1),
        API_VERSION(2);

        private static Internal.EnumLiteMap<VersionKind> internalValueMap = new AnonymousClass1();
        private final int value;

        /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$VersionRequirement$VersionKind$1, reason: invalid class name */
        public static class AnonymousClass1 implements Internal.EnumLiteMap<VersionKind> {
        }

        VersionKind(int i2) {
            this.value = i2;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.Internal.EnumLite
        public final int m() {
            return this.value;
        }
    }

    static {
        ProtoBuf$VersionRequirement protoBuf$VersionRequirement = new ProtoBuf$VersionRequirement();
        l = protoBuf$VersionRequirement;
        protoBuf$VersionRequirement.d = 0;
        protoBuf$VersionRequirement.f73542e = 0;
        protoBuf$VersionRequirement.f73543f = Level.ERROR;
        protoBuf$VersionRequirement.g = 0;
        protoBuf$VersionRequirement.f73544h = 0;
        protoBuf$VersionRequirement.f73545i = VersionKind.LANGUAGE_VERSION;
    }

    public ProtoBuf$VersionRequirement(CodedInputStream codedInputStream) {
        this.f73546j = (byte) -1;
        this.f73547k = -1;
        boolean z = false;
        this.d = 0;
        this.f73542e = 0;
        this.f73543f = Level.ERROR;
        this.g = 0;
        this.f73544h = 0;
        this.f73545i = VersionKind.LANGUAGE_VERSION;
        ByteString.Output output = new ByteString.Output();
        CodedOutputStream codedOutputStreamJ = CodedOutputStream.j(output, 1);
        while (!z) {
            try {
                try {
                    int iO = codedInputStream.o();
                    if (iO != 0) {
                        if (iO == 8) {
                            this.f73541c |= 1;
                            this.d = codedInputStream.l();
                        } else if (iO != 16) {
                            VersionKind versionKind = null;
                            Level level = null;
                            if (iO == 24) {
                                int iL = codedInputStream.l();
                                if (iL == 0) {
                                    level = Level.WARNING;
                                } else if (iL == 1) {
                                    level = Level.ERROR;
                                } else if (iL == 2) {
                                    level = Level.HIDDEN;
                                }
                                if (level == null) {
                                    codedOutputStreamJ.v(iO);
                                    codedOutputStreamJ.v(iL);
                                } else {
                                    this.f73541c |= 4;
                                    this.f73543f = level;
                                }
                            } else if (iO == 32) {
                                this.f73541c |= 8;
                                this.g = codedInputStream.l();
                            } else if (iO == 40) {
                                this.f73541c |= 16;
                                this.f73544h = codedInputStream.l();
                            } else if (iO == 48) {
                                int iL2 = codedInputStream.l();
                                if (iL2 == 0) {
                                    versionKind = VersionKind.LANGUAGE_VERSION;
                                } else if (iL2 == 1) {
                                    versionKind = VersionKind.COMPILER_VERSION;
                                } else if (iL2 == 2) {
                                    versionKind = VersionKind.API_VERSION;
                                }
                                if (versionKind == null) {
                                    codedOutputStreamJ.v(iO);
                                    codedOutputStreamJ.v(iL2);
                                } else {
                                    this.f73541c |= 32;
                                    this.f73545i = versionKind;
                                }
                            } else if (!codedInputStream.r(iO, codedOutputStreamJ)) {
                            }
                        } else {
                            this.f73541c |= 2;
                            this.f73542e = codedInputStream.l();
                        }
                    }
                    z = true;
                } catch (Throwable th) {
                    try {
                        codedOutputStreamJ.k();
                    } catch (IOException unused) {
                    } finally {
                        this.f73540b = output.j();
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
        try {
            codedOutputStreamJ.k();
        } catch (IOException unused2) {
        } finally {
            this.f73540b = output.j();
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLiteOrBuilder
    public final boolean a() {
        byte b2 = this.f73546j;
        if (b2 == 1) {
            return true;
        }
        if (b2 == 0) {
            return false;
        }
        this.f73546j = (byte) 1;
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
        int i2 = this.f73547k;
        if (i2 != -1) {
            return i2;
        }
        int iB = (this.f73541c & 1) == 1 ? CodedOutputStream.b(1, this.d) : 0;
        if ((this.f73541c & 2) == 2) {
            iB += CodedOutputStream.b(2, this.f73542e);
        }
        if ((this.f73541c & 4) == 4) {
            iB += CodedOutputStream.a(3, this.f73543f.m());
        }
        if ((this.f73541c & 8) == 8) {
            iB += CodedOutputStream.b(4, this.g);
        }
        if ((this.f73541c & 16) == 16) {
            iB += CodedOutputStream.b(5, this.f73544h);
        }
        if ((this.f73541c & 32) == 32) {
            iB += CodedOutputStream.a(6, this.f73545i.m());
        }
        int size = this.f73540b.size() + iB;
        this.f73547k = size;
        return size;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite
    public final MessageLite.Builder d() {
        return new Builder();
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite
    public final void e(CodedOutputStream codedOutputStream) {
        c();
        if ((this.f73541c & 1) == 1) {
            codedOutputStream.m(1, this.d);
        }
        if ((this.f73541c & 2) == 2) {
            codedOutputStream.m(2, this.f73542e);
        }
        if ((this.f73541c & 4) == 4) {
            codedOutputStream.l(3, this.f73543f.m());
        }
        if ((this.f73541c & 8) == 8) {
            codedOutputStream.m(4, this.g);
        }
        if ((this.f73541c & 16) == 16) {
            codedOutputStream.m(5, this.f73544h);
        }
        if ((this.f73541c & 32) == 32) {
            codedOutputStream.l(6, this.f73545i.m());
        }
        codedOutputStream.r(this.f73540b);
    }

    public ProtoBuf$VersionRequirement() {
        this.f73546j = (byte) -1;
        this.f73547k = -1;
        this.f73540b = ByteString.f73706b;
    }

    public ProtoBuf$VersionRequirement(Builder builder) {
        this.f73546j = (byte) -1;
        this.f73547k = -1;
        this.f73540b = builder.f73731b;
    }
}
