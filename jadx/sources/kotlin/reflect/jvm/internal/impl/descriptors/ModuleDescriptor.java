package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.Collection;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.name.FqName;

/* JADX INFO: loaded from: classes4.dex */
public interface ModuleDescriptor extends DeclarationDescriptor {
    Object C0(ModuleCapability moduleCapability);

    boolean F(ModuleDescriptor moduleDescriptor);

    PackageViewDescriptor d0(FqName fqName);

    KotlinBuiltIns g();

    Collection m(FqName fqName, Function1 function1);

    List t0();
}
