package com.networkbench.agent.impl.performance.coulometry.c.c;

import android.content.Context;
import android.os.Process;
import android.text.TextUtils;
import com.networkbench.agent.impl.c.g;
import com.networkbench.agent.impl.util.r;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import okhttp3.internal.ws.RealWebSocket;

/* JADX INFO: loaded from: classes2.dex */
public class d implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f37905a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private File f37906b = new File("/proc/net/xt_qtaguid/stats");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f37907c;

    public d() {
        a(r.u().J());
        this.f37907c = 0L;
    }

    @Override // com.networkbench.agent.impl.performance.coulometry.c.c.a
    public void a() {
        this.f37907c = c();
        g.y("TrafficHook  this.allData : " + this.f37907c);
    }

    @Override // com.networkbench.agent.impl.performance.coulometry.c.c.a
    public long b() {
        long jC = c();
        long j2 = jC - this.f37907c;
        this.f37907c = jC;
        return j2;
    }

    public long c() {
        long j2;
        long j3;
        long j4;
        long j5;
        int i2;
        long j6 = 0;
        BufferedReader bufferedReader = null;
        try {
            BufferedReader bufferedReader2 = new BufferedReader(new FileReader(this.f37906b));
            j2 = 0;
            j3 = 0;
            j4 = 0;
            try {
                while (true) {
                    try {
                        String line = bufferedReader2.readLine();
                        if (line == null) {
                            break;
                        }
                        String[] strArrSplit = line.split("\\s+");
                        if (TextUtils.equals(strArrSplit[3], "uid_tag_int") || strArrSplit.length < 9 || this.f37905a != (i2 = Integer.parseInt(strArrSplit[3]))) {
                            j5 = j6;
                            j6 = j5;
                        } else {
                            long j7 = Long.parseLong(strArrSplit[5]);
                            j5 = j6;
                            try {
                                long j8 = Long.parseLong(strArrSplit[6]);
                                g.y("bucket.getUid() :" + i2);
                                g.y("myUid :" + this.f37905a);
                                g.y("rxBytes :" + j7);
                                g.y("txBytes :" + j8);
                                int i3 = Integer.parseInt(strArrSplit[4]);
                                if (i3 == 0) {
                                    j3 += j7;
                                    j4 += j8;
                                } else if (i3 == 1) {
                                    j2 += j8;
                                    j6 = j5 + j7;
                                }
                                j6 = j5;
                            } catch (Throwable unused) {
                                bufferedReader = bufferedReader2;
                                j6 = j5;
                            }
                        }
                    } catch (Throwable unused2) {
                        bufferedReader = bufferedReader2;
                    }
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (IOException e2) {
                            g.y("TrafficLowData  reader.close() has error : " + e2.getMessage());
                        }
                    }
                    return (((j6 + j2) + j3) + j4) / RealWebSocket.DEFAULT_MINIMUM_DEFLATE_SIZE;
                }
                bufferedReader2.close();
            } catch (IOException e3) {
                g.y("TrafficLowData  reader.close() has error : " + e3.getMessage());
            }
            long j9 = j6;
            j6 = j9;
        } catch (Throwable unused3) {
            j2 = 0;
            j3 = 0;
            j4 = 0;
        }
        return (((j6 + j2) + j3) + j4) / RealWebSocket.DEFAULT_MINIMUM_DEFLATE_SIZE;
    }

    private void a(Context context) {
        this.f37905a = Process.myUid();
    }
}
