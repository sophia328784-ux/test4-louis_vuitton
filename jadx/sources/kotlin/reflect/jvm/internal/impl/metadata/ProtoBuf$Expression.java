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
import kotlin.reflect.jvm.internal.impl.protobuf.Parser;
import kotlin.reflect.jvm.internal.impl.protobuf.UninitializedMessageException;

/* JADX INFO: loaded from: classes4.dex */
public final class ProtoBuf$Expression extends GeneratedMessageLite implements ProtoBuf$ExpressionOrBuilder {
    public static final ProtoBuf$Expression m;
    public static final Parser n = new AnonymousClass1();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ByteString f73387b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f73388c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f73389e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public ConstantValue f73390f;
    public ProtoBuf$Type g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f73391h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public List f73392i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public List f73393j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public byte f73394k;
    public int l;

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Expression$1, reason: invalid class name */
    public static class AnonymousClass1 extends AbstractParser<ProtoBuf$Expression> {
        @Override // kotlin.reflect.jvm.internal.impl.protobuf.Parser
        public final Object a(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
            return new ProtoBuf$Expression(codedInputStream, extensionRegistryLite);
        }
    }

    public static final class Builder extends GeneratedMessageLite.Builder<ProtoBuf$Expression, Builder> implements ProtoBuf$ExpressionOrBuilder {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f73395c;
        public int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f73396e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public ConstantValue f73397f = ConstantValue.TRUE;
        public ProtoBuf$Type g = ProtoBuf$Type.v;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f73398h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public List f73399i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public List f73400j;

