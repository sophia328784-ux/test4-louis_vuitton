package com.networkbench.agent.impl.j;

import android.text.TextUtils;
import com.networkbench.agent.impl.NBSAgent;
import com.networkbench.agent.impl.harvest.InitUrlConnection;
import com.networkbench.agent.impl.util.ak;
import com.networkbench.agent.impl.util.r;
import defpackage.az;
import defpackage.d21;
import defpackage.fc;
import defpackage.n00;
import defpackage.pq0;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.Socket;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f37413a = 1000;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f37414b = 1001;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f37415c = 1002;
    private static String d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int f37416e = 40026;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static Socket f37417f;

    public static byte[] a(byte[] bArr, int i2, String str, String str2, String str3) {
        if (TextUtils.isEmpty(str2) || TextUtils.isEmpty(str3) || bArr == null) {
            r.A.a("processByteArr param is error !");
            return null;
        }
        com.networkbench.agent.impl.c.e eVar = r.A;
        eVar.a("methodtype:" + i2 + ", params:" + str + ", licenseKey:" + str2 + ", data_ver:" + str3);
        byte[] bArrE = e(bArr);
        byte[] bArrB = b(str);
        byte[] bArrC = c(str2);
        byte[] bArrD = TextUtils.isEmpty(c.a()) ? new byte[8] : ak.d(c.a());
        eVar.a("accessKey:" + c.a());
        byte[] bArrA = ak.a(i2, 1);
        eVar.a("method byte:" + ((int) bArrA[0]) + ", methodtype:" + i2);
        byte[] bArrA2 = new b((byte) 1, (byte) 1, (byte) 0, bArrE.length, bArrB.length, bArrC.length).a();
        byte[] bArrA3 = ak.a(str3, 4);
        eVar.a("versionBytes:" + ((int) bArrA3[0]) + ((int) bArrA3[1]) + ((int) bArrA3[2]) + ((int) bArrA3[3]));
        int length = bArrA3.length + bArrA2.length + 1 + bArrD.length + bArrC.length + bArrB.length + bArrE.length;
        byte[] bArrA4 = ak.a(length, 4);
        eVar.a("lengthBytes:" + ((int) bArrA4[0]) + ((int) bArrA4[1]) + ((int) bArrA4[2]) + ((int) bArrA4[3]));
        byte[] bArr2 = new byte[bArrA4.length + length];
        StringBuilder sbQ = fc.q(length, "total:", ", len:");
        sbQ.append(bArrA4.length);
        eVar.a(sbQ.toString());
        a(bArrA4, bArr2, 0);
        a(bArrA3, bArr2, bArrA4.length);
        a(bArrA2, bArr2, bArrA4.length + bArrA3.length);
        a(bArrA, bArr2, bArrA4.length + bArrA2.length + bArrA3.length);
        a(bArrD, bArr2, bArrA4.length + bArrA2.length + 1 + bArrA3.length);
        a(bArrC, bArr2, bArrA4.length + bArrA2.length + 1 + bArrD.length + bArrA3.length);
        a(bArrB, bArr2, bArrA4.length + bArrA2.length + 1 + bArrC.length + bArrD.length + bArrA3.length);
        System.arraycopy(bArrE, 0, bArr2, bArrA4.length + bArrA3.length + bArrA2.length + 1 + bArrD.length + bArrC.length + bArrB.length, bArrE.length);
        return bArr2;
    }

    private static byte[] b(String str) {
        boolean zIsEmpty = TextUtils.isEmpty(str);
        byte[] bytes = zIsEmpty ? new byte[0] : str.getBytes();
        if (!zIsEmpty) {
            try {
                return c.a(bytes);
            } catch (Throwable th) {
                r.A.f("encrypt array params error!" + th.toString());
            }
        }
        return bytes;
    }

    public static byte[] c() throws Exception {
        Socket socket = f37417f;
        if (socket == null) {
            return ak.a(1002, 2);
        }
        if (socket.isClosed()) {
            r.A.a("client is closed and init Socket");
            return ak.a(1002, 2);
        }
        com.networkbench.agent.impl.c.e eVar = r.A;
        eVar.a("begin read input Stream");
        DataInputStream dataInputStream = new DataInputStream(f37417f.getInputStream());
        byte[] bArr = new byte[2];
        eVar.a("input Stream returnVal:" + dataInputStream.read(bArr));
        int iA = ak.a(bArr);
        eVar.a("input Stream len:" + iA);
        if (iA == 0) {
            eVar.a("input Stream len is 0");
            return ak.a(1002, 2);
        }
        byte[] bArr2 = new byte[iA];
        dataInputStream.read(bArr2);
        a aVarA = a.a(bArr2[0]);
        byte[] bArr3 = {bArr2[1], bArr2[2]};
        int i2 = iA - 3;
        byte[] bArrD = new byte[i2];
        System.arraycopy(bArr2, 3, bArrD, 0, i2);
        if (aVarA.c() == 1) {
            bArrD = c.b(bArrD);
            if (bArrD.length == 2 && ak.a(bArrD) == 1001) {
                return bArrD;
            }
        }
        if (aVarA.b() == 1) {
            bArrD = c.d(bArrD);
        }
        byte[] bArr4 = new byte[bArrD.length + 2];
        bArr4[0] = bArr3[0];
        bArr4[1] = bArr3[1];
        System.arraycopy(bArrD, 0, bArr4, 2, bArrD.length);
        return bArr4;
    }

    private static final Socket d() throws Exception {
        Socket socket = f37417f;
        if (socket == null || socket.isClosed()) {
            synchronized (e.class) {
                try {
                    Socket socket2 = f37417f;
                    if (socket2 == null || socket2.isClosed()) {
                        f37417f = null;
                        f37417f = new Socket(d, f37416e);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f37417f;
    }

    private static byte[] e(byte[] bArr) {
        if (bArr != null && bArr.length > 0) {
            try {
                com.networkbench.agent.impl.c.e eVar = r.A;
                eVar.a("process byte arr--before compress!length is:" + bArr.length);
                byte[] bArrC = c.c(bArr);
                eVar.a("process byte arr--after compress! length is:" + bArrC.length);
                return c.a(bArrC);
            } catch (Throwable th) {
                r.A.f("encrypt array data error!" + th.toString());
            }
        }
        return bArr;
    }

    public static final void b() throws Exception {
        Socket socketD;
        if (TextUtils.isEmpty(d) || (socketD = d()) == null) {
            return;
        }
        socketD.setSoTimeout(20000);
    }

    public static JSONObject d(byte[] bArr) {
        try {
            return new JSONObject(new String(b(bArr), "UTF-8"));
        } catch (UnsupportedEncodingException | JSONException unused) {
            return null;
        }
    }

    public static byte[] b(byte[] bArr) {
        int length = bArr.length - 2;
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, 2, bArr2, 0, length);
        return bArr2;
    }

    private static String d(String str) {
        StringBuilder sbU = n00.u(str, "&protocol=2&X-App-Process=");
        sbU.append(InitUrlConnection.isMainProcess());
        return sbU.toString();
    }

    private static byte[] c(String str) {
        byte[] bArrD = ak.d(str);
        try {
            bArrD = c.a(bArrD);
            r.A.a("licenseBytes:" + ak.b(c.b(bArrD)) + ", len:" + bArrD.length);
            return bArrD;
        } catch (Throwable unused) {
            return bArrD;
        }
    }

    public static int c(byte[] bArr) {
        byte b2 = bArr[0];
        if (b2 == 255 && bArr[1] == 255) {
            return -1;
        }
        return ak.a(b2, bArr[1]);
    }

    public static void a(String str) {
        d = str;
    }

    public static void a(byte[] bArr) throws Exception {
        if (bArr != null) {
            a(bArr, 0, bArr.length);
        }
    }

    private static void a(byte[] bArr, int i2, int i3) throws Exception {
        Socket socket;
        if (bArr == null || (socket = f37417f) == null) {
            return;
        }
        try {
            socket.sendUrgentData(255);
        } catch (Exception unused) {
            f37417f.close();
            b();
        }
        if (i3 > 0 && i2 >= 0 && i2 < bArr.length) {
            DataOutputStream dataOutputStream = new DataOutputStream(f37417f.getOutputStream());
            dataOutputStream.write(bArr, i2, i3);
            dataOutputStream.flush();
            return;
        }
        az.v(pq0.k(i2, "my SocketProcess sendBytes Out of bounds: "));
    }

    public static void a() throws IOException {
        Socket socket = f37417f;
        if (socket != null && socket.isConnected()) {
            f37417f.close();
        }
        f37417f = null;
    }

    private static void a(byte[] bArr, byte[] bArr2, int i2) {
        if (bArr.length > bArr2.length) {
            return;
        }
        int length = bArr.length;
        for (int i3 = 0; i3 < length; i3++) {
            bArr2[i3 + i2] = bArr[i3];
        }
    }

    public static byte[] a(byte[] bArr, int i2, String str, String str2) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            str = d21.j(str2, str);
        }
        byte[] bArrA = a(bArr, i2, d(str), r.u().z(), NBSAgent.getSocketDataVersion());
        try {
            b();
            a(bArrA);
            return c();
        } catch (Exception unused) {
            return ak.a(1000, 2);
        }
    }
}
