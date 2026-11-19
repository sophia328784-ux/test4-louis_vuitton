package kotlin.reflect.jvm.internal.types;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.KClass;
import kotlin.reflect.KClassifier;
import kotlin.reflect.KType;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Lkotlin/reflect/jvm/internal/types/FlexibleKType;", "Lkotlin/reflect/jvm/internal/types/AbstractKType;", "Companion", "kotlin-reflection"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class FlexibleKType extends AbstractKType {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Companion f74423f = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AbstractKType f74424c;
    public final AbstractKType d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f74425e;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lkotlin/reflect/jvm/internal/types/FlexibleKType$Companion;", "", "kotlin-reflection"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static AbstractKType a(AbstractKType abstractKType, AbstractKType abstractKType2, boolean z, Function0 function0) {
            abstractKType.getClass();
            abstractKType2.getClass();
            return abstractKType.equals(abstractKType2) ? abstractKType : new FlexibleKType(abstractKType, abstractKType2, z, function0, null);
        }
    }

    public FlexibleKType(AbstractKType abstractKType, AbstractKType abstractKType2, boolean z, Function0 function0, DefaultConstructorMarker defaultConstructorMarker) {
        super(function0);
        this.f74424c = abstractKType;
        this.d = abstractKType2;
        this.f74425e = z;
    }

    @Override // kotlin.reflect.jvm.internal.types.AbstractKType
    /* JADX INFO: renamed from: A, reason: from getter */
    public final AbstractKType getF74424c() {
        return this.f74424c;
    }

    @Override // kotlin.reflect.jvm.internal.types.AbstractKType
    public final AbstractKType D(boolean z) {
        AbstractKType abstractKTypeD = this.f74424c.D(z);
        AbstractKType abstractKTypeD2 = this.d.D(z);
        f74423f.getClass();
        return Companion.a(abstractKTypeD, abstractKTypeD2, this.f74425e, null);
    }

    @Override // kotlin.reflect.jvm.internal.types.AbstractKType
    public final AbstractKType G(boolean z) {
        AbstractKType abstractKTypeG = this.f74424c.G(z);
        AbstractKType abstractKTypeG2 = this.d.G(z);
        f74423f.getClass();
        return Companion.a(abstractKTypeG, abstractKTypeG2, this.f74425e, null);
    }

    @Override // kotlin.reflect.jvm.internal.types.AbstractKType
    /* JADX INFO: renamed from: H, reason: from getter */
    public final AbstractKType getD() {
        return this.d;
    }

    @Override // kotlin.reflect.KType
    public final KClassifier a() {
        return this.f74424c.a();
    }

    @Override // kotlin.reflect.KType
    public final List b() {
        return this.f74424c.b();
    }

    @Override // kotlin.reflect.KType
    public final boolean d() {
        return this.f74424c.d();
    }

    @Override // kotlin.reflect.jvm.internal.types.AbstractKType
    public final KType g() {
        return null;
    }

    @Override // kotlin.reflect.KAnnotatedElement
    public final List getAnnotations() {
        return this.f74424c.getAnnotations();
    }

    @Override // kotlin.reflect.jvm.internal.types.AbstractKType
    public final KClass h() {
        return this.f74424c.h();
    }

    @Override // kotlin.reflect.jvm.internal.types.AbstractKType
    public final boolean l() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.types.AbstractKType
    public final boolean p() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.types.AbstractKType
    /* JADX INFO: renamed from: q, reason: from getter */
    public final boolean getF74425e() {
        return this.f74425e;
    }

    @Override // kotlin.reflect.jvm.internal.types.AbstractKType
    public final boolean y() {
        return false;
    }
}
