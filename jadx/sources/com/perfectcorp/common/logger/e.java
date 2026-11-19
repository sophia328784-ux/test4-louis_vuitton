package com.perfectcorp.common.logger;

import com.perfectcorp.common.utility.MoreCollections;
import java.io.File;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
final class e implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ a f39285a;

    public e(a aVar) {
        this.f39285a = aVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        a aVar = this.f39285a;
        File file = aVar.f39273e;
        if (file == null || !file.isDirectory()) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        i iVar = new i();
        iVar.f39296c = aVar;
        iVar.f39294a = jCurrentTimeMillis;
        iVar.f39295b = 172800000L;
        File[] fileArrListFiles = aVar.f39273e.listFiles(iVar);
        Set set = MoreCollections.f39434a;
        if (fileArrListFiles == null || fileArrListFiles.length <= 0) {
            return;
        }
        for (File file2 : fileArrListFiles) {
            file2.delete();
        }
    }
}
