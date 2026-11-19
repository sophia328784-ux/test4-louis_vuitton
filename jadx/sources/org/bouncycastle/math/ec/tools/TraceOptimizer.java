package org.bouncycastle.math.ec.tools;

import defpackage.md;
import java.io.PrintStream;
import java.math.BigInteger;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;
import java.util.TreeSet;
import org.bouncycastle.asn1.x9.ECNamedCurveTable;
import org.bouncycastle.asn1.x9.X9ECParametersHolder;
import org.bouncycastle.crypto.ec.CustomNamedCurves;
import org.bouncycastle.math.ec.ECAlgorithms;
import org.bouncycastle.math.ec.ECCurve;
import org.bouncycastle.math.ec.ECFieldElement;
import org.bouncycastle.util.Integers;

/* JADX INFO: loaded from: classes5.dex */
public class TraceOptimizer {
    private static final BigInteger ONE = BigInteger.valueOf(1);
    private static final SecureRandom R = new SecureRandom();

    private static int calculateTrace(ECFieldElement eCFieldElement) {
        int fieldSize = eCFieldElement.getFieldSize();
        int iNumberOfLeadingZeros = 31 - Integers.numberOfLeadingZeros(fieldSize);
        ECFieldElement eCFieldElementAdd = eCFieldElement;
        int i2 = 1;
        while (iNumberOfLeadingZeros > 0) {
            eCFieldElementAdd = eCFieldElementAdd.squarePow(i2).add(eCFieldElementAdd);
            iNumberOfLeadingZeros--;
            i2 = fieldSize >>> iNumberOfLeadingZeros;
            if ((i2 & 1) != 0) {
                eCFieldElementAdd = eCFieldElementAdd.square().add(eCFieldElement);
            }
        }
        if (eCFieldElementAdd.isZero()) {
            return 0;
        }
        if (eCFieldElementAdd.isOne()) {
            return 1;
        }
        md.k("Internal error in trace calculation");
        return 0;
    }

    private static List enumToList(Enumeration enumeration) {
        ArrayList arrayList = new ArrayList();
        while (enumeration.hasMoreElements()) {
            arrayList.add(enumeration.nextElement());
        }
        return arrayList;
    }

    public static void implPrintNonZeroTraceBits(ECCurve eCCurve) {
        PrintStream printStream;
        StringBuilder sb;
        int fieldSize = eCCurve.getFieldSize();
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < fieldSize; i2++) {
            if ((i2 & 1) != 0 || i2 == 0) {
                if (calculateTrace(eCCurve.fromBigInteger(ONE.shiftLeft(i2))) != 0) {
                    arrayList.add(Integers.valueOf(i2));
                    printStream = System.out;
                    sb = new StringBuilder(" ");
                    sb.append(i2);
                    printStream.print(sb.toString());
                }
            } else if (arrayList.contains(Integers.valueOf(i2 >>> 1))) {
                arrayList.add(Integers.valueOf(i2));
                printStream = System.out;
                sb = new StringBuilder(" ");
                sb.append(i2);
                printStream.print(sb.toString());
            }
        }
        System.out.println();
        for (int i3 = 0; i3 < 1000; i3++) {
            BigInteger bigInteger = new BigInteger(fieldSize, R);
            int iCalculateTrace = calculateTrace(eCCurve.fromBigInteger(bigInteger));
            int i4 = 0;
            for (int i5 = 0; i5 < arrayList.size(); i5++) {
                if (bigInteger.testBit(((Integer) arrayList.get(i5)).intValue())) {
                    i4 ^= 1;
                }
            }
            if (iCalculateTrace != i4) {
                md.k("Optimized-trace sanity check failed");
                return;
            }
        }
    }

    public static void main(String[] strArr) {
        TreeSet<String> treeSet = new TreeSet(enumToList(ECNamedCurveTable.getNames()));
        treeSet.addAll(enumToList(CustomNamedCurves.getNames()));
        for (String str : treeSet) {
            X9ECParametersHolder byNameLazy = CustomNamedCurves.getByNameLazy(str);
            if (byNameLazy == null) {
                byNameLazy = ECNamedCurveTable.getByNameLazy(str);
            }
            if (byNameLazy != null) {
                ECCurve curve = byNameLazy.getCurve();
                if (ECAlgorithms.isF2mCurve(curve)) {
                    System.out.print(str + ":");
                    implPrintNonZeroTraceBits(curve);
                }
            }
        }
    }

    public static void printNonZeroTraceBits(ECCurve eCCurve) {
        if (ECAlgorithms.isF2mCurve(eCCurve)) {
            implPrintNonZeroTraceBits(eCCurve);
        } else {
            md.n("Trace only defined over characteristic-2 fields");
        }
    }
}
