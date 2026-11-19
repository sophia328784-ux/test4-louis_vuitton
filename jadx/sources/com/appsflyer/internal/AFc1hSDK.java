package com.appsflyer.internal;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Color;
import android.graphics.ImageFormat;
import android.hardware.SensorManager;
import android.media.AudioTrack;
import android.os.Build;
import android.os.Process;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;
import com.appsflyer.AFLogger;
import com.appsflyer.sdk_base.logger.LogTag;
import com.linkplay.medialib.ContentTree;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public final class AFc1hSDK extends HashMap<String, Object> {
    private static int $10 = 0;
    private static int $11 = 1;
    private static char AFKeystoreWrapper = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static int f22609e = 1;
    private static char force;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static char f22610i;
    private static char registerClient;
    private static char[] unregisterClient;
    private static int v;
    private static char w;
    private final Map<String, Object> AFLogger;
    private final Context d;

    static {
        registerClient();
        TextUtils.indexOf("", "");
        TextUtils.lastIndexOf("", '0', 0);
        KeyEvent.getDeadChar(0, 0);
        KeyEvent.getModifierMetaStateMask();
        SystemClock.uptimeMillis();
        ViewConfiguration.getPressedStateDuration();
        ViewConfiguration.getPressedStateDuration();
        ViewConfiguration.getMaximumFlingVelocity();
        Process.myPid();
        ViewConfiguration.getZoomControlsTimeout();
        Color.red(0);
        View.getDefaultSize(0, 0);
        AudioTrack.getMaxVolume();
        int i2 = v + 19;
        f22609e = i2 % 128;
        if (i2 % 2 == 0) {
            int i3 = 24 / 0;
        }
    }

    public AFc1hSDK(Map<String, Object> map, Context context) {
        this.AFLogger = map;
        this.d = context;
        put(AFLogger(), AFKeystoreWrapper());
    }

    /* JADX WARN: Code duplicated, block: B:21:0x01a8  */
    private String AFKeystoreWrapper() {
        String string;
        int i2;
        try {
            Map<String, Object> map = this.AFLogger;
            Object[] objArr = new Object[1];
            a(")!#\u0003\u0001+\r\f\u0005#)\u000f", 12 - (ViewConfiguration.getMaximumDrawingCacheSize() >> 24), (byte) (51 - View.getDefaultSize(0, 0)), objArr);
            String string2 = map.get(((String) objArr[0]).intern()).toString();
            Map<String, Object> map2 = this.AFLogger;
            Object[] objArr2 = new Object[1];
            b("激蟰鵏媻ᎈꦝ貮ぞ䯃⥃\ue744邪뇽ຼ\uf74d댳", (Process.myTid() >> 22) + 15, objArr2);
            String string3 = map2.get(((String) objArr2[0]).intern()).toString();
            Object[] objArr3 = new Object[1];
            b("༃號ጜ\ue396\uec19➺", 4 - TextUtils.lastIndexOf("", '0'), objArr3);
            String strIntern = ((String) objArr3[0]).intern();
            Object[] objArr4 = new Object[1];
            a("\u0013\u0019\u0006-㘬", (ViewConfiguration.getScrollBarSize() >> 8) + 5, (byte) (124 - Color.alpha(0)), objArr4);
            String strReplaceAll = strIntern.replaceAll(((String) objArr4[0]).intern(), "");
            StringBuilder sb = new StringBuilder();
            sb.append(string2);
            sb.append(string3);
            sb.append(strReplaceAll);
            string = AFj1nSDK.d(sb.toString()).substring(0, 16);
        } catch (Exception e2) {
            AFLogger aFLogger = AFLogger.INSTANCE;
            LogTag logTag = LogTag.SECURITY;
            Object[] objArr5 = new Object[1];
            a("\u0013\n\u0002\u000e\u0002\u0013#\u0013\u0005\r0!$/\u0013\u0007!+\u0013\n\n\r!/\u0001*\n\u0010-\u0005!\n\u0000-\r\u0004(+/'\u0014\u0000㘟", TextUtils.indexOf("", "", 0, 0) + 43, (byte) (TextUtils.lastIndexOf("", '0', 0) + 33), objArr5);
            aFLogger.e(logTag, ((String) objArr5[0]).intern(), e2, false, false);
            StringBuilder sb2 = new StringBuilder();
            Object[] objArr6 = new Object[1];
            b("戀꿱㴊㈯⚹혯奞\uf895晷\uf538쓋뾈뇽ຼ\ueaed︕腵踑\uee9f㣥ꂺ酢밡䚕ዻ虎쏻輜뒏嬼鬘\uef18ꃑ䵠\u0e83\uf78a똶Ⴍ侃ৱﹲ\u2e50彆艹혓\u1aee귉\uebc9씕냏", 49 - (Process.myTid() >> 22), objArr6);
            sb2.append(((String) objArr6[0]).intern());
            sb2.append(e2);
            aFLogger.v(logTag, sb2.toString());
            StringBuilder sb3 = new StringBuilder("");
            Object[] objArr7 = new Object[1];
            a("\u001a%\u001a\t/\u0013&\u000b #\u001e\u0001\r\u001d\u0004(\u000f\b", (ViewConfiguration.getFadingEdgeLength() >> 16) + 18, (byte) (ViewConfiguration.getKeyRepeatTimeout() >> 16), objArr7);
            sb3.append(((String) objArr7[0]).intern());
            string = sb3.toString();
        }
        String str = string;
        try {
            Context context = this.d;
            Object[] objArr8 = new Object[1];
            b("ꄜ䲶\uf29b脦쑷ⳤ㉇䭯\ueaed︕\udd09ḭ\u087f铆抹绬炯\ude12혓\u1aeeᆛ箇䚔祛徃荁桳ꐂꄺ㮽쨃儳ꃝ䤫굍\ueded㍟〪", 37 - KeyEvent.normalizeMetaState(0), objArr8);
            Intent intentRegisterReceiver = context.registerReceiver(null, new IntentFilter(((String) objArr8[0]).intern()));
            int intExtra = -2700;
            if (intentRegisterReceiver != null) {
                Object[] objArr9 = new Object[1];
                b("\udd09ḭ䴌\uebb7쓋뾈뇽ຼ\uf3e3싺\uf74d댳", 12 - (AudioTrack.getMaxVolume() > Call.Parameters.DEFAULT_CAMERA_ZOOM ? 1 : (AudioTrack.getMaxVolume() == Call.Parameters.DEFAULT_CAMERA_ZOOM ? 0 : -1)), objArr9);
                intExtra = intentRegisterReceiver.getIntExtra(((String) objArr9[0]).intern(), -2700);
            } else {
                v = (f22609e + 97) % 128;
            }
            String str2 = this.d.getApplicationInfo().nativeLibraryDir;
            if (str2 != null) {
                v = (f22609e + 109) % 128;
                Object[] objArr10 = new Object[1];
                b("獵푯ᔖ莔", Color.rgb(0, 0, 0) + 16777219, objArr10);
                if (str2.contains(((String) objArr10[0]).intern())) {
                    f22609e = (v + 111) % 128;
                    i2 = 1;
                } else {
                    i2 = 0;
                }
            } else {
                i2 = 0;
            }
            Context context2 = this.d;
            Object[] objArr11 = new Object[1];
            a("\f\r\n\f\u0019\u001b", ExpandableListView.getPackedPositionGroup(0L) + 6, (byte) ((ViewConfiguration.getFadingEdgeLength() >> 16) + 70), objArr11);
            int size = ((SensorManager) context2.getSystemService(((String) objArr11[0]).intern())).getSensorList(-1).size();
            StringBuilder sb4 = new StringBuilder();
            Object[] objArr12 = new Object[1];
            b("哙顗", KeyEvent.keyCodeFromString("") + 1, objArr12);
            sb4.append(((String) objArr12[0]).intern());
            sb4.append(intExtra);
            Object[] objArr13 = new Object[1];
            b("⪹畈", 2 - TextUtils.getTrimmedLength(""), objArr13);
            sb4.append(((String) objArr13[0]).intern());
            sb4.append(i2);
            Object[] objArr14 = new Object[1];
            a("\b\f", (TypedValue.complexToFraction(0, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM) > Call.Parameters.DEFAULT_CAMERA_ZOOM ? 1 : (TypedValue.complexToFraction(0, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM) == Call.Parameters.DEFAULT_CAMERA_ZOOM ? 0 : -1)) + 2, (byte) (TextUtils.indexOf("", "", 0) + 37), objArr14);
            sb4.append(((String) objArr14[0]).intern());
            sb4.append(size);
            Object[] objArr15 = new Object[1];
            a("\r\u000e", View.resolveSize(0, 0) + 2, (byte) (TextUtils.indexOf("", "", 0, 0) + 95), objArr15);
            sb4.append(((String) objArr15[0]).intern());
            sb4.append(this.AFLogger.size());
            String string4 = sb4.toString();
            StringBuilder sb5 = new StringBuilder();
            sb5.append(str);
            byte[] bytes = string4.getBytes(Charset.defaultCharset());
            for (int i3 = 0; i3 < bytes.length; i3++) {
                f22609e = (v + 49) % 128;
                bytes[i3] = (byte) (bytes[i3] ^ ((i3 % 2) + 42));
            }
            StringBuilder sb6 = new StringBuilder();
            for (byte b2 : bytes) {
                String hexString = Integer.toHexString(b2);
                if (hexString.length() == 1) {
                    hexString = ContentTree.ROOT_ID.concat(hexString);
                }
                sb6.append(hexString);
            }
            sb5.append(sb6.toString());
            return sb5.toString();
        } catch (Exception e3) {
            AFLogger aFLogger2 = AFLogger.INSTANCE;
            LogTag logTag2 = LogTag.SECURITY;
            Object[] objArr16 = new Object[1];
            a("\u0013\n\u0002\u000e\u0002\u0013#\u0013\u0005\r\u0005\u0013㘑㘑\u0019\u001b0(\u001d-\u0013\u0007-\u0013\r\n\u0013!#\u0005,\b\u0013-\b(\u0000\u0014#\u0005\u0019\u001b0!\u0013#\u0012\n", View.MeasureSpec.getSize(0) + 48, (byte) (41 - (Process.myPid() >> 22)), objArr16);
            aFLogger2.e(logTag2, ((String) objArr16[0]).intern(), e3, false, false);
            StringBuilder sb7 = new StringBuilder();
            Object[] objArr17 = new Object[1];
            b("戀꿱㴊㈯⚹혯奞\uf895晷\uf538쓋뾈뇽ຼ\ueaed︕腵踑樿샠뒋参뇽ຼ䏳ꦌ澽\ue145瑯⩯爨\ue4a4ꃑ䵠\u0e83\uf78a똶Ⴍ侃ৱﹲ\u2e50彆艹혓\u1aee귉\uebc9씕냏", Color.alpha(0) + 49, objArr17);
            sb7.append(((String) objArr17[0]).intern());
            sb7.append(e3);
            aFLogger2.v(logTag2, sb7.toString());
            StringBuilder sb8 = new StringBuilder();
            sb8.append(str);
            Object[] objArr18 = new Object[1];
            a(" ) (\u001d\f\u000f\r\u0013\u0006\u0006\u0004\u001c\u0003)%", (ViewConfiguration.getGlobalActionKeyTimeout() > 0L ? 1 : (ViewConfiguration.getGlobalActionKeyTimeout() == 0L ? 0 : -1)) + 15, (byte) (4 - ExpandableListView.getPackedPositionChild(0L)), objArr18);
            sb8.append(((String) objArr18[0]).intern());
            return sb8.toString();
        }
    }

    private String AFLogger() {
        try {
            String string = Integer.toString(Build.VERSION.SDK_INT);
            Map<String, Object> map = this.AFLogger;
            Object[] objArr = new Object[1];
            a(")!#\u0003\u0001+\r\f\u0005#)\u000f", (SystemClock.elapsedRealtimeNanos() > 0L ? 1 : (SystemClock.elapsedRealtimeNanos() == 0L ? 0 : -1)) + 11, (byte) ((ViewConfiguration.getPressedStateDuration() >> 16) + 51), objArr);
            String string2 = map.get(((String) objArr[0]).intern()).toString();
            Map<String, Object> map2 = this.AFLogger;
            Object[] objArr2 = new Object[1];
            a("\u0018\u001b%\f㙣", 4 - ImageFormat.getBitsPerPixel(0), (byte) (Color.red(0) + 101), objArr2);
            String string3 = map2.get(((String) objArr2[0]).intern()).toString();
            if (string3 == null) {
                v = (f22609e + 83) % 128;
                Object[] objArr3 = new Object[1];
                a("\u001f,$\u0018)\u0015 \u0017", (AudioTrack.getMinVolume() > Call.Parameters.DEFAULT_CAMERA_ZOOM ? 1 : (AudioTrack.getMinVolume() == Call.Parameters.DEFAULT_CAMERA_ZOOM ? 0 : -1)) + 8, (byte) (21 - ExpandableListView.getPackedPositionChild(0L)), objArr3);
                string3 = ((String) objArr3[0]).intern();
            }
            StringBuilder sb = new StringBuilder(string2);
            sb.reverse();
            StringBuilder sbAFKeystoreWrapper = AFKeystoreWrapper(string, string3, sb.toString());
            int length = sbAFKeystoreWrapper.length();
            if (length > 4) {
                sbAFKeystoreWrapper.delete(4, length);
            } else {
                while (length < 4) {
                    int i2 = v + 73;
                    f22609e = i2 % 128;
                    if (i2 % 2 == 0) {
                        length += 45;
                        sbAFKeystoreWrapper.append('\\');
                    } else {
                        length++;
                        sbAFKeystoreWrapper.append('1');
                    }
                }
            }
            Object[] objArr4 = new Object[1];
            a("/\u0007㙈", 3 - Color.green(0), (byte) ((ExpandableListView.getPackedPositionForGroup(0) > 0L ? 1 : (ExpandableListView.getPackedPositionForGroup(0) == 0L ? 0 : -1)) + 76), objArr4);
            sbAFKeystoreWrapper.insert(0, ((String) objArr4[0]).intern());
            return sbAFKeystoreWrapper.toString();
        } catch (Exception e2) {
            AFLogger aFLogger = AFLogger.INSTANCE;
            LogTag logTag = LogTag.SECURITY;
            Object[] objArr5 = new Object[1];
            a("\u0013\n\u0002\u000e\u0001\u0013\u0013\u001a0!$/\u0013\u0007!+\u0013\n\n\r!/\u0001*\n\u00100+\u0013\u001a", (ViewConfiguration.getPressedStateDuration() >> 16) + 30, (byte) (107 - TextUtils.indexOf("", "")), objArr5);
            aFLogger.e(logTag, ((String) objArr5[0]).intern(), e2, false, false);
            StringBuilder sb2 = new StringBuilder();
            Object[] objArr6 = new Object[1];
            a("!)*\u000f\b!-\u0013\r\n\u0013!#\u0005,\b\u0013-/\u0007\u001a\u0005$0\u0003\u001c\u0005\u0013\n\u0006\r\u0013\u0001*\u0017\n-0", 38 - KeyEvent.getDeadChar(0, 0), (byte) (114 - (ViewConfiguration.getScrollBarFadeDuration() >> 16)), objArr6);
            sb2.append(((String) objArr6[0]).intern());
            sb2.append(e2);
            aFLogger.v(logTag, sb2.toString());
            Object[] objArr7 = new Object[1];
            a("/\u0007\u001e\u0006㖺㖺㖺", 6 - TextUtils.lastIndexOf("", '0', 0, 0), (byte) (23 - TextUtils.indexOf("", "")), objArr7);
            return ((String) objArr7[0]).intern();
        }
    }

    private static void a(String str, int i2, byte b2, Object[] objArr) {
        int i3;
        Object charArray = str;
        if (str != null) {
            $10 = ($11 + 57) % 128;
            charArray = str.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        AFk1sSDK aFk1sSDK = new AFk1sSDK();
        char[] cArr2 = unregisterClient;
        if (cArr2 != null) {
            $10 = ($11 + 111) % 128;
            int length = cArr2.length;
            char[] cArr3 = new char[length];
            for (int i4 = 0; i4 < length; i4++) {
                cArr3[i4] = (char) (((long) cArr2[i4]) ^ (-3954572101486969845L));
            }
            $10 = ($11 + 53) % 128;
            cArr2 = cArr3;
        }
        char c2 = (char) ((-3954572101486969845L) ^ ((long) AFKeystoreWrapper));
        char[] cArr4 = new char[i2];
        if (i2 % 2 != 0) {
            i3 = i2 - 1;
            cArr4[i3] = (char) (cArr[i3] - b2);
        } else {
            i3 = i2;
        }
        if (i3 > 1) {
            aFk1sSDK.AFLogger = 0;
            while (true) {
                int i5 = aFk1sSDK.AFLogger;
                if (i5 >= i3) {
                    break;
                }
                int i6 = ($11 + 7) % 128;
                $10 = i6;
                char c3 = cArr[i5];
                aFk1sSDK.d = c3;
                char c4 = cArr[i5 + 1];
                aFk1sSDK.AFKeystoreWrapper = c4;
                if (c3 == c4) {
                    cArr4[i5] = (char) (c3 - b2);
                    cArr4[i5 + 1] = (char) (c4 - b2);
                    $11 = (i6 + 87) % 128;
                } else {
                    int i7 = c3 / c2;
                    aFk1sSDK.unregisterClient = i7;
                    int i8 = c3 % c2;
                    aFk1sSDK.f22669e = i8;
                    int i9 = c4 / c2;
                    aFk1sSDK.registerClient = i9;
                    int i10 = c4 % c2;
                    aFk1sSDK.w = i10;
                    if (i8 == i10) {
                        int i11 = ((i7 + c2) - 1) % c2;
                        aFk1sSDK.unregisterClient = i11;
                        int i12 = ((i9 + c2) - 1) % c2;
                        aFk1sSDK.registerClient = i12;
                        cArr4[i5] = cArr2[(i11 * c2) + i8];
                        cArr4[i5 + 1] = cArr2[(i12 * c2) + i10];
                    } else if (i7 == i9) {
                        int i13 = ((i8 + c2) - 1) % c2;
                        aFk1sSDK.f22669e = i13;
                        int i14 = ((i10 + c2) - 1) % c2;
                        aFk1sSDK.w = i14;
                        cArr4[i5] = cArr2[(i7 * c2) + i13];
                        cArr4[i5 + 1] = cArr2[(i9 * c2) + i14];
                    } else {
                        cArr4[i5] = cArr2[(i7 * c2) + i10];
                        cArr4[i5 + 1] = cArr2[(i9 * c2) + i8];
                    }
                }
                aFk1sSDK.AFLogger = i5 + 2;
            }
        }
        for (int i15 = 0; i15 < i2; i15++) {
            cArr4[i15] = (char) (cArr4[i15] ^ 13722);
        }
        objArr[0] = new String(cArr4);
    }

    private static void b(String str, int i2, Object[] objArr) {
        char[] charArray;
        if (str != null) {
            int i3 = $10 + 39;
            $11 = i3 % 128;
            if (i3 % 2 == 0) {
                str.toCharArray();
                throw null;
            }
            charArray = str.toCharArray();
        } else {
            charArray = str;
        }
        char[] cArr = charArray;
        AFk1uSDK aFk1uSDK = new AFk1uSDK();
        char[] cArr2 = new char[cArr.length];
        aFk1uSDK.AFKeystoreWrapper = 0;
        char[] cArr3 = new char[2];
        while (true) {
            int i4 = aFk1uSDK.AFKeystoreWrapper;
            if (i4 >= cArr.length) {
                objArr[0] = new String(cArr2, 0, i2);
                return;
            }
            cArr3[0] = cArr[i4];
            cArr3[1] = cArr[i4 + 1];
            int i5 = 58224;
            int i6 = 0;
            while (i6 < 16) {
                char c2 = cArr3[1];
                char c3 = cArr3[0];
                char c4 = (char) (c2 - (((c3 + i5) ^ ((c3 << 4) + ((char) (((long) f22610i) ^ (-8065364185533233497L))))) ^ ((c3 >>> 5) + ((char) (((long) w) ^ (-8065364185533233497L))))));
                cArr3[1] = c4;
                cArr3[0] = (char) (c3 - (((c4 >>> 5) + ((char) (((long) force) ^ (-8065364185533233497L)))) ^ ((c4 + i5) ^ ((c4 << 4) + ((char) (((long) registerClient) ^ (-8065364185533233497L)))))));
                i5 -= 40503;
                i6++;
                $10 = ($11 + 93) % 128;
            }
            int i7 = aFk1uSDK.AFKeystoreWrapper;
            cArr2[i7] = cArr3[0];
            cArr2[i7 + 1] = cArr3[1];
            aFk1uSDK.AFKeystoreWrapper = i7 + 2;
        }
    }

    public static void registerClient() {
        unregisterClient = new char[]{51685, 51625, 51624, 51698, 51643, 51619, 51684, 51639, 51616, 51711, 51620, 51682, 51700, 51689, 51709, 51674, 51655, 51702, 51644, 51688, 51681, 51723, 51667, 51699, 51710, 51669, 51683, 51664, 51621, 51701, 51679, 51705, 51707, 51680, 51703, 51651, 51708, 51697, 51662, 51617, 51696, 51686, 51706, 51704, 51627, 51678, 51687, 51633, 51647};
        AFKeystoreWrapper = (char) 64524;
        registerClient = (char) 19924;
        force = (char) 63335;
        f22610i = (char) 43221;
        w = (char) 41623;
    }

    private static StringBuilder AFKeystoreWrapper(String... strArr) throws Exception {
        ArrayList arrayList = new ArrayList();
        int length = strArr.length;
        for (int i2 = 0; i2 < 3; i2++) {
            v = (f22609e + 97) % 128;
            arrayList.add(Integer.valueOf(strArr[i2].length()));
        }
        Collections.sort(arrayList);
        int iIntValue = ((Integer) arrayList.get(0)).intValue();
        StringBuilder sb = new StringBuilder();
        int i3 = 0;
        while (i3 < iIntValue) {
            v = (f22609e + 83) % 128;
            Integer numValueOf = null;
            int i4 = 0;
            while (i4 < 3) {
                int iCharAt = strArr[i4].charAt(i3);
                if (numValueOf != null) {
                    iCharAt ^= numValueOf.intValue();
                }
                numValueOf = Integer.valueOf(iCharAt);
                i4++;
                v = (f22609e + 15) % 128;
            }
            sb.append(Integer.toHexString(numValueOf.intValue()));
            i3++;
            v = (f22609e + 71) % 128;
        }
        return sb;
    }
}
