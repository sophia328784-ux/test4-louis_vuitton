package com.perfectcorp.common.utility;

import android.widget.Toast;
import com.perfectcorp.common.PfCommons;

/* JADX INFO: loaded from: classes3.dex */
public abstract class ToastUtils {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static Toast f39435a;

    public static void a() {
        q qVar = new q("DEVELOPER MODE");
        if (PfCommons.a()) {
            qVar.run();
        } else {
            PfCommons.c(qVar);
        }
    }
}
