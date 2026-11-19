package com.perfectcorp.perfectlib.makeupcam.camera;

import com.perfectcorp.thirdparty.com.google.common.base.Predicate;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class u implements Predicate {
    @Override // com.perfectcorp.thirdparty.com.google.common.base.Predicate
    public final boolean apply(Object obj) {
        FunStickerTemplate.c cVar = (FunStickerTemplate.c) obj;
        FunStickerTemplate.c.b bVar = cVar.f40661a;
        if (bVar == null) {
            bVar = (FunStickerTemplate.c.b) FunStickerTemplate.d(cVar.trigger, FunStickerTemplate.c.b.NONE);
            cVar.f40661a = bVar;
        }
        if (bVar == FunStickerTemplate.c.b.NONE) {
            return false;
        }
        FunStickerTemplate.c.a aVar = cVar.f40662b;
        if (aVar == null) {
            aVar = (FunStickerTemplate.c.a) FunStickerTemplate.d(cVar.react, FunStickerTemplate.c.a.NONE);
            cVar.f40662b = aVar;
        }
        return aVar != FunStickerTemplate.c.a.NONE;
    }
}
