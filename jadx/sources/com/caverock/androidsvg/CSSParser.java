package com.caverock.androidsvg;

import com.batch.android.s.b;
import com.sightcall.advancedannotations.domain.parser.AnnotationParser;
import com.sightcall.advancedannotations.domain.parser.ResourceParser;
import defpackage.a;
import defpackage.fc;
import defpackage.tr;
import io.jsonwebtoken.JwtParser;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.teleal.cling.support.contentdirectory.callback.Browse;

/* JADX INFO: loaded from: classes2.dex */
class CSSParser {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public MediaType f25117a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Source f25118b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f25119c;

    /* JADX INFO: renamed from: com.caverock.androidsvg.CSSParser$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f25120a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f25121b;

        static {
            int[] iArr = new int[PseudoClassIdents.values().length];
            f25121b = iArr;
            try {
                iArr[PseudoClassIdents.first_child.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f25121b[PseudoClassIdents.last_child.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f25121b[PseudoClassIdents.only_child.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f25121b[PseudoClassIdents.first_of_type.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f25121b[PseudoClassIdents.last_of_type.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f25121b[PseudoClassIdents.only_of_type.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f25121b[PseudoClassIdents.root.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f25121b[PseudoClassIdents.empty.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f25121b[PseudoClassIdents.nth_child.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f25121b[PseudoClassIdents.nth_last_child.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f25121b[PseudoClassIdents.nth_of_type.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f25121b[PseudoClassIdents.nth_last_of_type.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f25121b[PseudoClassIdents.not.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f25121b[PseudoClassIdents.target.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f25121b[PseudoClassIdents.lang.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f25121b[PseudoClassIdents.link.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f25121b[PseudoClassIdents.visited.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f25121b[PseudoClassIdents.hover.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                f25121b[PseudoClassIdents.active.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                f25121b[PseudoClassIdents.focus.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                f25121b[PseudoClassIdents.enabled.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                f25121b[PseudoClassIdents.disabled.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                f25121b[PseudoClassIdents.checked.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                f25121b[PseudoClassIdents.indeterminate.ordinal()] = 24;
            } catch (NoSuchFieldError unused24) {
            }
            int[] iArr2 = new int[AttribOp.values().length];
            f25120a = iArr2;
            try {
                iArr2[AttribOp.EQUALS.ordinal()] = 1;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                f25120a[AttribOp.INCLUDES.ordinal()] = 2;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                f25120a[AttribOp.DASHMATCH.ordinal()] = 3;
            } catch (NoSuchFieldError unused27) {
            }
        }
    }

    public static class Attrib {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f25122a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final AttribOp f25123b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f25124c;

        public Attrib(String str, AttribOp attribOp, String str2) {
            this.f25122a = str;
            this.f25123b = attribOp;
            this.f25124c = str2;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class AttribOp {
        private static final /* synthetic */ AttribOp[] $VALUES;
        public static final AttribOp DASHMATCH;
        public static final AttribOp EQUALS;
        public static final AttribOp EXISTS;
        public static final AttribOp INCLUDES;

        static {
            AttribOp attribOp = new AttribOp("EXISTS", 0);
            EXISTS = attribOp;
            AttribOp attribOp2 = new AttribOp("EQUALS", 1);
            EQUALS = attribOp2;
            AttribOp attribOp3 = new AttribOp("INCLUDES", 2);
            INCLUDES = attribOp3;
            AttribOp attribOp4 = new AttribOp("DASHMATCH", 3);
            DASHMATCH = attribOp4;
            $VALUES = new AttribOp[]{attribOp, attribOp2, attribOp3, attribOp4};
        }

        public static AttribOp valueOf(String str) {
            return (AttribOp) Enum.valueOf(AttribOp.class, str);
        }

