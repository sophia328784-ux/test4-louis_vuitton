package com.google.android.gms.internal.gtm;

import com.google.android.gms.common.api.Status;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
final class zzjd implements zzjb {
    @Override // com.google.android.gms.internal.gtm.zzjb
    public final zzjh a(byte[] bArr) throws zziu {
        zzkd zzkdVar;
        if (bArr == null) {
            throw new zziu("Cannot parse a null byte[]");
        }
        if (bArr.length == 0) {
            throw new zziu("Cannot parse a 0 length byte[]");
        }
        try {
            JSONObject jSONObject = new JSONObject(new String(bArr));
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("runtime");
            if (jSONArrayOptJSONArray == null) {
                zzkdVar = null;
            } else {
                ArrayList arrayList = new zzkb().f30154a;
                Object obj = jSONObject.get("resource");
                if (!(obj instanceof JSONObject)) {
                    throw new zziu("Resource map not found");
                }
                ((JSONObject) obj).optString("version");
                for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                    Object obj2 = jSONArrayOptJSONArray.get(i2);
                    if (!(obj2 instanceof JSONArray) || ((JSONArray) obj2).length() != 0) {
                        arrayList.add(zziv.a(obj2));
                    }
                }
                zzkdVar = new zzkd(arrayList);
            }
            if (zzkdVar != null) {
                zzao.a(2);
            }
            return new zzjh(Status.f29004f, 0, null, zzkdVar);
        } catch (zziu unused) {
            throw new zziu("The resource data is invalid. The runtime  configuration cannot be extracted from the JSON data");
        } catch (JSONException unused2) {
            throw new zziu("The resource data is corrupted. The runtime configuration cannot be extracted from the JSON data");
        }
    }
}
