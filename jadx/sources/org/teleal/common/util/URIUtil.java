package org.teleal.common.util;

import defpackage.lc0;
import defpackage.md;
import defpackage.r81;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URL;
import java.util.BitSet;

/* JADX INFO: loaded from: classes5.dex */
public class URIUtil {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final BitSet f78649a;

    static {
        BitSet bitSet = new BitSet();
        bitSet.set(58);
        bitSet.set(47);
        bitSet.set(63);
        bitSet.set(35);
        bitSet.set(91);
        bitSet.set(93);
        bitSet.set(64);
        BitSet bitSet2 = new BitSet();
        bitSet2.set(33);
        bitSet2.set(36);
        bitSet2.set(38);
        bitSet2.set(39);
        bitSet2.set(40);
        bitSet2.set(41);
        bitSet2.set(42);
        bitSet2.set(43);
        bitSet2.set(44);
        bitSet2.set(59);
        bitSet2.set(61);
        BitSet bitSet3 = new BitSet();
        bitSet3.or(bitSet);
        bitSet3.or(bitSet2);
        BitSet bitSet4 = new BitSet();
        bitSet4.set(97);
        bitSet4.set(98);
        bitSet4.set(99);
        bitSet4.set(100);
        bitSet4.set(101);
        bitSet4.set(102);
        bitSet4.set(103);
        bitSet4.set(104);
        bitSet4.set(105);
        bitSet4.set(106);
        bitSet4.set(107);
        bitSet4.set(108);
        bitSet4.set(109);
        bitSet4.set(110);
        bitSet4.set(111);
        bitSet4.set(112);
        bitSet4.set(113);
        bitSet4.set(114);
        bitSet4.set(115);
        bitSet4.set(116);
        bitSet4.set(117);
        bitSet4.set(118);
        bitSet4.set(119);
        bitSet4.set(120);
        bitSet4.set(121);
        bitSet4.set(122);
        BitSet bitSet5 = new BitSet();
        bitSet5.set(65);
        bitSet5.set(66);
        bitSet5.set(67);
        bitSet5.set(68);
        bitSet5.set(69);
        bitSet5.set(70);
        bitSet5.set(71);
        bitSet5.set(72);
        bitSet5.set(73);
        bitSet5.set(74);
        bitSet5.set(75);
        bitSet5.set(76);
        bitSet5.set(77);
        bitSet5.set(78);
        bitSet5.set(79);
        bitSet5.set(80);
        bitSet5.set(81);
        bitSet5.set(82);
        bitSet5.set(83);
        bitSet5.set(84);
        bitSet5.set(85);
        bitSet5.set(86);
        bitSet5.set(87);
        bitSet5.set(88);
        bitSet5.set(89);
        bitSet5.set(90);
        BitSet bitSet6 = new BitSet();
        bitSet6.or(bitSet4);
        bitSet6.or(bitSet5);
        BitSet bitSet7 = new BitSet();
        bitSet7.set(48);
        bitSet7.set(49);
        bitSet7.set(50);
        bitSet7.set(51);
        bitSet7.set(52);
        bitSet7.set(53);
        bitSet7.set(54);
        bitSet7.set(55);
        bitSet7.set(56);
        bitSet7.set(57);
        BitSet bitSet8 = new BitSet();
        bitSet8.or(bitSet6);
        bitSet8.or(bitSet7);
        BitSet bitSet9 = new BitSet();
        bitSet9.or(bitSet6);
        bitSet9.or(bitSet7);
        bitSet9.set(45);
        bitSet9.set(46);
        bitSet9.set(95);
        bitSet9.set(126);
        BitSet bitSet10 = new BitSet();
        bitSet10.or(bitSet9);
        bitSet10.or(bitSet2);
        bitSet10.set(58);
        bitSet10.set(64);
        BitSet bitSet11 = new BitSet();
        f78649a = bitSet11;
        bitSet11.or(bitSet10);
        bitSet11.clear(59);
        BitSet bitSet12 = new BitSet();
        bitSet12.or(bitSet10);
        bitSet12.clear(59);
        bitSet12.clear(61);
        BitSet bitSet13 = new BitSet();
        bitSet13.or(bitSet10);
        bitSet13.clear(59);
        BitSet bitSet14 = new BitSet();
        bitSet14.or(bitSet10);
        bitSet14.set(47);
        bitSet14.set(63);
        bitSet14.clear(61);
        bitSet14.clear(38);
        bitSet14.clear(43);
        BitSet bitSet15 = new BitSet();
        bitSet15.or(bitSet10);
        bitSet15.set(47);
        bitSet15.set(63);
    }

    public static URI a(URI uri, URI uri2) {
        if (uri == null && !uri2.isAbsolute()) {
            md.n("Base URI is null and given URI is not absolute");
            return null;
        }
        if (uri == null && uri2.isAbsolute()) {
            return uri2;
        }
        if (uri.getPath().length() == 0) {
            try {
                uri = new URI(uri.getScheme(), uri.getAuthority(), "/", uri.getQuery(), uri.getFragment());
            } catch (Exception e2) {
                lc0.u(e2);
                return null;
            }
        }
        return uri.resolve(uri2);
    }

    public static URL b(URL url, URI uri) {
        if (url == null && !uri.isAbsolute()) {
            md.n("Base URL is null and given URI is not absolute");
            return null;
        }
        if (url == null && uri.isAbsolute()) {
            try {
                return uri.toURL();
            } catch (Exception unused) {
                md.n("Base URL was null and given URI can't be converted to URL");
                return null;
            }
        }
        try {
            return a(url.toURI(), uri).toURL();
        } catch (Exception e2) {
            r81.j("Base URL is not an URI, or can't create absolute URI (null?), or absolute URI can not be converted to URL", e2);
            return null;
        }
    }

    public static String c(String str, BitSet bitSet) throws UnsupportedEncodingException {
        if (str == null) {
            return null;
        }
        StringBuffer stringBuffer = new StringBuffer(str.length() * 3);
        for (char c2 : str.toCharArray()) {
            if (bitSet.get(c2)) {
                stringBuffer.append(c2);
            } else {
                for (byte b2 : String.valueOf(c2).getBytes("UTF-8")) {
                    stringBuffer.append(String.format("%%%1$02X", Integer.valueOf(b2 & 255)));
                }
            }
        }
        return stringBuffer.toString();
    }
}
