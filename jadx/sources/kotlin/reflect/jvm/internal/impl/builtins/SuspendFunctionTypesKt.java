package kotlin.reflect.jvm.internal.impl.builtins;

import defpackage.ct0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibility;
import kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ClassConstructorDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.EmptyPackageFragmentDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.MutableClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.TypeParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;
import kotlin.reflect.jvm.internal.impl.storage.StorageManager;
import kotlin.reflect.jvm.internal.impl.types.ClassTypeConstructorImpl;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorUtils;

/* JADX INFO: loaded from: classes4.dex */
public abstract class SuspendFunctionTypesKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final MutableClassDescriptor f72280a;

    static {
        EmptyPackageFragmentDescriptor emptyPackageFragmentDescriptor = new EmptyPackageFragmentDescriptor(ErrorUtils.f74310a, StandardNames.f72266f);
        ClassKind classKind = ClassKind.INTERFACE;
        Name nameG = StandardNames.g.f73679a.g();
        StorageManager storageManager = LockBasedStorageManager.f74137e;
        MutableClassDescriptor mutableClassDescriptor = new MutableClassDescriptor(emptyPackageFragmentDescriptor, classKind, false, false, nameG, SourceElement.f72405a, storageManager);
        Modality modality = Modality.ABSTRACT;
        if (modality == null) {
            MutableClassDescriptor.y0(6);
            throw null;
        }
        mutableClassDescriptor.l = modality;
        DescriptorVisibility descriptorVisibility = DescriptorVisibilities.f72369e;
        if (descriptorVisibility == null) {
            MutableClassDescriptor.y0(9);
            throw null;
        }
        mutableClassDescriptor.m = descriptorVisibility;
        List listO = CollectionsKt.O(TypeParameterDescriptorImpl.I0(mutableClassDescriptor, Variance.IN_VARIANCE, Name.e("T"), 0, storageManager));
        if (mutableClassDescriptor.o != null) {
            ct0.o(mutableClassDescriptor.getName(), "Type parameters are already set for ");
            return;
        }
        ArrayList arrayList = new ArrayList(listO);
        mutableClassDescriptor.o = arrayList;
        mutableClassDescriptor.n = new ClassTypeConstructorImpl(mutableClassDescriptor, arrayList, mutableClassDescriptor.p, mutableClassDescriptor.q);
        Set set = Collections.EMPTY_SET;
        if (set == null) {
            MutableClassDescriptor.y0(13);
            throw null;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            ((ClassConstructorDescriptorImpl) ((FunctionDescriptor) it.next())).O0(mutableClassDescriptor.o());
        }
        f72280a = mutableClassDescriptor;
    }
}
