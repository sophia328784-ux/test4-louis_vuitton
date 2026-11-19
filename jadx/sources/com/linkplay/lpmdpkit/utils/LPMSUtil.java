package com.linkplay.lpmdpkit.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Looper;
import android.security.keystore.KeyGenParameterSpec;
import android.text.TextUtils;
import android.util.Base64;
import android.widget.Toast;
import com.linkplay.lpmdpkit.R;
import com.linkplay.lpmdpkit.bean.EncryptionContent;
import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import java.math.BigInteger;
import java.nio.charset.StandardCharsets;
import java.security.KeyStore;
import java.security.MessageDigest;
import java.util.Random;
import java.util.regex.Pattern;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes2.dex */
public class LPMSUtil {
    private static final String APP_ID_BY_LOCAL = "LPMSDPKit_App_Id_By_Local";
    private static final String FILE_NAME = "LPMSDPKit_Data";
    private static String currentAppId;

    public static String decrypt(String str, String str2, Context context) {
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(str2.getBytes(), context.getString(R.string.lpms_algorithm));
            Cipher cipher = Cipher.getInstance(context.getString(R.string.lpms_cbc_transformation));
            cipher.init(2, secretKeySpec, getIvParameterSpec(context));
            return new String(cipher.doFinal(Base64.decode(str, 0)), "UTF-8").replace("\u0000", "");
        } catch (Exception unused) {
            return null;
        }
    }

    public static String encrypt(String str, String str2, Context context) {
        try {
            byte[] bytes = str.getBytes();
            int length = bytes.length;
            int i2 = length % 16;
            byte[] bArr = new byte[(i2 != 0 ? 16 - i2 : 0) + length];
            System.arraycopy(bytes, 0, bArr, 0, length);
            Cipher cipher = Cipher.getInstance(context.getString(R.string.lpms_cbc_transformation));
            cipher.init(1, new SecretKeySpec(str2.getBytes(), context.getString(R.string.lpms_algorithm)), getIvParameterSpec(context));
            return Base64.encodeToString(cipher.doFinal(bArr), 0).replaceAll("\n", "");
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static String formatLoginData(String str) {
        try {
            return str.replace("\r", "").replace("\n", "");
        } catch (Exception e2) {
            e2.printStackTrace();
            return str;
        }
    }

    public static String getAppId(Context context) {
        if (TextUtils.isEmpty(currentAppId)) {
            String param = SharedPreferencesUtils.getParam(getSharedPreferences(context), APP_ID_BY_LOCAL);
            currentAppId = param;
            if (TextUtils.isEmpty(param)) {
                currentAppId = randomHexString(16);
                SharedPreferencesUtils.setParam(getSharedPreferences(context), APP_ID_BY_LOCAL, currentAppId);
            }
        }
        return currentAppId;
    }

    public static String getAppName(Context context) {
        if (context == null) {
            return "";
        }
        try {
            return context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).loadLabel(context.getPackageManager()).toString();
        } catch (Exception e2) {
            e2.printStackTrace();
            return "";
        }
    }

    private static IvParameterSpec getIvParameterSpec(Context context) {
        String string = context.getString(R.string.lpms_ivparameterspec);
        if (string == null) {
            return null;
        }
        byte[] bArr = new byte[string.length()];
        char[] charArray = string.toCharArray();
        for (int i2 = 0; i2 < charArray.length; i2++) {
            bArr[i2] = Byte.parseByte(String.valueOf(charArray[i2]));
        }
        return new IvParameterSpec(bArr);
    }

    public static String getMD5(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(str.getBytes());
            return new BigInteger(1, messageDigest.digest()).toString(16);
        } catch (Exception e2) {
            e2.printStackTrace();
            return "";
        }
    }

    public static String getRandom() {
        return Integer.toHexString((int) ((Math.random() * 65535.0d) + 1.0d));
    }

    private static SharedPreferences getSharedPreferences(Context context) {
        if (context != null) {
            return context.getSharedPreferences(FILE_NAME, 0);
        }
        return null;
    }

    public static String getUUID(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        if (str.length() <= 24) {
            return str;
        }
        if (!str.toUpperCase().startsWith("UUID:")) {
            return str.substring(0, 24);
        }
        String strReplace = str.toUpperCase().replace("UUID:", "").replace("-", "");
        return strReplace.substring(0, 8) + strReplace.substring(8, 12) + strReplace.substring(12, 16) + strReplace.substring(16, 20) + strReplace.substring(20, 24);
    }

    public static String getUpnpUUID(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        if (str.toUpperCase().startsWith("UUID:") || str.length() != 24) {
            return str;
        }
        String strSubstring = str.substring(0, 8);
        String strSubstring2 = str.substring(8, 12);
        String strSubstring3 = str.substring(12, 16);
        String strSubstring4 = str.substring(16, 20);
        String strSubstring5 = str.substring(20, 24);
        StringBuilder sbS = fc.s("uuid:", strSubstring, "-", strSubstring2, "-");
        cj.C(sbS, strSubstring3, "-", strSubstring4, "-");
        return n00.r(strSubstring5, strSubstring, sbS);
    }

    public static boolean isNumber(String str) {
        return Pattern.compile("[0-9]*").matcher(str).matches();
    }

    public static String keyStoreDecrypt(Context context, String str) {
        EncryptionContent encryptionContent = (EncryptionContent) GsonCore.fromJson(str, EncryptionContent.class);
        try {
            KeyStore keyStore = KeyStore.getInstance(context.getString(R.string.lpms_android_key_store));
            keyStore.load(null);
            Cipher cipher = Cipher.getInstance(context.getString(R.string.lpms_gcm_transformation));
            cipher.init(2, ((KeyStore.SecretKeyEntry) keyStore.getEntry(encryptionContent.getAlias(), null)).getSecretKey(), new GCMParameterSpec(128, encryptionContent.getIv()));
            return new String(cipher.doFinal(encryptionContent.getEncryption()), StandardCharsets.UTF_8);
        } catch (Exception e2) {
            e2.printStackTrace();
            return (encryptionContent == null || encryptionContent.getEncryption() == null) ? str : "";
        }
    }

    public static String keyStoreEncrypt(Context context, String str) {
        try {
            Cipher cipher = Cipher.getInstance(context.getString(R.string.lpms_gcm_transformation));
            KeyGenerator keyGenerator = KeyGenerator.getInstance(context.getString(R.string.lpms_algorithm), context.getString(R.string.lpms_android_key_store));
            String random = getRandom();
            keyGenerator.init(new KeyGenParameterSpec.Builder(random, 3).setBlockModes("GCM").setEncryptionPaddings("NoPadding").build());
            cipher.init(1, keyGenerator.generateKey());
            return GsonCore.toJson(new EncryptionContent(cipher.doFinal(str.getBytes(StandardCharsets.UTF_8)), cipher.getIV(), random));
        } catch (Exception e2) {
            e2.printStackTrace();
            return str;
        }
    }

    public static void printLongLog(final String str, final String str2) {
        ThreadPoolUtil.getPrintThread().execute(new Runnable() { // from class: com.linkplay.lpmdpkit.utils.LPMSUtil.3
            @Override // java.lang.Runnable
            public void run() {
                int length = 2001 - str.length();
                for (String strSubstring = str2; strSubstring.length() > length; strSubstring = strSubstring.substring(length)) {
                    strSubstring.substring(0, length);
                }
            }
        });
    }

    public static String randomHexString(int i2) {
        try {
            StringBuffer stringBuffer = new StringBuffer();
            for (int i3 = 0; i3 < i2; i3++) {
                stringBuffer.append(Integer.toHexString(new Random().nextInt(16)));
            }
            return stringBuffer.toString().toUpperCase();
        } catch (Exception e2) {
            e2.printStackTrace();
            return "";
        }
    }

    public static void showLongToast(final Context context, final String str) {
        if (context == null || TextUtils.isEmpty(str)) {
            return;
        }
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.linkplay.lpmdpkit.utils.LPMSUtil.2
            @Override // java.lang.Runnable
            public void run() {
                Toast.makeText(context, str, 1).show();
            }
        });
    }

    public static void showToast(final Context context, final String str) {
        if (context == null || TextUtils.isEmpty(str)) {
            return;
        }
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.linkplay.lpmdpkit.utils.LPMSUtil.1
            @Override // java.lang.Runnable
            public void run() {
                Toast.makeText(context, str, 0).show();
            }
        });
    }

    public static String stringToUnicode(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < str.length(); i2++) {
            char cCharAt = str.charAt(i2);
            String hexString = Integer.toHexString(cCharAt);
            if (hexString.length() == 2) {
                sb.append(cCharAt);
            } else {
                sb.append("\\u");
                sb.append(hexString);
            }
        }
        return sb.toString();
    }

    public static String uuidDecrypt(String str, String str2, Context context) {
        String uuid = getUUID(str);
        return (uuid == null || uuid.length() < 16 || TextUtils.isEmpty(str2)) ? str2 : decrypt(str2, uuid.substring(0, 16), context);
    }

    public static String uuidEncrypt(String str, String str2, Context context) {
        String uuid = getUUID(str);
        return (uuid == null || uuid.length() < 16 || TextUtils.isEmpty(str2)) ? str2 : encrypt(str2, uuid.substring(0, 16), context);
    }
}
