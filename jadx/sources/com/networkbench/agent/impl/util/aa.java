package com.networkbench.agent.impl.util;

import android.content.Context;
import android.content.SharedPreferences;

/* JADX INFO: loaded from: classes2.dex */
public class aa implements k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f38298a = "NBSSharedPerf";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private SharedPreferences f38299b;

    public aa(Context context, String str) throws Exception {
        if (context == null || str == null) {
            throw new Exception("context == null || spFileName == null");
        }
        this.f38299b = a(context, str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private <T> void a(SharedPreferences.Editor editor, String str, T t) {
        if (t instanceof Integer) {
            editor.putInt(str, ((Integer) t).intValue());
            return;
        }
        if (t instanceof Long) {
            editor.putLong(str, ((Long) t).longValue());
            return;
        }
        if (t instanceof String) {
            editor.putString(str, (String) t);
            return;
        }
        if (t instanceof Boolean) {
            editor.putBoolean(str, ((Boolean) t).booleanValue());
        } else if (t instanceof Float) {
            editor.putFloat(str, ((Float) t).floatValue());
        } else {
            Logger.warning(f38298a, "value type is:".concat(t.getClass().getName()));
            editor.putString(str, t.toString());
        }
    }

    private Object d(String str, Object obj) {
        if (obj instanceof Integer) {
            return Integer.valueOf(this.f38299b.getInt(str, ((Integer) obj).intValue()));
        }
        if (obj instanceof Long) {
            return Long.valueOf(this.f38299b.getLong(str, ((Long) obj).longValue()));
        }
        if (obj instanceof String) {
            return this.f38299b.getString(str, (String) obj);
        }
        if (obj instanceof Boolean) {
            return Boolean.valueOf(this.f38299b.getBoolean(str, ((Boolean) obj).booleanValue()));
        }
        if (obj instanceof Float) {
            return Float.valueOf(this.f38299b.getFloat(str, ((Float) obj).floatValue()));
        }
        Logger.warning(f38298a, "value type is:".concat(obj.getClass().getName()));
        return this.f38299b.getString(str, obj.toString());
    }

    @Override // com.networkbench.agent.impl.util.k
    public <T> void b(String str, T t) {
        a(str, (Object) t, false);
    }

    @Override // com.networkbench.agent.impl.util.k
    public Object c(String str, Object obj) {
        return d(str, obj);
    }

    @Override // com.networkbench.agent.impl.util.k
    public <T> void a(String str, T t) {
        a(str, (Object) t, true);
    }

    @Override // com.networkbench.agent.impl.util.k
    public boolean a(String str) {
        return this.f38299b.contains(str);
    }

    @Override // com.networkbench.agent.impl.util.k
    public void a(boolean z) {
        SharedPreferences.Editor editorEdit = this.f38299b.edit();
        editorEdit.clear();
        if (z) {
            editorEdit.apply();
        } else {
            editorEdit.commit();
        }
    }

    private <T> void a(String str, T t, boolean z) {
        SharedPreferences.Editor editorEdit = this.f38299b.edit();
        a(editorEdit, str, t);
        if (z) {
            editorEdit.apply();
        } else {
            editorEdit.commit();
        }
    }

    public SharedPreferences a(Context context, String str) {
        return context.getSharedPreferences(str, 0);
    }
}
