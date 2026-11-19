package com.kakao.sdk.common.util;

import android.util.Base64;
import com.batch.android.x0.h;
import com.kakao.sdk.common.KakaoSdk;
import com.kakao.sdk.common.model.ContextInfo;
import io.jsonwebtoken.JwtParser;
import java.nio.charset.Charset;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.util.Arrays;
import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.SecretKeySpec;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.Charsets;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\u0006B\u0011\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Lcom/kakao/sdk/common/util/AESCipher;", "Lcom/kakao/sdk/common/util/Cipher;", "Lcom/kakao/sdk/common/model/ContextInfo;", "contextInfo", "<init>", "(Lcom/kakao/sdk/common/model/ContextInfo;)V", "Companion", "common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class AESCipher implements Cipher {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Charset f35873a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final javax.crypto.Cipher f35874b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final javax.crypto.Cipher f35875c;
    public final IvParameterSpec d;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\u00020\u00058\u0002X\u0082T¢\u0006\u0006\n\u0004\b\b\u0010\u0007¨\u0006\t"}, d2 = {"Lcom/kakao/sdk/common/util/AESCipher$Companion;", "", "", "ALGORITHM", "Ljava/lang/String;", "", "ITEM_COUNT", "I", "KEY_LENGTH", "common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    public AESCipher(ContextInfo contextInfo) throws InvalidKeySpecException, NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        contextInfo.getClass();
        String strC = c("My0oeSI1IzInbyA+LVFaW2wiNSokPAMiMipOLS4=");
        String strC2 = c("Iio+ASgjKE4/ZSIjXDMOCUoCDww=");
        this.f35873a = Charsets.UTF_8;
        IvParameterSpec ivParameterSpec = new IvParameterSpec(new byte[]{112, 78, 75, 55, h.a.o, -30, -10, 44, 102, -126, -126, 92, -116, h.a.u, -123, h.a.n});
        this.d = ivParameterSpec;
        String mKeyHash = contextInfo.getMKeyHash();
        SecretKeyFactory secretKeyFactory = SecretKeyFactory.getInstance(strC);
        char[] charArray = mKeyHash.substring(0, Math.min(mKeyHash.length(), 16)).toCharArray();
        charArray.getClass();
        SecretKey secretKeyGenerateSecret = secretKeyFactory.generateSecret(new PBEKeySpec(charArray, contextInfo.getMSalt(), 2, 256));
        SecretKeySpec secretKeySpec = new SecretKeySpec(secretKeyGenerateSecret.getEncoded(), "AES");
        javax.crypto.Cipher cipher = javax.crypto.Cipher.getInstance(strC2);
        cipher.getClass();
        this.f35874b = cipher;
        javax.crypto.Cipher cipher2 = javax.crypto.Cipher.getInstance(strC2);
        cipher2.getClass();
        this.f35875c = cipher2;
        try {
            cipher.init(1, secretKeySpec, ivParameterSpec);
            cipher2.init(2, secretKeySpec, ivParameterSpec);
        } catch (InvalidKeyException unused) {
            SecretKeySpec secretKeySpec2 = new SecretKeySpec(Arrays.copyOfRange(secretKeyGenerateSecret.getEncoded(), 0, secretKeyGenerateSecret.getEncoded().length / 2), "AES");
            this.f35874b.init(1, secretKeySpec2, this.d);
            this.f35875c.init(2, secretKeySpec2, this.d);
        }
    }

    public static String c(String str) {
        byte[] bArrDecode = Base64.decode(str, 0);
        bArrDecode.getClass();
        String str2 = new String(bArrDecode, Charsets.UTF_8);
        try {
            char[] cArr = {'c', 'o', 'm', JwtParser.SEPARATOR_CHAR, 'k', 'a', 'k', 'a', 'o', JwtParser.SEPARATOR_CHAR, 'a', 'p', 'i'};
            char[] charArray = str2.toCharArray();
            charArray.getClass();
            int length = charArray.length;
            char[] cArr2 = new char[length];
            for (int i2 = 0; i2 < length; i2++) {
                cArr2[i2] = (char) (charArray[i2] ^ cArr[i2 % 13]);
            }
            return new String(cArr2);
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // com.kakao.sdk.common.util.Cipher
    public final String a(String str) {
        str.getClass();
        byte[] bytes = str.getBytes(this.f35873a);
        bytes.getClass();
        String strEncodeToString = Base64.encodeToString(this.f35874b.doFinal(bytes), 2);
        strEncodeToString.getClass();
        return strEncodeToString;
    }

    @Override // com.kakao.sdk.common.util.Cipher
    public final String b(String str) throws BadPaddingException, IllegalBlockSizeException {
        byte[] bArrDoFinal = this.f35875c.doFinal(Base64.decode(str, 2));
        bArrDoFinal.getClass();
        return new String(bArrDoFinal, this.f35873a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public AESCipher() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public /* synthetic */ AESCipher(ContextInfo contextInfo, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? KakaoSdk.a() : contextInfo);
    }
}
