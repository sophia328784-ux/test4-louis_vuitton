package com.linecorp.linesdk.internal.nwclient;

import com.linecorp.linesdk.LineIdToken;
import io.jsonwebtoken.Claims;
import java.util.Date;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
abstract class IdTokenParser {
    public static LineIdToken a(String str, Claims claims) {
        LineIdToken.Address address;
        LineIdToken.Builder builder = new LineIdToken.Builder();
        builder.f36087a = str;
        builder.f36088b = claims.getIssuer();
        builder.f36089c = claims.getSubject();
        builder.d = claims.getAudience();
        builder.f36090e = claims.getExpiration();
        builder.f36091f = claims.getIssuedAt();
        builder.g = (Date) claims.get("auth_time", Date.class);
        builder.f36092h = (String) claims.get("nonce", String.class);
        builder.f36093i = (List) claims.get("amr", List.class);
        builder.f36094j = (String) claims.get("name", String.class);
        builder.f36095k = (String) claims.get("picture", String.class);
        builder.l = (String) claims.get("phone_number", String.class);
        builder.m = (String) claims.get("email", String.class);
        builder.n = (String) claims.get("gender", String.class);
        builder.o = (String) claims.get("birthdate", String.class);
        Map map = (Map) claims.get("address", Map.class);
        if (map == null) {
            address = null;
        } else {
            LineIdToken.Address.Builder builder2 = new LineIdToken.Address.Builder();
            builder2.f36083a = (String) map.get("street_address");
            builder2.f36084b = (String) map.get("locality");
            builder2.f36085c = (String) map.get("region");
            builder2.d = (String) map.get("postal_code");
            builder2.f36086e = (String) map.get("country");
            address = new LineIdToken.Address(builder2);
        }
        builder.p = address;
        builder.q = (String) claims.get("given_name", String.class);
        builder.r = (String) claims.get("given_name_pronunciation", String.class);
        builder.s = (String) claims.get("middle_name", String.class);
        builder.t = (String) claims.get("family_name", String.class);
        builder.u = (String) claims.get("family_name_pronunciation", String.class);
        return new LineIdToken(builder);
    }
}
