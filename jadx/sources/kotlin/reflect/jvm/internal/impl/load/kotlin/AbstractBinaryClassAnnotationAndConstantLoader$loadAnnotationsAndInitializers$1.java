package kotlin.reflect.jvm.internal.impl.load.kotlin;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.ReflectAnnotationSource;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.Name;

/* JADX INFO: loaded from: classes4.dex */
public final class AbstractBinaryClassAnnotationAndConstantLoader$loadAnnotationsAndInitializers$1 implements KotlinJvmBinaryClass.MemberVisitor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AbstractBinaryClassAnnotationAndConstantLoader f73198a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ HashMap f73199b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ KotlinJvmBinaryClass f73200c;

    public final class AnnotationVisitorForMethod extends MemberAnnotationVisitor implements KotlinJvmBinaryClass.MethodAnnotationVisitor {
        public final /* synthetic */ AbstractBinaryClassAnnotationAndConstantLoader$loadAnnotationsAndInitializers$1 d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnnotationVisitorForMethod(AbstractBinaryClassAnnotationAndConstantLoader$loadAnnotationsAndInitializers$1 abstractBinaryClassAnnotationAndConstantLoader$loadAnnotationsAndInitializers$1, MemberSignature memberSignature) {
            super(abstractBinaryClassAnnotationAndConstantLoader$loadAnnotationsAndInitializers$1, memberSignature);
            memberSignature.getClass();
            this.d = abstractBinaryClassAnnotationAndConstantLoader$loadAnnotationsAndInitializers$1;
        }

        public final KotlinJvmBinaryClass.AnnotationArgumentVisitor c(int i2, ClassId classId, ReflectAnnotationSource reflectAnnotationSource) {
            MemberSignature.f73259b.getClass();
            MemberSignature memberSignatureE = MemberSignature.Companion.e(this.f73201a, i2);
            AbstractBinaryClassAnnotationAndConstantLoader$loadAnnotationsAndInitializers$1 abstractBinaryClassAnnotationAndConstantLoader$loadAnnotationsAndInitializers$1 = this.d;
            List arrayList = (List) abstractBinaryClassAnnotationAndConstantLoader$loadAnnotationsAndInitializers$1.f73199b.get(memberSignatureE);
            if (arrayList == null) {
                arrayList = new ArrayList();
                abstractBinaryClassAnnotationAndConstantLoader$loadAnnotationsAndInitializers$1.f73199b.put(memberSignatureE, arrayList);
            }
            return abstractBinaryClassAnnotationAndConstantLoader$loadAnnotationsAndInitializers$1.f73198a.t(classId, reflectAnnotationSource, arrayList);
        }
    }

    public class MemberAnnotationVisitor implements KotlinJvmBinaryClass.AnnotationVisitor {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final MemberSignature f73201a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ArrayList f73202b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ AbstractBinaryClassAnnotationAndConstantLoader$loadAnnotationsAndInitializers$1 f73203c;

        public MemberAnnotationVisitor(AbstractBinaryClassAnnotationAndConstantLoader$loadAnnotationsAndInitializers$1 abstractBinaryClassAnnotationAndConstantLoader$loadAnnotationsAndInitializers$1, MemberSignature memberSignature) {
            memberSignature.getClass();
            this.f73203c = abstractBinaryClassAnnotationAndConstantLoader$loadAnnotationsAndInitializers$1;
            this.f73201a = memberSignature;
            this.f73202b = new ArrayList();
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass.AnnotationVisitor
        public final void a() {
            ArrayList arrayList = this.f73202b;
            if (arrayList.isEmpty()) {
                return;
            }
            this.f73203c.f73199b.put(this.f73201a, arrayList);
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass.AnnotationVisitor
        public final KotlinJvmBinaryClass.AnnotationArgumentVisitor b(ClassId classId, ReflectAnnotationSource reflectAnnotationSource) {
            return this.f73203c.f73198a.t(classId, reflectAnnotationSource, this.f73202b);
        }
    }

    public AbstractBinaryClassAnnotationAndConstantLoader$loadAnnotationsAndInitializers$1(AbstractBinaryClassAnnotationAndConstantLoader abstractBinaryClassAnnotationAndConstantLoader, HashMap map, KotlinJvmBinaryClass kotlinJvmBinaryClass, HashMap map2) {
        this.f73198a = abstractBinaryClassAnnotationAndConstantLoader;
        this.f73199b = map;
        this.f73200c = kotlinJvmBinaryClass;
    }

    public final AnnotationVisitorForMethod a(Name name, String str) {
        name.getClass();
        MemberSignature.Companion companion = MemberSignature.f73259b;
        String strB = name.b();
        strB.getClass();
        companion.getClass();
        return new AnnotationVisitorForMethod(this, MemberSignature.Companion.d(strB, str));
    }
}
