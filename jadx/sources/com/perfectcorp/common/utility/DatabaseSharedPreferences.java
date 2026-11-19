package com.perfectcorp.common.utility;

import android.content.ContentValues;
import android.content.Context;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.perfectcorp.common.PfCommons;
import com.perfectcorp.common.concurrent.NamedThreadFactory;
import com.perfectcorp.common.concurrent.Threads;
import com.perfectcorp.common.guava.MoreFutures;
import com.perfectcorp.thirdparty.com.google.common.base.Optional;
import com.perfectcorp.thirdparty.com.google.common.cache.CacheBuilder;
import com.perfectcorp.thirdparty.com.google.common.cache.LoadingCache;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableMap;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableSet;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.ListenableFutureTask;
import com.perfectcorp.thirdparty.com.google.gson.Gson;
import com.perfectcorp.thirdparty.com.google.gson.GsonBuilder;
import defpackage.tr;
import java.lang.reflect.Type;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* JADX INFO: loaded from: classes3.dex */
public final class DatabaseSharedPreferences implements SharedPreferences {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final LoadingCache f39403h = CacheBuilder.b().a(new h());

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final ExecutorService f39404i = Executors.newSingleThreadExecutor(NamedThreadFactory.b("DatabaseSharedPreferences"));

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final Object f39405j = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Lock f39406b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Lock f39407c;
    public long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final HashMap f39408e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f39409f;
    public final c g;

    public final class a implements Callable<Boolean> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final boolean f39410a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Map<String, Object> f39411b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final long f39412c;

