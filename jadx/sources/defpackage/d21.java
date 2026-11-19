package defpackage;

import ZjTIAZ.CNATAC;
import ZjTIAZ.DeHqqG;
import android.content.res.TypedArray;
import androidx.compose.runtime.GapComposer;
import androidx.media3.common.Format;
import androidx.media3.extractor.TrackOutput;
import androidx.media3.session.PlayerInfo;
import com.networkbench.agent.impl.c.e;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.BeautyProductTypeUiModel;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ForkJoinPool;
import java.util.concurrent.TimeUnit;
import kotlin.NoWhenBranchMatchedException;
import okhttp3.Response;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.pqc.crypto.xmss.XMSSMTParameters;

/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class d21 {
    public static void A(String str, String str2, StringBuilder sb) {
        sb.append(DeHqqG.a(str));
        sb.append(str2);
    }

    public static void B(StringBuilder sb, Boolean bool, String str, Boolean bool2, String str2) {
        sb.append(bool);
        sb.append(str);
        sb.append(bool2);
        sb.append(str2);
    }

    public static void C(Throwable th, StringBuilder sb, e eVar) {
        sb.append(th.getMessage());
        eVar.e(sb.toString());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void D(Response response) throws Exception {
        boolean zIsTerminated;
        if (response instanceof AutoCloseable) {
            response.close();
            return;
        }
        if (!(response instanceof ExecutorService)) {
            ct0.c();
            return;
        }
        ExecutorService executorService = (ExecutorService) response;
        if (executorService == ForkJoinPool.commonPool() || (zIsTerminated = executorService.isTerminated())) {
            return;
        }
        executorService.shutdown();
        boolean z = false;
        while (!zIsTerminated) {
            try {
                zIsTerminated = executorService.awaitTermination(1L, TimeUnit.DAYS);
            } catch (InterruptedException unused) {
                if (!z) {
                    executorService.shutdownNow();
                    z = true;
                }
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
    }

    public static int a(double d, int i2, int i3) {
        return (Double.hashCode(d) + i2) * i3;
    }

    public static int b(BeautyProductTypeUiModel beautyProductTypeUiModel, int i2, int i3) {
        return (beautyProductTypeUiModel.hashCode() + i2) * i3;
    }

    public static PlayerInfo.Builder c(PlayerInfo playerInfo, PlayerInfo playerInfo2) {
        playerInfo.getClass();
        return new PlayerInfo.Builder(playerInfo2);
    }

    public static String d(char c2, String str, String str2) {
        return str + str2 + c2;
    }

    public static String e(float f2, String str, StringBuilder sb) {
        sb.append(f2);
        sb.append(str);
        return sb.toString();
    }

    public static String f(int i2, String str, StringBuilder sb) {
        sb.append(str);
        sb.append(i2);
        return sb.toString();
    }

    public static String g(long j2, String str) {
        return str + j2;
    }

    public static String h(Exception exc, String str, StringBuilder sb) {
        sb.append(CNATAC.a(str));
        sb.append(exc.getMessage());
        return sb.toString();
    }

    public static String i(IllegalArgumentException illegalArgumentException, StringBuilder sb) {
        sb.append(illegalArgumentException.getMessage());
        return sb.toString();
    }

    public static String j(String str, String str2) {
        return str + str2;
    }

    public static String k(String str, String str2, String str3, String str4) {
        return str + str2 + str3 + str4;
    }

    public static String l(String str, String str2, String str3, String str4, String str5) {
        return str + str2 + str3 + str4 + str5;
    }

    public static String m(String str, String str2, String str3, String str4, boolean z) {
        return str + str2 + str3 + z + str4;
    }

    public static String n(String str, String str2, Throwable th) {
        return str + th + str2;
    }

    public static String o(String str, String str2, List list) {
        return str + list + str2;
    }

    public static String p(StringBuilder sb, String str, String str2, String str3) {
        sb.append(str);
        sb.append(str2);
        sb.append(str3);
        return sb.toString();
    }

    public static String q(StringBuilder sb, boolean z, char c2) {
        sb.append(z);
        sb.append(c2);
        return sb.toString();
    }

    public static String r(ASN1TaggedObject aSN1TaggedObject, StringBuilder sb) {
        sb.append(aSN1TaggedObject.getTagNo());
        return sb.toString();
    }

    public static StringBuilder s(String str, String str2, String str3, String str4, boolean z) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(str2);
        sb.append(str3);
        sb.append(z);
        sb.append(str4);
        return sb;
    }

    public static StringBuilder t(String str, String str2, String str3, List list, String str4) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(str2);
        sb.append(str3);
        sb.append(list);
        sb.append(str4);
        return sb;
    }

    public static NoWhenBranchMatchedException u(GapComposer gapComposer, int i2, boolean z) {
        gapComposer.L(i2);
        gapComposer.Z(z);
        return new NoWhenBranchMatchedException();
    }

    public static void v(int i2, int i3, ASN1ObjectIdentifier aSN1ObjectIdentifier, HashMap map, Integer num) {
        map.put(num, new XMSSMTParameters(i2, i3, aSN1ObjectIdentifier));
    }

    public static void w(Format.Builder builder, TrackOutput trackOutput) {
        trackOutput.b(new Format(builder));
    }

    public static /* synthetic */ void x(AutoCloseable autoCloseable) throws Exception {
        boolean zIsTerminated;
        if (autoCloseable instanceof AutoCloseable) {
            autoCloseable.close();
            return;
        }
        if (!(autoCloseable instanceof ExecutorService)) {
            if (autoCloseable instanceof TypedArray) {
                ((TypedArray) autoCloseable).recycle();
                return;
            } else {
                ct0.c();
                return;
            }
        }
        ExecutorService executorService = (ExecutorService) autoCloseable;
        if (executorService == ForkJoinPool.commonPool() || (zIsTerminated = executorService.isTerminated())) {
            return;
        }
        executorService.shutdown();
        boolean z = false;
        while (!zIsTerminated) {
            try {
                zIsTerminated = executorService.awaitTermination(1L, TimeUnit.DAYS);
            } catch (InterruptedException unused) {
                if (!z) {
                    executorService.shutdownNow();
                    z = true;
                }
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
    }

    public static void y(String str, String str2, String str3, String str4) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        str4.getClass();
    }

    public static void z(String str, String str2, String str3, StringBuilder sb, List list) {
        sb.append(str);
        sb.append(str2);
        sb.append(list);
        sb.append(str3);
    }
}
