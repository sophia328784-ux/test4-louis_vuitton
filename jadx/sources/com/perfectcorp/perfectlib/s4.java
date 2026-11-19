package com.perfectcorp.perfectlib;

import android.util.Pair;
import com.perfectcorp.perfectlib.makeupcam.camera.YMKPrimitiveData;
import com.perfectcorp.perfectlib.ymk.utility.Nulls;
import com.perfectcorp.thirdparty.com.google.common.cache.CacheBuilder;
import com.perfectcorp.thirdparty.com.google.common.cache.LoadingCache;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import com.perfectcorp.thirdparty.com.google.common.collect.Lists;
import com.perfectcorp.thirdparty.com.google.common.collect.bz;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import defpackage.xx0;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class s4 implements Function {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f41852b;

    public /* synthetic */ s4(int i2) {
        this.f41852b = i2;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public final Object apply(Object obj) {
        switch (this.f41852b) {
            case 0:
                LoadingCache loadingCacheA = CacheBuilder.b().a(new VtoPattern.SubPalette.AnonymousClass1());
                bz bzVar = ImmutableList.f42200c;
                ImmutableList.Builder builder = new ImmutableList.Builder();
                for (Pair pair : (List) obj) {
                    YMKPrimitiveData.Palette palette = (YMKPrimitiveData.Palette) loadingCacheA.a(((com.perfectcorp.perfectlib.ph.database.ymk.pattern.b) pair.first).f41252b);
                    com.perfectcorp.perfectlib.ph.database.ymk.pattern.b bVar = (com.perfectcorp.perfectlib.ph.database.ymk.pattern.b) pair.first;
                    ImmutableList immutableListU = ImmutableList.u(Lists.c(com.perfectcorp.perfectlib.ph.template.e.f(palette), new xx0(16)));
                    String str = bVar.f41253c;
                    SubItemInfo.Builder builder2 = new SubItemInfo.Builder();
                    builder2.a(ApplyEffectUtility.C(bVar.f41252b, str));
                    builder2.f39965c = Nulls.b(SubItemInfo.e(immutableListU, com.perfectcorp.perfectlib.ph.database.ymk.pattern.b.a(str)));
                    builder.f(Pair.create((SkuInfo) pair.second, new SubItemInfo(builder2)));
                }
                return builder.i();
            default:
                com.perfectcorp.perfectlib.ph.database.ymk.generictag.c cVar = (com.perfectcorp.perfectlib.ph.database.ymk.generictag.c) obj;
                TagGroup.Builder builder3 = new TagGroup.Builder();
                String string = Long.toString(cVar.f41176b);
                Objects.requireNonNull(string);
                builder3.f39979a = string;
                String str2 = cVar.f41177c;
                Objects.requireNonNull(str2);
                builder3.f39980b = str2;
                builder3.f39981c = cVar.d;
                return new TagGroup(builder3);
        }
    }
}
