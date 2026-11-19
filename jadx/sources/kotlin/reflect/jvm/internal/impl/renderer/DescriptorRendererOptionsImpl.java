package kotlin.reflect.jvm.internal.impl.renderer;

import defpackage.cj;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.collections.EmptySet;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.MutablePropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;

/* JADX INFO: loaded from: classes4.dex */
public final class DescriptorRendererOptionsImpl implements DescriptorRendererOptions {
    public static final /* synthetic */ KProperty[] Y;
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 A;
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 B;
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 C;
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 D;
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 E;
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 F;
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 G;
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 H;
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 I;
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 J;
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 K;
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 L;
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 M;
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 N;
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 O;
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 P;
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 Q;
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 R;
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 S;
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 T;
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 U;
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 V;
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 W;
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 X;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f73809a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 f73810b = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(ClassifierNamePolicy.SOURCE_CODE_QUALIFIED.f73776a, this);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 f73811c;
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 f73812e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 f73813f;
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 f73814h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 f73815i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 f73816j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 f73817k;
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 l;
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 m;
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 n;
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 o;
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 p;
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 q;
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 r;
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 s;
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 t;
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 u;
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 v;
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 w;
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 x;
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 y;
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 z;

    static {
        MutablePropertyReference1Impl mutablePropertyReference1Impl = new MutablePropertyReference1Impl(DescriptorRendererOptionsImpl.class, "classifierNamePolicy", "getClassifierNamePolicy()Lorg/jetbrains/kotlin/renderer/ClassifierNamePolicy;", 0);
        ReflectionFactory reflectionFactory = Reflection.f71922a;
        Y = new KProperty[]{reflectionFactory.f(mutablePropertyReference1Impl), cj.r(DescriptorRendererOptionsImpl.class, "withDefinedIn", "getWithDefinedIn()Z", 0, reflectionFactory), cj.r(DescriptorRendererOptionsImpl.class, "withSourceFileForTopLevel", "getWithSourceFileForTopLevel()Z", 0, reflectionFactory), cj.r(DescriptorRendererOptionsImpl.class, "modifiers", "getModifiers()Ljava/util/Set;", 0, reflectionFactory), cj.r(DescriptorRendererOptionsImpl.class, "startFromName", "getStartFromName()Z", 0, reflectionFactory), cj.r(DescriptorRendererOptionsImpl.class, "startFromDeclarationKeyword", "getStartFromDeclarationKeyword()Z", 0, reflectionFactory), cj.r(DescriptorRendererOptionsImpl.class, "debugMode", "getDebugMode()Z", 0, reflectionFactory), cj.r(DescriptorRendererOptionsImpl.class, "classWithPrimaryConstructor", "getClassWithPrimaryConstructor()Z", 0, reflectionFactory), cj.r(DescriptorRendererOptionsImpl.class, "verbose", "getVerbose()Z", 0, reflectionFactory), cj.r(DescriptorRendererOptionsImpl.class, "unitReturnType", "getUnitReturnType()Z", 0, reflectionFactory), cj.r(DescriptorRendererOptionsImpl.class, "withoutReturnType", "getWithoutReturnType()Z", 0, reflectionFactory), cj.r(DescriptorRendererOptionsImpl.class, "enhancedTypes", "getEnhancedTypes()Z", 0, reflectionFactory), cj.r(DescriptorRendererOptionsImpl.class, "normalizedVisibilities", "getNormalizedVisibilities()Z", 0, reflectionFactory), cj.r(DescriptorRendererOptionsImpl.class, "renderDefaultVisibility", "getRenderDefaultVisibility()Z", 0, reflectionFactory), cj.r(DescriptorRendererOptionsImpl.class, "renderDefaultModality", "getRenderDefaultModality()Z", 0, reflectionFactory), cj.r(DescriptorRendererOptionsImpl.class, "renderConstructorDelegation", "getRenderConstructorDelegation()Z", 0, reflectionFactory), cj.r(DescriptorRendererOptionsImpl.class, "renderPrimaryConstructorParametersAsProperties", "getRenderPrimaryConstructorParametersAsProperties()Z", 0, reflectionFactory), cj.r(DescriptorRendererOptionsImpl.class, "actualPropertiesInPrimaryConstructor", "getActualPropertiesInPrimaryConstructor()Z", 0, reflectionFactory), cj.r(DescriptorRendererOptionsImpl.class, "uninferredTypeParameterAsName", "getUninferredTypeParameterAsName()Z", 0, reflectionFactory), cj.r(DescriptorRendererOptionsImpl.class, "includePropertyConstant", "getIncludePropertyConstant()Z", 0, reflectionFactory), cj.r(DescriptorRendererOptionsImpl.class, "propertyConstantRenderer", "getPropertyConstantRenderer()Lkotlin/jvm/functions/Function1;", 0, reflectionFactory), cj.r(DescriptorRendererOptionsImpl.class, "withoutTypeParameters", "getWithoutTypeParameters()Z", 0, reflectionFactory), cj.r(DescriptorRendererOptionsImpl.class, "withoutSuperTypes", "getWithoutSuperTypes()Z", 0, reflectionFactory), cj.r(DescriptorRendererOptionsImpl.class, "typeNormalizer", "getTypeNormalizer()Lkotlin/jvm/functions/Function1;", 0, reflectionFactory), cj.r(DescriptorRendererOptionsImpl.class, "defaultParameterValueRenderer", "getDefaultParameterValueRenderer()Lkotlin/jvm/functions/Function1;", 0, reflectionFactory), cj.r(DescriptorRendererOptionsImpl.class, "secondaryConstructorsAsPrimary", "getSecondaryConstructorsAsPrimary()Z", 0, reflectionFactory), cj.r(DescriptorRendererOptionsImpl.class, "overrideRenderingPolicy", "getOverrideRenderingPolicy()Lorg/jetbrains/kotlin/renderer/OverrideRenderingPolicy;", 0, reflectionFactory), cj.r(DescriptorRendererOptionsImpl.class, "valueParametersHandler", "getValueParametersHandler()Lorg/jetbrains/kotlin/renderer/DescriptorRenderer$ValueParametersHandler;", 0, reflectionFactory), cj.r(DescriptorRendererOptionsImpl.class, "textFormat", "getTextFormat()Lorg/jetbrains/kotlin/renderer/RenderingFormat;", 0, reflectionFactory), cj.r(DescriptorRendererOptionsImpl.class, "parameterNameRenderingPolicy", "getParameterNameRenderingPolicy()Lorg/jetbrains/kotlin/renderer/ParameterNameRenderingPolicy;", 0, reflectionFactory), cj.r(DescriptorRendererOptionsImpl.class, "receiverAfterName", "getReceiverAfterName()Z", 0, reflectionFactory), cj.r(DescriptorRendererOptionsImpl.class, "renderCompanionObjectName", "getRenderCompanionObjectName()Z", 0, reflectionFactory), cj.r(DescriptorRendererOptionsImpl.class, "propertyAccessorRenderingPolicy", "getPropertyAccessorRenderingPolicy()Lorg/jetbrains/kotlin/renderer/PropertyAccessorRenderingPolicy;", 0, reflectionFactory), cj.r(DescriptorRendererOptionsImpl.class, "renderDefaultAnnotationArguments", "getRenderDefaultAnnotationArguments()Z", 0, reflectionFactory), cj.r(DescriptorRendererOptionsImpl.class, "eachAnnotationOnNewLine", "getEachAnnotationOnNewLine()Z", 0, reflectionFactory), cj.r(DescriptorRendererOptionsImpl.class, "excludedAnnotationClasses", "getExcludedAnnotationClasses()Ljava/util/Set;", 0, reflectionFactory), cj.r(DescriptorRendererOptionsImpl.class, "excludedTypeAnnotationClasses", "getExcludedTypeAnnotationClasses()Ljava/util/Set;", 0, reflectionFactory), cj.r(DescriptorRendererOptionsImpl.class, "annotationFilter", "getAnnotationFilter()Lkotlin/jvm/functions/Function1;", 0, reflectionFactory), cj.r(DescriptorRendererOptionsImpl.class, "annotationArgumentsRenderingPolicy", "getAnnotationArgumentsRenderingPolicy()Lorg/jetbrains/kotlin/renderer/AnnotationArgumentsRenderingPolicy;", 0, reflectionFactory), cj.r(DescriptorRendererOptionsImpl.class, "alwaysRenderModifiers", "getAlwaysRenderModifiers()Z", 0, reflectionFactory), cj.r(DescriptorRendererOptionsImpl.class, "renderConstructorKeyword", "getRenderConstructorKeyword()Z", 0, reflectionFactory), cj.r(DescriptorRendererOptionsImpl.class, "renderUnabbreviatedType", "getRenderUnabbreviatedType()Z", 0, reflectionFactory), cj.r(DescriptorRendererOptionsImpl.class, "renderTypeExpansions", "getRenderTypeExpansions()Z", 0, reflectionFactory), cj.r(DescriptorRendererOptionsImpl.class, "renderAbbreviatedTypeComments", "getRenderAbbreviatedTypeComments()Z", 0, reflectionFactory), cj.r(DescriptorRendererOptionsImpl.class, "includeAdditionalModifiers", "getIncludeAdditionalModifiers()Z", 0, reflectionFactory), cj.r(DescriptorRendererOptionsImpl.class, "parameterNamesInFunctionalTypes", "getParameterNamesInFunctionalTypes()Z", 0, reflectionFactory), cj.r(DescriptorRendererOptionsImpl.class, "renderFunctionContracts", "getRenderFunctionContracts()Z", 0, reflectionFactory), cj.r(DescriptorRendererOptionsImpl.class, "presentableUnresolvedTypes", "getPresentableUnresolvedTypes()Z", 0, reflectionFactory), cj.r(DescriptorRendererOptionsImpl.class, "boldOnlyForNamesInHtml", "getBoldOnlyForNamesInHtml()Z", 0, reflectionFactory), cj.r(DescriptorRendererOptionsImpl.class, "informativeErrorType", "getInformativeErrorType()Z", 0, reflectionFactory)};
    }

