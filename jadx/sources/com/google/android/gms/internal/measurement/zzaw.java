package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public final class zzaw {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HashMap f30574a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final zzbi f30575b = new zzbi();

    public zzaw() {
        a(new zzau());
        a(new zzax());
        zzay zzayVar = new zzay();
        zzbk zzbkVar = zzbk.APPLY;
        ArrayList arrayList = zzayVar.f30573a;
        arrayList.add(zzbkVar);
        arrayList.add(zzbk.BLOCK);
        arrayList.add(zzbk.BREAK);
        arrayList.add(zzbk.CASE);
        arrayList.add(zzbk.DEFAULT);
        arrayList.add(zzbk.CONTINUE);
        arrayList.add(zzbk.DEFINE_FUNCTION);
        arrayList.add(zzbk.FN);
        arrayList.add(zzbk.IF);
        arrayList.add(zzbk.QUOTE);
        arrayList.add(zzbk.RETURN);
        arrayList.add(zzbk.SWITCH);
        arrayList.add(zzbk.TERNARY);
        a(zzayVar);
        zzbb zzbbVar = new zzbb();
        zzbk zzbkVar2 = zzbk.AND;
        ArrayList arrayList2 = zzbbVar.f30573a;
        arrayList2.add(zzbkVar2);
        arrayList2.add(zzbk.NOT);
        arrayList2.add(zzbk.OR);
        a(zzbbVar);
        zzbg zzbgVar = new zzbg();
        zzbk zzbkVar3 = zzbk.FOR_IN;
        ArrayList arrayList3 = zzbgVar.f30573a;
        arrayList3.add(zzbkVar3);
        arrayList3.add(zzbk.FOR_IN_CONST);
        arrayList3.add(zzbk.FOR_IN_LET);
        arrayList3.add(zzbk.FOR_LET);
        arrayList3.add(zzbk.FOR_OF);
        arrayList3.add(zzbk.FOR_OF_CONST);
        arrayList3.add(zzbk.FOR_OF_LET);
        arrayList3.add(zzbk.WHILE);
        a(zzbgVar);
        zzbh zzbhVar = new zzbh();
        zzbk zzbkVar4 = zzbk.ADD;
        ArrayList arrayList4 = zzbhVar.f30573a;
        arrayList4.add(zzbkVar4);
        arrayList4.add(zzbk.DIVIDE);
        arrayList4.add(zzbk.MODULUS);
        arrayList4.add(zzbk.MULTIPLY);
        arrayList4.add(zzbk.NEGATE);
        arrayList4.add(zzbk.POST_DECREMENT);
        arrayList4.add(zzbk.POST_INCREMENT);
        arrayList4.add(zzbk.PRE_DECREMENT);
        arrayList4.add(zzbk.PRE_INCREMENT);
        arrayList4.add(zzbk.SUBTRACT);
        a(zzbhVar);
        zzbj zzbjVar = new zzbj();
        zzbk zzbkVar5 = zzbk.ASSIGN;
        ArrayList arrayList5 = zzbjVar.f30573a;
        arrayList5.add(zzbkVar5);
        arrayList5.add(zzbk.CONST);
        arrayList5.add(zzbk.CREATE_ARRAY);
        arrayList5.add(zzbk.CREATE_OBJECT);
        arrayList5.add(zzbk.EXPRESSION_LIST);
        arrayList5.add(zzbk.GET);
        arrayList5.add(zzbk.GET_INDEX);
        arrayList5.add(zzbk.GET_PROPERTY);
        arrayList5.add(zzbk.NULL);
        arrayList5.add(zzbk.SET_PROPERTY);
        arrayList5.add(zzbk.TYPEOF);
        arrayList5.add(zzbk.UNDEFINED);
        arrayList5.add(zzbk.VAR);
        a(zzbjVar);
    }

    public final void a(zzav zzavVar) {
        Iterator it = zzavVar.f30573a.iterator();
        while (it.hasNext()) {
            this.f30574a.put(((zzbk) it.next()).b().toString(), zzavVar);
        }
    }

    public final zzao b(zzg zzgVar, zzao zzaoVar) {
        zzh.k(zzgVar);
        if (!(zzaoVar instanceof zzap)) {
            return zzaoVar;
        }
        zzap zzapVar = (zzap) zzaoVar;
        ArrayList arrayList = zzapVar.f30567c;
        String str = zzapVar.f30566b;
        HashMap map = this.f30574a;
        return (map.containsKey(str) ? (zzav) map.get(str) : this.f30575b).a(str, zzgVar, arrayList);
    }
}
