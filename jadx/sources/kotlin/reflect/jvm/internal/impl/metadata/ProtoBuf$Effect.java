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
public final class ProtoBuf$Effect extends GeneratedMessageLite implements ProtoBuf$EffectOrBuilder {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final ProtoBuf$Effect f73367k;
    public static final Parser l = new AnonymousClass1();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ByteString f73368b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f73369c;
    public EffectType d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public List f73370e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public ProtoBuf$Expression f73371f;
    public InvocationKind g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public EffectConditionKind f73372h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public byte f73373i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f73374j;

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Effect$1, reason: invalid class name */
    public static class AnonymousClass1 extends AbstractParser<ProtoBuf$Effect> {
        @Override // kotlin.reflect.jvm.internal.impl.protobuf.Parser
        public final Object a(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
            return new ProtoBuf$Effect(codedInputStream, extensionRegistryLite);
        }
    }

    public static final class Builder extends GeneratedMessageLite.Builder<ProtoBuf$Effect, Builder> implements ProtoBuf$EffectOrBuilder {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f73375c;
        public EffectType d = EffectType.RETURNS_CONSTANT;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public List f73376e = Collections.EMPTY_LIST;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public ProtoBuf$Expression f73377f = ProtoBuf$Expression.m;
        public InvocationKind g = InvocationKind.AT_MOST_ONCE;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public EffectConditionKind f73378h = EffectConditionKind.CONCLUSION_CONDITION;

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite.Builder
        public final MessageLite build() {
            ProtoBuf$Effect protoBuf$EffectJ = j();
            if (protoBuf$EffectJ.a()) {
                return protoBuf$EffectJ;
            }
            throw new UninitializedMessageException(protoBuf$EffectJ);
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
            k((ProtoBuf$Effect) generatedMessageLite);
            return this;
        }

        public final ProtoBuf$Effect j() {
            ProtoBuf$Effect protoBuf$Effect = new ProtoBuf$Effect(this);
            int i2 = this.f73375c;
            int i3 = (i2 & 1) != 1 ? 0 : 1;
            protoBuf$Effect.d = this.d;
            if ((i2 & 2) == 2) {
                this.f73376e = Collections.unmodifiableList(this.f73376e);
                this.f73375c &= -3;
            }
            protoBuf$Effect.f73370e = this.f73376e;
            if ((i2 & 4) == 4) {
                i3 |= 2;
            }
            protoBuf$Effect.f73371f = this.f73377f;
            if ((i2 & 8) == 8) {
                i3 |= 4;
            }
            protoBuf$Effect.g = this.g;
            if ((i2 & 16) == 16) {
                i3 |= 8;
            }
            protoBuf$Effect.f73372h = this.f73378h;
            protoBuf$Effect.f73369c = i3;
            return protoBuf$Effect;
        }

        public final void k(ProtoBuf$Effect protoBuf$Effect) {
            ProtoBuf$Expression protoBuf$Expression;
            if (protoBuf$Effect == ProtoBuf$Effect.f73367k) {
                return;
            }
            if ((protoBuf$Effect.f73369c & 1) == 1) {
                EffectType effectType = protoBuf$Effect.d;
                effectType.getClass();
                this.f73375c = 1 | this.f73375c;
                this.d = effectType;
            }
            if (!protoBuf$Effect.f73370e.isEmpty()) {
                if (this.f73376e.isEmpty()) {
                    this.f73376e = protoBuf$Effect.f73370e;
                    this.f73375c &= -3;
                } else {
                    if ((this.f73375c & 2) != 2) {
                        this.f73376e = new ArrayList(this.f73376e);
                        this.f73375c |= 2;
                    }
                    this.f73376e.addAll(protoBuf$Effect.f73370e);
                }
            }
            if ((protoBuf$Effect.f73369c & 2) == 2) {
                ProtoBuf$Expression protoBuf$Expression2 = protoBuf$Effect.f73371f;
                if ((this.f73375c & 4) != 4 || (protoBuf$Expression = this.f73377f) == ProtoBuf$Expression.m) {
                    this.f73377f = protoBuf$Expression2;
                } else {
                    ProtoBuf$Expression.Builder builder = new ProtoBuf$Expression.Builder();
                    builder.k(protoBuf$Expression);
                    builder.k(protoBuf$Expression2);
                    this.f73377f = builder.j();
                }
                this.f73375c |= 4;
            }
            if ((protoBuf$Effect.f73369c & 4) == 4) {
                InvocationKind invocationKind = protoBuf$Effect.g;
                invocationKind.getClass();
                this.f73375c |= 8;
                this.g = invocationKind;
            }
            if ((protoBuf$Effect.f73369c & 8) == 8) {
                EffectConditionKind effectConditionKind = protoBuf$Effect.f73372h;
                effectConditionKind.getClass();
                this.f73375c |= 16;
                this.f73378h = effectConditionKind;
            }
            this.f73731b = this.f73731b.b(protoBuf$Effect.f73368b);
        }

