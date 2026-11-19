package kotlin.reflect.jvm.internal.impl.load.java.lazy.types;

import defpackage.v7;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererImpl;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.FlexibleType;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.RawType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeAttributes;
import kotlin.reflect.jvm.internal.impl.types.TypeParameterUpperBoundEraser;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeChecker;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
import kotlin.text.StringsKt;
import org.teleal.cling.support.contentdirectory.callback.Browse;

/* JADX INFO: loaded from: classes4.dex */
public final class RawTypeImpl extends FlexibleType implements RawType {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RawTypeImpl(SimpleType simpleType, SimpleType simpleType2) {
        super(simpleType, simpleType2);
        simpleType.getClass();
        simpleType2.getClass();
        KotlinTypeChecker.f74269a.d(simpleType, simpleType2);
    }

    public static final ArrayList R0(DescriptorRendererImpl descriptorRendererImpl, KotlinType kotlinType) {
        List listF0 = kotlinType.F0();
        ArrayList arrayList = new ArrayList(CollectionsKt.t(listF0, 10));
        Iterator it = listF0.iterator();
        while (it.hasNext()) {
            arrayList.add(descriptorRendererImpl.e0((TypeProjection) it.next()));
        }
        return arrayList;
    }

    public static final String S0(String str, String str2) {
        if (!StringsKt.l(str, '<')) {
            return str;
        }
        return StringsKt.T(str, '<') + '<' + str2 + '>' + StringsKt.R('>', str, str);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.UnwrappedType
    public final UnwrappedType L0(boolean z) {
        return new RawTypeImpl(this.f74193c.L0(z), this.d.L0(z));
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.UnwrappedType
    public final UnwrappedType N0(TypeAttributes typeAttributes) {
        typeAttributes.getClass();
        return new RawTypeImpl(this.f74193c.N0(typeAttributes), this.d.N0(typeAttributes));
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.FlexibleType
    public final SimpleType O0() {
        return this.f74193c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.FlexibleType
    public final String P0(DescriptorRendererImpl descriptorRendererImpl, DescriptorRendererImpl descriptorRendererImpl2) {
        SimpleType simpleType = this.f74193c;
        String strY = descriptorRendererImpl.Y(simpleType);
        SimpleType simpleType2 = this.d;
        String strY2 = descriptorRendererImpl.Y(simpleType2);
        if (descriptorRendererImpl2.f73793e.o()) {
            return "raw (" + strY + ".." + strY2 + ')';
        }
        if (simpleType2.F0().isEmpty()) {
            return descriptorRendererImpl.H(strY, strY2, TypeUtilsKt.f(this));
        }
        ArrayList arrayListR0 = R0(descriptorRendererImpl, simpleType);
        ArrayList arrayListR1 = R0(descriptorRendererImpl, simpleType2);
        String strK = CollectionsKt.K(arrayListR0, ", ", null, null, new Function1() { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.types.RawTypeImpl$$Lambda$0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                String str = (String) obj;
                str.getClass();
                return "(raw) ".concat(str);
            }
        }, 30);
        ArrayList arrayListE0 = CollectionsKt.E0(arrayListR0, arrayListR1);
        if (!arrayListE0.isEmpty()) {
            Iterator it = arrayListE0.iterator();
            while (true) {
                if (!it.hasNext()) {
                    strY2 = S0(strY2, strK);
                    break;
                }
                Pair pair = (Pair) it.next();
                String str = (String) pair.f71705b;
                String str2 = (String) pair.f71706c;
                if (!Intrinsics.c(str, StringsKt.E(str2, "out ")) && !str2.equals(Browse.CAPS_WILDCARD)) {
                    break;
                }
            }
        } else {
            strY2 = S0(strY2, strK);
            break;
        }
        String strS0 = S0(strY, strK);
        return strS0.equals(strY2) ? strS0 : descriptorRendererImpl.H(strS0, strY2, TypeUtilsKt.f(this));
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.UnwrappedType
    /* JADX INFO: renamed from: Q0, reason: merged with bridge method [inline-methods] */
    public final FlexibleType J0(KotlinTypeRefiner kotlinTypeRefiner) {
        kotlinTypeRefiner.getClass();
        KotlinType kotlinTypeF = kotlinTypeRefiner.f(this.f74193c);
        kotlinTypeF.getClass();
        KotlinType kotlinTypeF2 = kotlinTypeRefiner.f(this.d);
        kotlinTypeF2.getClass();
        return new RawTypeImpl((SimpleType) kotlinTypeF, (SimpleType) kotlinTypeF2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.reflect.jvm.internal.impl.types.FlexibleType, kotlin.reflect.jvm.internal.impl.types.KotlinType
    public final MemberScope n() {
        ClassifierDescriptor classifierDescriptorY = H0().y();
        TypeParameterUpperBoundEraser typeParameterUpperBoundEraser = null;
        Object[] objArr = 0;
        ClassDescriptor classDescriptor = classifierDescriptorY instanceof ClassDescriptor ? (ClassDescriptor) classifierDescriptorY : null;
        if (classDescriptor == null) {
            v7.i(H0().y(), "Incorrect classifier: ");
            return null;
        }
        MemberScope memberScopeI0 = classDescriptor.i0(new RawSubstitution(typeParameterUpperBoundEraser, 1, objArr == true ? 1 : 0));
        memberScopeI0.getClass();
        return memberScopeI0;
    }
}