        public Builder() {
            List list = Collections.EMPTY_LIST;
            this.f73399i = list;
            this.f73400j = list;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite.Builder
        public final MessageLite build() {
            ProtoBuf$Expression protoBuf$ExpressionJ = j();
            if (protoBuf$ExpressionJ.a()) {
                return protoBuf$ExpressionJ;
            }
            throw new UninitializedMessageException(protoBuf$ExpressionJ);
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
            k((ProtoBuf$Expression) generatedMessageLite);
            return this;
        }

        public final ProtoBuf$Expression j() {
            ProtoBuf$Expression protoBuf$Expression = new ProtoBuf$Expression(this);
            int i2 = this.f73395c;
            int i3 = (i2 & 1) != 1 ? 0 : 1;
            protoBuf$Expression.d = this.d;
            if ((i2 & 2) == 2) {
                i3 |= 2;
            }
            protoBuf$Expression.f73389e = this.f73396e;
            if ((i2 & 4) == 4) {
                i3 |= 4;
            }
            protoBuf$Expression.f73390f = this.f73397f;
            if ((i2 & 8) == 8) {
                i3 |= 8;
            }
            protoBuf$Expression.g = this.g;
            if ((i2 & 16) == 16) {
                i3 |= 16;
            }
            protoBuf$Expression.f73391h = this.f73398h;
            if ((i2 & 32) == 32) {
                this.f73399i = Collections.unmodifiableList(this.f73399i);
                this.f73395c &= -33;
            }
            protoBuf$Expression.f73392i = this.f73399i;
            if ((this.f73395c & 64) == 64) {
                this.f73400j = Collections.unmodifiableList(this.f73400j);
                this.f73395c &= -65;
            }
            protoBuf$Expression.f73393j = this.f73400j;
            protoBuf$Expression.f73388c = i3;
            return protoBuf$Expression;
        }

        public final void k(ProtoBuf$Expression protoBuf$Expression) {
            ProtoBuf$Type protoBuf$Type;
            if (protoBuf$Expression == ProtoBuf$Expression.m) {
                return;
            }
            int i2 = protoBuf$Expression.f73388c;
            if ((i2 & 1) == 1) {
                int i3 = protoBuf$Expression.d;
                this.f73395c = 1 | this.f73395c;
                this.d = i3;
            }
            if ((i2 & 2) == 2) {
                int i4 = protoBuf$Expression.f73389e;
                this.f73395c = 2 | this.f73395c;
                this.f73396e = i4;
            }
            if ((i2 & 4) == 4) {
                ConstantValue constantValue = protoBuf$Expression.f73390f;
                constantValue.getClass();
                this.f73395c = 4 | this.f73395c;
                this.f73397f = constantValue;
            }
            if ((protoBuf$Expression.f73388c & 8) == 8) {
                ProtoBuf$Type protoBuf$Type2 = protoBuf$Expression.g;
                if ((this.f73395c & 8) != 8 || (protoBuf$Type = this.g) == ProtoBuf$Type.v) {
                    this.g = protoBuf$Type2;
                } else {
                    ProtoBuf$Type.Builder builderU = ProtoBuf$Type.u(protoBuf$Type);
                    builderU.l(protoBuf$Type2);
                    this.g = builderU.k();
                }
                this.f73395c |= 8;
            }
            if ((protoBuf$Expression.f73388c & 16) == 16) {
                int i5 = protoBuf$Expression.f73391h;
                this.f73395c = 16 | this.f73395c;
                this.f73398h = i5;
            }
            if (!protoBuf$Expression.f73392i.isEmpty()) {
                if (this.f73399i.isEmpty()) {
                    this.f73399i = protoBuf$Expression.f73392i;
                    this.f73395c &= -33;
                } else {
                    if ((this.f73395c & 32) != 32) {
                        this.f73399i = new ArrayList(this.f73399i);
                        this.f73395c |= 32;
                    }
                    this.f73399i.addAll(protoBuf$Expression.f73392i);
                }
            }
            if (!protoBuf$Expression.f73393j.isEmpty()) {
                if (this.f73400j.isEmpty()) {
                    this.f73400j = protoBuf$Expression.f73393j;
                    this.f73395c &= -65;
                } else {
                    if ((this.f73395c & 64) != 64) {
                        this.f73400j = new ArrayList(this.f73400j);
                        this.f73395c |= 64;
                    }
                    this.f73400j.addAll(protoBuf$Expression.f73393j);
                }
            }
            this.f73731b = this.f73731b.b(protoBuf$Expression.f73387b);
        }

        /* JADX WARN: Code duplicated, block: B:14:0x001d  */
        public final void l(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
            ProtoBuf$Expression protoBuf$Expression = null;
            try {
                try {
                    ((AnonymousClass1) ProtoBuf$Expression.n).getClass();
                    k(new ProtoBuf$Expression(codedInputStream, extensionRegistryLite));
                } catch (InvalidProtocolBufferException e2) {
                    ProtoBuf$Expression protoBuf$Expression2 = (ProtoBuf$Expression) e2.f73743b;
                    try {
                        throw e2;
                    } catch (Throwable th) {
                        th = th;
                        protoBuf$Expression = protoBuf$Expression2;
                        if (protoBuf$Expression != null) {
                            k(protoBuf$Expression);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (protoBuf$Expression != null) {
                    k(protoBuf$Expression);
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

    public enum ConstantValue implements Internal.EnumLite {
        TRUE(0),
        FALSE(1),
        NULL(2);

        private static Internal.EnumLiteMap<ConstantValue> internalValueMap = new AnonymousClass1();
        private final int value;

        /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Expression$ConstantValue$1, reason: invalid class name */
        public static class AnonymousClass1 implements Internal.EnumLiteMap<ConstantValue> {
        }

        ConstantValue(int i2) {
            this.value = i2;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.Internal.EnumLite
        public final int m() {
            return this.value;
        }
    }

    static {
        ProtoBuf$Expression protoBuf$Expression = new ProtoBuf$Expression();
        m = protoBuf$Expression;
        protoBuf$Expression.d = 0;
        protoBuf$Expression.f73389e = 0;
        protoBuf$Expression.f73390f = ConstantValue.TRUE;
        protoBuf$Expression.g = ProtoBuf$Type.v;
        protoBuf$Expression.f73391h = 0;
        List list = Collections.EMPTY_LIST;
        protoBuf$Expression.f73392i = list;
        protoBuf$Expression.f73393j = list;
    }

    public ProtoBuf$Expression(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
        this.f73394k = (byte) -1;
        this.l = -1;
        boolean z = false;
        this.d = 0;
        this.f73389e = 0;
        this.f73390f = ConstantValue.TRUE;
        this.g = ProtoBuf$Type.v;
        this.f73391h = 0;
        List list = Collections.EMPTY_LIST;
        this.f73392i = list;
        this.f73393j = list;
        ByteString.Output output = new ByteString.Output();
        CodedOutputStream codedOutputStreamJ = CodedOutputStream.j(output, 1);
        int i2 = 0;
        while (!z) {
            try {
                try {
                    int iO = codedInputStream.o();
                    if (iO != 0) {
                        if (iO == 8) {
                            this.f73388c |= 1;
                            this.d = codedInputStream.l();
                        } else if (iO != 16) {
                            ProtoBuf$Type.Builder builderU = null;
                            ConstantValue constantValue = null;
                            if (iO == 24) {
                                int iL = codedInputStream.l();
                                if (iL == 0) {
                                    constantValue = ConstantValue.TRUE;
                                } else if (iL == 1) {
                                    constantValue = ConstantValue.FALSE;
                                } else if (iL == 2) {
                                    constantValue = ConstantValue.NULL;
                                }
                                if (constantValue == null) {
                                    codedOutputStreamJ.v(iO);
                                    codedOutputStreamJ.v(iL);
                                } else {
                                    this.f73388c |= 4;
                                    this.f73390f = constantValue;
                                }
                            } else if (iO == 34) {
                                if ((this.f73388c & 8) == 8) {
                                    ProtoBuf$Type protoBuf$Type = this.g;
                                    protoBuf$Type.getClass();
                                    builderU = ProtoBuf$Type.u(protoBuf$Type);
                                }
                                ProtoBuf$Type protoBuf$Type2 = (ProtoBuf$Type) codedInputStream.h(ProtoBuf$Type.w, extensionRegistryLite);
                                this.g = protoBuf$Type2;
                                if (builderU != null) {
                                    builderU.l(protoBuf$Type2);
                                    this.g = builderU.k();
                                }
                                this.f73388c |= 8;
                            } else if (iO != 40) {
                                Parser parser = n;
                                if (iO == 50) {
                                    int i3 = (i2 == true ? 1 : 0) & 32;
                                    i2 = i2;
                                    if (i3 != 32) {
                                        this.f73392i = new ArrayList();
                                        i2 = (i2 == true ? 1 : 0) | 32;
                                    }
                                    this.f73392i.add(codedInputStream.h(parser, extensionRegistryLite));
                                } else if (iO == 58) {
                                    int i4 = (i2 == true ? 1 : 0) & 64;
                                    i2 = i2;
                                    if (i4 != 64) {
                                        this.f73393j = new ArrayList();
                                        i2 = (i2 == true ? 1 : 0) | 64;
                                    }
                                    this.f73393j.add(codedInputStream.h(parser, extensionRegistryLite));
                                } else if (!codedInputStream.r(iO, codedOutputStreamJ)) {
                                }
                            } else {
                                this.f73388c |= 16;
                                this.f73391h = codedInputStream.l();
                            }
                        } else {
                            this.f73388c |= 2;
                            this.f73389e = codedInputStream.l();
                        }
                    }
                    z = true;
                } catch (Throwable th) {
                    if (((i2 == true ? 1 : 0) & 32) == 32) {
                        this.f73392i = Collections.unmodifiableList(this.f73392i);
                    }
                    if (((i2 == true ? 1 : 0) & 64) == 64) {
                        this.f73393j = Collections.unmodifiableList(this.f73393j);
                    }
                    try {
                        codedOutputStreamJ.k();
                    } catch (IOException unused) {
                    } finally {
                        this.f73387b = output.j();
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
        if (((i2 == true ? 1 : 0) & 32) == 32) {
            this.f73392i = Collections.unmodifiableList(this.f73392i);
        }
        if (((i2 == true ? 1 : 0) & 64) == 64) {
            this.f73393j = Collections.unmodifiableList(this.f73393j);
        }
        try {
            codedOutputStreamJ.k();
        } catch (IOException unused2) {
        } finally {
            this.f73387b = output.j();
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLiteOrBuilder
    public final boolean a() {
        byte b2 = this.f73394k;
        if (b2 == 1) {
            return true;
        }
        if (b2 == 0) {
            return false;
        }
        if ((this.f73388c & 8) == 8 && !this.g.a()) {
            this.f73394k = (byte) 0;
            return false;
        }
        for (int i2 = 0; i2 < this.f73392i.size(); i2++) {
            if (!((ProtoBuf$Expression) this.f73392i.get(i2)).a()) {
                this.f73394k = (byte) 0;
                return false;
            }
        }
        for (int i3 = 0; i3 < this.f73393j.size(); i3++) {
            if (!((ProtoBuf$Expression) this.f73393j.get(i3)).a()) {
                this.f73394k = (byte) 0;
                return false;
            }
        }
        this.f73394k = (byte) 1;
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
        int i2 = this.l;
        if (i2 != -1) {
            return i2;
        }
        int iB = (this.f73388c & 1) == 1 ? CodedOutputStream.b(1, this.d) : 0;
        if ((this.f73388c & 2) == 2) {
            iB += CodedOutputStream.b(2, this.f73389e);
        }
        if ((this.f73388c & 4) == 4) {
            iB += CodedOutputStream.a(3, this.f73390f.m());
        }
        if ((this.f73388c & 8) == 8) {
            iB += CodedOutputStream.d(4, this.g);
        }
        if ((this.f73388c & 16) == 16) {
            iB += CodedOutputStream.b(5, this.f73391h);
        }
        for (int i3 = 0; i3 < this.f73392i.size(); i3++) {
            iB += CodedOutputStream.d(6, (MessageLite) this.f73392i.get(i3));
        }
        for (int i4 = 0; i4 < this.f73393j.size(); i4++) {
            iB += CodedOutputStream.d(7, (MessageLite) this.f73393j.get(i4));
        }
        int size = this.f73387b.size() + iB;
        this.l = size;
        return size;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite
    public final MessageLite.Builder d() {
        return new Builder();
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite
    public final void e(CodedOutputStream codedOutputStream) {
        c();
        if ((this.f73388c & 1) == 1) {
            codedOutputStream.m(1, this.d);
        }
        if ((this.f73388c & 2) == 2) {
            codedOutputStream.m(2, this.f73389e);
        }
        if ((this.f73388c & 4) == 4) {
            codedOutputStream.l(3, this.f73390f.m());
        }
        if ((this.f73388c & 8) == 8) {
            codedOutputStream.o(4, this.g);
        }
        if ((this.f73388c & 16) == 16) {
            codedOutputStream.m(5, this.f73391h);
        }
        for (int i2 = 0; i2 < this.f73392i.size(); i2++) {
            codedOutputStream.o(6, (MessageLite) this.f73392i.get(i2));
        }
        for (int i3 = 0; i3 < this.f73393j.size(); i3++) {
            codedOutputStream.o(7, (MessageLite) this.f73393j.get(i3));
        }
        codedOutputStream.r(this.f73387b);
    }

    public ProtoBuf$Expression() {
        this.f73394k = (byte) -1;
        this.l = -1;
        this.f73387b = ByteString.f73706b;
    }

    public ProtoBuf$Expression(Builder builder) {
        this.f73394k = (byte) -1;
        this.l = -1;
        this.f73387b = builder.f73731b;
    }
}
