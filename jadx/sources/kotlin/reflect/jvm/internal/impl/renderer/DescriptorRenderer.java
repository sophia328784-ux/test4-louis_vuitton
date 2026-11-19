package kotlin.reflect.jvm.internal.impl.renderer;

import kotlin.Unit;
import kotlin.collections.EmptySet;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.name.FqNameUnsafe;
import kotlin.reflect.jvm.internal.impl.name.Name;

/* JADX INFO: loaded from: classes4.dex */
public abstract class DescriptorRenderer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Companion f73777a = new Companion(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final DescriptorRendererImpl f73778b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final DescriptorRendererImpl f73779c;
    public static final DescriptorRendererImpl d;

    public static final class Companion {

        public static final /* synthetic */ class WhenMappings {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final /* synthetic */ int[] f73791a;

            static {
                int[] iArr = new int[ClassKind.values().length];
                try {
                    iArr[ClassKind.CLASS.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[ClassKind.INTERFACE.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[ClassKind.ENUM_CLASS.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[ClassKind.OBJECT.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                try {
                    iArr[ClassKind.ANNOTATION_CLASS.ordinal()] = 5;
                } catch (NoSuchFieldError unused5) {
                }
                try {
                    iArr[ClassKind.ENUM_ENTRY.ordinal()] = 6;
                } catch (NoSuchFieldError unused6) {
                }
                f73791a = iArr;
            }
        }

        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static DescriptorRendererImpl a(Function1 function1) {
            function1.getClass();
            DescriptorRendererOptionsImpl descriptorRendererOptionsImpl = new DescriptorRendererOptionsImpl();
            function1.invoke(descriptorRendererOptionsImpl);
            descriptorRendererOptionsImpl.f73809a = true;
            return new DescriptorRendererImpl(descriptorRendererOptionsImpl);
        }
    }

    public interface ValueParametersHandler {

        public static final class DEFAULT implements ValueParametersHandler {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final DEFAULT f73792a = new DEFAULT();

            @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer.ValueParametersHandler
            public final void a(StringBuilder sb) {
                sb.getClass();
                sb.append("(");
            }

            @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer.ValueParametersHandler
            public final void b(ValueParameterDescriptor valueParameterDescriptor, StringBuilder sb) {
                valueParameterDescriptor.getClass();
                sb.getClass();
            }

            @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer.ValueParametersHandler
            public final void c(ValueParameterDescriptor valueParameterDescriptor, int i2, int i3, StringBuilder sb) {
                sb.getClass();
                if (i2 != i3 - 1) {
                    sb.append(", ");
                }
            }

            @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer.ValueParametersHandler
            public final void d(StringBuilder sb) {
                sb.getClass();
                sb.append(")");
            }
        }

        void a(StringBuilder sb);

        void b(ValueParameterDescriptor valueParameterDescriptor, StringBuilder sb);

        void c(ValueParameterDescriptor valueParameterDescriptor, int i2, int i3, StringBuilder sb);

        void d(StringBuilder sb);
    }

    static {
        Companion.a(new Function1() { // from class: kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer$$Lambda$0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                DescriptorRendererOptions descriptorRendererOptions = (DescriptorRendererOptions) obj;
                DescriptorRenderer.Companion companion = DescriptorRenderer.f73777a;
                descriptorRendererOptions.getClass();
                descriptorRendererOptions.j(EmptySet.f71770b);
                return Unit.f71739a;
            }
        });
        Companion.a(new Function1() { // from class: kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer$$Lambda$1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                DescriptorRendererOptions descriptorRendererOptions = (DescriptorRendererOptions) obj;
                DescriptorRenderer.Companion companion = DescriptorRenderer.f73777a;
                descriptorRendererOptions.getClass();
                descriptorRendererOptions.m();
                return Unit.f71739a;
            }
        });
        Companion.a(new Function1() { // from class: kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer$$Lambda$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                DescriptorRendererOptions descriptorRendererOptions = (DescriptorRendererOptions) obj;
                DescriptorRenderer.Companion companion = DescriptorRenderer.f73777a;
                descriptorRendererOptions.getClass();
                descriptorRendererOptions.m();
                descriptorRendererOptions.j(EmptySet.f71770b);
                return Unit.f71739a;
            }
        });
        Companion.a(new Function1() { // from class: kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer$$Lambda$3
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                DescriptorRendererOptions descriptorRendererOptions = (DescriptorRendererOptions) obj;
                DescriptorRenderer.Companion companion = DescriptorRenderer.f73777a;
                descriptorRendererOptions.getClass();
                descriptorRendererOptions.m();
                descriptorRendererOptions.j(EmptySet.f71770b);
                descriptorRendererOptions.h();
                return Unit.f71739a;
            }
        });
        Companion.a(new Function1() { // from class: kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer$$Lambda$4
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                DescriptorRendererOptions descriptorRendererOptions = (DescriptorRendererOptions) obj;
                DescriptorRenderer.Companion companion = DescriptorRenderer.f73777a;
                descriptorRendererOptions.getClass();
                descriptorRendererOptions.j(EmptySet.f71770b);
                descriptorRendererOptions.l(ClassifierNamePolicy.SHORT.f73775a);
                descriptorRendererOptions.c(ParameterNameRenderingPolicy.ONLY_NON_SYNTHESIZED);
                return Unit.f71739a;
            }
        });
        Companion.a(new Function1() { // from class: kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer$$Lambda$5
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                DescriptorRendererOptions descriptorRendererOptions = (DescriptorRendererOptions) obj;
                DescriptorRenderer.Companion companion = DescriptorRenderer.f73777a;
                descriptorRendererOptions.getClass();
                descriptorRendererOptions.m();
                descriptorRendererOptions.j(EmptySet.f71770b);
                descriptorRendererOptions.l(ClassifierNamePolicy.SHORT.f73775a);
                descriptorRendererOptions.d();
                descriptorRendererOptions.c(ParameterNameRenderingPolicy.NONE);
                descriptorRendererOptions.a();
                descriptorRendererOptions.b();
                descriptorRendererOptions.h();
                descriptorRendererOptions.f();
                return Unit.f71739a;
            }
        });
        f73778b = Companion.a(new Function1() { // from class: kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer$$Lambda$6
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                DescriptorRendererOptions descriptorRendererOptions = (DescriptorRendererOptions) obj;
                DescriptorRenderer.Companion companion = DescriptorRenderer.f73777a;
                descriptorRendererOptions.getClass();
                descriptorRendererOptions.j(DescriptorRendererModifier.ALL_EXCEPT_ANNOTATIONS);
                return Unit.f71739a;
            }
        });
        Companion.a(new Function1() { // from class: kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer$$Lambda$7
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                DescriptorRendererOptions descriptorRendererOptions = (DescriptorRendererOptions) obj;
                DescriptorRenderer.Companion companion = DescriptorRenderer.f73777a;
                descriptorRendererOptions.getClass();
                descriptorRendererOptions.j(DescriptorRendererModifier.ALL);
                return Unit.f71739a;
            }
        });
        f73779c = Companion.a(new Function1() { // from class: kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer$$Lambda$8
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                DescriptorRendererOptions descriptorRendererOptions = (DescriptorRendererOptions) obj;
                DescriptorRenderer.Companion companion = DescriptorRenderer.f73777a;
                descriptorRendererOptions.getClass();
                descriptorRendererOptions.l(ClassifierNamePolicy.SHORT.f73775a);
                descriptorRendererOptions.c(ParameterNameRenderingPolicy.ONLY_NON_SYNTHESIZED);
                return Unit.f71739a;
            }
        });
        d = Companion.a(new Function1() { // from class: kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer$$Lambda$9
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                DescriptorRendererOptions descriptorRendererOptions = (DescriptorRendererOptions) obj;
                DescriptorRenderer.Companion companion = DescriptorRenderer.f73777a;
                descriptorRendererOptions.getClass();
                descriptorRendererOptions.i();
                descriptorRendererOptions.l(ClassifierNamePolicy.FULLY_QUALIFIED.f73774a);
                descriptorRendererOptions.j(DescriptorRendererModifier.ALL);
                return Unit.f71739a;
            }
        });
        Companion.a(new Function1() { // from class: kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer$$Lambda$10
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                DescriptorRendererOptions descriptorRendererOptions = (DescriptorRendererOptions) obj;
                DescriptorRenderer.Companion companion = DescriptorRenderer.f73777a;
                descriptorRendererOptions.getClass();
                descriptorRendererOptions.e(RenderingFormat.HTML);
                descriptorRendererOptions.j(DescriptorRendererModifier.ALL);
                return Unit.f71739a;
            }
        });
    }

    public abstract String n(FqNameUnsafe fqNameUnsafe);

    public abstract String o(Name name, boolean z);
}
