package com.linkplay.core.utils;

import android.text.TextUtils;
import com.blankj.utilcode.util.ShellUtils;
import com.linkplay.log.LinkplayLog;
import com.linkplay.log.LinkplayLogTags;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.util.Arrays;
import kotlin.jvm.JvmStatic;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes2.dex */
public final class IPUtils {
    public static final IPUtils INSTANCE = new IPUtils();

    private IPUtils() {
    }

    @JvmStatic
    public static final boolean connectTCP(String str) throws IOException {
        str.getClass();
        Socket socket = new Socket();
        try {
            socket.setSoTimeout(5000);
            socket.connect(new InetSocketAddress(str, 443), 5000);
            return socket.isConnected();
        } catch (Exception unused) {
            return false;
        } finally {
            socket.close();
        }
    }

    public final boolean isAvailableByPing(String str) {
        str.getClass();
        ShellUtils.CommandResult commandResultExecCmd = ShellUtils.execCmd(String.format("ping -c 2 -t 4 %s", Arrays.copyOf(new Object[]{TextUtils.isEmpty(str) ? "223.5.5.5" : str}, 1)), false);
        boolean z = commandResultExecCmd.result == 0;
        if (!z) {
            LinkplayLog.w(LinkplayLogTags.LPLogTag, "PingUtil:pingIP:host=" + str + ",FAIL> " + commandResultExecCmd.errorMsg);
            return z;
        }
        LinkplayLog.d(LinkplayLogTags.LPLogTag, StringsKt.b0("\n     PingUtil:pingIP:host=" + str + ",REPLY>\n     " + commandResultExecCmd.successMsg + "\n     "));
        return z;
    }
}
