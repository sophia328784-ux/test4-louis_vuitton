package kotlin.reflect.jvm.internal.types;

import defpackage.d20;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import kotlin.reflect.KClassifier;
import kotlin.reflect.KType;
import kotlin.reflect.jvm.internal.KotlinReflectionInternalError;
import kotlin.reflect.jvm.internal.impl.types.model.CapturedTypeMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u00012\u00020\u0002B!\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lkotlin/reflect/jvm/internal/types/CapturedKType;", "Lkotlin/reflect/jvm/internal/types/AbstractKType;", "Lkotlin/reflect/jvm/internal/impl/types/model/CapturedTypeMarker;", "Lkotlin/reflect/KType;", "lowerType", "Lkotlin/reflect/jvm/internal/types/CapturedKTypeConstructor;", "typeConstructor", "", "isMarkedNullable", "<init>", "(Lkotlin/reflect/KType;Lkotlin/reflect/jvm/internal/types/CapturedKTypeConstructor;Z)V", "kotlin-reflection"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class CapturedKType extends AbstractKType implements CapturedTypeMarker {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final KType f74406c;
    public final CapturedKTypeConstructor d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f74407e;

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.types.CapturedKType$1, reason: invalid class name */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class AnonymousClass1 extends FunctionReferenceImpl implements Function0 {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final AnonymousClass1 f74408b = new AnonymousClass1(0, CapturedKTypeKt.class, "javaTypeNotSupported", "javaTypeNotSupported()Ljava/lang/Void;", 1);

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: invoke */
        public final Object mo47invoke() {
            throw new KotlinReflectionInternalError("javaType for captured types is not supported");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CapturedKType(KType kType, CapturedKTypeConstructor capturedKTypeConstructor, boolean z) {
        super(AnonymousClass1.f74408b);
        capturedKTypeConstructor.getClass();
        this.f74406c = kType;
        this.d = capturedKTypeConstructor;
        this.f74407e = z;
    }

    @Override // kotlin.reflect.jvm.internal.types.AbstractKType
    /* JADX INFO: renamed from: A */
    public final AbstractKType getF74424c() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.types.AbstractKType
    public final AbstractKType D(boolean z) {
        if (!z) {
            return this;
        }
        d20.c(this, "Definitely not null captured type is not supported yet: ");
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.types.AbstractKType
    public final AbstractKType G(boolean z) {
        return z == this.f74407e ? this : new CapturedKType(this.f74406c, this.d, z);
    }

    @Override // kotlin.reflect.jvm.internal.types.AbstractKType
    /* JADX INFO: renamed from: H */
    public final AbstractKType getD() {
        return null;
    }

    @Override // kotlin.reflect.KType
    /* JADX INFO: renamed from: a */
    public final KClassifier getF74442c() {
        return null;
    }

    @Override // kotlin.reflect.KType
    /* JADX INFO: renamed from: b */
    public final List getD() {
        return EmptyList.f71768b;
    }

    @Override // kotlin.reflect.KType
    /* JADX INFO: renamed from: d, reason: from getter */
    public final boolean getF74407e() {
        return this.f74407e;
    }

    @Override // kotlin.reflect.jvm.internal.types.AbstractKType
    public final boolean equals(Object obj) {
        if (!(obj instanceof CapturedKType)) {
            return false;
        }
        CapturedKType capturedKType = (CapturedKType) obj;
        return Intrinsics.c(this.f74406c, capturedKType.f74406c) && Intrinsics.c(this.d, capturedKType.d) && this.f74407e == capturedKType.f74407e;
    }

    @Override // kotlin.reflect.jvm.internal.types.AbstractKType
    /* JADX INFO: renamed from: g */
    public final KType getG() {
        return null;
    }

    @Override // kotlin.reflect.KAnnotatedElement
    /* JADX INFO: renamed from: getAnnotations */
    public final List getF74444f() {
        return EmptyList.f71768b;
    }

    @Override // kotlin.reflect.jvm.internal.types.AbstractKType
    /* JADX INFO: renamed from: h */
    public final KClass getF74448k() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.types.AbstractKType
    public final int hashCode() {
        KType kType = this.f74406c;
        int iHashCode = kType != null ? kType.hashCode() : 0;
        return Boolean.hashCode(this.f74407e) + ((this.d.hashCode() + (iHashCode * 31)) * 31);
    }

    @Override // kotlin.reflect.jvm.internal.types.AbstractKType
    /* JADX INFO: renamed from: l */
    public final boolean getF74445h() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.types.AbstractKType
    /* JADX INFO: renamed from: p */
    public final boolean getF74446i() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.types.AbstractKType
    /* JADX INFO: renamed from: q */
    public final boolean getF74425e() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.types.AbstractKType
    public final String toString() {
        return this.d.toString();
    }

    @Override // kotlin.reflect.jvm.internal.types.AbstractKType
    /* JADX INFO: renamed from: y */
    public final boolean getF74447j() {
        return false;
    }
}
