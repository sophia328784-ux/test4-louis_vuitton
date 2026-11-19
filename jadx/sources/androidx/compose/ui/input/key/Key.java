package androidx.compose.ui.input.key;

import com.github.druk.dnssd.NSType;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.rtccloud.sdk.Sink;
import org.bouncycastle.asn1.BERTags;
import org.bouncycastle.asn1.eac.CertificateBody;
import org.bouncycastle.math.Primes;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\b\u0087@\u0018\u00002\u00020\u0001:\u0001\u0002\u0088\u0001\u0003\u0092\u0001\u00020\u0004¨\u0006\u0005"}, d2 = {"Landroidx/compose/ui/input/key/Key;", "", "Companion", "keyCode", "", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
@JvmInline
public abstract class Key {
    public static final long A;
    public static final long B;
    public static final long C;
    public static final long D;
    public static final long E;
    public static final long F;
    public static final long G;
    public static final long H;
    public static final long I;
    public static final long J;
    public static final long K;
    public static final long L;
    public static final long M;
    public static final long N;
    public static final long O;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Companion f9226a = new Companion(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final long f9227b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final long f9228c;
    public static final long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final long f9229e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final long f9230f;
    public static final long g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final long f9231h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final long f9232i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final long f9233j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final long f9234k;
    public static final long l;
    public static final long m;
    public static final long n;
    public static final long o;
    public static final long p;
    public static final long q;
    public static final long r;
    public static final long s;
    public static final long t;
    public static final long u;
    public static final long v;
    public static final long w;
    public static final long x;
    public static final long y;
    public static final long z;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/input/key/Key$Companion;", "", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        n00.z(0, 1, 2, 3, 3);
        f9227b = Key_androidKt.a(4);
        Key_androidKt.a(259);
        f9228c = Key_androidKt.a(260);
        d = Key_androidKt.a(261);
        n00.z(262, 263, 280, 281, 282);
        Key_androidKt.a(283);
        Key_androidKt.a(5);
        Key_androidKt.a(6);
        f9229e = Key_androidKt.a(19);
        f9230f = Key_androidKt.a(20);
        g = Key_androidKt.a(21);
        f9231h = Key_androidKt.a(22);
        f9232i = Key_androidKt.a(23);
        n00.z(268, 269, Sink.ORIENTATION_270, 271, 24);
        n00.z(25, 26, 27, 28, 7);
        n00.z(8, 9, 10, 11, 12);
        n00.z(13, 14, 15, 16, 81);
        Key_androidKt.a(69);
        Key_androidKt.a(17);
        Key_androidKt.a(70);
        Key_androidKt.a(18);
        f9233j = Key_androidKt.a(29);
        Key_androidKt.a(30);
        f9234k = Key_androidKt.a(31);
        Key_androidKt.a(32);
        Key_androidKt.a(33);
        Key_androidKt.a(34);
        Key_androidKt.a(35);
        l = Key_androidKt.a(36);
        n00.z(37, 38, 39, 40, 41);
        n00.z(42, 43, 44, 45, 46);
        Key_androidKt.a(47);
        Key_androidKt.a(48);
        Key_androidKt.a(49);
        m = Key_androidKt.a(50);
        Key_androidKt.a(51);
        n = Key_androidKt.a(52);
        o = Key_androidKt.a(53);
        p = Key_androidKt.a(54);
        n00.z(55, 56, 57, 58, 59);
        Key_androidKt.a(60);
        q = Key_androidKt.a(61);
        r = Key_androidKt.a(62);
        Key_androidKt.a(63);
        Key_androidKt.a(64);
        Key_androidKt.a(65);
        s = Key_androidKt.a(66);
        t = Key_androidKt.a(67);
        u = Key_androidKt.a(112);
        v = Key_androidKt.a(111);
        n00.z(113, 114, 115, 116, 117);
        Key_androidKt.a(118);
        Key_androidKt.a(119);
        Key_androidKt.a(120);
        Key_androidKt.a(121);
        w = Key_androidKt.a(122);
        x = Key_androidKt.a(123);
        y = Key_androidKt.a(124);
        z = Key_androidKt.a(277);
        A = Key_androidKt.a(278);
        B = Key_androidKt.a(279);
        Key_androidKt.a(68);
        Key_androidKt.a(71);
        Key_androidKt.a(72);
        Key_androidKt.a(76);
        C = Key_androidKt.a(73);
        n00.z(74, 75, 77, 78, 79);
        Key_androidKt.a(80);
        Key_androidKt.a(82);
        Key_androidKt.a(83);
        Key_androidKt.a(84);
        D = Key_androidKt.a(92);
        E = Key_androidKt.a(93);
        n00.z(94, 95, 96, 97, 98);
        n00.z(99, 100, 101, 102, 103);
        n00.z(104, 105, 106, 107, 108);
        n00.z(109, 110, 188, 189, 190);
        n00.z(191, 192, 193, 194, 195);
        n00.z(196, 197, 198, 199, 200);
        n00.z(201, 202, 203, 125, 131);
        n00.z(132, 133, 134, 135, 136);
        n00.z(137, 138, 139, 140, 141);
        n00.z(142, 143, 144, 145, 146);
        n00.z(147, 148, 149, 150, 151);
        n00.z(152, 153, 154, 155, 156);
        Key_androidKt.a(157);
        Key_androidKt.a(158);
        Key_androidKt.a(159);
        F = Key_androidKt.a(160);
        n00.z(161, 162, 163, 126, CertificateBody.profileType);
        n00.z(85, 86, 130, 87, 88);
        n00.z(89, 90, 128, 222, 129);
        n00.z(226, 272, 273, 274, 275);
        n00.z(91, 164, 165, 166, 167);
        n00.z(168, 169, 170, 171, 172);
        n00.z(173, 174, 175, 176, 177);
        n00.z(178, 179, Sink.ORIENTATION_180, 181, 182);
        n00.z(183, 184, ModuleDescriptor.MODULE_VERSION, 186, 187);
        n00.z(204, 205, 206, 207, 208);
        n00.z(209, 210, Primes.SMALL_FACTOR_LIMIT, 212, 213);
        n00.z(214, 215, 216, 217, com.google.android.gms.dynamite.descriptors.com.google.android.gms.tagmanager.ModuleDescriptor.MODULE_VERSION);
        n00.z(219, 220, 221, 223, BERTags.FLAGS);
        n00.z(276, 225, 229, 230, 231);
        n00.z(232, 233, 234, 235, 236);
        n00.z(237, 238, 239, 240, 241);
        n00.z(242, 243, 244, 245, 246);
        n00.z(247, 248, NSType.TKEY, 250, NSType.IXFR);
        n00.z(NSType.AXFR, NSType.MAILB, 254, 255, 256);
        n00.z(257, 258, 264, 265, 266);
        n00.z(267, 284, 285, 286, 287);
        Key_androidKt.a(288);
        G = Key_androidKt.a(-1000000001);
        H = Key_androidKt.a(-1000000002);
        I = Key_androidKt.a(-1000000003);
        J = Key_androidKt.a(-1000000004);
        K = Key_androidKt.a(-1000000005);
        L = Key_androidKt.a(-1000000006);
        M = Key_androidKt.a(-1000000007);
        N = Key_androidKt.a(-1000000008);
        O = Key_androidKt.a(-1000000009);
        Key_androidKt.a(-1000000010);
    }

    public static final boolean a(long j2, long j3) {
        return j2 == j3;
    }
}