        public a(boolean z, Map<String, Object> map, long j2) {
            this.f39410a = z;
            this.f39411b = map;
            this.f39412c = j2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Code duplicated, block: B:20:0x004d A[Catch: all -> 0x003a, TryCatch #3 {all -> 0x003a, blocks: (B:3:0x000d, B:5:0x0012, B:7:0x0026, B:11:0x0030, B:47:0x00fc, B:48:0x00ff, B:13:0x0036, B:14:0x0039, B:17:0x003d, B:18:0x0047, B:20:0x004d, B:22:0x0065, B:23:0x006b, B:25:0x006f, B:26:0x0079, B:28:0x007d, B:29:0x0091, B:31:0x0095, B:32:0x00a9, B:34:0x00ad, B:35:0x00c1, B:37:0x00c5, B:38:0x00d9, B:40:0x00dd, B:43:0x00f3, B:44:0x00f8, B:10:0x002b, B:6:0x001d), top: B:62:0x000d, inners: #1, #2 }] */
        /* JADX WARN: Code duplicated, block: B:22:0x0065 A[Catch: all -> 0x003a, TryCatch #3 {all -> 0x003a, blocks: (B:3:0x000d, B:5:0x0012, B:7:0x0026, B:11:0x0030, B:47:0x00fc, B:48:0x00ff, B:13:0x0036, B:14:0x0039, B:17:0x003d, B:18:0x0047, B:20:0x004d, B:22:0x0065, B:23:0x006b, B:25:0x006f, B:26:0x0079, B:28:0x007d, B:29:0x0091, B:31:0x0095, B:32:0x00a9, B:34:0x00ad, B:35:0x00c1, B:37:0x00c5, B:38:0x00d9, B:40:0x00dd, B:43:0x00f3, B:44:0x00f8, B:10:0x002b, B:6:0x001d), top: B:62:0x000d, inners: #1, #2 }] */
        /* JADX WARN: Code duplicated, block: B:23:0x006b A[Catch: all -> 0x003a, TryCatch #3 {all -> 0x003a, blocks: (B:3:0x000d, B:5:0x0012, B:7:0x0026, B:11:0x0030, B:47:0x00fc, B:48:0x00ff, B:13:0x0036, B:14:0x0039, B:17:0x003d, B:18:0x0047, B:20:0x004d, B:22:0x0065, B:23:0x006b, B:25:0x006f, B:26:0x0079, B:28:0x007d, B:29:0x0091, B:31:0x0095, B:32:0x00a9, B:34:0x00ad, B:35:0x00c1, B:37:0x00c5, B:38:0x00d9, B:40:0x00dd, B:43:0x00f3, B:44:0x00f8, B:10:0x002b, B:6:0x001d), top: B:62:0x000d, inners: #1, #2 }] */
        /* JADX WARN: Code duplicated, block: B:25:0x006f A[Catch: all -> 0x003a, TryCatch #3 {all -> 0x003a, blocks: (B:3:0x000d, B:5:0x0012, B:7:0x0026, B:11:0x0030, B:47:0x00fc, B:48:0x00ff, B:13:0x0036, B:14:0x0039, B:17:0x003d, B:18:0x0047, B:20:0x004d, B:22:0x0065, B:23:0x006b, B:25:0x006f, B:26:0x0079, B:28:0x007d, B:29:0x0091, B:31:0x0095, B:32:0x00a9, B:34:0x00ad, B:35:0x00c1, B:37:0x00c5, B:38:0x00d9, B:40:0x00dd, B:43:0x00f3, B:44:0x00f8, B:10:0x002b, B:6:0x001d), top: B:62:0x000d, inners: #1, #2 }] */
        /* JADX WARN: Code duplicated, block: B:26:0x0079 A[Catch: all -> 0x003a, TryCatch #3 {all -> 0x003a, blocks: (B:3:0x000d, B:5:0x0012, B:7:0x0026, B:11:0x0030, B:47:0x00fc, B:48:0x00ff, B:13:0x0036, B:14:0x0039, B:17:0x003d, B:18:0x0047, B:20:0x004d, B:22:0x0065, B:23:0x006b, B:25:0x006f, B:26:0x0079, B:28:0x007d, B:29:0x0091, B:31:0x0095, B:32:0x00a9, B:34:0x00ad, B:35:0x00c1, B:37:0x00c5, B:38:0x00d9, B:40:0x00dd, B:43:0x00f3, B:44:0x00f8, B:10:0x002b, B:6:0x001d), top: B:62:0x000d, inners: #1, #2 }] */
        /* JADX WARN: Code duplicated, block: B:28:0x007d A[Catch: all -> 0x003a, TryCatch #3 {all -> 0x003a, blocks: (B:3:0x000d, B:5:0x0012, B:7:0x0026, B:11:0x0030, B:47:0x00fc, B:48:0x00ff, B:13:0x0036, B:14:0x0039, B:17:0x003d, B:18:0x0047, B:20:0x004d, B:22:0x0065, B:23:0x006b, B:25:0x006f, B:26:0x0079, B:28:0x007d, B:29:0x0091, B:31:0x0095, B:32:0x00a9, B:34:0x00ad, B:35:0x00c1, B:37:0x00c5, B:38:0x00d9, B:40:0x00dd, B:43:0x00f3, B:44:0x00f8, B:10:0x002b, B:6:0x001d), top: B:62:0x000d, inners: #1, #2 }] */
        /* JADX WARN: Code duplicated, block: B:29:0x0091 A[Catch: all -> 0x003a, TryCatch #3 {all -> 0x003a, blocks: (B:3:0x000d, B:5:0x0012, B:7:0x0026, B:11:0x0030, B:47:0x00fc, B:48:0x00ff, B:13:0x0036, B:14:0x0039, B:17:0x003d, B:18:0x0047, B:20:0x004d, B:22:0x0065, B:23:0x006b, B:25:0x006f, B:26:0x0079, B:28:0x007d, B:29:0x0091, B:31:0x0095, B:32:0x00a9, B:34:0x00ad, B:35:0x00c1, B:37:0x00c5, B:38:0x00d9, B:40:0x00dd, B:43:0x00f3, B:44:0x00f8, B:10:0x002b, B:6:0x001d), top: B:62:0x000d, inners: #1, #2 }] */
        /* JADX WARN: Code duplicated, block: B:31:0x0095 A[Catch: all -> 0x003a, TryCatch #3 {all -> 0x003a, blocks: (B:3:0x000d, B:5:0x0012, B:7:0x0026, B:11:0x0030, B:47:0x00fc, B:48:0x00ff, B:13:0x0036, B:14:0x0039, B:17:0x003d, B:18:0x0047, B:20:0x004d, B:22:0x0065, B:23:0x006b, B:25:0x006f, B:26:0x0079, B:28:0x007d, B:29:0x0091, B:31:0x0095, B:32:0x00a9, B:34:0x00ad, B:35:0x00c1, B:37:0x00c5, B:38:0x00d9, B:40:0x00dd, B:43:0x00f3, B:44:0x00f8, B:10:0x002b, B:6:0x001d), top: B:62:0x000d, inners: #1, #2 }] */
        /* JADX WARN: Code duplicated, block: B:32:0x00a9 A[Catch: all -> 0x003a, TryCatch #3 {all -> 0x003a, blocks: (B:3:0x000d, B:5:0x0012, B:7:0x0026, B:11:0x0030, B:47:0x00fc, B:48:0x00ff, B:13:0x0036, B:14:0x0039, B:17:0x003d, B:18:0x0047, B:20:0x004d, B:22:0x0065, B:23:0x006b, B:25:0x006f, B:26:0x0079, B:28:0x007d, B:29:0x0091, B:31:0x0095, B:32:0x00a9, B:34:0x00ad, B:35:0x00c1, B:37:0x00c5, B:38:0x00d9, B:40:0x00dd, B:43:0x00f3, B:44:0x00f8, B:10:0x002b, B:6:0x001d), top: B:62:0x000d, inners: #1, #2 }] */
        /* JADX WARN: Code duplicated, block: B:34:0x00ad A[Catch: all -> 0x003a, TryCatch #3 {all -> 0x003a, blocks: (B:3:0x000d, B:5:0x0012, B:7:0x0026, B:11:0x0030, B:47:0x00fc, B:48:0x00ff, B:13:0x0036, B:14:0x0039, B:17:0x003d, B:18:0x0047, B:20:0x004d, B:22:0x0065, B:23:0x006b, B:25:0x006f, B:26:0x0079, B:28:0x007d, B:29:0x0091, B:31:0x0095, B:32:0x00a9, B:34:0x00ad, B:35:0x00c1, B:37:0x00c5, B:38:0x00d9, B:40:0x00dd, B:43:0x00f3, B:44:0x00f8, B:10:0x002b, B:6:0x001d), top: B:62:0x000d, inners: #1, #2 }] */
        /* JADX WARN: Code duplicated, block: B:35:0x00c1 A[Catch: all -> 0x003a, TryCatch #3 {all -> 0x003a, blocks: (B:3:0x000d, B:5:0x0012, B:7:0x0026, B:11:0x0030, B:47:0x00fc, B:48:0x00ff, B:13:0x0036, B:14:0x0039, B:17:0x003d, B:18:0x0047, B:20:0x004d, B:22:0x0065, B:23:0x006b, B:25:0x006f, B:26:0x0079, B:28:0x007d, B:29:0x0091, B:31:0x0095, B:32:0x00a9, B:34:0x00ad, B:35:0x00c1, B:37:0x00c5, B:38:0x00d9, B:40:0x00dd, B:43:0x00f3, B:44:0x00f8, B:10:0x002b, B:6:0x001d), top: B:62:0x000d, inners: #1, #2 }] */
        /* JADX WARN: Code duplicated, block: B:37:0x00c5 A[Catch: all -> 0x003a, TryCatch #3 {all -> 0x003a, blocks: (B:3:0x000d, B:5:0x0012, B:7:0x0026, B:11:0x0030, B:47:0x00fc, B:48:0x00ff, B:13:0x0036, B:14:0x0039, B:17:0x003d, B:18:0x0047, B:20:0x004d, B:22:0x0065, B:23:0x006b, B:25:0x006f, B:26:0x0079, B:28:0x007d, B:29:0x0091, B:31:0x0095, B:32:0x00a9, B:34:0x00ad, B:35:0x00c1, B:37:0x00c5, B:38:0x00d9, B:40:0x00dd, B:43:0x00f3, B:44:0x00f8, B:10:0x002b, B:6:0x001d), top: B:62:0x000d, inners: #1, #2 }] */
        /* JADX WARN: Code duplicated, block: B:38:0x00d9 A[Catch: all -> 0x003a, TryCatch #3 {all -> 0x003a, blocks: (B:3:0x000d, B:5:0x0012, B:7:0x0026, B:11:0x0030, B:47:0x00fc, B:48:0x00ff, B:13:0x0036, B:14:0x0039, B:17:0x003d, B:18:0x0047, B:20:0x004d, B:22:0x0065, B:23:0x006b, B:25:0x006f, B:26:0x0079, B:28:0x007d, B:29:0x0091, B:31:0x0095, B:32:0x00a9, B:34:0x00ad, B:35:0x00c1, B:37:0x00c5, B:38:0x00d9, B:40:0x00dd, B:43:0x00f3, B:44:0x00f8, B:10:0x002b, B:6:0x001d), top: B:62:0x000d, inners: #1, #2 }] */
        /* JADX WARN: Code duplicated, block: B:40:0x00dd A[Catch: all -> 0x003a, TryCatch #3 {all -> 0x003a, blocks: (B:3:0x000d, B:5:0x0012, B:7:0x0026, B:11:0x0030, B:47:0x00fc, B:48:0x00ff, B:13:0x0036, B:14:0x0039, B:17:0x003d, B:18:0x0047, B:20:0x004d, B:22:0x0065, B:23:0x006b, B:25:0x006f, B:26:0x0079, B:28:0x007d, B:29:0x0091, B:31:0x0095, B:32:0x00a9, B:34:0x00ad, B:35:0x00c1, B:37:0x00c5, B:38:0x00d9, B:40:0x00dd, B:43:0x00f3, B:44:0x00f8, B:10:0x002b, B:6:0x001d), top: B:62:0x000d, inners: #1, #2 }] */
        /* JADX WARN: Code duplicated, block: B:63:0x00f3 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:65:0x00f9 A[SYNTHETIC] */
        @Override // java.util.concurrent.Callable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Boolean call() {
            Boolean boolValueOf;
            Iterator<Map.Entry<String, Object>> it;
            c cVar;
            String key;
            Object value;
            boolean zK;
            SQLiteDatabase writableDatabase = DatabaseSharedPreferences.this.g.getWritableDatabase();
            writableDatabase.beginTransaction();
            try {
                boolean z = false;
                if (!this.f39410a) {
                    it = this.f39411b.entrySet().iterator();
                    do {
                        if (it.hasNext()) {
                            z = true;
                            break;
                        }
                        Map.Entry<String, Object> next = it.next();
                        cVar = DatabaseSharedPreferences.this.g;
                        key = next.getKey();
                        value = next.getValue();
                        if (value == DatabaseSharedPreferences.f39405j) {
                            zK = cVar.m(key);
                        } else if (value instanceof String) {
                            zK = cVar.k(key, (String) value, "String");
                        } else if (value instanceof Set) {
                            cVar.getClass();
                            zK = cVar.k(key, c.f39413b.l((Set) value, c.f39414c), "Set<String>");
                        } else if (value instanceof Integer) {
                            int iIntValue = ((Integer) value).intValue();
                            cVar.getClass();
                            zK = cVar.k(key, Integer.toString(iIntValue), "int");
                        } else if (value instanceof Long) {
                            long jLongValue = ((Long) value).longValue();
                            cVar.getClass();
                            zK = cVar.k(key, Long.toString(jLongValue), "long");
                        } else if (value instanceof Float) {
                            float fFloatValue = ((Float) value).floatValue();
                            cVar.getClass();
                            zK = cVar.k(key, Float.toString(fFloatValue), "float");
                        } else {
                            if (value instanceof Boolean) {
                                throw new AssertionError();
                            }
                            boolean zBooleanValue = ((Boolean) value).booleanValue();
                            cVar.getClass();
                            zK = cVar.k(key, Boolean.toString(zBooleanValue), "boolean");
                        }
                    } while (zK);
                } else {
                    SQLiteDatabase writableDatabase2 = DatabaseSharedPreferences.this.g.getWritableDatabase();
                    writableDatabase2.beginTransaction();
                    try {
                        writableDatabase2.delete("KeyValuePair", null, null);
                        writableDatabase2.setTransactionSuccessful();
                        writableDatabase2.endTransaction();
                        it = this.f39411b.entrySet().iterator();
                        do {
                            if (it.hasNext()) {
                                z = true;
                                break;
                            }
                            Map.Entry<String, Object> next2 = it.next();
                            cVar = DatabaseSharedPreferences.this.g;
                            key = next2.getKey();
                            value = next2.getValue();
                            if (value == DatabaseSharedPreferences.f39405j) {
                                zK = cVar.m(key);
                            } else if (value instanceof String) {
                                zK = cVar.k(key, (String) value, "String");
                            } else if (value instanceof Set) {
                                cVar.getClass();
                                zK = cVar.k(key, c.f39413b.l((Set) value, c.f39414c), "Set<String>");
                            } else if (value instanceof Integer) {
                                int iIntValue2 = ((Integer) value).intValue();
                                cVar.getClass();
                                zK = cVar.k(key, Integer.toString(iIntValue2), "int");
                            } else if (value instanceof Long) {
                                long jLongValue2 = ((Long) value).longValue();
                                cVar.getClass();
                                zK = cVar.k(key, Long.toString(jLongValue2), "long");
                            } else if (value instanceof Float) {
                                float fFloatValue2 = ((Float) value).floatValue();
                                cVar.getClass();
                                zK = cVar.k(key, Float.toString(fFloatValue2), "float");
                            } else {
                                if (value instanceof Boolean) {
                                    throw new AssertionError();
                                }
                                boolean zBooleanValue2 = ((Boolean) value).booleanValue();
                                cVar.getClass();
                                zK = cVar.k(key, Boolean.toString(zBooleanValue2), "boolean");
                            }
                        } while (zK);
                    } catch (Throwable th) {
                        try {
                            Log.e("DatabaseSharedPreferences", "clear", th);
                            writableDatabase2.endTransaction();
                        } catch (Throwable th2) {
                            writableDatabase2.endTransaction();
                            throw th2;
                        }
                    }
                }
                if (z) {
                    writableDatabase.setTransactionSuccessful();
                }
                boolValueOf = Boolean.valueOf(z);
            } catch (Throwable th3) {
                try {
                    Log.e("DatabaseSharedPreferences", "CommitCallable#call()", th3);
                    boolValueOf = Boolean.FALSE;
                } finally {
                    writableDatabase.endTransaction();
                    b();
                }
            }
            return boolValueOf;
        }

        private void b() {
            DatabaseSharedPreferences.this.f39407c.lock();
            try {
                long j2 = this.f39412c;
                DatabaseSharedPreferences databaseSharedPreferences = DatabaseSharedPreferences.this;
                if (j2 == databaseSharedPreferences.d) {
                    databaseSharedPreferences.f39408e.clear();
                    DatabaseSharedPreferences.this.f39409f = false;
                }
            } finally {
                DatabaseSharedPreferences.this.f39407c.unlock();
            }
        }
    }

