package ZjTIAZ;

import java.util.HashMap;
import java.util.Observable;
import java.util.Observer;
import wcQZwr.GpYFMu;

/* JADX INFO: loaded from: classes.dex */
public class ECIjpk {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static String f181c = CNATAC.a("M|Su\\QZSRYTRRSzYGKLI_");
    public static String d = CNATAC.a("HJvF@\u0012CIbEPRPD\u0017QZ\nEYAB\u000e");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static String f182e = CNATAC.a("K]vVCFFO\u007f\u0011\\R\u0015QRLkKHGJ\\@EOFfR@HS");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HashMap f183a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public JMlAJG f184b;

    public class DXhAJK implements Observer {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static String f185b = CNATAC.a("K]vVCFFO\u007f\u0011\\R\u0015FEWJOX_D@H\u0010gM@QV\u0006D@Yt|y={iE^f");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static String f186c = CNATAC.a("M|Su\\QZSRYTRRSzYGKLI_");

        public DXhAJK() {
        }

        @Override // java.util.Observer
        public final void update(Observable observable, Object obj) {
            HashMap map = ECIjpk.this.f183a;
            if (obj != null) {
                try {
                    if (obj instanceof EACilt) {
                        EACilt eACilt = (EACilt) obj;
                        int i2 = eACilt.f176a;
                        if (map.containsKey(Integer.valueOf(i2)) || map.size() < 15) {
                            map.put(Integer.valueOf(i2), new EACilt(eACilt.f176a, eACilt.f180f, eACilt.f177b, eACilt.f178c, eACilt.d, eACilt.f179e));
                        }
                    }
                } catch (Exception e2) {
                    GpYFMu.g(f186c, f185b, e2);
                    GWINqE.b(e2);
                }
            }
        }
    }

    public ECIjpk() {
        DXhAJK dXhAJK = new DXhAJK();
        JMlAJG jMlAJG = new JMlAJG();
        this.f184b = jMlAJG;
        jMlAJG.addObserver(dXhAJK);
    }

    public final String a() {
        try {
            StringBuilder sb = new StringBuilder();
            for (EACilt eACilt : this.f183a.values()) {
                sb.append(eACilt.f176a);
                sb.append(",");
                sb.append(eACilt.f180f);
                sb.append(",");
                sb.append(eACilt.f177b);
                sb.append(",");
                sb.append(eACilt.f178c);
                sb.append(",");
                sb.append(eACilt.d);
                sb.append(",");
                sb.append(eACilt.f179e);
                sb.append(";");
            }
            return sb.toString();
        } catch (Exception e2) {
            GpYFMu.d(f181c, f182e, e2);
            GWINqE.b(e2);
            return "";
        }
    }
}
