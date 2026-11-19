package ZjTIAZ;

import android.app.Application;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.format.Formatter;
import android.webkit.WebSettings;
import androidx.core.content.ContextCompat;
import com.github.druk.dnssd.DNSSD;
import defpackage.d21;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.Set;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes2.dex */
public class UfEmur {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static int f284h = 1513;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static int f285i = 8278;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f286a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TelephonyManager f287b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile Boolean f288c;
    public volatile Boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f289e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f290f;
    public String g;

    /* JADX INFO: loaded from: classes.dex */
    class QjtvJE implements Runnable {
        public QjtvJE() {
        }

        @Override // java.lang.Runnable
        public void run() {
            UfEmur ufEmur = UfEmur.this;
            int i2 = UfEmur.f284h;
            ufEmur.getClass();
            try {
                ufEmur.g = WebSettings.getDefaultUserAgent(ufEmur.f286a);
            } catch (Exception unused) {
                ufEmur.g = CNATAC.a("#\u0014");
            }
            UfEmur.this.b(Boolean.TRUE);
        }
    }

    /* JADX INFO: loaded from: classes.dex */
    class ufEmur implements Runnable {
        public ufEmur() {
        }

        @Override // java.lang.Runnable
        public void run() {
            UfEmur ufEmur = UfEmur.this;
            Boolean bool = Boolean.FALSE;
            int i2 = UfEmur.f284h;
            ufEmur.b(bool);
            UfEmur ufEmur2 = UfEmur.this;
            Boolean bool2 = Boolean.TRUE;
            ufEmur2.f288c = bool2;
            UfEmur.this.f();
            UfEmur.this.d = bool2;
        }
    }

    public UfEmur(Application application) {
        Boolean bool = Boolean.FALSE;
        this.f288c = bool;
        this.d = bool;
        this.f289e = null;
        this.f290f = null;
        this.g = CNATAC.a("#\u0014");
        this.f286a = application.getApplicationContext();
        this.f287b = (TelephonyManager) application.getSystemService(CNATAC.a("~Mz]V"));
        try {
            new Thread(new ufEmur()).start();
        } catch (Exception unused) {
        }
    }

    public static boolean a(Context context) {
        if (ContextCompat.checkSelfPermission(context, CNATAC.a("oKqA\\[K\u000eaTGQ\\EDQFD\u0005na{jdnmwl")) != 0) {
            return false;
        }
        if (f284h > 1512) {
            return true;
        }
        while (true) {
            int i2 = f284h;
            int i3 = i2 + 26;
            if (i3 == 86) {
                break;
            }
            if (i3 == 125) {
                f284h = (i2 % 95) * 3795;
            }
        }
        while (true) {
            f284h = (f284h % 32) * 57;
        }
    }

