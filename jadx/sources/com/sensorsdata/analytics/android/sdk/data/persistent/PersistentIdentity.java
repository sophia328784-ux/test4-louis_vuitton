package com.sensorsdata.analytics.android.sdk.data.persistent;

import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.SensorsDataAPI;
import com.sensorsdata.analytics.android.sdk.plugin.encrypt.SAStoreManager;

/* JADX INFO: loaded from: classes3.dex */
public abstract class PersistentIdentity<T> {
    private static final String TAG = "SA.PersistentIdentity";
    private T item;
    private final String persistentKey;
    private final SAStoreManager saStoreManager = SAStoreManager.getInstance();
    private final PersistentSerializer serializer;

    public interface PersistentSerializer<T> {
        T create();

        T load(String str);

        String save(T t);
    }

    public PersistentIdentity(String str, PersistentSerializer<T> persistentSerializer) {
        this.serializer = persistentSerializer;
        this.persistentKey = str;
    }

    public void commit(T t) {
        if (SensorsDataAPI.getConfigOptions().isDisableSDK()) {
            return;
        }
        this.item = t;
        synchronized (this.saStoreManager) {
            try {
                if (this.item == null) {
                    this.item = (T) this.serializer.create();
                }
                this.saStoreManager.setString(this.persistentKey, this.serializer.save(this.item));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public T get() {
        if (this.item == null) {
            synchronized (this.saStoreManager) {
                try {
                    String string = this.saStoreManager.getString(this.persistentKey, null);
                    PersistentSerializer persistentSerializer = this.serializer;
                    if (string == null) {
                        T t = (T) persistentSerializer.create();
                        this.item = t;
                        commit(t);
                    } else {
                        this.item = (T) persistentSerializer.load(string);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.item;
    }

    public boolean isExists() {
        try {
            return this.saStoreManager.isExists(this.persistentKey);
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
            return false;
        }
    }

    public void remove() {
        synchronized (this.saStoreManager) {
            this.saStoreManager.remove(this.persistentKey);
        }
    }
}
