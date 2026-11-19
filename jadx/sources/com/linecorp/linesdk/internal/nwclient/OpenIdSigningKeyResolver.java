package com.linecorp.linesdk.internal.nwclient;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;
import com.linecorp.linesdk.LineApiResponse;
import com.linecorp.linesdk.internal.JWKSet;
import com.linecorp.linesdk.internal.OpenIdDiscoveryDocument;
import com.linecorp.linesdk.internal.nwclient.core.ChannelServiceHttpClient;
import com.linecorp.linesdk.utils.UriUtils;
import defpackage.d21;
import io.jsonwebtoken.Claims;
import io.jsonwebtoken.JwsHeader;
import io.jsonwebtoken.SignatureAlgorithm;
import io.jsonwebtoken.SigningKeyResolver;
import io.jsonwebtoken.security.SecurityException;
import java.math.BigInteger;
import java.security.Key;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.interfaces.ECPublicKey;
import java.security.spec.ECPoint;
import java.security.spec.ECPublicKeySpec;
import java.security.spec.InvalidKeySpecException;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import org.spongycastle.jce.ECNamedCurveTable;
import org.spongycastle.jce.spec.ECNamedCurveParameterSpec;
import org.spongycastle.jce.spec.ECNamedCurveSpec;

/* JADX INFO: loaded from: classes2.dex */
public class OpenIdSigningKeyResolver implements SigningKeyResolver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LineAuthenticationApiClient f36227a;

    public OpenIdSigningKeyResolver(LineAuthenticationApiClient lineAuthenticationApiClient) {
        this.f36227a = lineAuthenticationApiClient;
    }

    public final ECPublicKey a(JwsHeader jwsHeader) {
        LineApiResponse lineApiResponseA;
        JWKSet.JWK jwk;
        LineAuthenticationApiClient lineAuthenticationApiClient = this.f36227a;
        Uri uriC = UriUtils.c(lineAuthenticationApiClient.f36224e, new String[0]);
        ChannelServiceHttpClient channelServiceHttpClient = lineAuthenticationApiClient.f36222b;
        Map map = Collections.EMPTY_MAP;
        LineApiResponse lineApiResponseA2 = channelServiceHttpClient.a(uriC, map, map, LineAuthenticationApiClient.f36219i);
        if (!lineApiResponseA2.d()) {
            lineApiResponseA2.toString();
        }
        if (lineApiResponseA2.d()) {
            lineApiResponseA = channelServiceHttpClient.a(Uri.parse(((OpenIdDiscoveryDocument) lineApiResponseA2.c()).d), map, map, LineAuthenticationApiClient.f36220j);
            if (!lineApiResponseA.d()) {
                lineApiResponseA.toString();
            }
        } else {
            lineApiResponseA = LineApiResponse.a(lineApiResponseA2.f36062a, lineApiResponseA2.f36064c);
        }
        if (lineApiResponseA.d()) {
            JWKSet jWKSet = (JWKSet) lineApiResponseA.c();
            String keyId = jwsHeader.getKeyId();
            Iterator it = jWKSet.f36182a.iterator();
            do {
                if (!it.hasNext()) {
                    jwk = null;
                    break;
                }
                jwk = (JWKSet.JWK) it.next();
            } while (!TextUtils.equals(jwk.d, keyId));
            if (jwk != null) {
                String algorithm = jwsHeader.getAlgorithm();
                if (!SignatureAlgorithm.forName(algorithm).isEllipticCurve()) {
                    throw new SecurityException(d21.d('\'', "Unsupported signature algorithm '", algorithm));
                }
                String str = jwk.f36188f;
                String str2 = jwk.f36187e;
                BigInteger bigInteger = new BigInteger(1, Base64.decode(str, 8));
                BigInteger bigInteger2 = new BigInteger(1, Base64.decode(jwk.g, 8));
                try {
                    KeyFactory keyFactory = KeyFactory.getInstance("EC");
                    ECPoint eCPoint = new ECPoint(bigInteger, bigInteger2);
                    ECNamedCurveParameterSpec eCNamedCurveParameterSpecA = ECNamedCurveTable.a(str2);
                    return (ECPublicKey) keyFactory.generatePublic(new ECPublicKeySpec(eCPoint, new ECNamedCurveSpec(str2, eCNamedCurveParameterSpecA.f77913b, eCNamedCurveParameterSpecA.f77914c, eCNamedCurveParameterSpecA.d)));
                } catch (NoSuchAlgorithmException | InvalidKeySpecException unused) {
                    jwk.toString();
                    return null;
                }
            }
        }
        return null;
    }

    @Override // io.jsonwebtoken.SigningKeyResolver
    public final Key resolveSigningKey(JwsHeader jwsHeader, Claims claims) {
        return a(jwsHeader);
    }

    @Override // io.jsonwebtoken.SigningKeyResolver
    public final Key resolveSigningKey(JwsHeader jwsHeader, String str) {
        return a(jwsHeader);
    }
}
