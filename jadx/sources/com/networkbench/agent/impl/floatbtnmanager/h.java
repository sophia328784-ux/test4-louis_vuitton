package com.networkbench.agent.impl.floatbtnmanager;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.networkbench.agent.impl.util.v;
import defpackage.n00;
import defpackage.z81;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final com.networkbench.agent.impl.c.e f37101a = com.networkbench.agent.impl.c.f.a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String[] f37102b = {ConfigurationName.WINDOW_PNG, ConfigurationName.WINDOW_CLICK_PNG, ConfigurationName.PAGE_PNG, ConfigurationName.HAND_PNG, ConfigurationName.EXIT_PNG, ConfigurationName.HANDLE_ENABLE_NEW_PNG};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f37103c;
    private Context d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private List<String> f37104e = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private List<String> f37105f = new ArrayList();

    public class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f37107b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f37108c;

        public a(String str, String str2) {
            this.f37107b = str;
            this.f37108c = str2;
        }

        private void a(String str) {
            k kVarE = c.a().e();
            if (kVarE != null) {
                for (final FloatingViewItem floatingViewItem : kVarE.b()) {
                    if (floatingViewItem.getViewImageBmpPath() != null && floatingViewItem.getViewImageBmpPath().equals(str)) {
                        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.networkbench.agent.impl.floatbtnmanager.h.a.1
                            @Override // java.lang.Runnable
                            public void run() {
                                try {
                                    floatingViewItem.setViewImage();
                                } catch (Throwable th) {
                                    z81.k(new StringBuilder(" updateFloatingViewItem run  has an error : "), th);
                                }
                            }
                        });
                    }
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                e.a(this.f37108c, v.f(this.f37107b));
                a(this.f37108c);
            } catch (Throwable th) {
                z81.k(new StringBuilder(" FloatingBmpManager run  has an error : "), th);
            }
        }
    }

    public h(String str, Context context) {
        this.f37103c = str;
        this.d = context;
    }

    private void b() {
        String strA = e.a(this.d);
        for (String str : f37102b) {
            StringBuilder sbT = n00.t(strA);
            String str2 = File.separator;
            if (!a(n00.r(str2, str, sbT))) {
                this.f37104e.add(strA + str2 + str);
                this.f37105f.add(this.f37103c + str2 + str);
            }
        }
    }

    public void a() {
        b();
        for (int i2 = 0; i2 < this.f37104e.size(); i2++) {
            com.networkbench.agent.impl.util.c.c.a().a(new a(this.f37105f.get(i2), this.f37104e.get(i2)));
        }
    }

    private boolean a(String str) {
        return new File(str).exists();
    }
}
