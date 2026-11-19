package com.perfectcorp.uma;

import android.content.Context;
import com.sightcall.advancedannotations.domain.parser.ColorParser;
import com.sightcall.advancedannotations.domain.parser.ScaleParser;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.KeyFactory;
import java.security.PrivateKey;
import java.security.spec.PKCS8EncodedKeySpec;
import javax.crypto.Cipher;
import javax.crypto.EncryptedPrivateKeyInfo;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.PBEKeySpec;
import org.bouncycastle.pqc.legacy.math.linearalgebra.Matrix;

/* JADX INFO: loaded from: classes3.dex */
final class r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final PrivateKey f43275a;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final r f43276a;

        static {
            r rVar;
            try {
                rVar = new r(b.f43196b);
            } catch (Throwable unused) {
                rVar = null;
            }
            f43276a = rVar;
        }
    }

    public r(Context context) {
        InputStream inputStreamOpen = null;
        try {
            inputStreamOpen = context.getAssets().open("uma/uma.0");
            this.f43275a = a(inputStreamOpen);
            try {
                inputStreamOpen.close();
            } catch (Throwable th) {
                b.d.b("UMAUtils", "closeNoThrow", th);
            }
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                if (inputStreamOpen != null) {
                    try {
                        inputStreamOpen.close();
                    } catch (Throwable th4) {
                        b.d.b("UMAUtils", "closeNoThrow", th4);
                    }
                }
                throw th3;
            }
        }
    }

    public static PrivateKey a(InputStream inputStream) throws Throwable {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[4096];
        while (true) {
            int i2 = inputStream.read(bArr);
            if (i2 > 0) {
                byteArrayOutputStream.write(bArr, 0, i2);
            } else {
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                PBEKeySpec pBEKeySpec = null;
                try {
                    try {
                        EncryptedPrivateKeyInfo encryptedPrivateKeyInfo = new EncryptedPrivateKeyInfo(byteArray);
                        PBEKeySpec pBEKeySpec2 = new PBEKeySpec(new char[]{Matrix.MATRIX_TYPE_RANDOM_UT, 'M', 'A', '_', ScaleParser.ScaleInstruction, 'E', ColorParser.ColorInstruction, Matrix.MATRIX_TYPE_RANDOM_UT, 'R', 'E', '_', 'K', 'E', 'Y', '_', '2', '0', '2', '6'});
                        try {
                            SecretKeyFactory secretKeyFactory = SecretKeyFactory.getInstance(encryptedPrivateKeyInfo.getAlgName());
                            Cipher cipher = Cipher.getInstance(encryptedPrivateKeyInfo.getAlgName());
                            cipher.init(2, secretKeyFactory.generateSecret(pBEKeySpec2), encryptedPrivateKeyInfo.getAlgParameters());
                            PrivateKey privateKeyGeneratePrivate = KeyFactory.getInstance("RSA").generatePrivate(encryptedPrivateKeyInfo.getKeySpec(cipher));
                            pBEKeySpec2.clearPassword();
                            return privateKeyGeneratePrivate;
                        } catch (IOException unused) {
                            pBEKeySpec = pBEKeySpec2;
                            PrivateKey privateKeyGeneratePrivate2 = KeyFactory.getInstance("RSA").generatePrivate(new PKCS8EncodedKeySpec(byteArray));
                            if (pBEKeySpec != null) {
                                pBEKeySpec.clearPassword();
                            }
                            return privateKeyGeneratePrivate2;
                        } catch (Throwable th) {
                            th = th;
                            pBEKeySpec = pBEKeySpec2;
                            if (pBEKeySpec != null) {
                                pBEKeySpec.clearPassword();
                            }
                            throw th;
                        }
                    } catch (IOException unused2) {
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
        }
    }
}
