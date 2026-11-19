package kotlin.reflect.jvm.internal.types;

import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.KTypeBase;
import kotlin.reflect.KClass;
import kotlin.reflect.KClassifier;
import kotlin.reflect.KType;
import kotlin.reflect.KTypeProjection;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u001b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u00012\u00020\u0002Bu\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\t\u001a\u00020\b\u0012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\u0005\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f\u0012\u0006\u0010\u000e\u001a\u00020\b\u0012\u0006\u0010\u000f\u001a\u00020\b\u0012\u0006\u0010\u0010\u001a\u00020\b\u0012\f\u0010\u0012\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0011\u0012\u0010\b\u0002\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0013¢\u0006\u0004\b\u0016\u0010\u0017¨\u0006\u0018"}, d2 = {"Lkotlin/reflect/jvm/internal/types/SimpleKType;", "Lkotlin/reflect/jvm/internal/types/AbstractKType;", "Lkotlin/jvm/internal/KTypeBase;", "Lkotlin/reflect/KClassifier;", "classifier", "", "Lkotlin/reflect/KTypeProjection;", "arguments", "", "isMarkedNullable", "", "annotations", "Lkotlin/reflect/KType;", "abbreviation", "isDefinitelyNotNullType", "isNothingType", "isSuspendFunctionType", "Lkotlin/reflect/KClass;", "mutableCollectionClass", "Lkotlin/Function0;", "Ljava/lang/reflect/Type;", "computeJavaType", "<init>", "(Lkotlin/reflect/KClassifier;Ljava/util/List;ZLjava/util/List;Lkotlin/reflect/KType;ZZZLkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;)V", "kotlin-reflection"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class SimpleKType extends AbstractKType implements KTypeBase {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final KClassifier f74442c;
    public final List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f74443e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List f74444f;
    public final KType g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f74445h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f74446i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f74447j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final KClass f74448k;

    public /* synthetic */ SimpleKType(KClassifier kClassifier, List list, boolean z, List list2, KType kType, boolean z2, boolean z3, boolean z4, KClass kClass, Function0 function0, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(kClassifier, list, z, list2, kType, z2, z3, z4, kClass, (i2 & 512) != 0 ? null : function0);
    }

    @Override // kotlin.reflect.jvm.internal.types.AbstractKType
    /* JADX INFO: renamed from: A */
    public final AbstractKType getF74424c() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.types.AbstractKType
    public final AbstractKType D(boolean z) {
        return new SimpleKType(this.f74442c, this.d, this.f74443e && !z, this.f74444f, this.g, z, this.f74446i, this.f74447j, this.f74448k, null, 512, null);
    }

    @Override // kotlin.reflect.jvm.internal.types.AbstractKType
    public final AbstractKType G(boolean z) {
        return new SimpleKType(this.f74442c, this.d, z, this.f74444f, this.g, false, this.f74446i, this.f74447j, this.f74448k, null, 512, null);
    }

    @Override // kotlin.reflect.jvm.internal.types.AbstractKType
    /* JADX INFO: renamed from: H */
    public final AbstractKType getD() {
        return null;
    }

    @Override // kotlin.reflect.KType
    /* JADX INFO: renamed from: a, reason: from getter */
    public final KClassifier getF74442c() {
        return this.f74442c;
    }

    @Override // kotlin.reflect.KType
    /* JADX INFO: renamed from: b, reason: from getter */
    public final List getD() {
        return this.d;
    }

    @Override // kotlin.reflect.KType
    /* JADX INFO: renamed from: d, reason: from getter */
    public final boolean getF74443e() {
        return this.f74443e;
    }

    @Override // kotlin.reflect.jvm.internal.types.AbstractKType
    /* JADX INFO: renamed from: g, reason: from getter */
    public final KType getG() {
        return this.g;
    }

    @Override // kotlin.reflect.KAnnotatedElement
    /* JADX INFO: renamed from: getAnnotations, reason: from getter */
    public final List getF74444f() {
        return this.f74444f;
    }

    @Override // kotlin.reflect.jvm.internal.types.AbstractKType
    /* JADX INFO: renamed from: h, reason: from getter */
    public final KClass getF74448k() {
        return this.f74448k;
    }

    @Override // kotlin.reflect.jvm.internal.types.AbstractKType
    /* JADX INFO: renamed from: l, reason: from getter */
    public final boolean getF74445h() {
        return this.f74445h;
    }

    @Override // kotlin.reflect.jvm.internal.types.AbstractKType
    /* JADX INFO: renamed from: p, reason: from getter */
    public final boolean getF74446i() {
        return this.f74446i;
    }

    @Override // kotlin.reflect.jvm.internal.types.AbstractKType
    /* JADX INFO: renamed from: q */
    public final boolean getF74425e() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.types.AbstractKType
    /* JADX INFO: renamed from: y, reason: from getter */
    public final boolean getF74447j() {
        return this.f74447j;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SimpleKType(KClassifier kClassifier, List<KTypeProjection> list, boolean z, List<? extends Annotation> list2, KType kType, boolean z2, boolean z3, boolean z4, KClass<?> kClass, Function0<? extends Type> function0) {
        super(function0);
        kClassifier.getClass();
        list.getClass();
        list2.getClass();
        this.f74442c = kClassifier;
        this.d = list;
        this.f74443e = z;
        this.f74444f = list2;
        this.g = kType;
        this.f74445h = z2;
        this.f74446i = z3;
        this.f74447j = z4;
        this.f74448k = kClass;
    }
}