    /* JADX WARN: Failed to build post-dominance tree
    java.lang.ArrayIndexOutOfBoundsException: Index 439 out of bounds for length 437
    	at jadx.core.dex.visitors.blocks.DominatorTree.build(DominatorTree.java:54)
    	at jadx.core.dex.visitors.blocks.PostDominatorTree.compute(PostDominatorTree.java:32)
    	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:93)
    	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:50)
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:453:0x06d1 -> B:441:0x069f). Please report as a decompilation issue!!! */
    /*  JADX ERROR: NullPointerException in pass: RegionMakerVisitor
        java.lang.NullPointerException
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.calcSwitchOut(SwitchRegionMaker.java:190)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.process(SwitchRegionMaker.java:72)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:115)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:111)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:111)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:111)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:111)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:111)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:111)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeMthRegion(RegionMaker.java:49)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:25)
        */
    public final void b(java.lang.Boolean r25) {
        /*
            Method dump skipped, instruction units count: 2242
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: ZjTIAZ.UfEmur.b(java.lang.Boolean):void");
    }

    public final String c() {
        try {
            return String.valueOf(Settings.Secure.getInt(this.f286a.getContentResolver(), CNATAC.a("|QalPSCLx_RcXYS]"), 0));
        } catch (Exception unused) {
            return CNATAC.a("#\u0014");
        }
    }

    public final String d(Boolean bool) {
        try {
            if (!bool.booleanValue()) {
                try {
                    this.g = WebSettings.getDefaultUserAgent(this.f286a);
                } catch (Exception unused) {
                    this.g = CNATAC.a("#\u0014");
                }
            } else if (Objects.equals(this.g, CNATAC.a("#\u0014"))) {
                new Thread(new QjtvJE()).start();
            }
        } catch (Exception unused2) {
        }
        return this.g;
    }

    public final String e() {
        int i2;
        try {
            List<ApplicationInfo> installedApplications = this.f286a.getPackageManager().getInstalledApplications(0);
            if (installedApplications.size() > 0) {
                String str = "";
                for (ApplicationInfo applicationInfo : installedApplications) {
                    if ((1 & applicationInfo.flags) == 0) {
                        str = str + "#" + applicationInfo.packageName;
                    }
                }
                if (!str.isEmpty()) {
                    return DeHqqG.c(str.substring(1));
                }
            }
            if ((f284h ^ 1513) != 0) {
                do {
                    int i3 = f284h;
                    i2 = i3 + 65;
                    if (i2 == 58) {
                        f284h = ((i3 * 38) >> 76) ^ 1678;
                        break;
                    }
                } while (i2 != 170);
                f284h = (f284h * 118) % 122;
            }
        } catch (Exception unused) {
        }
        return CNATAC.a("#\u0014");
    }

    public final void f() {
        String strA;
        String strA2;
        String strA3;
        String strA4;
        String strA5;
        WifiInfo connectionInfo;
        int i2;
        int i3;
        BluetoothAdapter defaultAdapter;
        StringBuilder sb = new StringBuilder();
        try {
            strA = CNATAC.a("OKqA\\[K\u0000") + Build.VERSION.CODENAME + " " + Build.VERSION.RELEASE + CNATAC.a(".dEz\u0013") + Build.VERSION.SDK_INT;
        } catch (Exception unused) {
            strA = CNATAC.a("#\u0014");
        }
        d21.A(strA, ",", sb);
        try {
            strA2 = Locale.getDefault().getLanguage() + Locale.getDefault().getCountry();
        } catch (Exception unused2) {
            strA2 = CNATAC.a("#\u0014");
        }
        d21.A(strA2, ",", sb);
        try {
            strA3 = String.valueOf(TimeZone.getDefault().getRawOffset() / DNSSD.DNSSD_DEFAULT_TIMEOUT);
        } catch (Exception unused3) {
            strA3 = CNATAC.a("#\u0014");
        }
        d21.A(strA3, ",", sb);
        try {
            if (!a(this.f286a) || (defaultAdapter = BluetoothAdapter.getDefaultAdapter()) == null) {
                if ((f285i ^ 8278) != 0) {
                    do {
                        i2 = f285i;
                        i3 = i2 + 26;
                        if (i3 == 14) {
                            while (true) {
                                f285i = ((f285i * 71) % 90) % 50;
                            }
                        } else if (i3 == 85) {
                            while (true) {
                                f285i = (f285i >> 5) * 117;
                            }
                        }
                    } while (i3 != 280);
                    while (true) {
                        f285i = ((f285i + i2) * 43) % 20;
                    }
                }
                strA4 = CNATAC.a("#\u0014");
            } else {
                strA4 = defaultAdapter.getName();
            }
        } catch (Exception unused4) {
        }
        d21.A(strA4, ",", sb);
        try {
            WifiManager wifiManager = (WifiManager) this.f286a.getSystemService(CNATAC.a("yLsZ"));
            if (wifiManager == null || (connectionInfo = wifiManager.getConnectionInfo()) == null) {
                if (f284h <= 1512) {
                    while (true) {
                        int i4 = f284h;
                        int i5 = i4 + 26;
                        if (i5 == 62) {
                            break;
                        } else if (i5 == 212) {
                            f284h = (i4 >> 93) + i4 + i4;
                        }
                    }
                    while (true) {
                        f284h = (f284h * 79) ^ 1836;
                    }
                }
                strA5 = CNATAC.a(">\u000b%\u001d\u0003\u001c\u001f");
            } else {
                strA5 = Formatter.formatIpAddress(connectionInfo.getIpAddress());
            }
        } catch (Exception unused5) {
        }
        sb.append(DeHqqG.a(strA5));
        this.f290f = sb.toString();
        this.d = Boolean.TRUE;
    }

    public final synchronized String g() {
        String str;
        Boolean bool = Boolean.TRUE;
        synchronized (this) {
            try {
                if (!this.f288c.booleanValue() || this.f289e == null) {
                    b(bool);
                }
                str = this.f289e;
            } catch (Throwable th) {
                throw th;
            }
        }
        return str;
    }

    public final synchronized String h() {
        try {
            if (!this.d.booleanValue() || this.f290f == null) {
                f();
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.f290f;
    }

    public final String i() {
        Set<BluetoothDevice> bondedDevices;
        try {
            if (a(this.f286a)) {
                BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
                String str = "";
                if (defaultAdapter != null && (bondedDevices = defaultAdapter.getBondedDevices()) != null && bondedDevices.size() > 0) {
                    Iterator<BluetoothDevice> it = bondedDevices.iterator();
                    while (it.hasNext()) {
                        str = str + "#" + it.next().getAddress();
                    }
                    return str.substring(1);
                }
            }
        } catch (Exception unused) {
        }
        return CNATAC.a("#\u0014");
    }

    public final String j() {
        try {
            return String.valueOf(Settings.System.getInt(this.f286a.getContentResolver(), CNATAC.a("lI`VG]@TynQUFUXNLXJNDBFDX"), 0));
        } catch (Exception unused) {
            return CNATAC.a("#\u0014");
        }
    }
}