    public DescriptorRendererOptionsImpl() {
        Boolean bool = Boolean.TRUE;
        this.f73811c = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(bool, this);
        this.d = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(bool, this);
        this.f73812e = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(DescriptorRendererModifier.ALL_EXCEPT_ANNOTATIONS, this);
        Boolean bool2 = Boolean.FALSE;
        this.f73813f = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(bool2, this);
        this.g = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(bool2, this);
        this.f73814h = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(bool2, this);
        this.f73815i = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(bool2, this);
        this.f73816j = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(bool2, this);
        this.f73817k = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(bool, this);
        this.l = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(bool2, this);
        this.m = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(bool2, this);
        this.n = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(bool2, this);
        this.o = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(bool, this);
        this.p = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(bool, this);
        this.q = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(bool2, this);
        this.r = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(bool2, this);
        this.s = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(bool2, this);
        this.t = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(bool2, this);
        this.u = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(bool2, this);
        this.v = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(null, this);
        this.w = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(bool2, this);
        this.x = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(bool2, this);
        this.y = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(new Function1() { // from class: kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptionsImpl$$Lambda$0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                KotlinType kotlinType = (KotlinType) obj;
                KProperty[] kPropertyArr = DescriptorRendererOptionsImpl.Y;
                kotlinType.getClass();
                return kotlinType;
            }
        }, this);
        this.z = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(new Function1() { // from class: kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptionsImpl$$Lambda$1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                KProperty[] kPropertyArr = DescriptorRendererOptionsImpl.Y;
                ((ValueParameterDescriptor) obj).getClass();
                return "...";
            }
        }, this);
        this.A = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(bool, this);
        this.B = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(OverrideRenderingPolicy.RENDER_OPEN, this);
        this.C = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(DescriptorRenderer.ValueParametersHandler.DEFAULT.f73792a, this);
        this.D = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(RenderingFormat.PLAIN, this);
        this.E = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(ParameterNameRenderingPolicy.ALL, this);
        this.F = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(bool2, this);
        this.G = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(bool2, this);
        this.H = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(PropertyAccessorRenderingPolicy.DEBUG, this);
        this.I = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(bool2, this);
        this.J = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(bool2, this);
        this.K = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(EmptySet.f71770b, this);
        this.L = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(ExcludedTypeAnnotations.f73821a, this);
        this.M = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(null, this);
        this.N = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(AnnotationArgumentsRenderingPolicy.NO_ARGUMENTS, this);
        this.O = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(bool2, this);
        this.P = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(bool, this);
        this.Q = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(bool, this);
        this.R = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(bool2, this);
        this.S = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(bool2, this);
        this.T = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(bool, this);
        this.U = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(bool, this);
        new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(bool2, this);
        this.V = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(bool2, this);
        this.W = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(bool2, this);
        this.X = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(bool, this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions
    public final void a() {
        KProperty kProperty = Y[30];
        this.F.a(Boolean.TRUE, kProperty);
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions
    public final void b() {
        KProperty kProperty = Y[31];
        this.G.a(Boolean.TRUE, kProperty);
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions
    public final void c(ParameterNameRenderingPolicy parameterNameRenderingPolicy) {
        parameterNameRenderingPolicy.getClass();
        this.E.a(parameterNameRenderingPolicy, Y[29]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions
    public final void d() {
        KProperty kProperty = Y[21];
        this.w.a(Boolean.TRUE, kProperty);
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions
    public final void e(RenderingFormat renderingFormat) {
        renderingFormat.getClass();
        this.D.a(renderingFormat, Y[28]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions
    public final void f() {
        KProperty kProperty = Y[4];
        this.f73813f.a(Boolean.TRUE, kProperty);
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions
    public final Set g() {
        KProperty kProperty = Y[36];
        DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$1 = this.L;
        descriptorRendererOptionsImpl$property$$inlined$vetoable$1.getClass();
        kProperty.getClass();
        return (Set) descriptorRendererOptionsImpl$property$$inlined$vetoable$1.f71939a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions
    public final void h() {
        KProperty kProperty = Y[22];
        this.x.a(Boolean.TRUE, kProperty);
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions
    public final void i() {
        KProperty kProperty = Y[6];
        this.f73814h.a(Boolean.TRUE, kProperty);
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions
    public final void j(Set set) {
        set.getClass();
        this.f73812e.a(set, Y[3]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions
    public final void k(LinkedHashSet linkedHashSet) {
        this.L.a(linkedHashSet, Y[36]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions
    public final void l(ClassifierNamePolicy classifierNamePolicy) {
        this.f73810b.a(classifierNamePolicy, Y[0]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions
    public final void m() {
        KProperty kProperty = Y[1];
        this.f73811c.a(Boolean.FALSE, kProperty);
    }

    public final AnnotationArgumentsRenderingPolicy n() {
        KProperty kProperty = Y[38];
        DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$1 = this.N;
        descriptorRendererOptionsImpl$property$$inlined$vetoable$1.getClass();
        kProperty.getClass();
        return (AnnotationArgumentsRenderingPolicy) descriptorRendererOptionsImpl$property$$inlined$vetoable$1.f71939a;
    }

    public final boolean o() {
        KProperty kProperty = Y[6];
        DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$1 = this.f73814h;
        descriptorRendererOptionsImpl$property$$inlined$vetoable$1.getClass();
        kProperty.getClass();
        return ((Boolean) descriptorRendererOptionsImpl$property$$inlined$vetoable$1.f71939a).booleanValue();
    }
}
