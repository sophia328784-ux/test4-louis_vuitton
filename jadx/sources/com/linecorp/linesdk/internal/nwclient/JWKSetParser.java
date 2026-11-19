package com.linecorp.linesdk.internal.nwclient;

import com.linecorp.linesdk.internal.JWKSet;
import io.jsonwebtoken.JwsHeader;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
final class JWKSetParser extends JsonToObjectBaseResponseParser<JWKSet> {
    @Override // com.linecorp.linesdk.internal.nwclient.JsonToObjectBaseResponseParser
    public final Object b(JSONObject jSONObject) throws JSONException {
        ArrayList arrayList = new ArrayList();
        JSONArray jSONArray = jSONObject.getJSONArray("keys");
        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
            JSONObject jSONObject2 = jSONArray.getJSONObject(i2);
            JWKSet.JWK.Builder builder = new JWKSet.JWK.Builder();
            builder.f36189a = jSONObject2.getString("kty");
            builder.f36190b = jSONObject2.getString(JwsHeader.ALGORITHM);
            builder.f36191c = jSONObject2.getString("use");
            builder.d = jSONObject2.getString(JwsHeader.KEY_ID);
            builder.f36192e = jSONObject2.getString("crv");
            builder.f36193f = jSONObject2.getString("x");
            builder.g = jSONObject2.getString("y");
            arrayList.add(new JWKSet.JWK(builder));
        }
        JWKSet.Builder builder2 = new JWKSet.Builder();
        builder2.f36183a = arrayList;
        return new JWKSet(builder2);
    }
}
