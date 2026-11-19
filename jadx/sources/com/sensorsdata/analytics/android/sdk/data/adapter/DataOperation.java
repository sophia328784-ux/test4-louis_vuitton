package com.sensorsdata.analytics.android.sdk.data.adapter;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.linkplay.medialib.ContentTree;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.SensorsDataAPI;
import defpackage.n00;
import java.io.File;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
abstract class DataOperation {
    String TAG = "EventDataOperation";
    ContentResolver contentResolver;
    private final Context mContext;
    private File mDatabaseFile;

    public DataOperation(Context context) {
        this.mContext = context;
        this.contentResolver = context.getContentResolver();
    }

    private boolean belowMemThreshold() {
        if (this.mDatabaseFile == null) {
            this.mDatabaseFile = this.mContext.getDatabasePath(DbParams.DATABASE_NAME);
        }
        return this.mDatabaseFile.exists() && this.mDatabaseFile.length() >= getMaxCacheSize(this.mContext);
    }

    private String buildIds(JSONArray jSONArray) throws JSONException {
        StringBuilder sbT = n00.t("(");
        if (jSONArray != null && jSONArray.length() > 0) {
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                sbT.append(jSONArray.get(i2));
                sbT.append(",");
            }
            sbT.replace(sbT.length() - 1, sbT.length(), "");
        }
        sbT.append(")");
        return sbT.toString();
    }

    private long getMaxCacheSize(Context context) {
        try {
            return SensorsDataAPI.sharedInstance(context).getMaxCacheSize();
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
            return 33554432L;
        }
    }

    public void deleteData(Uri uri, JSONArray jSONArray) {
        try {
            SALog.i(this.TAG, "deleteData ids = " + jSONArray);
            this.mContext.getContentResolver().delete(uri, "_id in " + buildIds(jSONArray), null);
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
        }
    }

    public int deleteDataLowMemory(Uri uri) {
        if (belowMemThreshold()) {
            SALog.i(this.TAG, "There is not enough space left on the device to store events, so will delete 100 oldest events");
            String[] strArrQueryData = queryData(uri, 100);
            if (strArrQueryData == null) {
                return -2;
            }
            deleteData(uri, strArrQueryData[0]);
            if (queryDataCount(uri, 2) <= 0) {
                return -2;
            }
        }
        return 0;
    }

    public String getFirstRowId(Uri uri, String str) {
        Cursor cursorQuery = null;
        try {
            try {
                cursorQuery = this.contentResolver.query(uri, new String[]{"_id"}, "is_instant_event=?", new String[]{str}, "created_at ASC LIMIT 1");
                if (cursorQuery != null) {
                    String string = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("_id"));
                    cursorQuery.close();
                    return string;
                }
                if (cursorQuery == null) {
                    return "";
                }
                cursorQuery.close();
                return "";
            } catch (Exception e2) {
                SALog.printStackTrace(e2);
                if (cursorQuery == null) {
                    return "";
                }
            }
        } catch (Throwable th) {
            if (cursorQuery == null) {
                throw th;
            }
            cursorQuery.close();
            throw th;
        }
    }

    public abstract int insertData(Uri uri, ContentValues contentValues);

    public abstract int insertData(Uri uri, JSONObject jSONObject);

    public String parseData(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return "";
            }
            int iLastIndexOf = str.lastIndexOf("\t");
            if (iLastIndexOf <= -1) {
                return str;
            }
            String strReplaceFirst = str.substring(iLastIndexOf).replaceFirst("\t", "");
            str = str.substring(0, iLastIndexOf);
            return (TextUtils.isEmpty(str) || TextUtils.isEmpty(strReplaceFirst) || !strReplaceFirst.equals(String.valueOf(str.hashCode()))) ? "" : str;
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
            return str;
        }
    }

    public abstract String[] queryData(Uri uri, int i2);

    public abstract String[] queryData(Uri uri, boolean z, int i2);

    public int queryDataCount(Uri uri, int i2) {
        String[] strArr;
        if (i2 != 0) {
            strArr = i2 != 1 ? null : new String[]{"1"};
        } else {
            strArr = new String[]{ContentTree.ROOT_ID};
        }
        String[] strArr2 = strArr;
        return strArr2 != null ? queryDataCount(uri, new String[]{"_id"}, "is_instant_event=?", strArr2, null) : queryDataCount(uri, new String[]{"_id"}, null, null, null);
    }

    public void deleteData(Uri uri, String str) {
        try {
            if ("DB_DELETE_ALL".equals(str)) {
                SALog.i(this.TAG, "deleteData DB_DELETE_ALL");
                this.contentResolver.delete(uri, null, null);
            } else {
                this.contentResolver.delete(uri, "_id <= ?", new String[]{str});
            }
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
        }
    }

    public int queryDataCount(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        Cursor cursorQuery = null;
        try {
            try {
                cursorQuery = this.contentResolver.query(uri, strArr, str, strArr2, str2);
                if (cursorQuery != null) {
                    int count = cursorQuery.getCount();
                    cursorQuery.close();
                    return count;
                }
                if (cursorQuery == null) {
                    return 0;
                }
                cursorQuery.close();
                return 0;
            } catch (Exception e2) {
                SALog.printStackTrace(e2);
                if (cursorQuery == null) {
                    return 0;
                }
            }
        } catch (Throwable th) {
            if (cursorQuery != null) {
                cursorQuery.close();
                throw th;
            }
            throw th;
        }
    }
}
