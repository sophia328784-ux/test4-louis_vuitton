package com.linecorp.linesdk.internal.nwclient;

import com.linecorp.linesdk.internal.OpenIdDiscoveryDocument;
import com.linecorp.linesdk.utils.JSONUtils;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
final class OpenIdDiscoveryDocumentParser extends JsonToObjectBaseResponseParser<OpenIdDiscoveryDocument> {
    @Override // com.linecorp.linesdk.internal.nwclient.JsonToObjectBaseResponseParser
    public final Object b(JSONObject jSONObject) {
        OpenIdDiscoveryDocument.Builder builder = new OpenIdDiscoveryDocument.Builder();
        builder.f36200a = jSONObject.getString("issuer");
        builder.f36201b = jSONObject.getString("authorization_endpoint");
        builder.f36202c = jSONObject.getString("token_endpoint");
        builder.d = jSONObject.getString("jwks_uri");
        builder.f36203e = JSONUtils.a(jSONObject.getJSONArray("response_types_supported"));
        builder.f36204f = JSONUtils.a(jSONObject.getJSONArray("subject_types_supported"));
        builder.g = JSONUtils.a(jSONObject.getJSONArray("id_token_signing_alg_values_supported"));
        return new OpenIdDiscoveryDocument(builder);
    }
}