    public static final class b extends UnsupportedOperationException {
    }

    public static final class c extends SQLiteOpenHelper {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final Gson f39413b = new GsonBuilder().a();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final Type f39414c = new i().f42556b;
        public static final String[] d = {"KeyString", "ValueString", "ValueType"};

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final String[] f39415e = {"KeyString"};

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final String[] f39416f = {"ValueString", "ValueType"};

        /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        public final Map h() {
            Object objValueOf;
            SQLiteDatabase readableDatabase = getReadableDatabase();
            Cursor cursor = null;
            try {
                try {
                    Cursor cursorQuery = readableDatabase.query("KeyValuePair", d, null, null, null, null, null, null);
                    if (cursorQuery.moveToFirst() && cursorQuery.getCount() > 0) {
                        HashMap map = new HashMap();
                        do {
                            String string = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("KeyString"));
                            String string2 = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("ValueString"));
                            String string3 = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("ValueType"));
                            switch (string3.hashCode()) {
                                case -1808118735:
                                    if (string3.equals("String")) {
                                        objValueOf = string2;
                                        map.put(string, objValueOf);
                                    }
                                    break;
                                case 104431:
                                    if (string3.equals("int")) {
                                        objValueOf = Integer.valueOf(Integer.parseInt(string2));
                                        map.put(string, objValueOf);
                                    }
                                    break;
                                case 3327612:
                                    if (string3.equals("long")) {
                                        objValueOf = Long.valueOf(Long.parseLong(string2));
                                        map.put(string, objValueOf);
                                    }
                                    break;
                                case 64711720:
                                    if (string3.equals("boolean")) {
                                        objValueOf = Boolean.valueOf(Boolean.parseBoolean(string2));
                                        map.put(string, objValueOf);
                                    }
                                    break;
                                case 97526364:
                                    if (string3.equals("float")) {
                                        objValueOf = Float.valueOf(Float.parseFloat(string2));
                                        map.put(string, objValueOf);
                                    }
                                    break;
                                case 569876659:
                                    if (string3.equals("Set<String>")) {
                                        objValueOf = f39413b.j(string2, f39414c);
                                        map.put(string, objValueOf);
                                    }
                                    break;
                            }
                            throw new AssertionError();
                        } while (cursorQuery.moveToNext());
                        cursorQuery.close();
                        return map;
                    }
                    Map map2 = Collections.EMPTY_MAP;
                    cursorQuery.close();
                    return map2;
                } catch (Throwable th) {
                    if (0 != 0) {
                        cursor.close();
                    }
                    throw th;
                }
            } catch (NullPointerException e2) {
                throw e2;
            } catch (Throwable th2) {
                Log.e("DatabaseSharedPreferences", "getAll", th2);
                Map map3 = Collections.EMPTY_MAP;
                if (0 != 0) {
                    cursor.close();
                }
                return map3;
            }
        }

        public final boolean j(String str) {
            SQLiteDatabase readableDatabase = getReadableDatabase();
            boolean z = false;
            Cursor cursorQuery = null;
            try {
                try {
                    try {
                        cursorQuery = readableDatabase.query("KeyValuePair", f39415e, "KeyString=?", new String[]{str}, null, null, null, null);
                        if (cursorQuery.moveToFirst() && cursorQuery.getCount() > 0) {
                            z = true;
                        }
                        cursorQuery.close();
                        return z;
                    } catch (Throwable th) {
                        Log.e("DatabaseSharedPreferences", "contains key=".concat(str), th);
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                        return false;
                    }
                } catch (NullPointerException e2) {
                    throw e2;
                }
            } catch (Throwable th2) {
                if (cursorQuery == null) {
                    throw th2;
                }
                cursorQuery.close();
                throw th2;
            }
        }

        public final boolean k(String str, String str2, String str3) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("KeyString", str);
            contentValues.put("ValueString", str2);
            contentValues.put("ValueType", str3);
            SQLiteDatabase writableDatabase = getWritableDatabase();
            writableDatabase.beginTransaction();
            try {
                long jInsertWithOnConflict = writableDatabase.insertWithOnConflict("KeyValuePair", null, contentValues, 5);
                writableDatabase.setTransactionSuccessful();
                boolean z = jInsertWithOnConflict != -1;
                writableDatabase.endTransaction();
                return z;
            } catch (Throwable th) {
                try {
                    Log.e("DatabaseSharedPreferences", "putDataToDb key=" + str + ", value=" + str2 + ", type=" + str3, th);
                    return false;
                } finally {
                    writableDatabase.endTransaction();
                }
            }
        }

        public final boolean m(String str) {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            writableDatabase.beginTransaction();
            try {
                writableDatabase.delete("KeyValuePair", "KeyString=?", new String[]{str});
                writableDatabase.setTransactionSuccessful();
                writableDatabase.endTransaction();
                return true;
            } catch (Throwable th) {
                try {
                    Log.e("DatabaseSharedPreferences", "remove key=" + str, th);
                    return false;
                } finally {
                    writableDatabase.endTransaction();
                }
            }
        }

        public final Optional n(String str, String str2) {
            SQLiteDatabase readableDatabase = getReadableDatabase();
            Cursor cursor = null;
            try {
                try {
                    try {
                        Cursor cursorQuery = readableDatabase.query("KeyValuePair", f39416f, "KeyString=?", new String[]{str}, null, null, null, null);
                        if (cursorQuery.moveToFirst() && cursorQuery.getCount() > 0) {
                            String string = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("ValueType"));
                            if (!str2.equals(string)) {
                                throw new b(tr.h(string, " cannot be converted to ", str2));
                            }
                            Optional optionalE = Optional.e(cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("ValueString")));
                            cursorQuery.close();
                            return optionalE;
                        }
                        Optional optionalA = Optional.a();
                        cursorQuery.close();
                        return optionalA;
                    } catch (Throwable th) {
                        Log.e("DatabaseSharedPreferences", "getValueString key=" + str + ", type=" + str2, th);
                        Optional optionalA2 = Optional.a();
                        if (0 != 0) {
                            cursor.close();
                        }
                        return optionalA2;
                    }
                } catch (b | NullPointerException e2) {
                    throw e2;
                }
            } catch (Throwable th2) {
                if (0 == 0) {
                    throw th2;
                }
                cursor.close();
                throw th2;
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public final void onCreate(SQLiteDatabase sQLiteDatabase) {
            sQLiteDatabase.execSQL("CREATE TABLE KeyValuePair(KeyString TEXT PRIMARY KEY NOT NULL,ValueString TEXT NOT NULL,ValueType TEXT NOT NULL);");
            sQLiteDatabase.execSQL("CREATE INDEX KeyStringIndex ON KeyValuePair(KeyString)");
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i2, int i3) {
        }
    }

    public final class d implements SharedPreferences.Editor {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Object f39417a = new Object();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final HashMap f39418b = new HashMap();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f39419c;

        public d() {
        }

        public final ListenableFutureTask a() {
            boolean z;
            ImmutableMap immutableMapD;
            DatabaseSharedPreferences databaseSharedPreferences;
            long j2;
            DatabaseSharedPreferences.this.f39407c.lock();
            try {
                synchronized (this.f39417a) {
                    try {
                        z = this.f39419c;
                        if (z) {
                            DatabaseSharedPreferences.this.f39408e.clear();
                            DatabaseSharedPreferences.this.f39409f = true;
                            this.f39419c = false;
                        }
                        immutableMapD = ImmutableMap.d(this.f39418b);
                        DatabaseSharedPreferences.this.f39408e.putAll(immutableMapD);
                        this.f39418b.clear();
                        databaseSharedPreferences = DatabaseSharedPreferences.this;
                        j2 = 1 + databaseSharedPreferences.d;
                        databaseSharedPreferences.d = j2;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                databaseSharedPreferences.f39407c.unlock();
                ListenableFutureTask listenableFutureTaskCreate = ListenableFutureTask.create(DatabaseSharedPreferences.this.new a(z, immutableMapD, j2));
                DatabaseSharedPreferences.f39404i.execute(listenableFutureTaskCreate);
                return listenableFutureTaskCreate;
            } catch (Throwable th2) {
                DatabaseSharedPreferences.this.f39407c.unlock();
                throw th2;
            }
        }

        @Override // android.content.SharedPreferences.Editor
        public final void apply() {
            a();
        }

        @Override // android.content.SharedPreferences.Editor
        public final SharedPreferences.Editor clear() {
            synchronized (this.f39417a) {
                this.f39419c = true;
            }
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public final boolean commit() {
            Threads.b();
            return ((Boolean) MoreFutures.b(a())).booleanValue();
        }

        @Override // android.content.SharedPreferences.Editor
        public final SharedPreferences.Editor putBoolean(String str, boolean z) {
            Objects.requireNonNull(str);
            synchronized (this.f39417a) {
                this.f39418b.put(str, Boolean.valueOf(z));
            }
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public final SharedPreferences.Editor putFloat(String str, float f2) {
            Objects.requireNonNull(str);
            synchronized (this.f39417a) {
                this.f39418b.put(str, Float.valueOf(f2));
            }
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public final SharedPreferences.Editor putInt(String str, int i2) {
            Objects.requireNonNull(str);
            synchronized (this.f39417a) {
                this.f39418b.put(str, Integer.valueOf(i2));
            }
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public final SharedPreferences.Editor putLong(String str, long j2) {
            Objects.requireNonNull(str);
            synchronized (this.f39417a) {
                this.f39418b.put(str, Long.valueOf(j2));
            }
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public final SharedPreferences.Editor putString(String str, String str2) {
            Objects.requireNonNull(str);
            synchronized (this.f39417a) {
                this.f39418b.put(str, str2 != null ? str2 : DatabaseSharedPreferences.f39405j);
            }
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public final SharedPreferences.Editor putStringSet(String str, Set set) {
            Objects.requireNonNull(str);
            synchronized (this.f39417a) {
                try {
                    this.f39418b.put(str, set != null ? ImmutableSet.q(set) : DatabaseSharedPreferences.f39405j);
                } catch (Throwable th) {
                    throw th;
                }
            }
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public final SharedPreferences.Editor remove(String str) {
            Objects.requireNonNull(str);
            synchronized (this.f39417a) {
                this.f39418b.put(str, DatabaseSharedPreferences.f39405j);
            }
            return this;
        }
    }

    public DatabaseSharedPreferences(String str) {
        ReentrantReadWriteLock reentrantReadWriteLock = new ReentrantReadWriteLock(true);
        this.f39406b = reentrantReadWriteLock.readLock();
        this.f39407c = reentrantReadWriteLock.writeLock();
        this.f39408e = new HashMap();
        Context contextB = PfCommons.b();
        Objects.requireNonNull(str);
        this.g = new c(contextB, str, null, 1);
    }

    public static DatabaseSharedPreferences a(String str) {
        return (DatabaseSharedPreferences) f39403h.a(str);
    }

    @Override // android.content.SharedPreferences
    public final boolean contains(String str) {
        Threads.b();
        Objects.requireNonNull(str);
        Lock lock = this.f39406b;
        lock.lock();
        try {
            boolean z = this.f39409f;
            boolean z2 = false;
            Object obj = f39405j;
            HashMap map = this.f39408e;
            if (!z) {
                if (map.containsKey(str)) {
                    return map.get(str) != obj;
                }
                return this.g.j(str);
            }
            if (map.containsKey(str) && map.get(str) != obj) {
                z2 = true;
            }
            return z2;
        } finally {
            lock.unlock();
        }
    }

    @Override // android.content.SharedPreferences
    public final SharedPreferences.Editor edit() {
        return new d();
    }

    @Override // android.content.SharedPreferences
    public final Map getAll() {
        Threads.b();
        Lock lock = this.f39406b;
        lock.lock();
        try {
            boolean z = this.f39409f;
            HashMap map = this.f39408e;
            if (z) {
                HashMap map2 = new HashMap(map);
                lock.unlock();
                return map2;
            }
            HashMap map3 = new HashMap(this.g.h());
            for (Map.Entry entry : map.entrySet()) {
                String str = (String) entry.getKey();
                Object value = entry.getValue();
                if (value == f39405j) {
                    map3.remove(str);
                } else {
                    map3.put(str, value);
                }
            }
            lock.unlock();
            return map3;
        } catch (Throwable th) {
            lock.unlock();
            throw th;
        }
    }

    @Override // android.content.SharedPreferences
    public final boolean getBoolean(String str, boolean z) {
        Threads.b();
        Objects.requireNonNull(str);
        Lock lock = this.f39406b;
        lock.lock();
        try {
            boolean z2 = this.f39409f;
            HashMap map = this.f39408e;
            if (z2 && !map.containsKey(str)) {
                return z;
            }
            if (!map.containsKey(str)) {
                Optional optionalN = this.g.n(str, "boolean");
                if (optionalN.d()) {
                    z = Boolean.parseBoolean((String) optionalN.c());
                }
                return z;
            }
            Object obj = map.get(str);
            if (obj != f39405j) {
                Objects.requireNonNull(obj);
                z = ((Boolean) obj).booleanValue();
            }
            return z;
        } finally {
            lock.unlock();
        }
    }

    @Override // android.content.SharedPreferences
    public final float getFloat(String str, float f2) {
        Threads.b();
        Objects.requireNonNull(str);
        Lock lock = this.f39406b;
        lock.lock();
        try {
            boolean z = this.f39409f;
            HashMap map = this.f39408e;
            if (z && !map.containsKey(str)) {
                return f2;
            }
            if (!map.containsKey(str)) {
                Optional optionalN = this.g.n(str, "float");
                if (optionalN.d()) {
                    f2 = Float.parseFloat((String) optionalN.c());
                }
                return f2;
            }
            Object obj = map.get(str);
            if (obj != f39405j) {
                Objects.requireNonNull(obj);
                f2 = ((Float) obj).floatValue();
            }
            return f2;
        } finally {
            lock.unlock();
        }
    }

    @Override // android.content.SharedPreferences
    public final int getInt(String str, int i2) {
        Threads.b();
        Objects.requireNonNull(str);
        Lock lock = this.f39406b;
        lock.lock();
        try {
            boolean z = this.f39409f;
            HashMap map = this.f39408e;
            if (z && !map.containsKey(str)) {
                return i2;
            }
            if (!map.containsKey(str)) {
                Optional optionalN = this.g.n(str, "int");
                if (optionalN.d()) {
                    i2 = Integer.parseInt((String) optionalN.c());
                }
                return i2;
            }
            Object obj = map.get(str);
            if (obj != f39405j) {
                Objects.requireNonNull(obj);
                i2 = ((Integer) obj).intValue();
            }
            return i2;
        } finally {
            lock.unlock();
        }
    }

    @Override // android.content.SharedPreferences
    public final long getLong(String str, long j2) {
        Threads.b();
        Objects.requireNonNull(str);
        Lock lock = this.f39406b;
        lock.lock();
        try {
            boolean z = this.f39409f;
            HashMap map = this.f39408e;
            if (z && !map.containsKey(str)) {
                return j2;
            }
            if (!map.containsKey(str)) {
                Optional optionalN = this.g.n(str, "long");
                if (optionalN.d()) {
                    j2 = Long.parseLong((String) optionalN.c());
                }
                return j2;
            }
            Object obj = map.get(str);
            if (obj != f39405j) {
                Objects.requireNonNull(obj);
                j2 = ((Long) obj).longValue();
            }
            return j2;
        } finally {
            lock.unlock();
        }
    }

    @Override // android.content.SharedPreferences
    public final String getString(String str, String str2) {
        Threads.b();
        Objects.requireNonNull(str);
        Lock lock = this.f39406b;
        lock.lock();
        try {
            boolean z = this.f39409f;
            HashMap map = this.f39408e;
            if (z && !map.containsKey(str)) {
                return str2;
            }
            if (map.containsKey(str)) {
                Object obj = map.get(str);
                if (obj != f39405j) {
                    str2 = (String) obj;
                }
                return str2;
            }
            Optional optionalN = this.g.n(str, "String");
            if (optionalN.d()) {
                str2 = (String) optionalN.c();
            }
            return str2;
        } finally {
            lock.unlock();
        }
    }

    @Override // android.content.SharedPreferences
    public final Set getStringSet(String str, Set set) {
        Threads.b();
        Objects.requireNonNull(str);
        Lock lock = this.f39406b;
        lock.lock();
        try {
            boolean z = this.f39409f;
            HashMap map = this.f39408e;
            if (z && !map.containsKey(str)) {
                return set;
            }
            if (map.containsKey(str)) {
                Object obj = map.get(str);
                if (obj != f39405j) {
                    set = (Set) obj;
                }
                return set;
            }
            Optional optionalN = this.g.n(str, "Set<String>");
            if (optionalN.d()) {
                set = (Set) c.f39413b.j((String) optionalN.c(), c.f39414c);
            }
            return set;
        } finally {
            lock.unlock();
        }
    }

    @Override // android.content.SharedPreferences
    public final void registerOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        throw new UnsupportedOperationException();
    }

    @Override // android.content.SharedPreferences
    public final void unregisterOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        throw new UnsupportedOperationException();
    }
}
