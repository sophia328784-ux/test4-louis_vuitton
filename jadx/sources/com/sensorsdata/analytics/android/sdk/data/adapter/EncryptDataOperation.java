package com.sensorsdata.analytics.android.sdk.data.adapter;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.linkplay.medialib.ContentTree;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.core.business.instantevent.InstantEventUtils;
import com.sensorsdata.analytics.android.sdk.core.mediator.Modules;
import com.sensorsdata.analytics.android.sdk.core.mediator.SAModuleManager;
import com.sensorsdata.analytics.android.sdk.util.JSONUtils;
import java.util.HashMap;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
class EncryptDataOperation extends DataOperation {
    protected boolean mDbEncrypt;

    public EncryptDataOperation(Context context) {
        super(context);
        this.mDbEncrypt = true;
    }

    private String decryptValue(String str) {
        String str2 = (String) SAModuleManager.getInstance().invokeModuleFunction(Modules.Encrypt.MODULE_NAME, Modules.Encrypt.METHOD_LOAD_EVENT, str);
        return TextUtils.isEmpty(str2) ? str : str2;
    }

    @Override // com.sensorsdata.analytics.android.sdk.data.adapter.DataOperation
    public void deleteData(Uri uri, String str) {
        super.deleteData(uri, str);
    }

    @Override // com.sensorsdata.analytics.android.sdk.data.adapter.DataOperation
    public int insertData(Uri uri, JSONObject jSONObject) {
        try {
            if (deleteDataLowMemory(uri) != 0) {
                return -2;
            }
            int iIsInstantEvent = InstantEventUtils.isInstantEvent(jSONObject);
            JSONObject jSONObject2 = (JSONObject) SAModuleManager.getInstance().invokeModuleFunction(Modules.Encrypt.MODULE_NAME, Modules.Encrypt.METHOD_ENCRYPT_EVENT_DATA, jSONObject);
            if (jSONObject2 != null) {
                jSONObject = jSONObject2;
            }
            ContentValues contentValues = new ContentValues();
            contentValues.put(DbParams.KEY_DATA, jSONObject.toString() + "\t" + jSONObject.toString().hashCode());
            contentValues.put(DbParams.KEY_CREATED_AT, Long.valueOf(System.currentTimeMillis()));
            contentValues.put(DbParams.KEY_IS_INSTANT_EVENT, Integer.valueOf(iIsInstantEvent));
            this.contentResolver.insert(uri, contentValues);
            return 0;
        } catch (Throwable th) {
            SALog.i(this.TAG, th.getMessage());
            return 0;
        }
    }

