package com.vuitton.foundation.logger;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import timber.log.Timber;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/foundation/logger/LegacyLogger;", "Lcom/vuitton/foundation/logger/Logger;", "logger"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class LegacyLogger implements Logger {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final LegacyLogger f66205a = new LegacyLogger();

    public static Timber.Forest e(String str) {
        Timber.Forest forest = Timber.f80066a;
        if (str != null) {
            forest.g(str);
        }
        return forest;
    }

    public static boolean f() {
        List listUnmodifiableList;
        Timber.f80066a.getClass();
        ArrayList arrayList = Timber.f80067b;
        synchronized (arrayList) {
            listUnmodifiableList = Collections.unmodifiableList(CollectionsKt.y0(arrayList));
            listUnmodifiableList.getClass();
        }
        List list = listUnmodifiableList;
        if ((list instanceof Collection) && list.isEmpty()) {
            return false;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if (((Timber.Tree) it.next()) instanceof Timber.DebugTree) {
                return true;
            }
        }
        return false;
    }

    @Override // com.vuitton.foundation.logger.Logger
    public final void a(String str, Function0 function0) {
        if (f()) {
            e(str).e(5, null, (String) function0.mo47invoke(), new Object[0]);
        }
    }

    @Override // com.vuitton.foundation.logger.Logger
    public final void b(String str, Function0 function0, Throwable th) {
        if (f()) {
            e(str).e(6, th, (String) function0.mo47invoke(), new Object[0]);
        }
    }

    @Override // com.vuitton.foundation.logger.Logger
    public final void c(String str, String str2, Throwable th) {
        e(str).e(6, th, str2, new Object[0]);
    }

    @Override // com.vuitton.foundation.logger.Logger
    public final void d(String str, String str2, Throwable th) {
        e(str).e(5, th, str2, new Object[0]);
    }
}
