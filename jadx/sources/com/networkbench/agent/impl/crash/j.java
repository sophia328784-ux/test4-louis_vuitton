package com.networkbench.agent.impl.crash;

import android.content.Context;
import android.content.SharedPreferences;
import com.networkbench.agent.impl.util.p;
import com.networkbench.agent.impl.util.r;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class j implements h {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final com.networkbench.agent.impl.c.e f36663b = com.networkbench.agent.impl.c.f.a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f36664a;

    public j(Context context, String str) {
        this.f36664a = str;
    }

    @Override // com.networkbench.agent.impl.crash.h
    public void a(String str, String str2) {
        try {
            Context contextJ = r.u().J();
            synchronized (this) {
                try {
                    SharedPreferences.Editor editorEdit = contextJ.getSharedPreferences(this.f36664a, 0).edit();
                    while (c() >= 5) {
                        com.networkbench.agent.impl.c.g.p("data count>5");
                        String strC = p.c(e());
                        if (strC != null) {
                            b(strC);
                            com.networkbench.agent.impl.c.g.p("delete the oldest data ,oldestTimeStamp is" + strC);
                        }
                    }
                    editorEdit.putString(p.b(str), p.b(str2));
                    editorEdit.commit();
                    com.networkbench.agent.impl.c.g.p("saved data,timeStamp is " + str);
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (Throwable unused) {
        }
    }

    public void b(String str, String str2) {
        try {
            Context contextJ = r.u().J();
            synchronized (this) {
                SharedPreferences.Editor editorEdit = contextJ.getSharedPreferences(this.f36664a, 0).edit();
                editorEdit.putString(p.b(str), p.b(str2));
                editorEdit.apply();
                com.networkbench.agent.impl.c.g.p("saved data,timeStamp is " + str);
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.networkbench.agent.impl.crash.h
    public int c() {
        try {
            return r.u().J().getSharedPreferences(this.f36664a, 0).getAll().size();
        } catch (Throwable unused) {
            return 0;
        }
    }

    public String d(String str) {
        String string;
        try {
            Context contextJ = r.u().J();
            synchronized (this) {
                string = contextJ.getSharedPreferences(this.f36664a, 0).getString(p.b(str), "");
            }
            return string;
        } catch (Throwable unused) {
            return "";
        }
    }

    @Override // com.networkbench.agent.impl.crash.h
    public String e() {
        try {
            SharedPreferences sharedPreferences = r.u().J().getSharedPreferences(this.f36664a, 0);
            ArrayList arrayList = new ArrayList();
            for (String str : sharedPreferences.getAll().keySet()) {
                if (str instanceof String) {
                    arrayList.add(str);
                }
            }
            if (arrayList.size() < 1) {
                f36663b.e("get the oldest Crash has problem");
                return null;
            }
            Collections.sort(arrayList, new Comparator<String>() { // from class: com.networkbench.agent.impl.crash.j.1
                @Override // java.util.Comparator
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public int compare(String str2, String str3) {
                    return str2.compareTo(str3);
                }
            });
            return (String) arrayList.get(0);
        } catch (Throwable unused) {
            return "";
        }
    }

    public String f() {
        return this.f36664a;
    }

    public void c(String str) {
        this.f36664a = str;
    }

    @Override // com.networkbench.agent.impl.crash.h
    public void d() {
        try {
            Context contextJ = r.u().J();
            synchronized (this) {
                SharedPreferences.Editor editorEdit = contextJ.getSharedPreferences(this.f36664a, 0).edit();
                editorEdit.clear();
                editorEdit.apply();
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.networkbench.agent.impl.crash.h
    public Map<String, ?> b() {
        Map<String, ?> all;
        try {
            SharedPreferences sharedPreferences = r.u().J().getSharedPreferences(this.f36664a, 0);
            synchronized (this) {
                all = sharedPreferences.getAll();
            }
            return all;
        } catch (Throwable unused) {
            return new HashMap();
        }
    }

    @Override // com.networkbench.agent.impl.crash.h
    public void b(String str) {
        try {
            Context contextJ = r.u().J();
            synchronized (this) {
                SharedPreferences.Editor editorEdit = contextJ.getSharedPreferences(this.f36664a, 0).edit();
                editorEdit.remove(p.b(str));
                editorEdit.commit();
                com.networkbench.agent.impl.c.g.p("delete crash success, data timeStamp is " + str);
            }
        } catch (Throwable unused) {
        }
    }

    public String e(String str) {
        String string;
        try {
            Context contextJ = r.u().J();
            synchronized (this) {
                string = contextJ.getSharedPreferences(this.f36664a, 0).getString(str, "");
            }
            return string;
        } catch (Throwable unused) {
            return "";
        }
    }

    @Override // com.networkbench.agent.impl.crash.h
    public List<String> a() {
        try {
            Context contextJ = r.u().J();
            ArrayList arrayList = new ArrayList();
            SharedPreferences sharedPreferences = contextJ.getSharedPreferences(this.f36664a, 0);
            synchronized (this) {
                try {
                    for (Object obj : sharedPreferences.getAll().values()) {
                        if (obj instanceof String) {
                            arrayList.add((String) obj);
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return arrayList;
        } catch (Throwable unused) {
            return new ArrayList();
        }
    }

    @Override // com.networkbench.agent.impl.crash.h
    public void a(String str) {
        try {
            Context contextJ = r.u().J();
            synchronized (this) {
                SharedPreferences.Editor editorEdit = contextJ.getSharedPreferences(this.f36664a, 0).edit();
                editorEdit.remove(p.b(str));
                editorEdit.apply();
                com.networkbench.agent.impl.c.g.p("delete crash success, data timeStamp is " + str);
            }
        } catch (Throwable unused) {
        }
    }
}
