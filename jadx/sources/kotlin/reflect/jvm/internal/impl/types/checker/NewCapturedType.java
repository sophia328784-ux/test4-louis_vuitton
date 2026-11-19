package kotlin.reflect.jvm.internal.impl.types.checker;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeAttributes;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorScopeKind;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorUtils;
import kotlin.reflect.jvm.internal.impl.types.model.CaptureStatus;
import kotlin.reflect.jvm.internal.impl.types.model.CapturedTypeMarker;

/* JADX INFO: loaded from: classes4.dex */
public final class NewCapturedType extends SimpleType implements CapturedTypeMarker {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CaptureStatus f74273c;
    public final NewCapturedTypeConstructor d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final UnwrappedType f74274e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final TypeAttributes f74275f;
    public final boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f74276h;

    /* JADX WARN: Illegal instructions before constructor call */
    public NewCapturedType(CaptureStatus captureStatus, NewCapturedTypeConstructor newCapturedTypeConstructor, UnwrappedType unwrappedType, TypeAttributes typeAttributes, boolean z, boolean z2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i2 & 8) != 0) {
            TypeAttributes.f74232c.getClass();
            typeAttributes = TypeAttributes.d;
        }
        this(captureStatus, newCapturedTypeConstructor, unwrappedType, typeAttributes, (i2 & 16) != 0 ? false : z, (i2 & 32) != 0 ? false : z2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.KotlinType
    public final List F0() {
        return EmptyList.f71768b;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.KotlinType
    public final TypeAttributes G0() {
        return this.f74275f;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.KotlinType
    public final TypeConstructor H0() {
        return this.d;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.KotlinType
    public final boolean I0() {
        return this.g;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.SimpleType, kotlin.reflect.jvm.internal.impl.types.UnwrappedType
    public final UnwrappedType L0(boolean z) {
        return new NewCapturedType(this.f74273c, this.d, this.f74274e, this.f74275f, z, false, 32, null);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.SimpleType
    /* JADX INFO: renamed from: O0 */
    public final SimpleType L0(boolean z) {
        return new NewCapturedType(this.f74273c, this.d, this.f74274e, this.f74275f, z, false, 32, null);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.SimpleType
    /* JADX INFO: renamed from: P0 */
    public final SimpleType N0(TypeAttributes typeAttributes) {
        typeAttributes.getClass();
        return new NewCapturedType(this.f74273c, this.d, this.f74274e, typeAttributes, this.g, this.f74276h);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.UnwrappedType
    /* JADX INFO: renamed from: Q0, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public final NewCapturedType J0(final KotlinTypeRefiner kotlinTypeRefiner) {
        kotlinTypeRefiner.getClass();
        final NewCapturedTypeConstructor newCapturedTypeConstructor = this.d;
        newCapturedTypeConstructor.getClass();
        kotlinTypeRefiner.getClass();
        TypeProjection typeProjectionC = newCapturedTypeConstructor.f74277b.c(kotlinTypeRefiner);
        Function0 function0 = newCapturedTypeConstructor.f74278c != null ? new Function0(newCapturedTypeConstructor, kotlinTypeRefiner) { // from class: kotlin.reflect.jvm.internal.impl.types.checker.NewCapturedTypeConstructor$$Lambda$3

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final NewCapturedTypeConstructor f74284b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final KotlinTypeRefiner f74285c;

            {
                this.f74284b = newCapturedTypeConstructor;
                this.f74285c = kotlinTypeRefiner;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                Iterable iterable = (List) this.f74284b.f74280f.getF71699b();
                if (iterable == null) {
                    iterable = EmptyList.f71768b;
                }
                Iterable iterable2 = iterable;
                ArrayList arrayList = new ArrayList(CollectionsKt.t(iterable2, 10));
                Iterator it = iterable2.iterator();
                while (it.hasNext()) {
                    arrayList.add(((UnwrappedType) it.next()).J0(this.f74285c));
                }
                return arrayList;
            }
        } : null;
        NewCapturedTypeConstructor newCapturedTypeConstructor2 = newCapturedTypeConstructor.d;
        if (newCapturedTypeConstructor2 == null) {
            newCapturedTypeConstructor2 = newCapturedTypeConstructor;
        }
        NewCapturedTypeConstructor newCapturedTypeConstructor3 = new NewCapturedTypeConstructor(typeProjectionC, function0, newCapturedTypeConstructor2, newCapturedTypeConstructor.f74279e);
        UnwrappedType unwrappedType = this.f74274e;
        return new NewCapturedType(this.f74273c, newCapturedTypeConstructor3, unwrappedType != null ? kotlinTypeRefiner.f(unwrappedType).K0() : null, this.f74275f, this.g, false, 32, null);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.KotlinType
    public final MemberScope n() {
        return ErrorUtils.a(ErrorScopeKind.CAPTURED_TYPE_SCOPE, true, new String[0]);
    }

    public NewCapturedType(CaptureStatus captureStatus, NewCapturedTypeConstructor newCapturedTypeConstructor, UnwrappedType unwrappedType, TypeAttributes typeAttributes, boolean z, boolean z2) {
        captureStatus.getClass();
        newCapturedTypeConstructor.getClass();
        typeAttributes.getClass();
        this.f74273c = captureStatus;
        this.d = newCapturedTypeConstructor;
        this.f74274e = unwrappedType;
        this.f74275f = typeAttributes;
        this.g = z;
        this.f74276h = z2;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NewCapturedType(CaptureStatus captureStatus, UnwrappedType unwrappedType, TypeProjection typeProjection, TypeParameterDescriptor typeParameterDescriptor) {
        this(captureStatus, new NewCapturedTypeConstructor(typeProjection, null, null, typeParameterDescriptor, 6, null), unwrappedType, null, false, false, 56, null);
        captureStatus.getClass();
        typeProjection.getClass();
        typeParameterDescriptor.getClass();
    }
}
