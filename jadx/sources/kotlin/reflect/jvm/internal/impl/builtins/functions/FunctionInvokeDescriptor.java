package kotlin.reflect.jvm.internal.impl.builtins.functions;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.IndexedValue;
import kotlin.collections.IndexingIterable;
import kotlin.collections.IndexingIterator;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.FunctionTypesKt;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.ReceiverParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.SimpleFunctionDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ValueParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.util.OperatorNameConventions;

/* JADX INFO: loaded from: classes4.dex */
public final class FunctionInvokeDescriptor extends SimpleFunctionDescriptorImpl {
    public static final Factory F = new Factory(null);

    public static final class Factory {
        public Factory(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static FunctionInvokeDescriptor a(FunctionClassDescriptor functionClassDescriptor, boolean z) {
            String lowerCase;
            functionClassDescriptor.getClass();
            List list = functionClassDescriptor.m;
            FunctionInvokeDescriptor functionInvokeDescriptor = new FunctionInvokeDescriptor(functionClassDescriptor, null, CallableMemberDescriptor.Kind.DECLARATION, z, null);
            ReceiverParameterDescriptor receiverParameterDescriptorE0 = functionClassDescriptor.E0();
            EmptyList emptyList = EmptyList.f71768b;
            ArrayList arrayList = new ArrayList();
            for (Object obj : list) {
                if (((TypeParameterDescriptor) obj).l() != Variance.IN_VARIANCE) {
                    break;
                }
                arrayList.add(obj);
            }
            IndexingIterable indexingIterableD0 = CollectionsKt.D0(arrayList);
            ArrayList arrayList2 = new ArrayList(CollectionsKt.t(indexingIterableD0, 10));
            Iterator it = indexingIterableD0.iterator();
            while (true) {
                IndexingIterator indexingIterator = (IndexingIterator) it;
                if (!indexingIterator.f71774b.hasNext()) {
                    functionInvokeDescriptor.J0(null, receiverParameterDescriptorE0, emptyList, emptyList, arrayList2, ((TypeParameterDescriptor) CollectionsKt.M(list)).o(), Modality.ABSTRACT, DescriptorVisibilities.f72369e);
                    functionInvokeDescriptor.y = true;
                    return functionInvokeDescriptor;
                }
                IndexedValue indexedValue = (IndexedValue) indexingIterator.next();
                Factory factory = FunctionInvokeDescriptor.F;
                int i2 = indexedValue.f71771a;
                TypeParameterDescriptor typeParameterDescriptor = (TypeParameterDescriptor) indexedValue.f71772b;
                factory.getClass();
                String strB = typeParameterDescriptor.getName().b();
                strB.getClass();
                if (strB.equals("T")) {
                    lowerCase = "instance";
                } else if (strB.equals("E")) {
                    lowerCase = "receiver";
                } else {
                    lowerCase = strB.toLowerCase(Locale.ROOT);
                    lowerCase.getClass();
                }
                Name nameE = Name.e(lowerCase);
                SimpleType simpleTypeO = typeParameterDescriptor.o();
                simpleTypeO.getClass();
                arrayList2.add(new ValueParameterDescriptorImpl(functionInvokeDescriptor, null, i2, Annotations.Companion.f72432a, nameE, simpleTypeO, false, false, false, null, SourceElement.f72405a));
            }
        }
    }