        public static AttribOp[] values() {
            return (AttribOp[]) $VALUES.clone();
        }
    }

    public static class CSSTextScanner extends SVGParser.TextScanner {

        public static class AnPlusB {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final int f25125a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final int f25126b;

            public AnPlusB(int i2, int i3) {
                this.f25125a = i2;
                this.f25126b = i3;
            }
        }

        public CSSTextScanner(String str) {
            super(str.replaceAll("(?s)/\\*.*?\\*/", ""));
        }

        public static int r(int i2) {
            if (i2 >= 48 && i2 <= 57) {
                return i2 - 48;
            }
            if (i2 >= 65 && i2 <= 70) {
                return i2 - 55;
            }
            if (i2 < 97 || i2 > 102) {
                return -1;
            }
            return i2 - 87;
        }

        public final String s() {
            int iR;
            if (f()) {
                return null;
            }
            char cCharAt = this.f25254a.charAt(this.f25255b);
            if (cCharAt != '\'' && cCharAt != '\"') {
                return null;
            }
            StringBuilder sb = new StringBuilder();
            this.f25255b++;
            int iIntValue = h().intValue();
            while (iIntValue != -1 && iIntValue != cCharAt) {
                if (iIntValue == 92) {
                    iIntValue = h().intValue();
                    if (iIntValue != -1) {
                        if (iIntValue == 10 || iIntValue == 13 || iIntValue == 12) {
                            iIntValue = h().intValue();
                        } else {
                            int iR2 = r(iIntValue);
                            if (iR2 != -1) {
                                for (int i2 = 1; i2 <= 5 && (iR = r((iIntValue = h().intValue()))) != -1; i2++) {
                                    iR2 = (iR2 * 16) + iR;
                                }
                                sb.append((char) iR2);
                            }
                        }
                    }
                }
                sb.append((char) iIntValue);
                iIntValue = h().intValue();
            }
            return sb.toString();
        }

        public final String t() {
            int i2;
            boolean zF = f();
            int i3 = this.f25255b;
            String str = this.f25254a;
            if (!zF) {
                int iCharAt = str.charAt(i3);
                if (iCharAt == 45) {
                    iCharAt = a();
                }
                if ((iCharAt < 65 || iCharAt > 90) && ((iCharAt < 97 || iCharAt > 122) && iCharAt != 95)) {
                    i2 = i3;
                } else {
                    int iA = a();
                    while (true) {
                        if ((iA < 65 || iA > 90) && ((iA < 97 || iA > 122) && !((iA >= 48 && iA <= 57) || iA == 45 || iA == 95))) {
                            break;
                        }
                        iA = a();
                    }
                    i2 = this.f25255b;
                }
                this.f25255b = i3;
                i3 = i2;
            }
            int i4 = this.f25255b;
            if (i3 == i4) {
                return null;
            }
            String strSubstring = str.substring(i4, i3);
            this.f25255b = i3;
            return strSubstring;
        }

        /* JADX WARN: Code duplicated, block: B:122:0x01e0  */
        /* JADX WARN: Code duplicated, block: B:176:0x0290  */
        /* JADX WARN: Code duplicated, block: B:22:0x004c  */
        /* JADX WARN: Code duplicated, block: B:230:0x035b  */
        /* JADX WARN: Code duplicated, block: B:247:0x03ff  */
        /* JADX WARN: Code duplicated, block: B:252:0x041a  */
        /* JADX WARN: Code duplicated, block: B:254:0x041e  */
        /* JADX WARN: Code duplicated, block: B:262:0x0442  */
        /* JADX WARN: Code duplicated, block: B:278:0x043c A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:279:0x0432 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:281:0x0015 A[SYNTHETIC] */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r11v12, types: [com.caverock.androidsvg.CSSParser$AttribOp] */
        /* JADX WARN: Type inference failed for: r11v38 */
        /* JADX WARN: Type inference failed for: r11v42, types: [com.caverock.androidsvg.CSSParser$CSSTextScanner$AnPlusB] */
        /* JADX WARN: Type inference failed for: r11v43 */
        /* JADX WARN: Type inference failed for: r11v55 */
        /* JADX WARN: Type inference failed for: r11v56 */
        /* JADX WARN: Type inference failed for: r11v57, types: [java.util.ArrayList] */
        /* JADX WARN: Type inference failed for: r11v60 */
        /* JADX WARN: Type inference failed for: r11v61 */
        /* JADX WARN: Type inference failed for: r11v62 */
        /* JADX WARN: Type inference failed for: r11v69 */
        /* JADX WARN: Type inference failed for: r11v70 */
        /* JADX WARN: Type inference failed for: r20v0 */
        /* JADX WARN: Type inference failed for: r20v1, types: [boolean] */
        /* JADX WARN: Type inference failed for: r20v2 */
        /* JADX WARN: Type inference failed for: r21v0 */
        /* JADX WARN: Type inference failed for: r21v1, types: [boolean] */
        /* JADX WARN: Type inference failed for: r21v2 */
        /* JADX WARN: Type inference failed for: r22v10 */
        /* JADX WARN: Type inference failed for: r22v11 */
        /* JADX WARN: Type inference failed for: r22v12 */
        /* JADX WARN: Type inference failed for: r22v13 */
        /* JADX WARN: Type inference failed for: r22v3 */
        /* JADX WARN: Type inference failed for: r22v4 */
        /* JADX WARN: Type inference failed for: r22v5 */
        /* JADX WARN: Type inference failed for: r22v6 */
        /* JADX WARN: Type inference failed for: r22v7 */
        /* JADX WARN: Type inference failed for: r22v8 */
        /* JADX WARN: Type inference failed for: r22v9 */
        /* JADX WARN: Type inference failed for: r6v1 */
        /* JADX WARN: Type inference failed for: r6v10 */
        /* JADX WARN: Type inference failed for: r6v2, types: [com.caverock.androidsvg.CSSParser$Combinator] */
        /* JADX WARN: Type inference failed for: r6v9 */
        /* JADX WARN: Type inference failed for: r7v10 */
        /* JADX WARN: Type inference failed for: r7v11 */
        /* JADX WARN: Type inference failed for: r7v12 */
        /* JADX WARN: Type inference failed for: r7v21, types: [com.caverock.androidsvg.CSSParser$SimpleSelector] */
        /* JADX WARN: Type inference failed for: r7v22, types: [com.caverock.androidsvg.CSSParser$SimpleSelector] */
        /* JADX WARN: Type inference failed for: r7v24 */
        /* JADX WARN: Type inference failed for: r7v25 */
        /* JADX WARN: Type inference failed for: r7v26 */
        /* JADX WARN: Type inference failed for: r7v27 */
        /* JADX WARN: Type inference failed for: r7v28 */
        /* JADX WARN: Type inference failed for: r7v29 */
        /* JADX WARN: Type inference failed for: r7v3 */
        /* JADX WARN: Type inference failed for: r7v30 */
        /* JADX WARN: Type inference failed for: r7v4 */
        /* JADX WARN: Type inference failed for: r7v5 */
        /* JADX WARN: Type inference failed for: r7v6, types: [com.caverock.androidsvg.CSSParser$SimpleSelector] */
        /* JADX WARN: Type inference failed for: r7v7, types: [com.caverock.androidsvg.CSSParser$SimpleSelector] */
        /* JADX WARN: Type inference failed for: r7v8 */
        /* JADX WARN: Type inference failed for: r7v9, types: [com.caverock.androidsvg.CSSParser$SimpleSelector] */
        /* JADX WARN: Type inference failed for: r8v10, types: [com.caverock.androidsvg.CSSParser$SimpleSelector] */
        /* JADX WARN: Type inference failed for: r8v11 */
        /* JADX WARN: Type inference failed for: r8v12, types: [com.caverock.androidsvg.CSSParser$SimpleSelector] */
        /* JADX WARN: Type inference failed for: r8v13, types: [com.caverock.androidsvg.CSSParser$SimpleSelector] */
        /* JADX WARN: Type inference failed for: r8v14, types: [com.caverock.androidsvg.CSSParser$SimpleSelector] */
        /* JADX WARN: Type inference failed for: r8v15, types: [com.caverock.androidsvg.CSSParser$SimpleSelector] */
        /* JADX WARN: Type inference failed for: r8v16 */
        /* JADX WARN: Type inference failed for: r8v17 */
        /* JADX WARN: Type inference failed for: r8v20 */
        /* JADX WARN: Type inference failed for: r8v21 */
        /* JADX WARN: Type inference failed for: r8v22 */
        /* JADX WARN: Type inference failed for: r8v23 */
        /* JADX WARN: Type inference failed for: r8v24 */
        /* JADX WARN: Type inference failed for: r8v25 */
        /* JADX WARN: Type inference failed for: r8v3 */
        /* JADX WARN: Type inference failed for: r8v6 */
        /* JADX WARN: Type inference failed for: r8v7 */
        /* JADX WARN: Type inference failed for: r8v8, types: [java.lang.Object] */
        /* JADX WARN: Type inference failed for: r8v9, types: [com.caverock.androidsvg.CSSParser$SimpleSelector] */
        public final ArrayList u() throws CSSParseException {
            ArrayList arrayList;
            ?? r6;
            ?? simpleSelector;
            Object obj;
            AttribOp attribOp;
            AttribOp attribOp2;
            String strK;
            AttribOp attribOp3;
            ?? r7;
            Object obj2;
            Object obj3;
            ?? r8;
            ?? r9;
            Object obj4;
            int i2;
            IntegerParser integerParserA;
            ?? r22;
            AnPlusB anPlusB;
            ?? r23;
            ?? r11;
            ?? r24;
            AnPlusB anPlusB2;
            ?? r25;
            ArrayList arrayListU;
            ArrayList arrayList2;
            ArrayList arrayList3;
            Object obj5;
            String str = null;
            if (f()) {
                return null;
            }
            int i3 = 1;
            ArrayList arrayList4 = new ArrayList(1);
            Selector selector = new Selector();
            while (!f() && !f()) {
                int i4 = this.f25255b;
                ArrayList arrayList5 = selector.f25139a;
                char c2 = '+';
                if (arrayList5 == null || arrayList5.isEmpty()) {
                    r6 = str;
                } else if (d('>')) {
                    Combinator combinator = Combinator.CHILD;
                    q();
                    r6 = combinator;
                } else if (d('+')) {
                    Combinator combinator2 = Combinator.FOLLOWS;
                    q();
                    r6 = combinator2;
                } else {
                    r6 = str;
                }
                if (d('*')) {
                    simpleSelector = new SimpleSelector(r6, str);
                } else {
                    String strT = t();
                    if (strT != null) {
                        SimpleSelector simpleSelector2 = new SimpleSelector(r6, strT);
                        selector.f25140b += i3;
                        simpleSelector = simpleSelector2;
                    } else {
                        simpleSelector = str;
                    }
                }
                while (!f()) {
                    if (d(JwtParser.SEPARATOR_CHAR)) {
                        if (simpleSelector == 0) {
                            simpleSelector = new SimpleSelector(r6, str);
                        }
                        String strT2 = t();
                        if (strT2 == null) {
                            throw new CSSParseException("Invalid \".class\" simpleSelectors");
                        }
                        simpleSelector.a("class", AttribOp.EQUALS, strT2);
                        selector.a();
                    } else if (d('#')) {
                        if (simpleSelector == 0) {
                            simpleSelector = new SimpleSelector(r6, str);
                        }
                        String strT3 = t();
                        if (strT3 == null) {
                            throw new CSSParseException("Invalid \"#id\" simpleSelectors");
                        }
                        simpleSelector.a(b.a.f24015b, AttribOp.EQUALS, strT3);
                        selector.f25140b += 1000000;
                    } else if (d('[')) {
                        if (simpleSelector == 0) {
                            simpleSelector = new SimpleSelector(r6, str);
                        }
                        q();
                        String strT4 = t();
                        if (strT4 == null) {
                            throw new CSSParseException("Invalid attribute simpleSelectors");
                        }
                        q();
                        if (d('=')) {
                            attribOp3 = AttribOp.EQUALS;
                        } else if (e("~=")) {
                            attribOp2 = AttribOp.INCLUDES;
                        } else if (e("|=")) {
                            attribOp = AttribOp.DASHMATCH;
                        } else {
                            obj = str;
                        }
                        if (obj != null) {
                            obj = attribOp;
                            obj = attribOp2;
                            q();
                            if (f()) {
                                strK = str;
                            } else {
                                strK = k();
                                if (strK == null) {
                                    obj = attribOp3;
                                    strK = t();
                                }
                            }
                            if (strK == null) {
                                obj = attribOp3;
                                throw new CSSParseException("Invalid attribute simpleSelectors");
                            }
                            obj = attribOp3;
                            q();
                        } else {
                            obj = attribOp;
                            obj = attribOp2;
                            obj = attribOp3;
                            strK = str;
                        }
                        ?? r12 = obj;
                        if (!d(']')) {
                            throw new CSSParseException("Invalid attribute simpleSelectors");
                        }
                        if (obj == null) {
                            r12 = AttribOp.EXISTS;
                        }
                        simpleSelector.a(strT4, r12, strK);
                        selector.a();
                    } else {
                        ?? simpleSelector3 = simpleSelector;
                        if (d(':')) {
                            if (simpleSelector == 0) {
                                simpleSelector3 = new SimpleSelector(r6, str);
                            }
                            String strT5 = t();
                            if (strT5 == null) {
                                throw new CSSParseException("Invalid pseudo class");
                            }
                            PseudoClassIdents pseudoClassIdentsA = PseudoClassIdents.a(strT5);
                            switch (AnonymousClass1.f25121b[pseudoClassIdentsA.ordinal()]) {
                                case 1:
                                    r7 = simpleSelector3;
                                    PseudoClassAnPlusB pseudoClassAnPlusB = new PseudoClassAnPlusB(null, 0, 1, true, false);
                                    selector.a();
                                    obj2 = pseudoClassAnPlusB;
                                    if (r7.d == null) {
                                        r7.d = new ArrayList();
                                    }
                                    r7.d.add(obj2);
                                    simpleSelector = r7;
                                    c2 = '+';
                                    break;
                                case 2:
                                    r7 = simpleSelector3;
                                    PseudoClassAnPlusB pseudoClassAnPlusB2 = new PseudoClassAnPlusB(null, 0, 1, false, false);
                                    selector.a();
                                    obj2 = pseudoClassAnPlusB2;
                                    if (r7.d == null) {
                                        r7.d = new ArrayList();
                                    }
                                    r7.d.add(obj2);
                                    simpleSelector = r7;
                                    c2 = '+';
                                    break;
                                case 3:
                                    r7 = simpleSelector3;
                                    str = null;
                                    PseudoClassOnlyChild pseudoClassOnlyChild = new PseudoClassOnlyChild(false, null);
                                    selector.a();
                                    obj2 = pseudoClassOnlyChild;
                                    if (r7.d == null) {
                                        r7.d = new ArrayList();
                                    }
                                    r7.d.add(obj2);
                                    simpleSelector = r7;
                                    c2 = '+';
                                    break;
                                case 4:
                                    ?? r10 = simpleSelector3;
                                    PseudoClassAnPlusB pseudoClassAnPlusB3 = new PseudoClassAnPlusB(r10.f25142b, 0, 1, true, true);
                                    selector.a();
                                    obj3 = pseudoClassAnPlusB3;
                                    r8 = r10;
                                    str = null;
                                    r7 = r8;
                                    obj2 = obj3;
                                    if (r7.d == null) {
                                        r7.d = new ArrayList();
                                    }
                                    r7.d.add(obj2);
                                    simpleSelector = r7;
                                    c2 = '+';
                                    break;
                                case 5:
                                    ?? r13 = simpleSelector3;
                                    PseudoClassAnPlusB pseudoClassAnPlusB4 = new PseudoClassAnPlusB(r13.f25142b, 0, 1, false, true);
                                    selector.a();
                                    obj3 = pseudoClassAnPlusB4;
                                    r8 = r13;
                                    str = null;
                                    r7 = r8;
                                    obj2 = obj3;
                                    if (r7.d == null) {
                                        r7.d = new ArrayList();
                                    }
                                    r7.d.add(obj2);
                                    simpleSelector = r7;
                                    c2 = '+';
                                    break;
                                case 6:
                                    ?? r14 = simpleSelector3;
                                    i3 = 1;
                                    PseudoClassOnlyChild pseudoClassOnlyChild2 = new PseudoClassOnlyChild(true, r14.f25142b);
                                    selector.a();
                                    r8 = r14;
                                    obj3 = pseudoClassOnlyChild2;
                                    str = null;
                                    r7 = r8;
                                    obj2 = obj3;
                                    if (r7.d == null) {
                                        r7.d = new ArrayList();
                                    }
                                    r7.d.add(obj2);
                                    simpleSelector = r7;
                                    c2 = '+';
                                    break;
                                case 7:
                                    r9 = simpleSelector3;
                                    PseudoClassRoot pseudoClassRoot = new PseudoClassRoot();
                                    selector.a();
                                    obj4 = pseudoClassRoot;
                                    str = null;
                                    i3 = 1;
                                    r7 = r9;
                                    obj2 = obj4;
                                    if (r7.d == null) {
                                        r7.d = new ArrayList();
                                    }
                                    r7.d.add(obj2);
                                    simpleSelector = r7;
                                    c2 = '+';
                                    break;
                                case 8:
                                    r9 = simpleSelector3;
                                    PseudoClassEmpty pseudoClassEmpty = new PseudoClassEmpty();
                                    selector.a();
                                    obj4 = pseudoClassEmpty;
                                    str = null;
                                    i3 = 1;
                                    r7 = r9;
                                    obj2 = obj4;
                                    if (r7.d == null) {
                                        r7.d = new ArrayList();
                                    }
                                    r7.d.add(obj2);
                                    simpleSelector = r7;
                                    c2 = '+';
                                    break;
                                case 9:
                                case 10:
                                case 11:
                                case 12:
                                    ?? r20 = (pseudoClassIdentsA == PseudoClassIdents.nth_child || pseudoClassIdentsA == PseudoClassIdents.nth_of_type) ? i3 : 0;
                                    ?? r21 = (pseudoClassIdentsA == PseudoClassIdents.nth_of_type || pseudoClassIdentsA == PseudoClassIdents.nth_last_of_type) ? i3 : 0;
                                    if (f()) {
                                        r11 = str;
                                        r25 = simpleSelector3;
                                    } else {
                                        int i5 = this.f25255b;
                                        if (d('(')) {
                                            q();
                                            if (e("odd")) {
                                                anPlusB2 = new AnPlusB(2, i3);
                                            } else {
                                                if (e("even")) {
                                                    anPlusB2 = new AnPlusB(2, 0);
                                                } else {
                                                    int i6 = (!d(c2) && d('-')) ? -1 : i3;
                                                    int i7 = this.f25255b;
                                                    int i8 = this.f25256c;
                                                    String str2 = this.f25254a;
                                                    IntegerParser integerParserA2 = IntegerParser.a(i7, i8, str2);
                                                    if (integerParserA2 != null) {
                                                        this.f25255b = integerParserA2.f25144a;
                                                    }
                                                    if (d('n') || d(ResourceParser.ResourceInstruction)) {
                                                        if (integerParserA2 == null) {
                                                            integerParserA2 = new IntegerParser(1L, this.f25255b);
                                                        }
                                                        q();
                                                        boolean zD = d('+');
                                                        i2 = (zD || !(zD = d('-'))) ? 1 : -1;
                                                        if (zD) {
                                                            q();
                                                            integerParserA = IntegerParser.a(this.f25255b, i8, str2);
                                                            if (integerParserA != null) {
                                                                this.f25255b = integerParserA.f25144a;
                                                                r22 = simpleSelector3;
                                                            } else {
                                                                this.f25255b = i5;
                                                                r23 = simpleSelector3;
                                                            }
                                                        } else {
                                                            integerParserA = null;
                                                            r22 = simpleSelector3;
                                                        }
                                                    } else {
                                                        integerParserA = integerParserA2;
                                                        r22 = simpleSelector3;
                                                        i2 = i6;
                                                        integerParserA2 = null;
                                                        i6 = 1;
                                                    }
                                                    anPlusB = new AnPlusB(integerParserA2 == null ? 0 : i6 * ((int) integerParserA2.f25145b), integerParserA == null ? 0 : i2 * ((int) integerParserA.f25145b));
                                                    r24 = r22;
                                                    q();
                                                    r11 = anPlusB;
                                                    r25 = r24;
                                                    if (!d(')')) {
                                                        this.f25255b = i5;
                                                        r23 = r24;
                                                    }
                                                }
                                                r11 = 0;
                                                r25 = r23;
                                            }
                                            r24 = simpleSelector3;
                                            anPlusB = anPlusB2;
                                            q();
                                            r11 = anPlusB;
                                            r25 = r24;
                                            if (!d(')')) {
                                                this.f25255b = i5;
                                                r23 = r24;
                                                r11 = 0;
                                                r25 = r23;
                                            }
                                        } else {
                                            r11 = str;
                                            r25 = simpleSelector3;
                                        }
                                    }
                                    if (r11 == 0) {
                                        throw new CSSParseException("Invalid or missing parameter section for pseudo class: ".concat(strT5));
                                    }
                                    ?? r15 = r25;
                                    PseudoClassAnPlusB pseudoClassAnPlusB5 = new PseudoClassAnPlusB(r15.f25142b, r11.f25125a, r11.f25126b, r20, r21);
                                    selector.a();
                                    obj4 = pseudoClassAnPlusB5;
                                    r9 = r15;
                                    str = null;
                                    i3 = 1;
                                    r7 = r9;
                                    obj2 = obj4;
                                    if (r7.d == null) {
                                        r7.d = new ArrayList();
                                    }
                                    r7.d.add(obj2);
                                    simpleSelector = r7;
                                    c2 = '+';
                                    break;
                                    break;
                                case 13:
                                    if (f()) {
                                        arrayListU = str;
                                    } else {
                                        int i9 = this.f25255b;
                                        if (d('(')) {
                                            q();
                                            arrayListU = u();
                                            if (arrayListU != null && d(')')) {
                                                Iterator it = arrayListU.iterator();
                                                while (it.hasNext() && (arrayList2 = ((Selector) it.next()).f25139a) != null) {
                                                    Iterator it2 = arrayList2.iterator();
                                                    while (true) {
                                                        if (it2.hasNext() && (arrayList3 = ((SimpleSelector) it2.next()).d) != null) {
                                                            Iterator it3 = arrayList3.iterator();
                                                            while (true) {
                                                                if (it3.hasNext()) {
                                                                    if (((PseudoClass) it3.next()) instanceof PseudoClassNot) {
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            } else {
                                                this.f25255b = i9;
                                            }
                                            arrayListU = str;
                                        } else {
                                            arrayListU = str;
                                        }
                                    }
                                    if (arrayListU == null) {
                                        throw new CSSParseException("Invalid or missing parameter section for pseudo class: ".concat(strT5));
                                    }
                                    PseudoClassNot pseudoClassNot = new PseudoClassNot();
                                    pseudoClassNot.f25131a = arrayListU;
                                    Iterator it4 = arrayListU.iterator();
                                    int i10 = Integer.MIN_VALUE;
                                    while (it4.hasNext()) {
                                        int i11 = ((Selector) it4.next()).f25140b;
                                        if (i11 > i10) {
                                            i10 = i11;
                                        }
                                    }
                                    selector.f25140b = i10;
                                    obj5 = pseudoClassNot;
                                    r7 = simpleSelector3;
                                    obj2 = obj5;
                                    if (r7.d == null) {
                                        r7.d = new ArrayList();
                                    }
                                    r7.d.add(obj2);
                                    simpleSelector = r7;
                                    c2 = '+';
                                    break;
                                    break;
                                case 14:
                                    PseudoClassTarget pseudoClassTarget = new PseudoClassTarget();
                                    selector.a();
                                    obj5 = pseudoClassTarget;
                                    r7 = simpleSelector3;
                                    obj2 = obj5;
                                    if (r7.d == null) {
                                        r7.d = new ArrayList();
                                    }
                                    r7.d.add(obj2);
                                    simpleSelector = r7;
                                    c2 = '+';
                                    break;
                                case 15:
                                    if (!f()) {
                                        int i12 = this.f25255b;
                                        if (d('(')) {
                                            q();
                                            ?? arrayList6 = str;
                                            while (true) {
                                                String strT6 = t();
                                                arrayList6 = arrayList6;
                                                if (strT6 == null) {
                                                    this.f25255b = i12;
                                                } else {
                                                    if (arrayList6 == 0) {
                                                        arrayList6 = new ArrayList();
                                                    }
                                                    arrayList6.add(strT6);
                                                    q();
                                                    if (!p()) {
                                                        if (!d(')')) {
                                                            this.f25255b = i12;
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    PseudoClassNotSupported pseudoClassNotSupported = new PseudoClassNotSupported(strT5);
                                    selector.a();
                                    obj5 = pseudoClassNotSupported;
                                    r7 = simpleSelector3;
                                    obj2 = obj5;
                                    if (r7.d == null) {
                                        r7.d = new ArrayList();
                                    }
                                    r7.d.add(obj2);
                                    simpleSelector = r7;
                                    c2 = '+';
                                    break;
                                case 16:
                                case 17:
                                case 18:
                                case 19:
                                case 20:
                                case 21:
                                case 22:
                                case 23:
                                case 24:
                                    PseudoClassNotSupported pseudoClassNotSupported2 = new PseudoClassNotSupported(strT5);
                                    selector.a();
                                    obj5 = pseudoClassNotSupported2;
                                    r7 = simpleSelector3;
                                    obj2 = obj5;
                                    if (r7.d == null) {
                                        r7.d = new ArrayList();
                                    }
                                    r7.d.add(obj2);
                                    simpleSelector = r7;
                                    c2 = '+';
                                    break;
                                default:
                                    throw new CSSParseException("Unsupported pseudo class: ".concat(strT5));
                            }
                        } else {
                            if (simpleSelector != 0) {
                                this.f25255b = i4;
                                arrayList = selector.f25139a;
                                if (arrayList != null && !arrayList.isEmpty()) {
                                    arrayList4.add(selector);
                                }
                                return arrayList4;
                            }
                            if (selector.f25139a == null) {
                                selector.f25139a = new ArrayList();
                            }
                            selector.f25139a.add(simpleSelector);
                            if (!p()) {
                                arrayList4.add(selector);
                                selector = new Selector();
                            }
                        }
                    }
                }
                if (simpleSelector != 0) {
                    this.f25255b = i4;
                    arrayList = selector.f25139a;
                    if (arrayList != null) {
                        arrayList4.add(selector);
                    }
                    return arrayList4;
                }
                if (selector.f25139a == null) {
                    selector.f25139a = new ArrayList();
                }
                selector.f25139a.add(simpleSelector);
                if (!p()) {
                    arrayList4.add(selector);
                    selector = new Selector();
                }
            }
            arrayList = selector.f25139a;
            if (arrayList != null) {
                arrayList4.add(selector);
            }
            return arrayList4;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class Combinator {
        private static final /* synthetic */ Combinator[] $VALUES;
        public static final Combinator CHILD;
        public static final Combinator DESCENDANT;
        public static final Combinator FOLLOWS;

        static {
            Combinator combinator = new Combinator("DESCENDANT", 0);
            DESCENDANT = combinator;
            Combinator combinator2 = new Combinator("CHILD", 1);
            CHILD = combinator2;
            Combinator combinator3 = new Combinator("FOLLOWS", 2);
            FOLLOWS = combinator3;
            $VALUES = new Combinator[]{combinator, combinator2, combinator3};
        }

        public static Combinator valueOf(String str) {
            return (Combinator) Enum.valueOf(Combinator.class, str);
        }

        public static Combinator[] values() {
            return (Combinator[]) $VALUES.clone();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class MediaType {
        private static final /* synthetic */ MediaType[] $VALUES;
        public static final MediaType all;
        public static final MediaType aural;
        public static final MediaType braille;
        public static final MediaType embossed;
        public static final MediaType handheld;
        public static final MediaType print;
        public static final MediaType projection;
        public static final MediaType screen;
        public static final MediaType speech;
        public static final MediaType tty;
        public static final MediaType tv;

        static {
            MediaType mediaType = new MediaType("all", 0);
            all = mediaType;
            MediaType mediaType2 = new MediaType("aural", 1);
            aural = mediaType2;
            MediaType mediaType3 = new MediaType("braille", 2);
            braille = mediaType3;
            MediaType mediaType4 = new MediaType("embossed", 3);
            embossed = mediaType4;
            MediaType mediaType5 = new MediaType("handheld", 4);
            handheld = mediaType5;
            MediaType mediaType6 = new MediaType("print", 5);
            print = mediaType6;
            MediaType mediaType7 = new MediaType("projection", 6);
            projection = mediaType7;
            MediaType mediaType8 = new MediaType("screen", 7);
            screen = mediaType8;
            MediaType mediaType9 = new MediaType("speech", 8);
            speech = mediaType9;
            MediaType mediaType10 = new MediaType("tty", 9);
            tty = mediaType10;
            MediaType mediaType11 = new MediaType("tv", 10);
            tv = mediaType11;
            $VALUES = new MediaType[]{mediaType, mediaType2, mediaType3, mediaType4, mediaType5, mediaType6, mediaType7, mediaType8, mediaType9, mediaType10, mediaType11};
        }

        public static MediaType valueOf(String str) {
            return (MediaType) Enum.valueOf(MediaType.class, str);
        }

        public static MediaType[] values() {
            return (MediaType[]) $VALUES.clone();
        }
    }

    public interface PseudoClass {
        boolean a(SVG.SvgElementBase svgElementBase);
    }

    public static class PseudoClassAnPlusB implements PseudoClass {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f25127a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f25128b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f25129c;
        public final boolean d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final String f25130e;

        public PseudoClassAnPlusB(String str, int i2, int i3, boolean z, boolean z2) {
            this.f25127a = i2;
            this.f25128b = i3;
            this.f25129c = z;
            this.d = z2;
            this.f25130e = str;
        }

        /* JADX WARN: Code duplicated, block: B:33:0x0064 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:34:0x0065 A[RETURN] */
        @Override // com.caverock.androidsvg.CSSParser.PseudoClass
        public final boolean a(SVG.SvgElementBase svgElementBase) {
            int i2;
            int i3;
            boolean z = this.d;
            String strN = this.f25130e;
            if (z && strN == null) {
                strN = svgElementBase.n();
            }
            SVG.SvgContainer svgContainer = svgElementBase.f25197b;
            if (svgContainer != null) {
                Iterator it = svgContainer.getChildren().iterator();
                i2 = 0;
                i3 = 0;
                while (it.hasNext()) {
                    SVG.SvgElementBase svgElementBase2 = (SVG.SvgElementBase) ((SVG.SvgObject) it.next());
                    if (svgElementBase2 == svgElementBase) {
                        i2 = i3;
                    }
                    if (strN == null || svgElementBase2.n().equals(strN)) {
                        i3++;
                    }
                }
            } else {
                i2 = 0;
                i3 = 1;
            }
            int i4 = this.f25129c ? i2 + 1 : i3 - i2;
            int i5 = this.f25128b;
            int i6 = this.f25127a;
            if (i6 == 0) {
                if (i4 == i5) {
                    return true;
                }
                return false;
            }
            int i7 = i4 - i5;
            if (i7 % i6 == 0 && (Integer.signum(i7) == 0 || Integer.signum(i7) == Integer.signum(i6))) {
                return true;
            }
            return false;
        }

        public final String toString() {
            String str = this.f25129c ? "" : "last-";
            int i2 = this.f25128b;
            boolean z = this.d;
            int i3 = this.f25127a;
            return z ? String.format("nth-%schild(%dn%+d of type <%s>)", str, Integer.valueOf(i3), Integer.valueOf(i2), this.f25130e) : String.format("nth-%schild(%dn%+d)", str, Integer.valueOf(i3), Integer.valueOf(i2));
        }
    }

    public static class PseudoClassEmpty implements PseudoClass {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.caverock.androidsvg.CSSParser.PseudoClass
        public final boolean a(SVG.SvgElementBase svgElementBase) {
            return !(svgElementBase instanceof SVG.SvgContainer) || ((SVG.SvgContainer) svgElementBase).getChildren().size() == 0;
        }

        public final String toString() {
            return "empty";
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class PseudoClassIdents {
        private static final /* synthetic */ PseudoClassIdents[] $VALUES;
        public static final PseudoClassIdents UNSUPPORTED;
        public static final PseudoClassIdents active;
        private static final Map<String, PseudoClassIdents> cache;
        public static final PseudoClassIdents checked;
        public static final PseudoClassIdents disabled;
        public static final PseudoClassIdents empty;
        public static final PseudoClassIdents enabled;
        public static final PseudoClassIdents first_child;
        public static final PseudoClassIdents first_of_type;
        public static final PseudoClassIdents focus;
        public static final PseudoClassIdents hover;
        public static final PseudoClassIdents indeterminate;
        public static final PseudoClassIdents lang;
        public static final PseudoClassIdents last_child;
        public static final PseudoClassIdents last_of_type;
        public static final PseudoClassIdents link;
        public static final PseudoClassIdents not;
        public static final PseudoClassIdents nth_child;
        public static final PseudoClassIdents nth_last_child;
        public static final PseudoClassIdents nth_last_of_type;
        public static final PseudoClassIdents nth_of_type;
        public static final PseudoClassIdents only_child;
        public static final PseudoClassIdents only_of_type;
        public static final PseudoClassIdents root;
        public static final PseudoClassIdents target;
        public static final PseudoClassIdents visited;

        static {
            PseudoClassIdents pseudoClassIdents = new PseudoClassIdents("target", 0);
            target = pseudoClassIdents;
            PseudoClassIdents pseudoClassIdents2 = new PseudoClassIdents("root", 1);
            root = pseudoClassIdents2;
            PseudoClassIdents pseudoClassIdents3 = new PseudoClassIdents("nth_child", 2);
            nth_child = pseudoClassIdents3;
            PseudoClassIdents pseudoClassIdents4 = new PseudoClassIdents("nth_last_child", 3);
            nth_last_child = pseudoClassIdents4;
            PseudoClassIdents pseudoClassIdents5 = new PseudoClassIdents("nth_of_type", 4);
            nth_of_type = pseudoClassIdents5;
            PseudoClassIdents pseudoClassIdents6 = new PseudoClassIdents("nth_last_of_type", 5);
            nth_last_of_type = pseudoClassIdents6;
            PseudoClassIdents pseudoClassIdents7 = new PseudoClassIdents("first_child", 6);
            first_child = pseudoClassIdents7;
            PseudoClassIdents pseudoClassIdents8 = new PseudoClassIdents("last_child", 7);
            last_child = pseudoClassIdents8;
            PseudoClassIdents pseudoClassIdents9 = new PseudoClassIdents("first_of_type", 8);
            first_of_type = pseudoClassIdents9;
            PseudoClassIdents pseudoClassIdents10 = new PseudoClassIdents("last_of_type", 9);
            last_of_type = pseudoClassIdents10;
            PseudoClassIdents pseudoClassIdents11 = new PseudoClassIdents("only_child", 10);
            only_child = pseudoClassIdents11;
            PseudoClassIdents pseudoClassIdents12 = new PseudoClassIdents("only_of_type", 11);
            only_of_type = pseudoClassIdents12;
            PseudoClassIdents pseudoClassIdents13 = new PseudoClassIdents("empty", 12);
            empty = pseudoClassIdents13;
            PseudoClassIdents pseudoClassIdents14 = new PseudoClassIdents("not", 13);
            not = pseudoClassIdents14;
            PseudoClassIdents pseudoClassIdents15 = new PseudoClassIdents("lang", 14);
            lang = pseudoClassIdents15;
            PseudoClassIdents pseudoClassIdents16 = new PseudoClassIdents("link", 15);
            link = pseudoClassIdents16;
            PseudoClassIdents pseudoClassIdents17 = new PseudoClassIdents("visited", 16);
            visited = pseudoClassIdents17;
            PseudoClassIdents pseudoClassIdents18 = new PseudoClassIdents("hover", 17);
            hover = pseudoClassIdents18;
            PseudoClassIdents pseudoClassIdents19 = new PseudoClassIdents("active", 18);
            active = pseudoClassIdents19;
            PseudoClassIdents pseudoClassIdents20 = new PseudoClassIdents("focus", 19);
            focus = pseudoClassIdents20;
            PseudoClassIdents pseudoClassIdents21 = new PseudoClassIdents("enabled", 20);
            enabled = pseudoClassIdents21;
            PseudoClassIdents pseudoClassIdents22 = new PseudoClassIdents("disabled", 21);
            disabled = pseudoClassIdents22;
            PseudoClassIdents pseudoClassIdents23 = new PseudoClassIdents("checked", 22);
            checked = pseudoClassIdents23;
            PseudoClassIdents pseudoClassIdents24 = new PseudoClassIdents("indeterminate", 23);
            indeterminate = pseudoClassIdents24;
            PseudoClassIdents pseudoClassIdents25 = new PseudoClassIdents("UNSUPPORTED", 24);
            UNSUPPORTED = pseudoClassIdents25;
            $VALUES = new PseudoClassIdents[]{pseudoClassIdents, pseudoClassIdents2, pseudoClassIdents3, pseudoClassIdents4, pseudoClassIdents5, pseudoClassIdents6, pseudoClassIdents7, pseudoClassIdents8, pseudoClassIdents9, pseudoClassIdents10, pseudoClassIdents11, pseudoClassIdents12, pseudoClassIdents13, pseudoClassIdents14, pseudoClassIdents15, pseudoClassIdents16, pseudoClassIdents17, pseudoClassIdents18, pseudoClassIdents19, pseudoClassIdents20, pseudoClassIdents21, pseudoClassIdents22, pseudoClassIdents23, pseudoClassIdents24, pseudoClassIdents25};
            cache = new HashMap();
            for (PseudoClassIdents pseudoClassIdents26 : values()) {
                if (pseudoClassIdents26 != UNSUPPORTED) {
                    cache.put(pseudoClassIdents26.name().replace('_', '-'), pseudoClassIdents26);
                }
            }
        }

        public static PseudoClassIdents a(String str) {
            PseudoClassIdents pseudoClassIdents = cache.get(str);
            return pseudoClassIdents != null ? pseudoClassIdents : UNSUPPORTED;
        }

        public static PseudoClassIdents valueOf(String str) {
            return (PseudoClassIdents) Enum.valueOf(PseudoClassIdents.class, str);
        }

        public static PseudoClassIdents[] values() {
            return (PseudoClassIdents[]) $VALUES.clone();
        }
    }

    public static class PseudoClassNot implements PseudoClass {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public List f25131a;

        @Override // com.caverock.androidsvg.CSSParser.PseudoClass
        public final boolean a(SVG.SvgElementBase svgElementBase) {
            Iterator it = this.f25131a.iterator();
            while (it.hasNext()) {
                if (CSSParser.g((Selector) it.next(), svgElementBase)) {
                    return false;
                }
            }
            return true;
        }

        public final String toString() {
            return a.o(new StringBuilder("not("), this.f25131a, ")");
        }
    }

    public static class PseudoClassNotSupported implements PseudoClass {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f25132a;

        public PseudoClassNotSupported(String str) {
            this.f25132a = str;
        }

        @Override // com.caverock.androidsvg.CSSParser.PseudoClass
        public final boolean a(SVG.SvgElementBase svgElementBase) {
            return false;
        }

        public final String toString() {
            return this.f25132a;
        }
    }

    public static class PseudoClassOnlyChild implements PseudoClass {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f25133a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f25134b;

        public PseudoClassOnlyChild(boolean z, String str) {
            this.f25133a = z;
            this.f25134b = str;
        }

        @Override // com.caverock.androidsvg.CSSParser.PseudoClass
        public final boolean a(SVG.SvgElementBase svgElementBase) {
            int i2;
            boolean z = this.f25133a;
            String strN = this.f25134b;
            if (z && strN == null) {
                strN = svgElementBase.n();
            }
            SVG.SvgContainer svgContainer = svgElementBase.f25197b;
            if (svgContainer != null) {
                Iterator it = svgContainer.getChildren().iterator();
                i2 = 0;
                while (it.hasNext()) {
                    SVG.SvgElementBase svgElementBase2 = (SVG.SvgElementBase) ((SVG.SvgObject) it.next());
                    if (strN == null || svgElementBase2.n().equals(strN)) {
                        i2++;
                    }
                }
            } else {
                i2 = 1;
            }
            return i2 == 1;
        }

        public final String toString() {
            return this.f25133a ? fc.h("only-of-type <", this.f25134b, ">") : "only-child";
        }
    }

    public static class PseudoClassRoot implements PseudoClass {
        @Override // com.caverock.androidsvg.CSSParser.PseudoClass
        public final boolean a(SVG.SvgElementBase svgElementBase) {
            return svgElementBase.f25197b == null;
        }

        public final String toString() {
            return "root";
        }
    }

    public static class PseudoClassTarget implements PseudoClass {
        @Override // com.caverock.androidsvg.CSSParser.PseudoClass
        public final boolean a(SVG.SvgElementBase svgElementBase) {
            return false;
        }

        public final String toString() {
            return "target";
        }
    }

    public static class Rule {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Selector f25135a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public SVG.Style f25136b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Source f25137c;

        public final String toString() {
            return String.valueOf(this.f25135a) + " {...} (src=" + this.f25137c + ")";
        }
    }

    public static class Ruleset {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public ArrayList f25138a = null;

        public final void a(Rule rule) {
            if (this.f25138a == null) {
                this.f25138a = new ArrayList();
            }
            int i2 = 0;
            while (true) {
                int size = this.f25138a.size();
                ArrayList arrayList = this.f25138a;
                if (i2 >= size) {
                    arrayList.add(rule);
                    return;
                } else {
                    if (((Rule) arrayList.get(i2)).f25135a.f25140b > rule.f25135a.f25140b) {
                        this.f25138a.add(i2, rule);
                        return;
                    }
                    i2++;
                }
            }
        }

        public final void b(Ruleset ruleset) {
            if (ruleset.f25138a == null) {
                return;
            }
            if (this.f25138a == null) {
                this.f25138a = new ArrayList(ruleset.f25138a.size());
            }
            Iterator it = ruleset.f25138a.iterator();
            while (it.hasNext()) {
                a((Rule) it.next());
            }
        }

        public final String toString() {
            if (this.f25138a == null) {
                return "";
            }
            StringBuilder sb = new StringBuilder();
            Iterator it = this.f25138a.iterator();
            while (it.hasNext()) {
                sb.append(((Rule) it.next()).toString());
                sb.append('\n');
            }
            return sb.toString();
        }
    }

    public static class Selector {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public ArrayList f25139a = null;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f25140b = 0;

        public final void a() {
            this.f25140b += 1000;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder();
            Iterator it = this.f25139a.iterator();
            while (it.hasNext()) {
                sb.append((SimpleSelector) it.next());
                sb.append(' ');
            }
            sb.append('[');
            return tr.k(sb, this.f25140b, ']');
        }
    }

    public static class SimpleSelector {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Combinator f25141a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f25142b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public ArrayList f25143c = null;
        public ArrayList d = null;

        public SimpleSelector(Combinator combinator, String str) {
            this.f25141a = null;
            this.f25142b = null;
            this.f25141a = combinator == null ? Combinator.DESCENDANT : combinator;
            this.f25142b = str;
        }

        public final void a(String str, AttribOp attribOp, String str2) {
            if (this.f25143c == null) {
                this.f25143c = new ArrayList();
            }
            this.f25143c.add(new Attrib(str, attribOp, str2));
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder();
            Combinator combinator = Combinator.CHILD;
            Combinator combinator2 = this.f25141a;
            if (combinator2 == combinator) {
                sb.append("> ");
            } else if (combinator2 == Combinator.FOLLOWS) {
                sb.append("+ ");
            }
            String str = this.f25142b;
            if (str == null) {
                str = Browse.CAPS_WILDCARD;
            }
            sb.append(str);
            ArrayList<Attrib> arrayList = this.f25143c;
            if (arrayList != null) {
                for (Attrib attrib : arrayList) {
                    sb.append('[');
                    String str2 = attrib.f25122a;
                    String str3 = attrib.f25124c;
                    sb.append(str2);
                    int i2 = AnonymousClass1.f25120a[attrib.f25123b.ordinal()];
                    if (i2 == 1) {
                        sb.append('=');
                        sb.append(str3);
                    } else if (i2 == 2) {
                        sb.append("~=");
                        sb.append(str3);
                    } else if (i2 == 3) {
                        sb.append("|=");
                        sb.append(str3);
                    }
                    sb.append(']');
                }
            }
            ArrayList<PseudoClass> arrayList2 = this.d;
            if (arrayList2 != null) {
                for (PseudoClass pseudoClass : arrayList2) {
                    sb.append(':');
                    sb.append(pseudoClass);
                }
            }
            return sb.toString();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class Source {
        private static final /* synthetic */ Source[] $VALUES;
        public static final Source Document;
        public static final Source RenderOptions;

        static {
            Source source = new Source("Document", 0);
            Document = source;
            Source source2 = new Source("RenderOptions", 1);
            RenderOptions = source2;
            $VALUES = new Source[]{source, source2};
        }

        public static Source valueOf(String str) {
            return (Source) Enum.valueOf(Source.class, str);
        }

        public static Source[] values() {
            return (Source[]) $VALUES.clone();
        }
    }

    public static int a(ArrayList arrayList, int i2, SVG.SvgElementBase svgElementBase) {
        int i3 = 0;
        if (i2 < 0) {
            return 0;
        }
        Object obj = arrayList.get(i2);
        SVG.SvgContainer svgContainer = svgElementBase.f25197b;
        if (obj != svgContainer) {
            return -1;
        }
        Iterator it = svgContainer.getChildren().iterator();
        while (it.hasNext()) {
            if (((SVG.SvgObject) it.next()) == svgElementBase) {
                return i3;
            }
            i3++;
        }
        return -1;
    }

    public static ArrayList c(CSSTextScanner cSSTextScanner) {
        ArrayList arrayList = new ArrayList();
        while (!cSSTextScanner.f()) {
            String str = cSSTextScanner.f25254a;
            String strSubstring = null;
            if (!cSSTextScanner.f()) {
                int i2 = cSSTextScanner.f25255b;
                char cCharAt = str.charAt(i2);
                if ((cCharAt < 'A' || cCharAt > 'Z') && (cCharAt < 'a' || cCharAt > 'z')) {
                    cSSTextScanner.f25255b = i2;
                } else {
                    int iA = cSSTextScanner.a();
                    while (true) {
                        if ((iA < 65 || iA > 90) && (iA < 97 || iA > 122)) {
                            break;
                        }
                        iA = cSSTextScanner.a();
                    }
                    strSubstring = str.substring(i2, cSSTextScanner.f25255b);
                }
            }
            if (strSubstring == null) {
                break;
            }
            try {
                arrayList.add(MediaType.valueOf(strSubstring));
            } catch (IllegalArgumentException unused) {
            }
            if (!cSSTextScanner.p()) {
                break;
            }
        }
        return arrayList;
    }

    public static boolean f(Selector selector, int i2, ArrayList arrayList, int i3, SVG.SvgElementBase svgElementBase) {
        SimpleSelector simpleSelector = (SimpleSelector) selector.f25139a.get(i2);
        if (!i(simpleSelector, svgElementBase)) {
            return false;
        }
        Combinator combinator = simpleSelector.f25141a;
        if (combinator == Combinator.DESCENDANT) {
            if (i2 != 0) {
                while (i3 >= 0) {
                    if (!h(selector, i2 - 1, arrayList, i3)) {
                        i3--;
                    }
                }
                return false;
            }
            return true;
        }
        if (combinator == Combinator.CHILD) {
            return h(selector, i2 - 1, arrayList, i3);
        }
        int iA = a(arrayList, i3, svgElementBase);
        if (iA <= 0) {
            return false;
        }
        return f(selector, i2 - 1, arrayList, i3, (SVG.SvgElementBase) svgElementBase.f25197b.getChildren().get(iA - 1));
    }

    public static boolean g(Selector selector, SVG.SvgElementBase svgElementBase) {
        ArrayList arrayList = new ArrayList();
        Object obj = svgElementBase.f25197b;
        while (true) {
            if (obj == null) {
                break;
            }
            arrayList.add(0, obj);
            obj = ((SVG.SvgObject) obj).f25197b;
        }
        int size = arrayList.size() - 1;
        ArrayList arrayList2 = selector.f25139a;
        int size2 = arrayList2 == null ? 0 : arrayList2.size();
        ArrayList arrayList3 = selector.f25139a;
        if (size2 == 1) {
            return i((SimpleSelector) arrayList3.get(0), svgElementBase);
        }
        return f(selector, (arrayList3 != null ? arrayList3.size() : 0) - 1, arrayList, size, svgElementBase);
    }

    public static boolean h(Selector selector, int i2, ArrayList arrayList, int i3) {
        SimpleSelector simpleSelector = (SimpleSelector) selector.f25139a.get(i2);
        SVG.SvgElementBase svgElementBase = (SVG.SvgElementBase) arrayList.get(i3);
        if (!i(simpleSelector, svgElementBase)) {
            return false;
        }
        Combinator combinator = simpleSelector.f25141a;
        if (combinator == Combinator.DESCENDANT) {
            if (i2 != 0) {
                while (i3 > 0) {
                    i3--;
                    if (h(selector, i2 - 1, arrayList, i3)) {
                    }
                }
                return false;
            }
            return true;
        }
        if (combinator == Combinator.CHILD) {
            return h(selector, i2 - 1, arrayList, i3 - 1);
        }
        int iA = a(arrayList, i3, svgElementBase);
        if (iA <= 0) {
            return false;
        }
        return f(selector, i2 - 1, arrayList, i3, (SVG.SvgElementBase) svgElementBase.f25197b.getChildren().get(iA - 1));
    }

    public static boolean i(SimpleSelector simpleSelector, SVG.SvgElementBase svgElementBase) {
        ArrayList arrayList;
        String str = simpleSelector.f25142b;
        if (str != null && !str.equals(svgElementBase.n().toLowerCase(Locale.US))) {
            return false;
        }
        ArrayList<Attrib> arrayList2 = simpleSelector.f25143c;
        if (arrayList2 != null) {
            for (Attrib attrib : arrayList2) {
                String str2 = attrib.f25122a;
                String str3 = attrib.f25124c;
                if (str2.equals(b.a.f24015b)) {
                    if (!str3.equals(svgElementBase.f25193c)) {
                        return false;
                    }
                } else if (!str2.equals("class") || (arrayList = svgElementBase.g) == null || !arrayList.contains(str3)) {
                    return false;
                }
            }
        }
        ArrayList arrayList3 = simpleSelector.d;
        if (arrayList3 == null) {
            return true;
        }
        Iterator it = arrayList3.iterator();
        while (it.hasNext()) {
            if (!((PseudoClass) it.next()).a(svgElementBase)) {
                return false;
            }
        }
        return true;
    }

    public final void b(Ruleset ruleset, CSSTextScanner cSSTextScanner) throws CSSParseException {
        int iIntValue;
        char cCharAt;
        int iR;
        String strT = cSSTextScanner.t();
        cSSTextScanner.q();
        if (strT == null) {
            throw new CSSParseException("Invalid '@' rule");
        }
        int i2 = 0;
        if (!this.f25119c && strT.equals("media")) {
            ArrayList arrayListC = c(cSSTextScanner);
            if (!cSSTextScanner.d('{')) {
                throw new CSSParseException("Invalid @media rule: missing rule set");
            }
            cSSTextScanner.q();
            MediaType mediaType = this.f25117a;
            Iterator it = arrayListC.iterator();
            while (true) {
                if (!it.hasNext()) {
                    e(cSSTextScanner);
                    break;
                }
                MediaType mediaType2 = (MediaType) it.next();
                if (mediaType2 == MediaType.all || mediaType2 == mediaType) {
                    this.f25119c = true;
                    ruleset.b(e(cSSTextScanner));
                    this.f25119c = false;
                    break;
                }
            }
            if (!cSSTextScanner.f() && !cSSTextScanner.d('}')) {
                throw new CSSParseException("Invalid @media rule: expected '}' at end of rule set");
            }
        } else if (this.f25119c || !strT.equals("import")) {
            while (!cSSTextScanner.f() && ((iIntValue = cSSTextScanner.h().intValue()) != 59 || i2 != 0)) {
                if (iIntValue != 123) {
                    if (iIntValue == 125 && i2 > 0 && (i2 = i2 - 1) == 0) {
                        break;
                    }
                } else {
                    i2++;
                }
            }
        } else {
            String strS = null;
            if (!cSSTextScanner.f()) {
                int i3 = cSSTextScanner.f25255b;
                if (cSSTextScanner.e("url(")) {
                    cSSTextScanner.q();
                    String strS2 = cSSTextScanner.s();
                    if (strS2 == null) {
                        String str = cSSTextScanner.f25254a;
                        StringBuilder sb = new StringBuilder();
                        while (!cSSTextScanner.f() && (cCharAt = str.charAt(cSSTextScanner.f25255b)) != '\'' && cCharAt != '\"' && cCharAt != '(' && cCharAt != ')' && !SVGParser.TextScanner.g(cCharAt) && !Character.isISOControl((int) cCharAt)) {
                            cSSTextScanner.f25255b++;
                            if (cCharAt == '\\') {
                                if (!cSSTextScanner.f()) {
                                    int i4 = cSSTextScanner.f25255b;
                                    cSSTextScanner.f25255b = i4 + 1;
                                    cCharAt = str.charAt(i4);
                                    if (cCharAt != '\n' && cCharAt != '\r' && cCharAt != '\f') {
                                        int iR2 = CSSTextScanner.r(cCharAt);
                                        if (iR2 != -1) {
                                            for (int i5 = 1; i5 <= 5 && !cSSTextScanner.f() && (iR = CSSTextScanner.r(str.charAt(cSSTextScanner.f25255b))) != -1; i5++) {
                                                cSSTextScanner.f25255b++;
                                                iR2 = (iR2 * 16) + iR;
                                            }
                                            sb.append((char) iR2);
                                        }
                                    }
                                }
                            }
                            sb.append(cCharAt);
                        }
                        strS2 = sb.length() == 0 ? null : sb.toString();
                    }
                    if (strS2 == null) {
                        cSSTextScanner.f25255b = i3;
                    } else {
                        cSSTextScanner.q();
                        if (cSSTextScanner.f() || cSSTextScanner.e(")")) {
                            strS = strS2;
                        } else {
                            cSSTextScanner.f25255b = i3;
                        }
                    }
                }
            }
            if (strS == null) {
                strS = cSSTextScanner.s();
            }
            if (strS == null) {
                throw new CSSParseException("Invalid @import rule: expected string or url()");
            }
            cSSTextScanner.q();
            c(cSSTextScanner);
            if (!cSSTextScanner.f() && !cSSTextScanner.d(';')) {
                throw new CSSParseException("Invalid @media rule: expected '}' at end of rule set");
            }
        }
        cSSTextScanner.q();
    }

    public final boolean d(Ruleset ruleset, CSSTextScanner cSSTextScanner) throws CSSParseException {
        ArrayList<Selector> arrayListU = cSSTextScanner.u();
        if (arrayListU == null || arrayListU.isEmpty()) {
            return false;
        }
        if (!cSSTextScanner.d('{')) {
            throw new CSSParseException("Malformed rule block: expected '{'");
        }
        cSSTextScanner.q();
        SVG.Style style = new SVG.Style();
        do {
            String strT = cSSTextScanner.t();
            cSSTextScanner.q();
            if (!cSSTextScanner.d(':')) {
                throw new CSSParseException("Expected ':'");
            }
            cSSTextScanner.q();
            String str = cSSTextScanner.f25254a;
            String strSubstring = null;
            if (!cSSTextScanner.f()) {
                int i2 = cSSTextScanner.f25255b;
                int iCharAt = str.charAt(i2);
                int i3 = i2;
                while (iCharAt != -1 && iCharAt != 59 && iCharAt != 125 && iCharAt != 33 && iCharAt != 10 && iCharAt != 13) {
                    if (!SVGParser.TextScanner.g(iCharAt)) {
                        i3 = cSSTextScanner.f25255b + 1;
                    }
                    iCharAt = cSSTextScanner.a();
                }
                if (cSSTextScanner.f25255b > i2) {
                    strSubstring = str.substring(i2, i3);
                } else {
                    cSSTextScanner.f25255b = i2;
                }
            }
            if (strSubstring == null) {
                throw new CSSParseException("Expected property value");
            }
            cSSTextScanner.q();
            if (cSSTextScanner.d('!')) {
                cSSTextScanner.q();
                if (!cSSTextScanner.e("important")) {
                    throw new CSSParseException("Malformed rule set: found unexpected '!'");
                }
                cSSTextScanner.q();
            }
            cSSTextScanner.d(';');
            SVGParser.C(style, strT, strSubstring);
            cSSTextScanner.q();
            if (cSSTextScanner.f()) {
                break;
            }
        } while (!cSSTextScanner.d('}'));
        cSSTextScanner.q();
        for (Selector selector : arrayListU) {
            Source source = this.f25118b;
            Rule rule = new Rule();
            rule.f25135a = selector;
            rule.f25136b = style;
            rule.f25137c = source;
            ruleset.a(rule);
        }
        return true;
    }

    public final Ruleset e(CSSTextScanner cSSTextScanner) {
        Ruleset ruleset = new Ruleset();
        while (!cSSTextScanner.f()) {
            try {
                if (!cSSTextScanner.e("<!--") && !cSSTextScanner.e("-->")) {
                    if (!cSSTextScanner.d(AnnotationParser.AnnotationInstruction)) {
                        if (!d(ruleset, cSSTextScanner)) {
                            break;
                        }
                    } else {
                        b(ruleset, cSSTextScanner);
                    }
                }
            } catch (CSSParseException e2) {
                e2.getMessage();
                return ruleset;
            }
        }
        return ruleset;
    }
}
