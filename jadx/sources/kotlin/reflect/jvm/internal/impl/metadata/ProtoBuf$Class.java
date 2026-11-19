package kotlin.reflect.jvm.internal.impl.metadata;

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
import kotlin.reflect.jvm.internal.impl.protobuf.Parser;
import kotlin.reflect.jvm.internal.impl.protobuf.UninitializedMessageException;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* JADX INFO: loaded from: classes4.dex */
public final class ProtoBuf$Class extends GeneratedMessageLite.ExtendableMessage<ProtoBuf$Class> implements ProtoBuf$ClassOrBuilder {
    public static final ProtoBuf$Class H;
    public static final Parser I = new AnonymousClass1();
    public List A;
    public ProtoBuf$TypeTable B;
    public List C;
    public ProtoBuf$VersionRequirementTable D;
    public List E;
    public byte F;
    public int G;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ByteString f73329c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f73330e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f73331f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public List f73332h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public List f73333i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public List f73334j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f73335k;
    public List l;
    public int m;
    public List n;
    public List o;
    public int p;
    public List q;
    public List r;
    public List s;
    public List t;
    public List u;
    public List v;
    public int w;
    public int x;
    public ProtoBuf$Type y;
    public int z;

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class$1, reason: invalid class name */
    public static class AnonymousClass1 extends AbstractParser<ProtoBuf$Class> {
        @Override // kotlin.reflect.jvm.internal.impl.protobuf.Parser
        public final Object a(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
            return new ProtoBuf$Class(codedInputStream, extensionRegistryLite);
        }
    }

    public static final class Builder extends GeneratedMessageLite.ExtendableBuilder<ProtoBuf$Class, Builder> implements ProtoBuf$ClassOrBuilder {
        public ProtoBuf$VersionRequirementTable A;
        public List B;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f73336e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f73337f = 6;
        public int g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f73338h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public List f73339i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public List f73340j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public List f73341k;
        public List l;
        public List m;
        public List n;
        public List o;
        public List p;
        public List q;
        public List r;
        public List s;
        public List t;
        public int u;
        public ProtoBuf$Type v;
        public int w;
        public List x;
        public ProtoBuf$TypeTable y;
        public List z;

