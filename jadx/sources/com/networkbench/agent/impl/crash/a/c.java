package com.networkbench.agent.impl.crash.a;

import android.content.SharedPreferences;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.networkbench.agent.impl.util.r;
import java.io.File;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Queue;

/* JADX INFO: loaded from: classes2.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static int f36600a = 5242880;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f36601b = "nbs_custom_data_store_" + ConfigurationName.processName;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f36602c = "nbs_custom_data_store_copy" + ConfigurationName.processName;

    public static synchronized void a(String str, String str2) {
        try {
            System.currentTimeMillis();
            if (h() < f36600a) {
                SharedPreferences.Editor editorEdit = r.u().J().getSharedPreferences(f36601b, 0).edit();
                editorEdit.putString(str, str2);
                editorEdit.apply();
            }
        } catch (Throwable unused) {
            com.networkbench.agent.impl.harvest.b.a.a().a(com.networkbench.agent.impl.harvest.b.a.f37289a, 0, true);
        }
    }

    public static synchronized void b(String str, String str2) {
        try {
            if (i() < f36600a) {
                SharedPreferences.Editor editorEdit = r.u().J().getSharedPreferences(f36602c, 0).edit();
                editorEdit.putString(str, str2);
                editorEdit.apply();
            }
        } catch (Throwable unused) {
            com.networkbench.agent.impl.harvest.b.a.a().a(com.networkbench.agent.impl.harvest.b.a.f37289a, 0, true);
        }
    }

    public static synchronized int c() {
        return r.u().J().getSharedPreferences(f36601b, 0).getAll().size();
    }

    public static synchronized Map<String, ?> d() {
        return r.u().J().getSharedPreferences(f36601b, 0).getAll();
    }

    public static synchronized Map<String, ?> e() {
        return r.u().J().getSharedPreferences(f36602c, 0).getAll();
    }

    public static synchronized void f() {
        SharedPreferences.Editor editorEdit = r.u().J().getSharedPreferences(f36601b, 0).edit();
        editorEdit.clear();
        editorEdit.apply();
    }

    public static synchronized long g() {
        return h() + i();
    }

    private static synchronized long h() {
        File file = new File(j());
        if (!file.exists()) {
            return -1L;
        }
        return file.length();
    }

    private static synchronized long i() {
        File file = new File(k());
        if (!file.exists()) {
            return -1L;
        }
        return file.length();
    }

    private static synchronized String j() {
        return "/data/data/" + r.u().J().getPackageName() + "/shared_prefs/" + f36601b + ".xml";
    }

    private static synchronized String k() {
        return "/data/data/" + r.u().J().getPackageName() + "/shared_prefs/" + f36602c + ".xml";
    }

    public static synchronized int b() {
        return r.u().J().getSharedPreferences(f36602c, 0).getAll().size();
    }

    public static synchronized void a() {
        SharedPreferences.Editor editorEdit = r.u().J().getSharedPreferences(f36602c, 0).edit();
        editorEdit.clear();
        editorEdit.apply();
    }

    public static synchronized void a(Queue<d> queue) {
        SharedPreferences.Editor editorEdit = r.u().J().getSharedPreferences(f36601b, 0).edit();
        Iterator<d> it = queue.iterator();
        while (it.hasNext()) {
            editorEdit.remove(it.next().d());
            editorEdit.apply();
        }
    }

    public static synchronized void a(List<String> list) {
        SharedPreferences.Editor editorEdit = r.u().J().getSharedPreferences(f36601b, 0).edit();
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            editorEdit.remove(it.next());
            editorEdit.apply();
        }
    }
}
