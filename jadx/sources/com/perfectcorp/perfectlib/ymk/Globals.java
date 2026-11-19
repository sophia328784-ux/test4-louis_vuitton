package com.perfectcorp.perfectlib.ymk;

import android.content.Context;
import android.content.ContextWrapper;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class Globals extends ContextWrapper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static Globals f41932a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final List f41933b = ImmutableList.x();

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int f41934a = 0;

        static {
            com.perfectcorp.common.a.a();
        }
    }

    public Globals(Context context) {
        super(context);
    }

    public static String a() {
        return f41932a.getFilesDir().getAbsolutePath();
    }

    public static void b() {
        int i2 = a.f41934a;
    }
}
