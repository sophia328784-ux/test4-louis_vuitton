package com.google.android.gms.internal.gtm;

import com.google.android.gms.common.api.Status;
import java.util.ArrayList;
import java.util.HashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
final class zzjc implements zzjb {
    @Override // com.google.android.gms.internal.gtm.zzjb
    public final zzjh a(byte[] bArr) throws zziu {
        if (bArr == null) {
            throw new zziu("Cannot parse a null byte[]");
        }
        if (bArr.length == 0) {
            throw new zziu("Cannot parse a 0 length byte[]");
        }
        try {
            Object obj = new JSONObject(new String(bArr)).get("resource");
            if (!(obj instanceof JSONObject)) {
                throw new zziu("Resource map not found");
            }
            JSONObject jSONObject = (JSONObject) obj;
            zzjt zzjtVar = new zzjt();
            HashMap map = zzjtVar.f30139b;
            ArrayList arrayList = zzjtVar.f30138a;
            zzjtVar.f30140c = jSONObject.optString("version");
            JSONArray jSONArray = jSONObject.getJSONArray("macros");
            ArrayList arrayList2 = new ArrayList();
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                arrayList2.add(jSONArray.getJSONObject(i2).getString("instance_name"));
            }
            ArrayList arrayListD = zziv.d(jSONObject.getJSONArray("tags"), arrayList2);
            ArrayList arrayListD2 = zziv.d(jSONObject.getJSONArray("predicates"), arrayList2);
            for (zzjx zzjxVar : zziv.d(jSONObject.getJSONArray("macros"), arrayList2)) {
                map.put(((zzkg) zzjxVar.f30146a.get("instance_name")).toString(), zzjxVar);
            }
            JSONArray jSONArray2 = jSONObject.getJSONArray("rules");
            for (int i3 = 0; i3 < jSONArray2.length(); i3++) {
                arrayList.add(zziv.b(jSONArray2.getJSONArray(i3), arrayListD, arrayListD2));
            }
            zzju zzjuVar = new zzju(arrayList, map, zzjtVar.f30140c, 0);
            zzao.a(2);
            return new zzjh(Status.f29004f, 0, new zzjg(null, null, zzjuVar, 0L), ((zzjd) zzje.f30122b).a(bArr).f30129e);
        } catch (zziu unused) {
            throw new zziu("The resource data is invalid. The container cannot be extracted from the JSON data");
        } catch (JSONException unused2) {
            throw new zziu("The resource data is corrupted. The container cannot be extracted from the JSON data");
        }
    }
}