        /* JADX WARN: Code duplicated, block: B:14:0x001d  */
        public final void l(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
            ProtoBuf$Effect protoBuf$Effect = null;
            try {
                try {
                    ((AnonymousClass1) ProtoBuf$Effect.l).getClass();
                    k(new ProtoBuf$Effect(codedInputStream, extensionRegistryLite));
                } catch (InvalidProtocolBufferException e2) {
                    ProtoBuf$Effect protoBuf$Effect2 = (ProtoBuf$Effect) e2.f73743b;
                    try {
                        throw e2;
                    } catch (Throwable th) {
                        th = th;
                        protoBuf$Effect = protoBuf$Effect2;
                        if (protoBuf$Effect != null) {
                            k(protoBuf$Effect);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (protoBuf$Effect != null) {
                    k(protoBuf$Effect);
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

    public enum EffectConditionKind implements Internal.EnumLite {
        CONCLUSION_CONDITION(0),
        RETURNS_CONDITION(1),
        HOLDSIN_CONDITION(2);

        private static Internal.EnumLiteMap<EffectConditionKind> internalValueMap = new AnonymousClass1();
        private final int value;

        /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Effect$EffectConditionKind$1, reason: invalid class name */
        public static class AnonymousClass1 implements Internal.EnumLiteMap<EffectConditionKind> {
        }

        EffectConditionKind(int i2) {
            this.value = i2;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.Internal.EnumLite
        public final int m() {
            return this.value;
        }
    }

    public enum EffectType implements Internal.EnumLite {
        RETURNS_CONSTANT(0),
        CALLS(1),
        RETURNS_NOT_NULL(2);

        private static Internal.EnumLiteMap<EffectType> internalValueMap = new AnonymousClass1();
        private final int value;

        /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Effect$EffectType$1, reason: invalid class name */
        public static class AnonymousClass1 implements Internal.EnumLiteMap<EffectType> {
        }

        EffectType(int i2) {
            this.value = i2;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.Internal.EnumLite
        public final int m() {
            return this.value;
        }
    }

    public enum InvocationKind implements Internal.EnumLite {
        AT_MOST_ONCE(0),
        EXACTLY_ONCE(1),
        AT_LEAST_ONCE(2);

        private static Internal.EnumLiteMap<InvocationKind> internalValueMap = new AnonymousClass1();
        private final int value;

        /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Effect$InvocationKind$1, reason: invalid class name */
        public static class AnonymousClass1 implements Internal.EnumLiteMap<InvocationKind> {
        }

        InvocationKind(int i2) {
            this.value = i2;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.Internal.EnumLite
        public final int m() {
            return this.value;
        }
    }

    static {
        ProtoBuf$Effect protoBuf$Effect = new ProtoBuf$Effect();
        f73367k = protoBuf$Effect;
        protoBuf$Effect.d = EffectType.RETURNS_CONSTANT;
        protoBuf$Effect.f73370e = Collections.EMPTY_LIST;
        protoBuf$Effect.f73371f = ProtoBuf$Expression.m;
        protoBuf$Effect.g = InvocationKind.AT_MOST_ONCE;
        protoBuf$Effect.f73372h = EffectConditionKind.CONCLUSION_CONDITION;
    }

    public ProtoBuf$Effect(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
        this.f73373i = (byte) -1;
        this.f73374j = -1;
        this.d = EffectType.RETURNS_CONSTANT;
        this.f73370e = Collections.EMPTY_LIST;
        this.f73371f = ProtoBuf$Expression.m;
        this.g = InvocationKind.AT_MOST_ONCE;
        this.f73372h = EffectConditionKind.CONCLUSION_CONDITION;
        ByteString.Output output = new ByteString.Output();
        CodedOutputStream codedOutputStreamJ = CodedOutputStream.j(output, 1);
        boolean z = false;
        char c2 = 0;
        while (!z) {
            try {
                try {
                    int iO = codedInputStream.o();
                    if (iO != 0) {
                        EffectConditionKind effectConditionKind = null;
                        EffectType effectType = null;
                        ProtoBuf$Expression.Builder builder = null;
                        InvocationKind invocationKind = null;
                        if (iO == 8) {
                            int iL = codedInputStream.l();
                            if (iL == 0) {
                                effectType = EffectType.RETURNS_CONSTANT;
                            } else if (iL == 1) {
                                effectType = EffectType.CALLS;
                            } else if (iL == 2) {
                                effectType = EffectType.RETURNS_NOT_NULL;
                            }
                            if (effectType == null) {
                                codedOutputStreamJ.v(iO);
                                codedOutputStreamJ.v(iL);
                            } else {
                                this.f73369c |= 1;
                                this.d = effectType;
                            }
                        } else if (iO == 18) {
                            int i2 = (c2 == true ? 1 : 0) & 2;
                            c2 = c2;
                            if (i2 != 2) {
                                this.f73370e = new ArrayList();
                                c2 = 2;
                            }
                            this.f73370e.add(codedInputStream.h(ProtoBuf$Expression.n, extensionRegistryLite));
                        } else if (iO == 26) {
                            if ((this.f73369c & 2) == 2) {
                                ProtoBuf$Expression protoBuf$Expression = this.f73371f;
                                protoBuf$Expression.getClass();
                                builder = new ProtoBuf$Expression.Builder();
                                builder.k(protoBuf$Expression);
                            }
                            ProtoBuf$Expression protoBuf$Expression2 = (ProtoBuf$Expression) codedInputStream.h(ProtoBuf$Expression.n, extensionRegistryLite);
                            this.f73371f = protoBuf$Expression2;
                            if (builder != null) {
                                builder.k(protoBuf$Expression2);
                                this.f73371f = builder.j();
                            }
                            this.f73369c |= 2;
                        } else if (iO == 32) {
                            int iL2 = codedInputStream.l();
                            if (iL2 == 0) {
                                invocationKind = InvocationKind.AT_MOST_ONCE;
                            } else if (iL2 == 1) {
                                invocationKind = InvocationKind.EXACTLY_ONCE;
                            } else if (iL2 == 2) {
                                invocationKind = InvocationKind.AT_LEAST_ONCE;
                            }
                            if (invocationKind == null) {
                                codedOutputStreamJ.v(iO);
                                codedOutputStreamJ.v(iL2);
                            } else {
                                this.f73369c |= 4;
                                this.g = invocationKind;
                            }
                        } else if (iO == 40) {
                            int iL3 = codedInputStream.l();
                            if (iL3 == 0) {
                                effectConditionKind = EffectConditionKind.CONCLUSION_CONDITION;
                            } else if (iL3 == 1) {
                                effectConditionKind = EffectConditionKind.RETURNS_CONDITION;
                            } else if (iL3 == 2) {
                                effectConditionKind = EffectConditionKind.HOLDSIN_CONDITION;
                            }
                            if (effectConditionKind == null) {
                                codedOutputStreamJ.v(iO);
                                codedOutputStreamJ.v(iL3);
                            } else {
                                this.f73369c |= 8;
                                this.f73372h = effectConditionKind;
                            }
                        } else if (!codedInputStream.r(iO, codedOutputStreamJ)) {
                        }
                    }
                    z = true;
                } catch (Throwable th) {
                    if (((c2 == true ? 1 : 0) & 2) == 2) {
                        this.f73370e = Collections.unmodifiableList(this.f73370e);
                    }
                    try {
                        codedOutputStreamJ.k();
                    } catch (IOException unused) {
                    } finally {
                        this.f73368b = output.j();
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
        if (((c2 == true ? 1 : 0) & 2) == 2) {
            this.f73370e = Collections.unmodifiableList(this.f73370e);
        }
        try {
            codedOutputStreamJ.k();
        } catch (IOException unused2) {
        } finally {
            this.f73368b = output.j();
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLiteOrBuilder
    public final boolean a() {
        byte b2 = this.f73373i;
        if (b2 == 1) {
            return true;
        }
        if (b2 == 0) {
            return false;
        }
        for (int i2 = 0; i2 < this.f73370e.size(); i2++) {
            if (!((ProtoBuf$Expression) this.f73370e.get(i2)).a()) {
                this.f73373i = (byte) 0;
                return false;
            }
        }
        if ((this.f73369c & 2) != 2 || this.f73371f.a()) {
            this.f73373i = (byte) 1;
            return true;
        }
        this.f73373i = (byte) 0;
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
        int i2 = this.f73374j;
        if (i2 != -1) {
            return i2;
        }
        int iA = (this.f73369c & 1) == 1 ? CodedOutputStream.a(1, this.d.m()) : 0;
        for (int i3 = 0; i3 < this.f73370e.size(); i3++) {
            iA += CodedOutputStream.d(2, (MessageLite) this.f73370e.get(i3));
        }
        if ((this.f73369c & 2) == 2) {
            iA += CodedOutputStream.d(3, this.f73371f);
        }
        if ((this.f73369c & 4) == 4) {
            iA += CodedOutputStream.a(4, this.g.m());
        }
        if ((this.f73369c & 8) == 8) {
            iA += CodedOutputStream.a(5, this.f73372h.m());
        }
        int size = this.f73368b.size() + iA;
        this.f73374j = size;
        return size;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite
    public final MessageLite.Builder d() {
        return new Builder();
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite
    public final void e(CodedOutputStream codedOutputStream) {
        c();
        if ((this.f73369c & 1) == 1) {
            codedOutputStream.l(1, this.d.m());
        }
        for (int i2 = 0; i2 < this.f73370e.size(); i2++) {
            codedOutputStream.o(2, (MessageLite) this.f73370e.get(i2));
        }
        if ((this.f73369c & 2) == 2) {
            codedOutputStream.o(3, this.f73371f);
        }
        if ((this.f73369c & 4) == 4) {
            codedOutputStream.l(4, this.g.m());
        }
        if ((this.f73369c & 8) == 8) {
            codedOutputStream.l(5, this.f73372h.m());
        }
        codedOutputStream.r(this.f73368b);
    }

    public ProtoBuf$Effect() {
        this.f73373i = (byte) -1;
        this.f73374j = -1;
        this.f73368b = ByteString.f73706b;
    }

    public ProtoBuf$Effect(Builder builder) {
        this.f73373i = (byte) -1;
        this.f73374j = -1;
        this.f73368b = builder.f73731b;
    }
}