        public Builder() {
            List list = Collections.EMPTY_LIST;
            this.f73339i = list;
            this.f73340j = list;
            this.f73341k = list;
            this.l = list;
            this.m = list;
            this.n = list;
            this.o = list;
            this.p = list;
            this.q = list;
            this.r = list;
            this.s = list;
            this.t = list;
            this.v = ProtoBuf$Type.v;
            this.x = list;
            this.y = ProtoBuf$TypeTable.f73519h;
            this.z = list;
            this.A = ProtoBuf$VersionRequirementTable.f73553f;
            this.B = list;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite.Builder
        public final MessageLite build() {
            ProtoBuf$Class protoBuf$ClassK = k();
            if (protoBuf$ClassK.a()) {
                return protoBuf$ClassK;
            }
            throw new UninitializedMessageException(protoBuf$ClassK);
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
            l((ProtoBuf$Class) generatedMessageLite);
            return this;
        }

        public final ProtoBuf$Class k() {
            ProtoBuf$Class protoBuf$Class = new ProtoBuf$Class(this);
            int i2 = this.f73336e;
            int i3 = (i2 & 1) != 1 ? 0 : 1;
            protoBuf$Class.f73330e = this.f73337f;
            if ((i2 & 2) == 2) {
                i3 |= 2;
            }
            protoBuf$Class.f73331f = this.g;
            if ((i2 & 4) == 4) {
                i3 |= 4;
            }
            protoBuf$Class.g = this.f73338h;
            if ((i2 & 8) == 8) {
                this.f73339i = Collections.unmodifiableList(this.f73339i);
                this.f73336e &= -9;
            }
            protoBuf$Class.f73332h = this.f73339i;
            if ((this.f73336e & 16) == 16) {
                this.f73340j = Collections.unmodifiableList(this.f73340j);
                this.f73336e &= -17;
            }
            protoBuf$Class.f73333i = this.f73340j;
            if ((this.f73336e & 32) == 32) {
                this.f73341k = Collections.unmodifiableList(this.f73341k);
                this.f73336e &= -33;
            }
            protoBuf$Class.f73334j = this.f73341k;
            if ((this.f73336e & 64) == 64) {
                this.l = Collections.unmodifiableList(this.l);
                this.f73336e &= -65;
            }
            protoBuf$Class.l = this.l;
            if ((this.f73336e & 128) == 128) {
                this.m = Collections.unmodifiableList(this.m);
                this.f73336e &= -129;
            }
            protoBuf$Class.n = this.m;
            if ((this.f73336e & 256) == 256) {
                this.n = Collections.unmodifiableList(this.n);
                this.f73336e &= -257;
            }
            protoBuf$Class.o = this.n;
            if ((this.f73336e & 512) == 512) {
                this.o = Collections.unmodifiableList(this.o);
                this.f73336e &= -513;
            }
            protoBuf$Class.q = this.o;
            if ((this.f73336e & 1024) == 1024) {
                this.p = Collections.unmodifiableList(this.p);
                this.f73336e &= -1025;
            }
            protoBuf$Class.r = this.p;
            if ((this.f73336e & 2048) == 2048) {
                this.q = Collections.unmodifiableList(this.q);
                this.f73336e &= -2049;
            }
            protoBuf$Class.s = this.q;
            if ((this.f73336e & 4096) == 4096) {
                this.r = Collections.unmodifiableList(this.r);
                this.f73336e &= -4097;
            }
            protoBuf$Class.t = this.r;
            if ((this.f73336e & 8192) == 8192) {
                this.s = Collections.unmodifiableList(this.s);
                this.f73336e &= -8193;
            }
            protoBuf$Class.u = this.s;
            if ((this.f73336e & 16384) == 16384) {
                this.t = Collections.unmodifiableList(this.t);
                this.f73336e &= -16385;
            }
            protoBuf$Class.v = this.t;
            if ((i2 & 32768) == 32768) {
                i3 |= 8;
            }
            protoBuf$Class.x = this.u;
            if ((i2 & 65536) == 65536) {
                i3 |= 16;
            }
            protoBuf$Class.y = this.v;
            if ((i2 & 131072) == 131072) {
                i3 |= 32;
            }
            protoBuf$Class.z = this.w;
            if ((this.f73336e & 262144) == 262144) {
                this.x = Collections.unmodifiableList(this.x);
                this.f73336e &= -262145;
            }
            protoBuf$Class.A = this.x;
            if ((i2 & 524288) == 524288) {
                i3 |= 64;
            }
            protoBuf$Class.B = this.y;
            if ((this.f73336e & 1048576) == 1048576) {
                this.z = Collections.unmodifiableList(this.z);
                this.f73336e &= -1048577;
            }
            protoBuf$Class.C = this.z;
            if ((i2 & PKIFailureInfo.badSenderNonce) == 2097152) {
                i3 |= 128;
            }
            protoBuf$Class.D = this.A;
            if ((this.f73336e & 4194304) == 4194304) {
                this.B = Collections.unmodifiableList(this.B);
                this.f73336e &= -4194305;
            }
            protoBuf$Class.E = this.B;
            protoBuf$Class.d = i3;
            return protoBuf$Class;
        }

        public final void l(ProtoBuf$Class protoBuf$Class) {
            ProtoBuf$VersionRequirementTable protoBuf$VersionRequirementTable;
            ProtoBuf$TypeTable protoBuf$TypeTable;
            ProtoBuf$Type protoBuf$Type;
            if (protoBuf$Class == ProtoBuf$Class.H) {
                return;
            }
            int i2 = protoBuf$Class.d;
            if ((i2 & 1) == 1) {
                int i3 = protoBuf$Class.f73330e;
                this.f73336e = 1 | this.f73336e;
                this.f73337f = i3;
            }
            if ((i2 & 2) == 2) {
                int i4 = protoBuf$Class.f73331f;
                this.f73336e = 2 | this.f73336e;
                this.g = i4;
            }
            if ((i2 & 4) == 4) {
                int i5 = protoBuf$Class.g;
                this.f73336e = 4 | this.f73336e;
                this.f73338h = i5;
            }
            if (!protoBuf$Class.f73332h.isEmpty()) {
                if (this.f73339i.isEmpty()) {
                    this.f73339i = protoBuf$Class.f73332h;
                    this.f73336e &= -9;
                } else {
                    if ((this.f73336e & 8) != 8) {
                        this.f73339i = new ArrayList(this.f73339i);
                        this.f73336e |= 8;
                    }
                    this.f73339i.addAll(protoBuf$Class.f73332h);
                }
            }
            if (!protoBuf$Class.f73333i.isEmpty()) {
                if (this.f73340j.isEmpty()) {
                    this.f73340j = protoBuf$Class.f73333i;
                    this.f73336e &= -17;
                } else {
                    if ((this.f73336e & 16) != 16) {
                        this.f73340j = new ArrayList(this.f73340j);
                        this.f73336e |= 16;
                    }
                    this.f73340j.addAll(protoBuf$Class.f73333i);
                }
            }
            if (!protoBuf$Class.f73334j.isEmpty()) {
                if (this.f73341k.isEmpty()) {
                    this.f73341k = protoBuf$Class.f73334j;
                    this.f73336e &= -33;
                } else {
                    if ((this.f73336e & 32) != 32) {
                        this.f73341k = new ArrayList(this.f73341k);
                        this.f73336e |= 32;
                    }
                    this.f73341k.addAll(protoBuf$Class.f73334j);
                }
            }
            if (!protoBuf$Class.l.isEmpty()) {
                if (this.l.isEmpty()) {
                    this.l = protoBuf$Class.l;
                    this.f73336e &= -65;
                } else {
                    if ((this.f73336e & 64) != 64) {
                        this.l = new ArrayList(this.l);
                        this.f73336e |= 64;
                    }
                    this.l.addAll(protoBuf$Class.l);
                }
            }
            if (!protoBuf$Class.n.isEmpty()) {
                if (this.m.isEmpty()) {
                    this.m = protoBuf$Class.n;
                    this.f73336e &= -129;
                } else {
                    if ((this.f73336e & 128) != 128) {
                        this.m = new ArrayList(this.m);
                        this.f73336e |= 128;
                    }
                    this.m.addAll(protoBuf$Class.n);
                }
            }
            if (!protoBuf$Class.o.isEmpty()) {
                if (this.n.isEmpty()) {
                    this.n = protoBuf$Class.o;
                    this.f73336e &= -257;
                } else {
                    if ((this.f73336e & 256) != 256) {
                        this.n = new ArrayList(this.n);
                        this.f73336e |= 256;
                    }
                    this.n.addAll(protoBuf$Class.o);
                }
            }
            if (!protoBuf$Class.q.isEmpty()) {
                if (this.o.isEmpty()) {
                    this.o = protoBuf$Class.q;
                    this.f73336e &= -513;
                } else {
                    if ((this.f73336e & 512) != 512) {
                        this.o = new ArrayList(this.o);
                        this.f73336e |= 512;
                    }
                    this.o.addAll(protoBuf$Class.q);
                }
            }
            if (!protoBuf$Class.r.isEmpty()) {
                if (this.p.isEmpty()) {
                    this.p = protoBuf$Class.r;
                    this.f73336e &= -1025;
                } else {
                    if ((this.f73336e & 1024) != 1024) {
                        this.p = new ArrayList(this.p);
                        this.f73336e |= 1024;
                    }
                    this.p.addAll(protoBuf$Class.r);
                }
            }
            if (!protoBuf$Class.s.isEmpty()) {
                if (this.q.isEmpty()) {
                    this.q = protoBuf$Class.s;
                    this.f73336e &= -2049;
                } else {
                    if ((this.f73336e & 2048) != 2048) {
                        this.q = new ArrayList(this.q);
                        this.f73336e |= 2048;
                    }
                    this.q.addAll(protoBuf$Class.s);
                }
            }
            if (!protoBuf$Class.t.isEmpty()) {
                if (this.r.isEmpty()) {
                    this.r = protoBuf$Class.t;
                    this.f73336e &= -4097;
                } else {
                    if ((this.f73336e & 4096) != 4096) {
                        this.r = new ArrayList(this.r);
                        this.f73336e |= 4096;
                    }
                    this.r.addAll(protoBuf$Class.t);
                }
            }
            if (!protoBuf$Class.u.isEmpty()) {
                if (this.s.isEmpty()) {
                    this.s = protoBuf$Class.u;
                    this.f73336e &= -8193;
                } else {
                    if ((this.f73336e & 8192) != 8192) {
                        this.s = new ArrayList(this.s);
                        this.f73336e |= 8192;
                    }
                    this.s.addAll(protoBuf$Class.u);
                }
            }
            if (!protoBuf$Class.v.isEmpty()) {
                if (this.t.isEmpty()) {
                    this.t = protoBuf$Class.v;
                    this.f73336e &= -16385;
                } else {
                    if ((this.f73336e & 16384) != 16384) {
                        this.t = new ArrayList(this.t);
                        this.f73336e |= 16384;
                    }
                    this.t.addAll(protoBuf$Class.v);
                }
            }
            int i6 = protoBuf$Class.d;
            if ((i6 & 8) == 8) {
                int i7 = protoBuf$Class.x;
                this.f73336e |= 32768;
                this.u = i7;
            }
            if ((i6 & 16) == 16) {
                ProtoBuf$Type protoBuf$Type2 = protoBuf$Class.y;
                if ((this.f73336e & 65536) != 65536 || (protoBuf$Type = this.v) == ProtoBuf$Type.v) {
                    this.v = protoBuf$Type2;
                } else {
                    ProtoBuf$Type.Builder builderU = ProtoBuf$Type.u(protoBuf$Type);
                    builderU.l(protoBuf$Type2);
                    this.v = builderU.k();
                }
                this.f73336e |= 65536;
            }
            if ((protoBuf$Class.d & 32) == 32) {
                int i8 = protoBuf$Class.z;
                this.f73336e |= 131072;
                this.w = i8;
            }
            if (!protoBuf$Class.A.isEmpty()) {
                if (this.x.isEmpty()) {
                    this.x = protoBuf$Class.A;
                    this.f73336e &= -262145;
                } else {
                    if ((this.f73336e & 262144) != 262144) {
                        this.x = new ArrayList(this.x);
                        this.f73336e |= 262144;
                    }
                    this.x.addAll(protoBuf$Class.A);
                }
            }
            if ((protoBuf$Class.d & 64) == 64) {
                ProtoBuf$TypeTable protoBuf$TypeTable2 = protoBuf$Class.B;
                if ((this.f73336e & 524288) != 524288 || (protoBuf$TypeTable = this.y) == ProtoBuf$TypeTable.f73519h) {
                    this.y = protoBuf$TypeTable2;
                } else {
                    ProtoBuf$TypeTable.Builder builderI = ProtoBuf$TypeTable.i(protoBuf$TypeTable);
                    builderI.k(protoBuf$TypeTable2);
                    this.y = builderI.j();
                }
                this.f73336e |= 524288;
            }
            if (!protoBuf$Class.C.isEmpty()) {
                if (this.z.isEmpty()) {
                    this.z = protoBuf$Class.C;
                    this.f73336e &= -1048577;
                } else {
                    if ((this.f73336e & 1048576) != 1048576) {
                        this.z = new ArrayList(this.z);
                        this.f73336e |= 1048576;
                    }
                    this.z.addAll(protoBuf$Class.C);
                }
            }
            if ((protoBuf$Class.d & 128) == 128) {
                ProtoBuf$VersionRequirementTable protoBuf$VersionRequirementTable2 = protoBuf$Class.D;
                if ((this.f73336e & PKIFailureInfo.badSenderNonce) != 2097152 || (protoBuf$VersionRequirementTable = this.A) == ProtoBuf$VersionRequirementTable.f73553f) {
                    this.A = protoBuf$VersionRequirementTable2;
                } else {
                    ProtoBuf$VersionRequirementTable.Builder builder = new ProtoBuf$VersionRequirementTable.Builder();
                    builder.k(protoBuf$VersionRequirementTable);
                    builder.k(protoBuf$VersionRequirementTable2);
                    this.A = builder.j();
                }
                this.f73336e |= PKIFailureInfo.badSenderNonce;
            }
            if (!protoBuf$Class.E.isEmpty()) {
                if (this.B.isEmpty()) {
                    this.B = protoBuf$Class.E;
                    this.f73336e &= -4194305;
                } else {
                    if ((this.f73336e & 4194304) != 4194304) {
                        this.B = new ArrayList(this.B);
                        this.f73336e |= 4194304;
                    }
                    this.B.addAll(protoBuf$Class.E);
                }
            }
            j(protoBuf$Class);
            this.f73731b = this.f73731b.b(protoBuf$Class.f73329c);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite.Builder, kotlin.reflect.jvm.internal.impl.protobuf.MessageLite.Builder
        public final /* bridge */ /* synthetic */ MessageLite.Builder n(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
            u(codedInputStream, extensionRegistryLite);
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:14:0x001d  */
        public final void u(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
            ProtoBuf$Class protoBuf$Class = null;
            try {
                try {
                    ((AnonymousClass1) ProtoBuf$Class.I).getClass();
                    l(new ProtoBuf$Class(codedInputStream, extensionRegistryLite));
                } catch (InvalidProtocolBufferException e2) {
                    ProtoBuf$Class protoBuf$Class2 = (ProtoBuf$Class) e2.f73743b;
                    try {
                        throw e2;
                    } catch (Throwable th) {
                        th = th;
                        protoBuf$Class = protoBuf$Class2;
                        if (protoBuf$Class != null) {
                            l(protoBuf$Class);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (protoBuf$Class != null) {
                    l(protoBuf$Class);
                }
                throw th;
            }
        }
    }

    public enum Kind implements Internal.EnumLite {
        CLASS(0),
        INTERFACE(1),
        ENUM_CLASS(2),
        ENUM_ENTRY(3),
        ANNOTATION_CLASS(4),
        OBJECT(5),
        COMPANION_OBJECT(6);

        private static Internal.EnumLiteMap<Kind> internalValueMap = new AnonymousClass1();
        private final int value;

        /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class$Kind$1, reason: invalid class name */
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
        ProtoBuf$Class protoBuf$Class = new ProtoBuf$Class();
        H = protoBuf$Class;
        protoBuf$Class.s();
    }

    /*  JADX ERROR: Types fix failed
        jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r7v0 ??, new type: int
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryPossibleTypes(FixTypesVisitor.java:186)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.deduceType(FixTypesVisitor.java:245)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryDeduceTypes(FixTypesVisitor.java:224)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
        Caused by: java.lang.NullPointerException
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
        	... 5 more
        */
    public ProtoBuf$Class(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream r22, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite r23) {
        /*
            Method dump skipped, instruction units count: 1604
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class.<init>(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite):void");
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLiteOrBuilder
    public final boolean a() {
        byte b2 = this.F;
        if (b2 == 1) {
            return true;
        }
        if (b2 == 0) {
            return false;
        }
        if ((this.d & 2) != 2) {
            this.F = (byte) 0;
            return false;
        }
        for (int i2 = 0; i2 < this.f73332h.size(); i2++) {
            if (!((ProtoBuf$TypeParameter) this.f73332h.get(i2)).a()) {
                this.F = (byte) 0;
                return false;
            }
        }
        for (int i3 = 0; i3 < this.f73333i.size(); i3++) {
            if (!((ProtoBuf$Type) this.f73333i.get(i3)).a()) {
                this.F = (byte) 0;
                return false;
            }
        }
        for (int i4 = 0; i4 < this.n.size(); i4++) {
            if (!((ProtoBuf$Type) this.n.get(i4)).a()) {
                this.F = (byte) 0;
                return false;
            }
        }
        for (int i5 = 0; i5 < this.q.size(); i5++) {
            if (!((ProtoBuf$Constructor) this.q.get(i5)).a()) {
                this.F = (byte) 0;
                return false;
            }
        }
        for (int i6 = 0; i6 < this.r.size(); i6++) {
            if (!((ProtoBuf$Function) this.r.get(i6)).a()) {
                this.F = (byte) 0;
                return false;
            }
        }
        for (int i7 = 0; i7 < this.s.size(); i7++) {
            if (!((ProtoBuf$Property) this.s.get(i7)).a()) {
                this.F = (byte) 0;
                return false;
            }
        }
        for (int i8 = 0; i8 < this.t.size(); i8++) {
            if (!((ProtoBuf$TypeAlias) this.t.get(i8)).a()) {
                this.F = (byte) 0;
                return false;
            }
        }
        for (int i9 = 0; i9 < this.u.size(); i9++) {
            if (!((ProtoBuf$EnumEntry) this.u.get(i9)).a()) {
                this.F = (byte) 0;
                return false;
            }
        }
        if ((this.d & 16) == 16 && !this.y.a()) {
            this.F = (byte) 0;
            return false;
        }
        for (int i10 = 0; i10 < this.A.size(); i10++) {
            if (!((ProtoBuf$Annotation) this.A.get(i10)).a()) {
                this.F = (byte) 0;
                return false;
            }
        }
        if ((this.d & 64) == 64 && !this.B.a()) {
            this.F = (byte) 0;
            return false;
        }
        for (int i11 = 0; i11 < this.E.size(); i11++) {
            if (!((ProtoBuf$CompilerPluginData) this.E.get(i11)).a()) {
                this.F = (byte) 0;
                return false;
            }
        }
        if (i()) {
            this.F = (byte) 1;
            return true;
        }
        this.F = (byte) 0;
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
        List list2;
        List list3;
        List list4;
        List list5;
        int i2 = this.G;
        if (i2 != -1) {
            return i2;
        }
        int iB = (this.d & 1) == 1 ? CodedOutputStream.b(1, this.f73330e) : 0;
        int i3 = 0;
        int iC = 0;
        while (true) {
            int size = this.f73334j.size();
            list = this.f73334j;
            if (i3 >= size) {
                break;
            }
            iC += CodedOutputStream.c(((Integer) list.get(i3)).intValue());
            i3++;
        }
        int iD = iB + iC;
        if (!list.isEmpty()) {
            iD = iD + 1 + CodedOutputStream.c(iC);
        }
        this.f73335k = iC;
        if ((this.d & 2) == 2) {
            iD += CodedOutputStream.b(3, this.f73331f);
        }
        if ((this.d & 4) == 4) {
            iD += CodedOutputStream.b(4, this.g);
        }
        for (int i4 = 0; i4 < this.f73332h.size(); i4++) {
            iD += CodedOutputStream.d(5, (MessageLite) this.f73332h.get(i4));
        }
        for (int i5 = 0; i5 < this.f73333i.size(); i5++) {
            iD += CodedOutputStream.d(6, (MessageLite) this.f73333i.get(i5));
        }
        int i6 = 0;
        int iC2 = 0;
        while (true) {
            int size2 = this.l.size();
            list2 = this.l;
            if (i6 >= size2) {
                break;
            }
            iC2 += CodedOutputStream.c(((Integer) list2.get(i6)).intValue());
            i6++;
        }
        int iD2 = iD + iC2;
        if (!list2.isEmpty()) {
            iD2 = iD2 + 1 + CodedOutputStream.c(iC2);
        }
        this.m = iC2;
        for (int i7 = 0; i7 < this.q.size(); i7++) {
            iD2 += CodedOutputStream.d(8, (MessageLite) this.q.get(i7));
        }
        for (int i8 = 0; i8 < this.r.size(); i8++) {
            iD2 += CodedOutputStream.d(9, (MessageLite) this.r.get(i8));
        }
        for (int i9 = 0; i9 < this.s.size(); i9++) {
            iD2 += CodedOutputStream.d(10, (MessageLite) this.s.get(i9));
        }
        for (int i10 = 0; i10 < this.t.size(); i10++) {
            iD2 += CodedOutputStream.d(11, (MessageLite) this.t.get(i10));
        }
        for (int i11 = 0; i11 < this.u.size(); i11++) {
            iD2 += CodedOutputStream.d(13, (MessageLite) this.u.get(i11));
        }
        int i12 = 0;
        int iC3 = 0;
        while (true) {
            int size3 = this.v.size();
            list3 = this.v;
            if (i12 >= size3) {
                break;
            }
            iC3 += CodedOutputStream.c(((Integer) list3.get(i12)).intValue());
            i12++;
        }
        int iD3 = iD2 + iC3;
        if (!list3.isEmpty()) {
            iD3 = iD3 + 2 + CodedOutputStream.c(iC3);
        }
        this.w = iC3;
        if ((this.d & 8) == 8) {
            iD3 += CodedOutputStream.b(17, this.x);
        }
        if ((this.d & 16) == 16) {
            iD3 += CodedOutputStream.d(18, this.y);
        }
        if ((this.d & 32) == 32) {
            iD3 += CodedOutputStream.b(19, this.z);
        }
        for (int i13 = 0; i13 < this.n.size(); i13++) {
            iD3 += CodedOutputStream.d(20, (MessageLite) this.n.get(i13));
        }
        int i14 = 0;
        int iC4 = 0;
        while (true) {
            int size4 = this.o.size();
            list4 = this.o;
            if (i14 >= size4) {
                break;
            }
            iC4 += CodedOutputStream.c(((Integer) list4.get(i14)).intValue());
            i14++;
        }
        int iD4 = iD3 + iC4;
        if (!list4.isEmpty()) {
            iD4 = iD4 + 2 + CodedOutputStream.c(iC4);
        }
        this.p = iC4;
        for (int i15 = 0; i15 < this.A.size(); i15++) {
            iD4 += CodedOutputStream.d(25, (MessageLite) this.A.get(i15));
        }
        if ((this.d & 64) == 64) {
            iD4 += CodedOutputStream.d(30, this.B);
        }
        int i16 = 0;
        int iC5 = 0;
        while (true) {
            int size5 = this.C.size();
            list5 = this.C;
            if (i16 >= size5) {
                break;
            }
            iC5 += CodedOutputStream.c(((Integer) list5.get(i16)).intValue());
            i16++;
        }
        int size6 = (list5.size() * 2) + iD4 + iC5;
        if ((this.d & 128) == 128) {
            size6 += CodedOutputStream.d(32, this.D);
        }
        for (int i17 = 0; i17 < this.E.size(); i17++) {
            size6 += CodedOutputStream.d(33, (MessageLite) this.E.get(i17));
        }
        int size7 = this.f73329c.size() + j() + size6;
        this.G = size7;
        return size7;
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
            codedOutputStream.m(1, this.f73330e);
        }
        if (this.f73334j.size() > 0) {
            codedOutputStream.v(18);
            codedOutputStream.v(this.f73335k);
        }
        for (int i2 = 0; i2 < this.f73334j.size(); i2++) {
            codedOutputStream.n(((Integer) this.f73334j.get(i2)).intValue());
        }
        if ((this.d & 2) == 2) {
            codedOutputStream.m(3, this.f73331f);
        }
        if ((this.d & 4) == 4) {
            codedOutputStream.m(4, this.g);
        }
        for (int i3 = 0; i3 < this.f73332h.size(); i3++) {
            codedOutputStream.o(5, (MessageLite) this.f73332h.get(i3));
        }
        for (int i4 = 0; i4 < this.f73333i.size(); i4++) {
            codedOutputStream.o(6, (MessageLite) this.f73333i.get(i4));
        }
        if (this.l.size() > 0) {
            codedOutputStream.v(58);
            codedOutputStream.v(this.m);
        }
        for (int i5 = 0; i5 < this.l.size(); i5++) {
            codedOutputStream.n(((Integer) this.l.get(i5)).intValue());
        }
        for (int i6 = 0; i6 < this.q.size(); i6++) {
            codedOutputStream.o(8, (MessageLite) this.q.get(i6));
        }
        for (int i7 = 0; i7 < this.r.size(); i7++) {
            codedOutputStream.o(9, (MessageLite) this.r.get(i7));
        }
        for (int i8 = 0; i8 < this.s.size(); i8++) {
            codedOutputStream.o(10, (MessageLite) this.s.get(i8));
        }
        for (int i9 = 0; i9 < this.t.size(); i9++) {
            codedOutputStream.o(11, (MessageLite) this.t.get(i9));
        }
        for (int i10 = 0; i10 < this.u.size(); i10++) {
            codedOutputStream.o(13, (MessageLite) this.u.get(i10));
        }
        if (this.v.size() > 0) {
            codedOutputStream.v(130);
            codedOutputStream.v(this.w);
        }
        for (int i11 = 0; i11 < this.v.size(); i11++) {
            codedOutputStream.n(((Integer) this.v.get(i11)).intValue());
        }
        if ((this.d & 8) == 8) {
            codedOutputStream.m(17, this.x);
        }
        if ((this.d & 16) == 16) {
            codedOutputStream.o(18, this.y);
        }
        if ((this.d & 32) == 32) {
            codedOutputStream.m(19, this.z);
        }
        for (int i12 = 0; i12 < this.n.size(); i12++) {
            codedOutputStream.o(20, (MessageLite) this.n.get(i12));
        }
        if (this.o.size() > 0) {
            codedOutputStream.v(170);
            codedOutputStream.v(this.p);
        }
        for (int i13 = 0; i13 < this.o.size(); i13++) {
            codedOutputStream.n(((Integer) this.o.get(i13)).intValue());
        }
        for (int i14 = 0; i14 < this.A.size(); i14++) {
            codedOutputStream.o(25, (MessageLite) this.A.get(i14));
        }
        if ((this.d & 64) == 64) {
            codedOutputStream.o(30, this.B);
        }
        for (int i15 = 0; i15 < this.C.size(); i15++) {
            codedOutputStream.m(31, ((Integer) this.C.get(i15)).intValue());
        }
        if ((this.d & 128) == 128) {
            codedOutputStream.o(32, this.D);
        }
        for (int i16 = 0; i16 < this.E.size(); i16++) {
            codedOutputStream.o(33, (MessageLite) this.E.get(i16));
        }
        extensionWriter.a(19000, codedOutputStream);
        codedOutputStream.r(this.f73329c);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLiteOrBuilder
    public final MessageLite f() {
        return H;
    }

    public final void s() {
        this.f73330e = 6;
        this.f73331f = 0;
        this.g = 0;
        List list = Collections.EMPTY_LIST;
        this.f73332h = list;
        this.f73333i = list;
        this.f73334j = list;
        this.l = list;
        this.n = list;
        this.o = list;
        this.q = list;
        this.r = list;
        this.s = list;
        this.t = list;
        this.u = list;
        this.v = list;
        this.x = 0;
        this.y = ProtoBuf$Type.v;
        this.z = 0;
        this.A = list;
        this.B = ProtoBuf$TypeTable.f73519h;
        this.C = list;
        this.D = ProtoBuf$VersionRequirementTable.f73553f;
        this.E = list;
    }

    public ProtoBuf$Class() {
        this.f73335k = -1;
        this.m = -1;
        this.p = -1;
        this.w = -1;
        this.F = (byte) -1;
        this.G = -1;
        this.f73329c = ByteString.f73706b;
    }

    public ProtoBuf$Class(Builder builder) {
        super(builder);
        this.f73335k = -1;
        this.m = -1;
        this.p = -1;
        this.w = -1;
        this.F = (byte) -1;
        this.G = -1;
        this.f73329c = builder.f73731b;
    }
}
