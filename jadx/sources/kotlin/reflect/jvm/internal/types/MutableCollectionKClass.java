package kotlin.reflect.jvm.internal.types;

import com.sightcall.universal.media.offline.FileUtils;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import kotlin.reflect.KType;
import kotlin.reflect.KTypeParameter;
import kotlin.reflect.jvm.internal.KTypeParameterOwnerImpl;
import kotlin.reflect.jvm.internal.impl.types.model.TypeConstructorMarker;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00000\u00032\u00020\u00042\u00020\u0005B]\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u001e\u0010\f\u001a\u001a\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\n0\t\u0012\u001e\u0010\u000e\u001a\u001a\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00020\r0\n0\t¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lkotlin/reflect/jvm/internal/types/MutableCollectionKClass;", "", "T", "Lkotlin/reflect/KClass;", "Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;", "Lkotlin/reflect/jvm/internal/KTypeParameterOwnerImpl;", "klass", "", "qualifiedName", "Lkotlin/Function1;", "", "Lkotlin/reflect/KTypeParameter;", "createTypeParameters", "Lkotlin/reflect/KType;", "createSupertypes", "<init>", "(Lkotlin/reflect/KClass;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V", "kotlin-reflection"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class MutableCollectionKClass<T> implements KClass<T>, KTypeParameterOwnerImpl, TypeConstructorMarker {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final KClass f74430b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f74431c;
    public final List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f74432e;

    public MutableCollectionKClass(KClass<T> kClass, String str, Function1<? super MutableCollectionKClass<T>, ? extends List<? extends KTypeParameter>> function1, Function1<? super MutableCollectionKClass<T>, ? extends List<? extends KType>> function2) {
        kClass.getClass();
        str.getClass();
        function1.getClass();
        function2.getClass();
        this.f74430b = kClass;
        this.f74431c = str;
        this.d = (List) function1.invoke(this);
        this.f74432e = (List) function2.invoke(this);
    }

    @Override // kotlin.reflect.KClass
    public final String B() {
        return StringsKt.S(this.f74431c, FileUtils.HIDDEN_PREFIX);
    }

    @Override // kotlin.reflect.KClass
    public final boolean equals(Object obj) {
        if (obj instanceof MutableCollectionKClass) {
            return Intrinsics.c(this.f74430b, ((MutableCollectionKClass) obj).f74430b);
        }
        return false;
    }

    @Override // kotlin.reflect.KClass
    public final Collection f() {
        return this.f74430b.f();
    }

    @Override // kotlin.reflect.KAnnotatedElement
    public final List getAnnotations() {
        return this.f74430b.getAnnotations();
    }

    @Override // kotlin.reflect.KClass
    /* JADX INFO: renamed from: getTypeParameters, reason: from getter */
    public final List getD() {
        return this.d;
    }

    @Override // kotlin.reflect.KClass
    public final int hashCode() {
        return this.f74430b.hashCode();
    }

    @Override // kotlin.reflect.KClass
    /* JADX INFO: renamed from: i, reason: from getter */
    public final List getF74432e() {
        return this.f74432e;
    }

    @Override // kotlin.reflect.KClass
    public final boolean isAbstract() {
        return this.f74430b.isAbstract();
    }

    @Override // kotlin.reflect.KClass
    public final boolean k() {
        return this.f74430b.k();
    }

    @Override // kotlin.reflect.KClass
    public final boolean m() {
        return this.f74430b.m();
    }

    @Override // kotlin.reflect.KClass
    public final boolean r() {
        return this.f74430b.r();
    }

    @Override // kotlin.reflect.KClass
    public final Object s() {
        return this.f74430b.s();
    }

    @Override // kotlin.reflect.KClass
    public final boolean t(Object obj) {
        return this.f74430b.t(obj);
    }

    public final String toString() {
        return "MutableCollectionKClass(" + this.f74430b + ')';
    }

    @Override // kotlin.reflect.KClass
    public final Collection v() {
        return this.f74430b.v();
    }

    @Override // kotlin.reflect.KClass
    /* JADX INFO: renamed from: w, reason: from getter */
    public final String getF74431c() {
        return this.f74431c;
    }
}