    /* JADX WARN: Code duplicated, block: B:74:0x01cb  */
    /* JADX WARN: Code duplicated, block: B:81:0x01e2  */
    /* JADX WARN: Code duplicated, block: B:84:0x01eb  */
    /* JADX WARN: Code duplicated, block: B:86:0x01f0 A[RETURN] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v28 */
    /* JADX WARN: Type inference failed for: r0v33 */
    /* JADX WARN: Type inference failed for: r0v34 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v0, types: [com.sensorsdata.analytics.android.sdk.data.adapter.DataOperation] */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v21 */
    /* JADX WARN: Type inference failed for: r1v25 */
    /* JADX WARN: Type inference failed for: r1v26 */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v4, types: [com.sensorsdata.analytics.android.sdk.data.adapter.DataOperation, com.sensorsdata.analytics.android.sdk.data.adapter.EncryptDataOperation] */
    /* JADX WARN: Type inference failed for: r1v5 */
    @Override // com.sensorsdata.analytics.android.sdk.data.adapter.DataOperation
    public String[] queryData(Uri uri, boolean z, int i2) throws Throwable {
        Cursor cursor;
        String str;
        String[] strArr;
        Cursor cursorQuery;
        ?? string;
        String str2;
        Object obj;
        Object string2;
        ?? r1 = this;
        JSONArray jSONArray = new JSONArray();
        JSONArray jSONArray2 = new JSONArray();
        String str3 = DbParams.GZIP_DATA_ENCRYPT;
        try {
            HashMap map = new HashMap();
            JSONArray jSONArray3 = new JSONArray();
            String str4 = ContentTree.ROOT_ID;
            if (z) {
                str4 = "1";
            }
            cursorQuery = r1.contentResolver.query(uri, null, "is_instant_event=?", new String[]{str4}, "created_at ASC LIMIT " + i2);
            if (cursorQuery != null) {
                while (cursorQuery.moveToNext()) {
                    try {
                        try {
                            try {
                                String string3 = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("_id"));
                                String data = r1.parseData(cursorQuery.getString(cursorQuery.getColumnIndexOrThrow(DbParams.KEY_DATA)));
                                if (!TextUtils.isEmpty(data)) {
                                    if (JSONUtils.isJson(data)) {
                                        JSONObject jSONObject = new JSONObject(data);
                                        boolean zHas = jSONObject.has("ekey");
                                        if (!jSONObject.has("payloads") || zHas) {
                                            strArr = null;
                                        } else {
                                            strArr = null;
                                            try {
                                                jSONObject = new JSONObject(r1.decryptValue(jSONObject.optString("payloads")));
                                            } catch (Exception e2) {
                                                e = e2;
                                                str = str3;
                                                try {
                                                    SALog.printStackTrace(e);
                                                    r1 = this;
                                                    str3 = str;
                                                } catch (Exception e3) {
                                                    e = e3;
                                                    r1 = strArr;
                                                    SALog.printStackTrace(e);
                                                    if (cursorQuery != null) {
                                                        cursorQuery.close();
                                                    }
                                                    string = strArr;
                                                    str2 = str;
                                                    if (string != 0) {
                                                        return new String[]{string, r1, str2};
                                                    }
                                                    return strArr;
                                                }
                                            }
                                        }
                                        if (zHas || !r1.mDbEncrypt) {
                                            str = str3;
                                        } else {
                                            str = str3;
                                            try {
                                                JSONObject jSONObject2 = (JSONObject) SAModuleManager.getInstance().invokeModuleFunction(Modules.Encrypt.MODULE_NAME, Modules.Encrypt.METHOD_ENCRYPT_EVENT_DATA, jSONObject);
                                                if (jSONObject2 != null) {
                                                    jSONObject = jSONObject2;
                                                }
                                            } catch (Exception e4) {
                                                e = e4;
                                                SALog.printStackTrace(e);
                                            }
                                        }
                                        if (jSONObject.has("ekey")) {
                                            String str5 = jSONObject.getString("ekey") + "$" + jSONObject.getInt("pkv");
                                            if (map.containsKey(str5)) {
                                                ((JSONArray) map.get(str5)).put(jSONObject.optString("payloads"));
                                            } else {
                                                JSONArray jSONArray4 = new JSONArray();
                                                jSONArray4.put(jSONObject.optString("payloads"));
                                                map.put(str5, jSONArray4);
                                            }
                                            jSONArray.put(string3);
                                        } else {
                                            jSONObject.put("_flush_time", System.currentTimeMillis());
                                            jSONArray3.put(jSONObject);
                                            jSONArray2.put(string3);
                                        }
                                        r1 = this;
                                        str3 = str;
                                    } else {
                                        SALog.i(r1.TAG, "Error is not json data, v = " + data);
                                    }
                                }
                            } catch (Exception e5) {
                                e = e5;
                                str = str3;
                                strArr = null;
                            }
                        } catch (Exception e6) {
                            e = e6;
                            str = str3;
                            strArr = null;
                        }
                    } catch (Throwable th) {
                        th = th;
                        cursor = cursorQuery;
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th;
                    }
                }
                str = str3;
                strArr = null;
                try {
                    if (map.size() > 0) {
                        JSONArray jSONArray5 = new JSONArray();
                        for (String str6 : map.keySet()) {
                            JSONObject jSONObject3 = new JSONObject();
                            jSONObject3.put("ekey", str6.substring(0, str6.indexOf("$")));
                            jSONObject3.put("pkv", Integer.valueOf(str6.substring(str6.indexOf("$") + 1)));
                            jSONObject3.put("payloads", map.get(str6));
                            jSONObject3.put("flush_time", System.currentTimeMillis());
                            jSONArray5.put(jSONObject3);
                        }
                        String string4 = jSONArray5.toString();
                        string2 = jSONArray.toString();
                        obj = string4;
                        str2 = str;
                        string = string2;
                        r1 = obj;
                    } else if (jSONArray3.length() > 0) {
                        String string5 = jSONArray3.toString();
                        str2 = "1";
                        string = jSONArray2.toString();
                        r1 = string5;
                    }
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                } catch (Exception e7) {
                    e = e7;
                    SALog.printStackTrace(e);
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    string = strArr;
                    str2 = str;
                }
                if (string != 0) {
                    return new String[]{string, r1, str2};
                }
                return strArr;
            }
            str = DbParams.GZIP_DATA_ENCRYPT;
            strArr = null;
            String[] strArr2 = strArr;
            obj = strArr2;
            string2 = strArr2;
            str2 = str;
            string = string2;
            r1 = obj;
            if (cursorQuery != null) {
                cursorQuery.close();
            }
        } catch (Exception e8) {
            e = e8;
            str = DbParams.GZIP_DATA_ENCRYPT;
            strArr = null;
            r1 = 0;
            cursorQuery = null;
        } catch (Throwable th2) {
            th = th2;
            cursor = null;
        }
        if (string != 0) {
            return new String[]{string, r1, str2};
        }
        return strArr;
    }

    @Override // com.sensorsdata.analytics.android.sdk.data.adapter.DataOperation
    public int insertData(Uri uri, ContentValues contentValues) {
        try {
            if (deleteDataLowMemory(uri) != 0) {
                return -2;
            }
            this.contentResolver.insert(uri, contentValues);
            return 0;
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
            return 0;
        }
    }

    @Override // com.sensorsdata.analytics.android.sdk.data.adapter.DataOperation
    public String[] queryData(Uri uri, int i2) {
        return queryData(uri, false, i2);
    }
}
