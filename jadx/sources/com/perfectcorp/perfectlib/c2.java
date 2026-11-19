package com.perfectcorp.perfectlib;

import android.util.Pair;
import com.perfectcorp.common.concurrent.Threads;
import com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl;
import com.perfectcorp.perfectlib.makeupcam.camera.YMKPrimitiveData;
import com.perfectcorp.thirdparty.com.google.common.base.Function;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableSet;
import com.perfectcorp.thirdparty.com.google.common.collect.bz;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class c2 implements Function {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f40057b;

    public /* synthetic */ c2(int i2) {
        this.f40057b = i2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.perfectcorp.thirdparty.com.google.common.base.Function
    public final Object apply(Object obj) {
        switch (this.f40057b) {
            case 0:
                YMKPrimitiveData.MakeupColor makeupColor = (YMKPrimitiveData.MakeupColor) obj;
                ThreadPoolExecutor threadPoolExecutor = MakeupCamInternal.n;
                Objects.requireNonNull(makeupColor);
                return Integer.valueOf(makeupColor.f40791e);
            case 1:
                EffectId effectId = (EffectId) obj;
                ThreadPoolExecutor threadPoolExecutor2 = MakeupCamInternal.n;
                Objects.requireNonNull(effectId);
                return effectId.d;
            case 2:
                EffectId effectId2 = (EffectId) obj;
                ThreadPoolExecutor threadPoolExecutor3 = MakeupCamInternal.n;
                Objects.requireNonNull(effectId2);
                return (YMKPrimitiveData.MakeupColor) effectId2.l.get(0);
            case 3:
                YMKPrimitiveData.MakeupColor makeupColor2 = (YMKPrimitiveData.MakeupColor) obj;
                ThreadPoolExecutor threadPoolExecutor4 = MakeupCamInternal.n;
                Objects.requireNonNull(makeupColor2);
                return Integer.valueOf(makeupColor2.f40791e);
            case 4:
                return ProductMappingUtility.c((List) obj);
            case 5:
                List<EffectId> list = (List) obj;
                ThreadPoolExecutor threadPoolExecutor5 = MakeupCamInternal.n;
                bz bzVar = ImmutableList.f42200c;
                ImmutableList.Builder builder = new ImmutableList.Builder();
                Objects.requireNonNull(list);
                for (EffectId effectId3 : list) {
                    String str = effectId3.f39556b;
                    PerfectEffect perfectEffect = effectId3.f39555a;
                    if (EffectId.INVALID_ID.equals(str)) {
                        builder.f(new ProductId(effectId3));
                    } else {
                        ImmutableSet immutableSet = ApplyEffectUtility.f39471a;
                        Threads.b();
                        bz bzVar2 = ImmutableList.f42200c;
                        ImmutableList.Builder builder2 = new ImmutableList.Builder();
                        EffectId.Builder builder3 = new EffectId.Builder(perfectEffect);
                        String str2 = effectId3.f39556b;
                        builder3.f39567b = EffectId.c(str2);
                        builder2.f(new ProductId(builder3.a()));
                        if (com.perfectcorp.perfectlib.ph.unit.sku.a.e(perfectEffect.beautyMode)) {
                            for (Pair pair : com.perfectcorp.perfectlib.ph.template.e.C0182e.a(com.perfectcorp.perfectlib.ph.unit.sku.a.i(str2), false)) {
                                if (Objects.equals(str2, pair.first)) {
                                    Iterator it = ((List) pair.second).iterator();
                                    while (it.hasNext()) {
                                        com.perfectcorp.perfectlib.ph.database.ymk.skuset.c cVar = (com.perfectcorp.perfectlib.ph.database.ymk.skuset.c) ((Pair) it.next()).first;
                                        EffectId.Builder builder4 = new EffectId.Builder(perfectEffect);
                                        builder4.f39568c = EffectId.c(cVar.f41341b);
                                        builder4.d = EffectId.c(cVar.f41342c);
                                        builder2.f(new ProductId(builder4.a()));
                                    }
                                }
                            }
                        } else if (com.perfectcorp.perfectlib.ph.unit.sku.a.h(perfectEffect.beautyMode)) {
                            for (Pair pair2 : com.perfectcorp.perfectlib.ph.template.e.C0182e.c(com.perfectcorp.perfectlib.ph.unit.sku.a.i(str2), false)) {
                                if (Objects.equals(str2, pair2.first)) {
                                    Iterator it2 = ((List) pair2.second).iterator();
                                    while (it2.hasNext()) {
                                        com.perfectcorp.perfectlib.ph.database.ymk.skuset.c cVar2 = (com.perfectcorp.perfectlib.ph.database.ymk.skuset.c) ((Pair) it2.next()).first;
                                        EffectId.Builder builder5 = new EffectId.Builder(perfectEffect);
                                        builder5.f39568c = EffectId.c(cVar2.f41341b);
                                        builder5.d = EffectId.c(cVar2.f41342c);
                                        builder2.f(new ProductId(builder5.a()));
                                    }
                                }
                            }
                        } else {
                            if (!com.perfectcorp.perfectlib.ph.unit.sku.a.j(perfectEffect.beautyMode)) {
                                throw new UnsupportedOperationException("unsupported SKU set type " + perfectEffect.beautyMode.getFeatureType().toString());
                            }
                            for (Pair pair3 : com.perfectcorp.perfectlib.ph.template.e.C0182e.f(com.perfectcorp.perfectlib.ph.unit.sku.a.i(str2), false)) {
                                if (Objects.equals(str2, pair3.first)) {
                                    Iterator it3 = ((List) pair3.second).iterator();
                                    while (it3.hasNext()) {
                                        com.perfectcorp.perfectlib.ph.database.ymk.skuset.c cVar3 = (com.perfectcorp.perfectlib.ph.database.ymk.skuset.c) ((Pair) it3.next()).first;
                                        EffectId.Builder builder6 = new EffectId.Builder(perfectEffect);
                                        builder6.f39568c = EffectId.c(cVar3.f41341b);
                                        builder6.d = EffectId.c(cVar3.f41342c);
                                        builder2.f(new ProductId(builder6.a()));
                                    }
                                }
                            }
                        }
                        builder.g(builder2.i());
                    }
                }
                return builder.i();
            case 6:
                com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.look.a.C0168a c0168a = (com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.look.a.C0168a) obj;
                ThreadPoolExecutor threadPoolExecutor6 = MakeupCamInternal.n;
                Objects.requireNonNull(c0168a);
                return c0168a.guid;
            case 7:
                ApplyEffectCtrl.ConfigurationBuilder configurationBuilder = (ApplyEffectCtrl.ConfigurationBuilder) obj;
                ThreadPoolExecutor threadPoolExecutor7 = MakeupCamInternal.n;
                Objects.requireNonNull(configurationBuilder);
                return configurationBuilder.c();
            case 8:
                com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.look.a.C0168a c0168a2 = (com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.look.a.C0168a) obj;
                ThreadPoolExecutor threadPoolExecutor8 = MakeupCamInternal.n;
                Objects.requireNonNull(c0168a2);
                return c0168a2.guid;
            case 9:
                com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.look.a.C0168a c0168a3 = (com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.look.a.C0168a) obj;
                int i2 = PhotoMakeupInternal.n;
                Objects.requireNonNull(c0168a3);
                return c0168a3.guid;
            case 10:
                ApplyEffectCtrl.ConfigurationBuilder configurationBuilder2 = (ApplyEffectCtrl.ConfigurationBuilder) obj;
                int i3 = PhotoMakeupInternal.n;
                Objects.requireNonNull(configurationBuilder2);
                return configurationBuilder2.c();
            default:
                com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.look.a.C0168a c0168a4 = (com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.look.a.C0168a) obj;
                int i4 = PhotoMakeupInternal.n;
                Objects.requireNonNull(c0168a4);
                return c0168a4.guid;
        }
    }
}
