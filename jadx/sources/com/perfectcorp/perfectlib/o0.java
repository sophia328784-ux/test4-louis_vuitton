package com.perfectcorp.perfectlib;

import com.perfectcorp.common.utility.MoreCollections;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import defpackage.lc0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class o0 implements Callable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f41085b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ HandVtoApplierImpl f41086c;
    public final /* synthetic */ int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ List f41087e;

    public /* synthetic */ o0(HandVtoApplierImpl handVtoApplierImpl, int i2, ImmutableList immutableList, int i3) {
        this.f41085b = i3;
        this.f41086c = handVtoApplierImpl;
        this.d = i2;
        this.f41087e = immutableList;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // java.util.concurrent.Callable
    public final Object call() {
        com.perfectcorp.perfectlib.ph.utility.b bVarE;
        com.perfectcorp.perfectlib.ph.utility.b bVarE2;
        int i2 = this.f41085b;
        List<EffectId> list = this.f41087e;
        int i3 = this.d;
        HandVtoApplierImpl handVtoApplierImpl = this.f41086c;
        switch (i2) {
            case 0:
                handVtoApplierImpl.s(i3);
                ArrayList<com.perfectcorp.perfectlib.ph.utility.b> arrayListR = handVtoApplierImpl.r((List) HandVtoApplierImpl.a(list).first);
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                ArrayList arrayList3 = new ArrayList();
                for (com.perfectcorp.perfectlib.ph.utility.b bVar : arrayListR) {
                    PerfectEffect perfectEffect = bVar.f41735a;
                    if (perfectEffect == PerfectEffect.RING) {
                        arrayList2.add(bVar);
                    } else if (perfectEffect == PerfectEffect.BRACELET) {
                        arrayList3.add(bVar);
                    } else {
                        arrayList.add(bVar);
                    }
                }
                if (!arrayList2.isEmpty() && (bVarE2 = HandVtoApplierImpl.e(arrayList2, PerfectEffect.RING)) != null) {
                    arrayList.add(bVarE2);
                }
                if (!arrayList3.isEmpty() && (bVarE = HandVtoApplierImpl.e(arrayList3, PerfectEffect.BRACELET)) != null) {
                    arrayList.add(bVarE);
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    handVtoApplierImpl.t((com.perfectcorp.perfectlib.ph.utility.b) it.next());
                }
                return handVtoApplierImpl.v(arrayListR);
            default:
                PerfectEffect perfectEffect2 = handVtoApplierImpl.f39635c;
                handVtoApplierImpl.s(i3);
                ArrayList arrayList4 = new ArrayList();
                LinkedList linkedList = new LinkedList();
                for (EffectId effectId : list) {
                    if (com.perfectcorp.perfectlib.ph.unit.sku.a.f(effectId.f39556b)) {
                        linkedList.add(VtoSetting.builder().setSkuSetGuid(effectId.f39556b).build());
                    } else {
                        VtoSetting.Parameter parameter = effectId.n;
                        if ((parameter instanceof com.perfectcorp.perfectlib.ph.utility.b) && effectId.f39555a == perfectEffect2) {
                            arrayList4.add((com.perfectcorp.perfectlib.ph.utility.b) parameter);
                        }
                    }
                }
                if (!MoreCollections.a(linkedList)) {
                    arrayList4.addAll(handVtoApplierImpl.r((List) HandVtoApplierImpl.a(linkedList).first));
                }
                if (arrayList4.isEmpty()) {
                    lc0.n("No valid ", perfectEffect2, " effect id");
                    return null;
                }
                Iterator it2 = arrayList4.iterator();
                while (it2.hasNext()) {
                    handVtoApplierImpl.t((com.perfectcorp.perfectlib.ph.utility.b) it2.next());
                }
                return handVtoApplierImpl.v(arrayList4);
        }
    }
}
