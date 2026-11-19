package com.sensorsdata.analytics.android.sdk.data.adapter;

import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.sensorsdata.analytics.android.sdk.SALog;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
class PersistentDataOperation extends DataOperation {
    public PersistentDataOperation(Context context) {
        super(context);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private int handleInsertUri(Uri uri, JSONObject jSONObject) {
        if (uri == null) {
            return -1;
        }
        try {
            ContentValues contentValues = new ContentValues();
            String path = uri.getPath();
            if (TextUtils.isEmpty(path)) {
                return 0;
            }
            String strSubstring = path.substring(1);
            switch (strSubstring) {
                case "activity_started_count":
                    contentValues.put(DbParams.TABLE_ACTIVITY_START_COUNT, Integer.valueOf(jSONObject.optInt("value")));
                    this.contentResolver.insert(uri, contentValues);
                    return 0;
                case "events_login_id":
                    contentValues.put(DbParams.PersistentName.LOGIN_ID, jSONObject.optString("value"));
                    this.contentResolver.insert(uri, contentValues);
                    return 0;
                case "session_interval_time":
                    contentValues.put(DbParams.TABLE_SESSION_INTERVAL_TIME, Long.valueOf(jSONObject.optLong("value")));
                    this.contentResolver.insert(uri, contentValues);
                    return 0;
                case "first_process_start":
                    contentValues.put(DbParams.TABLE_FIRST_PROCESS_START, Boolean.valueOf(jSONObject.optBoolean("value")));
                    this.contentResolver.insert(uri, contentValues);
                    return 0;
                case "login_id_key":
                    contentValues.put(DbParams.PersistentName.PERSISTENT_LOGIN_ID_KEY, jSONObject.optString("value"));
                    this.contentResolver.insert(uri, contentValues);
                    return 0;
                case "user_ids":
                    contentValues.put(DbParams.PersistentName.PERSISTENT_USER_ID, jSONObject.optString("value"));
                    this.contentResolver.insert(uri, contentValues);
                    return 0;
                case "app_start_time":
                    contentValues.put(DbParams.TABLE_APP_START_TIME, Long.valueOf(jSONObject.optLong("value")));
                    this.contentResolver.insert(uri, contentValues);
                    return 0;
                case "app_exit_data":
                    contentValues.put(DbParams.APP_EXIT_DATA, jSONObject.optString("value"));
                    this.contentResolver.insert(uri, contentValues);
                    return 0;
                case "sensorsdata_sdk_configuration":
                    contentValues.put(DbParams.PersistentName.REMOTE_CONFIG, jSONObject.optString("value"));
                    this.contentResolver.insert(uri, contentValues);
                    return 0;
                case "push_key":
                    contentValues.put(DbParams.PUSH_ID_KEY, jSONObject.optString(DbParams.PUSH_ID_KEY));
                    contentValues.put(DbParams.PUSH_ID_VALUE, jSONObject.optString(DbParams.PUSH_ID_VALUE));
                    this.contentResolver.insert(uri, contentValues);
                    return 0;
                case "sub_process_flush_data":
                    contentValues.put(DbParams.PersistentName.SUB_PROCESS_FLUSH_DATA, Boolean.valueOf(jSONObject.optBoolean("value")));
                    this.contentResolver.insert(uri, contentValues);
                    return 0;
                default:
                    if (strSubstring.equals(DbParams.TABLE_ACTIVITY_START_COUNT)) {
                        contentValues.put(DbParams.TABLE_ACTIVITY_START_COUNT, Integer.valueOf(jSONObject.optInt("value")));
                        this.contentResolver.insert(uri, contentValues);
                        return 0;
                    }
                    return -1;
            }
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
            return 0;
        }
    }

    /* JADX WARN: Code duplicated, block: B:72:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:77:? A[SYNTHETIC] */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x008c, code lost:
    
        if (r0.equals(com.sensorsdata.analytics.android.sdk.data.adapter.DbParams.TABLE_SESSION_INTERVAL_TIME) != false) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00a4, code lost:
    
        if (r0.equals(com.sensorsdata.analytics.android.sdk.data.adapter.DbParams.PersistentName.LOGIN_ID) != false) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00b8, code lost:
    
        if (r0.equals(com.sensorsdata.analytics.android.sdk.data.adapter.DbParams.TABLE_ACTIVITY_START_COUNT) != false) goto L56;
     */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r1v2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String[] handleQueryUri(android.net.Uri r9) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 278
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sensorsdata.analytics.android.sdk.data.adapter.PersistentDataOperation.handleQueryUri(android.net.Uri):java.lang.String[]");
    }

    @Override // com.sensorsdata.analytics.android.sdk.data.adapter.DataOperation
    public void deleteData(Uri uri, String str) {
        this.contentResolver.delete(uri.buildUpon().appendQueryParameter(DbParams.REMOVE_SP_KEY, str).build(), null, null);
    }

    @Override // com.sensorsdata.analytics.android.sdk.data.adapter.DataOperation
    public int insertData(Uri uri, ContentValues contentValues) {
        this.contentResolver.insert(uri, contentValues);
        return 0;
    }

    @Override // com.sensorsdata.analytics.android.sdk.data.adapter.DataOperation
    public String[] queryData(Uri uri, int i2) {
        return handleQueryUri(uri);
    }

    @Override // com.sensorsdata.analytics.android.sdk.data.adapter.DataOperation
    public String[] queryData(Uri uri, boolean z, int i2) {
        return handleQueryUri(uri);
    }

    @Override // com.sensorsdata.analytics.android.sdk.data.adapter.DataOperation
    public int insertData(Uri uri, JSONObject jSONObject) {
        return handleInsertUri(uri, jSONObject);
    }
}
