package com.google.firebase.heartbeatinfo;

import android.util.Base64OutputStream;
import androidx.datastore.preferences.core.MutablePreferences;
import androidx.datastore.preferences.core.Preferences;
import com.google.firebase.datastorage.JavaDataStorageKt;
import com.google.firebase.platforminfo.UserAgentPublisher;
import com.linkplay.medialib.ContentTree;
import java.io.ByteArrayOutputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.zip.GZIPOutputStream;
import kotlin.jvm.functions.Function1;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class b implements Callable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f35140b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ DefaultHeartBeatController f35141c;

    public /* synthetic */ b(DefaultHeartBeatController defaultHeartBeatController, int i2) {
        this.f35140b = i2;
        this.f35141c = defaultHeartBeatController;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        String string;
        switch (this.f35140b) {
            case 0:
                DefaultHeartBeatController defaultHeartBeatController = this.f35141c;
                synchronized (defaultHeartBeatController) {
                    try {
                        HeartBeatInfoStorage heartBeatInfoStorage = (HeartBeatInfoStorage) defaultHeartBeatController.f35131a.get();
                        ArrayList arrayListA = heartBeatInfoStorage.a();
                        synchronized (heartBeatInfoStorage) {
                            heartBeatInfoStorage.f35137a.a(new d());
                        }
                        JSONArray jSONArray = new JSONArray();
                        for (int i2 = 0; i2 < arrayListA.size(); i2++) {
                            HeartBeatResult heartBeatResult = (HeartBeatResult) arrayListA.get(i2);
                            JSONObject jSONObject = new JSONObject();
                            jSONObject.put("agent", heartBeatResult.b());
                            jSONObject.put("dates", new JSONArray((Collection) heartBeatResult.a()));
                            jSONArray.put(jSONObject);
                        }
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put("heartbeats", jSONArray);
                        jSONObject2.put("version", ContentTree.AUDIO_ID);
                        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                        Base64OutputStream base64OutputStream = new Base64OutputStream(byteArrayOutputStream, 11);
                        try {
                            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(base64OutputStream);
                            try {
                                gZIPOutputStream.write(jSONObject2.toString().getBytes("UTF-8"));
                                gZIPOutputStream.close();
                                base64OutputStream.close();
                                string = byteArrayOutputStream.toString("UTF-8");
                            } catch (Throwable th) {
                                try {
                                    gZIPOutputStream.close();
                                    break;
                                } catch (Throwable th2) {
                                    th.addSuppressed(th2);
                                }
                                throw th;
                            }
                        } catch (Throwable th3) {
                            try {
                                base64OutputStream.close();
                                break;
                            } catch (Throwable th4) {
                                th3.addSuppressed(th4);
                            }
                            throw th3;
                        }
                    } catch (Throwable th5) {
                        throw th5;
                    }
                }
                return string;
            default:
                DefaultHeartBeatController defaultHeartBeatController2 = this.f35141c;
                synchronized (defaultHeartBeatController2) {
                    final HeartBeatInfoStorage heartBeatInfoStorage2 = (HeartBeatInfoStorage) defaultHeartBeatController2.f35131a.get();
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    final String strA = ((UserAgentPublisher) defaultHeartBeatController2.f35133c.get()).a();
                    synchronized (heartBeatInfoStorage2) {
                        final String strB = HeartBeatInfoStorage.b(jCurrentTimeMillis);
                        strA.getClass();
                        final Preferences.Key key = new Preferences.Key(strA);
                        heartBeatInfoStorage2.f35137a.a(new Function1(heartBeatInfoStorage2, strB, strA, key) { // from class: com.google.firebase.heartbeatinfo.c

                            /* JADX INFO: renamed from: b, reason: collision with root package name */
                            public final /* synthetic */ String f35142b;

                            /* JADX INFO: renamed from: c, reason: collision with root package name */
                            public final /* synthetic */ String f35143c;
                            public final /* synthetic */ Preferences.Key d;

                            {
                                this.f35142b = strB;
                                this.f35143c = strA;
                                this.d = key;
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj) {
                                Object obj2;
                                MutablePreferences mutablePreferences = (MutablePreferences) obj;
                                Preferences.Key key2 = HeartBeatInfoStorage.f35135b;
                                Preferences.Key key3 = HeartBeatInfoStorage.f35136c;
                                Preferences.Key key4 = HeartBeatInfoStorage.d;
                                String str = "";
                                String str2 = (String) JavaDataStorageKt.a(mutablePreferences, key4, "");
                                String str3 = this.f35142b;
                                boolean zEquals = str2.equals(str3);
                                Preferences.Key key5 = this.d;
                                Object obj3 = null;
                                if (zEquals) {
                                    Preferences.Key keyC = HeartBeatInfoStorage.c(mutablePreferences, str3);
                                    if (keyC == null || keyC.f12885a.equals(this.f35143c)) {
                                        return null;
                                    }
                                    HeartBeatInfoStorage.d(mutablePreferences, str3);
                                    HashSet hashSet = new HashSet((Collection) JavaDataStorageKt.a(mutablePreferences, key5, new HashSet()));
                                    hashSet.add(str3);
                                    mutablePreferences.f(key5, hashSet);
                                    return null;
                                }
                                long jLongValue = ((Long) JavaDataStorageKt.a(mutablePreferences, key3, 0L)).longValue();
                                if (jLongValue + 1 == 30) {
                                    long jLongValue2 = ((Long) JavaDataStorageKt.a(mutablePreferences, key3, 0L)).longValue();
                                    Set hashSet2 = new HashSet();
                                    String str4 = null;
                                    for (Map.Entry entry : mutablePreferences.a().entrySet()) {
                                        if (entry.getValue() instanceof Set) {
                                            Set<String> set = (Set) entry.getValue();
                                            for (String str5 : set) {
                                                Object obj4 = obj3;
                                                if (str4 == null || str4.compareTo(str5) > 0) {
                                                    str = ((Preferences.Key) entry.getKey()).f12885a;
                                                    str4 = str5;
                                                    hashSet2 = set;
                                                }
                                                obj3 = obj4;
                                            }
                                        }
                                        obj3 = obj3;
                                    }
                                    obj2 = obj3;
                                    HashSet hashSet3 = new HashSet(hashSet2);
                                    hashSet3.remove(str4);
                                    str.getClass();
                                    mutablePreferences.f(new Preferences.Key(str), hashSet3);
                                    jLongValue = jLongValue2 - 1;
                                    mutablePreferences.f(key3, Long.valueOf(jLongValue));
                                } else {
                                    obj2 = null;
                                }
                                HashSet hashSet4 = new HashSet((Collection) JavaDataStorageKt.a(mutablePreferences, key5, new HashSet()));
                                hashSet4.add(str3);
                                mutablePreferences.f(key5, hashSet4);
                                mutablePreferences.f(key3, Long.valueOf(jLongValue + 1));
                                mutablePreferences.f(key4, str3);
                                return obj2;
                            }
                        });
                    }
                }
                return null;
        }
    }
}
