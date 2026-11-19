package kotlin.reflect.jvm.internal.impl.util;

import java.util.Map;
import java.util.Set;
import kotlin.Pair;
import kotlin.collections.ArraysKt;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.text.Regex;
import org.teleal.cling.support.contentdirectory.callback.Browse;

/* JADX INFO: loaded from: classes4.dex */
public abstract class OperatorNameConventions {
    public static final Set A;
    public static final Map B;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Name f74357a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Name f74358b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Name f74359c;
    public static final Name d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Name f74360e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Name f74361f;
    public static final Name g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Name f74362h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final Name f74363i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final Name f74364j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final Name f74365k;
    public static final Name l;
    public static final Regex m;
    public static final Name n;
    public static final Name o;
    public static final Name p;
    public static final Name q;
    public static final Set r;
    public static final Set s;
    public static final Set t;
    public static final Set u;
    public static final Set v;
    public static final Set w;
    public static final Set x;
    public static final Set y;
    public static final Set z;

    static {
        Name nameE = Name.e("getValue");
        f74357a = nameE;
        Name nameE2 = Name.e("setValue");
        f74358b = nameE2;
        Name nameE3 = Name.e("provideDelegate");
        f74359c = nameE3;
        Name nameE4 = Name.e("equals");
        d = nameE4;
        Name.e("hashCode");
        Name nameE5 = Name.e("compareTo");
        f74360e = nameE5;
        Name nameE6 = Name.e("contains");
        f74361f = nameE6;
        g = Name.e("invoke");
        f74362h = Name.e("iterator");
        f74363i = Name.e("get");
        Name nameE7 = Name.e("set");
        f74364j = nameE7;
        f74365k = Name.e("next");
        l = Name.e("hasNext");
        Name.e("toString");
        m = new Regex("component\\d+");
        Name nameE8 = Name.e("and");
        Name nameE9 = Name.e("or");
        Name nameE10 = Name.e("xor");
        Name nameE11 = Name.e("inv");
        Name nameE12 = Name.e("shl");
        Name nameE13 = Name.e("shr");
        Name nameE14 = Name.e("ushr");
        Name nameE15 = Name.e("inc");
        n = nameE15;
        Name nameE16 = Name.e("dec");
        o = nameE16;
        Name nameE17 = Name.e("plus");
        Name nameE18 = Name.e("minus");
        Name nameE19 = Name.e("not");
        Name nameE20 = Name.e("unaryMinus");
        Name nameE21 = Name.e("unaryPlus");
        Name nameE22 = Name.e("times");
        Name nameE23 = Name.e("div");
        Name nameE24 = Name.e("rem");
        Name nameE25 = Name.e("rangeTo");
        p = nameE25;
        Name nameE26 = Name.e("rangeUntil");
        q = nameE26;
        Name nameE27 = Name.e("timesAssign");
        Name nameE28 = Name.e("divAssign");
        Name nameE29 = Name.e("remAssign");
        Name nameE30 = Name.e("plusAssign");
        Name nameE31 = Name.e("minusAssign");
        Name nameE32 = Name.e("toDouble");
        Name nameE33 = Name.e("toFloat");
        Name nameE34 = Name.e("toLong");
        Name nameE35 = Name.e("toInt");
        Name nameE36 = Name.e("toChar");
        Name nameE37 = Name.e("toShort");
        Name nameE38 = Name.e("toByte");
        Name nameE39 = Name.e("toULong");
        Name nameE40 = Name.e("toUInt");
        Name nameE41 = Name.e("toUShort");
        Name nameE42 = Name.e("toUByte");
        r = ArraysKt.Z(new Name[]{nameE15, nameE16, nameE21, nameE20, nameE19, nameE11});
        s = ArraysKt.Z(new Name[]{nameE21, nameE20, nameE19, nameE11});
        Set setZ = ArraysKt.Z(new Name[]{nameE22, nameE17, nameE18, nameE23, nameE24, nameE25, nameE26});
        t = setZ;
        u = ArraysKt.Z(new Name[]{nameE22, nameE17, nameE18, nameE23, nameE24});
        Set setZ2 = ArraysKt.Z(new Name[]{nameE8, nameE9, nameE10, nameE11, nameE12, nameE13, nameE14});
        v = setZ2;
        w = ArraysKt.Z(new Name[]{nameE8, nameE9, nameE10, nameE12, nameE13, nameE14});
        SetsKt.f(SetsKt.f(setZ, setZ2), ArraysKt.Z(new Name[]{nameE4, nameE6, nameE5}));
        Set setZ3 = ArraysKt.Z(new Name[]{nameE27, nameE28, nameE29, nameE30, nameE31});
        x = setZ3;
        y = ArraysKt.Z(new Name[]{nameE, nameE2, nameE3});
        SetsKt.f(SetsKt.h(nameE7), setZ3);
        z = ArraysKt.Z(new Name[]{nameE32, nameE33, nameE34, nameE35, nameE37, nameE38, nameE36});
        A = ArraysKt.Z(new Name[]{nameE39, nameE40, nameE41, nameE42});
        B = MapsKt.i(new Pair(nameE15, "++"), new Pair(nameE16, "--"), new Pair(nameE21, "+"), new Pair(nameE20, "-"), new Pair(nameE19, "!"), new Pair(nameE22, Browse.CAPS_WILDCARD), new Pair(nameE17, "+"), new Pair(nameE18, "-"), new Pair(nameE23, "/"), new Pair(nameE24, "%"), new Pair(nameE25, ".."), new Pair(nameE26, "..<"));
    }
}
