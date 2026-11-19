package kotlin.reflect.jvm.internal.impl.protobuf;

import defpackage.d21;
import defpackage.md;
import defpackage.r81;
import defpackage.zy0;
import java.io.IOException;
import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public abstract class GeneratedMessageLite extends AbstractMessageLite implements Serializable {

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f73730a;

        static {
            int[] iArr = new int[WireFormat$JavaType.values().length];
            f73730a = iArr;
            try {
                iArr[WireFormat$JavaType.MESSAGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f73730a[WireFormat$JavaType.ENUM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static abstract class Builder<MessageType extends GeneratedMessageLite, BuilderType extends Builder> extends AbstractMessageLite.Builder<BuilderType> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public ByteString f73731b = ByteString.f73706b;

        public abstract Builder i(GeneratedMessageLite generatedMessageLite);
    }

    public static abstract class ExtendableBuilder<MessageType extends ExtendableMessage<MessageType>, BuilderType extends ExtendableBuilder<MessageType, BuilderType>> extends Builder<MessageType, BuilderType> implements ExtendableMessageOrBuilder<MessageType> {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public FieldSet f73732c = FieldSet.f73725c;
        public boolean d;

        public final void j(ExtendableMessage extendableMessage) {
            SmallSortedMap.AnonymousClass1 anonymousClass1;
            if (!this.d) {
                this.f73732c = this.f73732c.clone();
                this.d = true;
            }
            FieldSet fieldSet = this.f73732c;
            FieldSet fieldSet2 = extendableMessage.f73733b;
            fieldSet.getClass();
            int i2 = 0;
            while (true) {
                int size = fieldSet2.f73726a.f73760c.size();
                anonymousClass1 = fieldSet2.f73726a;
                if (i2 >= size) {
                    break;
                }
                fieldSet.g((Map.Entry) anonymousClass1.f73760c.get(i2));
                i2++;
            }
            Iterator it = anonymousClass1.d().iterator();
            while (it.hasNext()) {
                fieldSet.g((Map.Entry) it.next());
            }
        }
    }

    public interface ExtendableMessageOrBuilder<MessageType extends ExtendableMessage> extends MessageLiteOrBuilder {
    }

    public static final class ExtensionDescriptor implements FieldSet.FieldDescriptorLite<ExtensionDescriptor> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f73736b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final WireFormat$FieldType f73737c;
        public final boolean d;

        public ExtensionDescriptor(int i2, WireFormat$FieldType wireFormat$FieldType, boolean z) {
            this.f73736b = i2;
            this.f73737c = wireFormat$FieldType;
            this.d = z;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.FieldSet.FieldDescriptorLite
        public final Builder I0(MessageLite.Builder builder, MessageLite messageLite) {
            return ((Builder) builder).i((GeneratedMessageLite) messageLite);
        }

        @Override // java.lang.Comparable
        public final int compareTo(Object obj) {
            return this.f73736b - ((ExtensionDescriptor) obj).f73736b;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.FieldSet.FieldDescriptorLite
        public final int m() {
            return this.f73736b;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.FieldSet.FieldDescriptorLite
        public final boolean n() {
            return this.d;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.FieldSet.FieldDescriptorLite
        public final WireFormat$FieldType o() {
            return this.f73737c;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.FieldSet.FieldDescriptorLite
        public final WireFormat$JavaType p() {
            return this.f73737c.a();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.FieldSet.FieldDescriptorLite
        public final boolean q() {
            return false;
        }
    }

    public static class GeneratedExtension<ContainingType extends MessageLite, Type> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final MessageLite f73738a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Object f73739b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final MessageLite f73740c;
        public final ExtensionDescriptor d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final Method f73741e;

        public GeneratedExtension(MessageLite messageLite, Object obj, MessageLite messageLite2, ExtensionDescriptor extensionDescriptor, Class cls) {
            if (messageLite == null) {
                md.n("Null containingTypeDefaultInstance");
                throw null;
            }
            if (extensionDescriptor.f73737c == WireFormat$FieldType.MESSAGE && messageLite2 == null) {
                md.n("Null messageDefaultInstance");
                throw null;
            }
            this.f73738a = messageLite;
            this.f73739b = obj;
            this.f73740c = messageLite2;
            this.d = extensionDescriptor;
            if (!Internal.EnumLite.class.isAssignableFrom(cls)) {
                this.f73741e = null;
                return;
            }
            try {
                this.f73741e = cls.getMethod("valueOf", Integer.TYPE);
            } catch (NoSuchMethodException e2) {
                String name = cls.getName();
                r81.g(d21.p(new StringBuilder(name.length() + 52), "Generated message class \"", name, "\" missing method \"valueOf\"."), e2);
                throw null;
            }
        }

        public final Object a(Object obj) {
            if (this.d.f73737c.a() != WireFormat$JavaType.ENUM) {
                return obj;
            }
            try {
                return this.f73741e.invoke(null, (Integer) obj);
            } catch (IllegalAccessException e2) {
                r81.g("Couldn't use Java reflection to implement protocol message reflection.", e2);
                return null;
            } catch (InvocationTargetException e3) {
                Throwable cause = e3.getCause();
                if (cause instanceof RuntimeException) {
                    throw ((RuntimeException) cause);
                }
                if (cause instanceof Error) {
                    throw ((Error) cause);
                }
                r81.g("Unexpected exception thrown by generated accessor method.", cause);
                return null;
            }
        }

        public final Object b(Object obj) {
            return this.d.f73737c.a() == WireFormat$JavaType.ENUM ? Integer.valueOf(((Internal.EnumLite) obj).m()) : obj;
        }
    }

    public static GeneratedExtension g(MessageLite messageLite, MessageLite messageLite2, int i2, WireFormat$FieldType wireFormat$FieldType, Class cls) {
        return new GeneratedExtension(messageLite, Collections.EMPTY_LIST, messageLite2, new ExtensionDescriptor(i2, wireFormat$FieldType, true), cls);
    }

    public static GeneratedExtension h(MessageLite messageLite, Object obj, MessageLite messageLite2, int i2, WireFormat$FieldType wireFormat$FieldType, Class cls) {
        return new GeneratedExtension(messageLite, obj, messageLite2, new ExtensionDescriptor(i2, wireFormat$FieldType, false), cls);
    }

    public static abstract class ExtendableMessage<MessageType extends ExtendableMessage<MessageType>> extends GeneratedMessageLite implements ExtendableMessageOrBuilder<MessageType> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final FieldSet f73733b;

        public class ExtensionWriter {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Iterator f73734a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public Map.Entry f73735b;

            public ExtensionWriter(ExtendableMessage extendableMessage) {
                FieldSet fieldSet = extendableMessage.f73733b;
                fieldSet.getClass();
                Iterator it = fieldSet.f73726a.entrySet().iterator();
                this.f73734a = it;
                if (it.hasNext()) {
                    this.f73735b = (Map.Entry) it.next();
                }
            }

            public final void a(int i2, CodedOutputStream codedOutputStream) {
                while (true) {
                    Map.Entry entry = this.f73735b;
                    if (entry == null || ((ExtensionDescriptor) entry.getKey()).f73736b >= i2) {
                        return;
                    }
                    ExtensionDescriptor extensionDescriptor = (ExtensionDescriptor) this.f73735b.getKey();
                    Object value = this.f73735b.getValue();
                    FieldSet fieldSet = FieldSet.f73725c;
                    WireFormat$FieldType wireFormat$FieldType = extensionDescriptor.f73737c;
                    int i3 = extensionDescriptor.f73736b;
                    if (extensionDescriptor.d) {
                        for (Object obj : (List) value) {
                            if (wireFormat$FieldType == WireFormat$FieldType.GROUP) {
                                codedOutputStream.x(i3, 3);
                                ((MessageLite) obj).e(codedOutputStream);
                                codedOutputStream.x(i3, 4);
                            } else {
                                codedOutputStream.x(i3, wireFormat$FieldType.b());
                                FieldSet.k(codedOutputStream, wireFormat$FieldType, obj);
                            }
                        }
                    } else if (wireFormat$FieldType == WireFormat$FieldType.GROUP) {
                        codedOutputStream.x(i3, 3);
                        ((MessageLite) value).e(codedOutputStream);
                        codedOutputStream.x(i3, 4);
                    } else {
                        codedOutputStream.x(i3, wireFormat$FieldType.b());
                        FieldSet.k(codedOutputStream, wireFormat$FieldType, value);
                    }
                    Iterator it = this.f73734a;
                    if (it.hasNext()) {
                        this.f73735b = (Map.Entry) it.next();
                    } else {
                        this.f73735b = null;
                    }
                }
            }
        }

        public ExtendableMessage(ExtendableBuilder extendableBuilder) {
            extendableBuilder.f73732c.f();
            extendableBuilder.d = false;
            this.f73733b = extendableBuilder.f73732c;
        }

        public final boolean i() {
            SmallSortedMap.AnonymousClass1 anonymousClass1 = this.f73733b.f73726a;
            for (int i2 = 0; i2 < anonymousClass1.f73760c.size(); i2++) {
                if (!FieldSet.e((Map.Entry) anonymousClass1.f73760c.get(i2))) {
                    return false;
                }
            }
            Iterator it = anonymousClass1.d().iterator();
            while (it.hasNext()) {
                if (!FieldSet.e((Map.Entry) it.next())) {
                    return false;
                }
            }
            return true;
        }

        public final int j() {
            SmallSortedMap.AnonymousClass1 anonymousClass1 = this.f73733b.f73726a;
            int iD = 0;
            for (int i2 = 0; i2 < anonymousClass1.f73760c.size(); i2++) {
                Map.Entry entry = (Map.Entry) anonymousClass1.f73760c.get(i2);
                iD += FieldSet.d((FieldSet.FieldDescriptorLite) entry.getKey(), entry.getValue());
            }
            for (Map.Entry entry2 : anonymousClass1.d()) {
                iD += FieldSet.d((FieldSet.FieldDescriptorLite) entry2.getKey(), entry2.getValue());
            }
            return iD;
        }

        public final Object k(GeneratedExtension generatedExtension) {
            r(generatedExtension);
            ExtensionDescriptor extensionDescriptor = generatedExtension.d;
            Object obj = this.f73733b.f73726a.get(extensionDescriptor);
            if (obj == null) {
                return generatedExtension.f73739b;
            }
            if (!extensionDescriptor.d) {
                return generatedExtension.a(obj);
            }
            if (extensionDescriptor.f73737c.a() != WireFormat$JavaType.ENUM) {
                return obj;
            }
            ArrayList arrayList = new ArrayList();
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                arrayList.add(generatedExtension.a(it.next()));
            }
            return arrayList;
        }

        public final Object l(GeneratedExtension generatedExtension, int i2) {
            r(generatedExtension);
            ExtensionDescriptor extensionDescriptor = generatedExtension.d;
            FieldSet fieldSet = this.f73733b;
            fieldSet.getClass();
            if (!extensionDescriptor.d) {
                md.n("getRepeatedField() can only be called on repeated fields.");
                return null;
            }
            Object obj = fieldSet.f73726a.get(extensionDescriptor);
            if (obj != null) {
                return generatedExtension.a(((List) obj).get(i2));
            }
            zy0.b();
            return null;
        }

        public final int m(GeneratedExtension generatedExtension) {
            r(generatedExtension);
            ExtensionDescriptor extensionDescriptor = generatedExtension.d;
            FieldSet fieldSet = this.f73733b;
            fieldSet.getClass();
            if (!extensionDescriptor.d) {
                md.n("getRepeatedField() can only be called on repeated fields.");
                return 0;
            }
            Object obj = fieldSet.f73726a.get(extensionDescriptor);
            if (obj == null) {
                return 0;
            }
            return ((List) obj).size();
        }

        public final boolean o(GeneratedExtension generatedExtension) {
            r(generatedExtension);
            ExtensionDescriptor extensionDescriptor = generatedExtension.d;
            FieldSet fieldSet = this.f73733b;
            fieldSet.getClass();
            if (!extensionDescriptor.d) {
                return fieldSet.f73726a.get(extensionDescriptor) != null;
            }
            md.n("hasField() can only be called on non-repeated fields.");
            return false;
        }

        public final void p() {
            this.f73733b.f();
        }

        /* JADX WARN: Code duplicated, block: B:4:0x001a  */
        public final boolean q(CodedInputStream codedInputStream, CodedOutputStream codedOutputStream, ExtensionRegistryLite extensionRegistryLite, int i2) throws IOException {
            boolean z;
            boolean z2;
            Object objBuild;
            MessageLite messageLite;
            int i3 = i2 & 7;
            GeneratedExtension generatedExtension = (GeneratedExtension) extensionRegistryLite.f73722a.get(new ExtensionRegistryLite.ObjectIntPair(f(), i2 >>> 3));
            if (generatedExtension == null) {
                z2 = true;
                z = false;
            } else {
                ExtensionDescriptor extensionDescriptor = generatedExtension.d;
                WireFormat$FieldType wireFormat$FieldType = extensionDescriptor.f73737c;
                FieldSet fieldSet = FieldSet.f73725c;
                if (i3 == wireFormat$FieldType.b()) {
                    z2 = false;
                    z = false;
                } else if (extensionDescriptor.d && extensionDescriptor.f73737c.c() && i3 == 2) {
                    z = true;
                    z2 = false;
                } else {
                    z2 = true;
                    z = false;
                }
            }
            if (z2) {
                return codedInputStream.r(i2, codedOutputStream);
            }
            MessageLite.Builder builderD = null;
            FieldSet fieldSet2 = this.f73733b;
            if (z) {
                int iE = codedInputStream.e(codedInputStream.l());
                ExtensionDescriptor extensionDescriptor2 = generatedExtension.d;
                if (extensionDescriptor2.f73737c != WireFormat$FieldType.ENUM) {
                    while (codedInputStream.c() > 0) {
                        fieldSet2.a(extensionDescriptor2, FieldSet.h(codedInputStream, extensionDescriptor2.f73737c));
                    }
                } else if (codedInputStream.c() > 0) {
                    codedInputStream.l();
                    throw null;
                }
                codedInputStream.d(iE);
                return true;
            }
            int[] iArr = AnonymousClass1.f73730a;
            ExtensionDescriptor extensionDescriptor3 = generatedExtension.d;
            WireFormat$FieldType wireFormat$FieldType2 = extensionDescriptor3.f73737c;
            boolean z3 = extensionDescriptor3.d;
            int i4 = iArr[wireFormat$FieldType2.a().ordinal()];
            if (i4 == 1) {
                if (!z3 && (messageLite = (MessageLite) fieldSet2.f73726a.get(extensionDescriptor3)) != null) {
                    builderD = messageLite.b();
                }
                if (builderD == null) {
                    builderD = generatedExtension.f73740c.d();
                }
                if (wireFormat$FieldType2 == WireFormat$FieldType.GROUP) {
                    int i5 = extensionDescriptor3.f73736b;
                    codedInputStream.b();
                    codedInputStream.f73717i++;
                    builderD.n(codedInputStream, extensionRegistryLite);
                    codedInputStream.a((i5 << 3) | 4);
                    codedInputStream.f73717i--;
                } else {
                    int iL = codedInputStream.l();
                    codedInputStream.b();
                    int iE2 = codedInputStream.e(iL);
                    codedInputStream.f73717i++;
                    builderD.n(codedInputStream, extensionRegistryLite);
                    codedInputStream.a(0);
                    codedInputStream.f73717i--;
                    codedInputStream.d(iE2);
                }
                objBuild = builderD.build();
            } else {
                if (i4 == 2) {
                    codedInputStream.l();
                    throw null;
                }
                objBuild = FieldSet.h(codedInputStream, wireFormat$FieldType2);
            }
            if (z3) {
                fieldSet2.a(extensionDescriptor3, generatedExtension.b(objBuild));
                return true;
            }
            fieldSet2.i(extensionDescriptor3, generatedExtension.b(objBuild));
            return true;
        }

        public final void r(GeneratedExtension generatedExtension) {
            if (generatedExtension.f73738a == f()) {
                return;
            }
            md.n("This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings.");
        }

        public ExtendableMessage() {
            this.f73733b = new FieldSet();
        }
    }
}
