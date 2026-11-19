package com.batch.android.o1;

import android.content.Context;
import com.batch.android.FailReason;
import com.batch.android.e.a0;
import com.batch.android.n.f0;
import com.batch.android.n.w;
import com.batch.android.n.z;
import com.sightcall.livetranslation.data.LiveTranslationEntity;

/* JADX INFO: loaded from: classes.dex */
public class b implements com.batch.android.n1.b {
    @Override // com.batch.android.n1.b
    public void a(com.batch.android.g1.b bVar) {
        f0.a().a(bVar.d(), bVar.e());
        Context contextC = z.a().c();
        String strC = bVar.c();
        if (strC == null || contextC == null) {
            return;
        }
        a0 a0VarA = w.a(contextC);
        if (strC.equals(a0VarA.a(com.batch.android.e.z.X0))) {
            return;
        }
        a0VarA.a(com.batch.android.e.z.X0, strC, true);
    }

    @Override // com.batch.android.n1.b
    public void a(FailReason failReason) {
        f0.a().d(LiveTranslationEntity.DefaultSentenceTimeOut);
    }
}
