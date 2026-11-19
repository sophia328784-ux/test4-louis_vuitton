package com.sensorsdata.analytics.android.sdk.util;

import android.text.TextUtils;
import android.util.LruCache;
import android.view.View;

/* JADX INFO: loaded from: classes3.dex */
public class SnapCache {
    private static volatile SnapCache mSnapCache;
    private final LruCache<String, ViewTempInfo> mLruViewInfo = new LruCache<>(64);
    private final LruCache<String, String> mLruCanonicalName = new LruCache<>(64);

    public static class ViewTempInfo {
        public String selectPath;
        public String viewType;
    }

    private SnapCache() {
    }

    public static SnapCache getInstance() {
        if (mSnapCache == null) {
            synchronized (SnapCache.class) {
                try {
                    if (mSnapCache == null) {
                        mSnapCache = new SnapCache();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return mSnapCache;
    }

    public String getCanonicalName(Class<?> cls) {
        if (cls == null) {
            return null;
        }
        String canonicalName = this.mLruCanonicalName.get(cls.hashCode() + "");
        if (canonicalName == null) {
            canonicalName = cls.getCanonicalName();
            if (TextUtils.isEmpty(canonicalName)) {
                canonicalName = "Anonymous";
            }
            this.mLruCanonicalName.put(cls.hashCode() + "", canonicalName);
        }
        return canonicalName;
    }

    public String getSelectPath(View view) {
        if (view == null) {
            return null;
        }
        ViewTempInfo viewTempInfo = this.mLruViewInfo.get(view.hashCode() + "");
        if (viewTempInfo != null) {
            return viewTempInfo.selectPath;
        }
        return null;
    }

    public String getViewId(View view) {
        return null;
    }

    public String getViewText(View view) {
        return null;
    }

    public String getViewType(View view) {
        if (view == null) {
            return null;
        }
        ViewTempInfo viewTempInfo = this.mLruViewInfo.get(view.hashCode() + "");
        if (viewTempInfo != null) {
            return viewTempInfo.viewType;
        }
        return null;
    }

    public void setSelectPath(View view, String str) {
        if (view == null || str == null || str.equals("")) {
            return;
        }
        String str2 = view.hashCode() + "";
        ViewTempInfo viewTempInfo = this.mLruViewInfo.get(str2);
        if (viewTempInfo == null) {
            viewTempInfo = new ViewTempInfo();
        }
        viewTempInfo.selectPath = str;
        this.mLruViewInfo.put(str2, viewTempInfo);
    }

    public void setViewId(View view, String str) {
    }

    public void setViewText(View view, String str) {
    }

    public void setViewType(View view, String str) {
        if (view == null || str == null) {
            return;
        }
        String str2 = view.hashCode() + "";
        ViewTempInfo viewTempInfo = this.mLruViewInfo.get(str2);
        if (viewTempInfo == null) {
            viewTempInfo = new ViewTempInfo();
        }
        viewTempInfo.viewType = str;
        this.mLruViewInfo.put(str2, viewTempInfo);
    }
}