    public FunctionInvokeDescriptor(DeclarationDescriptor declarationDescriptor, FunctionInvokeDescriptor functionInvokeDescriptor, CallableMemberDescriptor.Kind kind, boolean z) {
        super(declarationDescriptor, functionInvokeDescriptor, Annotations.Companion.f72432a, OperatorNameConventions.g, kind, SourceElement.f72405a);
        this.n = true;
        this.w = z;
        this.x = false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.SimpleFunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl
    public final FunctionDescriptorImpl G0(CallableMemberDescriptor.Kind kind, DeclarationDescriptor declarationDescriptor, FunctionDescriptor functionDescriptor, SourceElement sourceElement, Annotations annotations, Name name) {
        declarationDescriptor.getClass();
        kind.getClass();
        annotations.getClass();
        return new FunctionInvokeDescriptor(declarationDescriptor, (FunctionInvokeDescriptor) functionDescriptor, kind, this.w);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl
    public final FunctionDescriptorImpl H0(FunctionDescriptorImpl.CopyConfiguration copyConfiguration) {
        Name name;
        FunctionInvokeDescriptor functionInvokeDescriptor = (FunctionInvokeDescriptor) super.H0(copyConfiguration);
        if (functionInvokeDescriptor == null) {
            return null;
        }
        List listH = functionInvokeDescriptor.h();
        listH.getClass();
        List list = listH;
        if ((list instanceof Collection) && list.isEmpty()) {
            return functionInvokeDescriptor;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            KotlinType type = ((ValueParameterDescriptor) it.next()).getType();
            type.getClass();
            if (FunctionTypesKt.c(type) != null) {
                List listH2 = functionInvokeDescriptor.h();
                listH2.getClass();
                List list2 = listH2;
                ArrayList arrayList = new ArrayList(CollectionsKt.t(list2, 10));
                Iterator it2 = list2.iterator();
                while (it2.hasNext()) {
                    KotlinType type2 = ((ValueParameterDescriptor) it2.next()).getType();
                    type2.getClass();
                    arrayList.add(FunctionTypesKt.c(type2));
                }
                int size = functionInvokeDescriptor.h().size() - arrayList.size();
                boolean z = true;
                if (size == 0) {
                    List listH3 = functionInvokeDescriptor.h();
                    listH3.getClass();
                    ArrayList<Pair> arrayListE0 = CollectionsKt.E0(arrayList, listH3);
                    if (arrayListE0.isEmpty()) {
                        return functionInvokeDescriptor;
                    }
                    for (Pair pair : arrayListE0) {
                        if (!Intrinsics.c((Name) pair.f71705b, ((ValueParameterDescriptor) pair.f71706c).getName())) {
                        }
                    }
                    return functionInvokeDescriptor;
                }
                List listH4 = functionInvokeDescriptor.h();
                listH4.getClass();
                List<ValueParameterDescriptor> list3 = listH4;
                ArrayList arrayList2 = new ArrayList(CollectionsKt.t(list3, 10));
                for (ValueParameterDescriptor valueParameterDescriptor : list3) {
                    Name name2 = valueParameterDescriptor.getName();
                    name2.getClass();
                    int index = valueParameterDescriptor.getIndex();
                    int i2 = index - size;
                    if (i2 >= 0 && (name = (Name) arrayList.get(i2)) != null) {
                        name2 = name;
                    }
                    arrayList2.add(valueParameterDescriptor.A(functionInvokeDescriptor, name2, index));
                }
                FunctionDescriptorImpl.CopyConfiguration copyConfigurationK0 = functionInvokeDescriptor.K0(TypeSubstitutor.f74260b);
                if (arrayList.isEmpty()) {
                    z = false;
                } else {
                    Iterator it3 = arrayList.iterator();
                    while (it3.hasNext()) {
                        if (((Name) it3.next()) == null) {
                        }
                    }
                    z = false;
                }
                copyConfigurationK0.v = Boolean.valueOf(z);
                copyConfigurationK0.g = arrayList2;
                copyConfigurationK0.f72503e = functionInvokeDescriptor.y0();
                FunctionDescriptorImpl functionDescriptorImplH0 = super.H0(copyConfigurationK0);
                functionDescriptorImplH0.getClass();
                return functionDescriptorImplH0;
            }
        }
        return functionInvokeDescriptor;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
    public final boolean isExternal() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor
    public final boolean isInline() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor
    public final boolean x() {
        return false;
    }

    public /* synthetic */ FunctionInvokeDescriptor(DeclarationDescriptor declarationDescriptor, FunctionInvokeDescriptor functionInvokeDescriptor, CallableMemberDescriptor.Kind kind, boolean z, DefaultConstructorMarker defaultConstructorMarker) {
        this(declarationDescriptor, functionInvokeDescriptor, kind, z);
    }
}
