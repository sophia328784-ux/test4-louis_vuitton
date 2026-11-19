package com.google.i18n.phonenumbers;

import com.google.i18n.phonenumbers.internal.RegexBasedMatcher;
import com.google.i18n.phonenumbers.internal.RegexCache;
import com.google.i18n.phonenumbers.metadata.DefaultMetadataDependenciesProvider;
import com.google.i18n.phonenumbers.metadata.init.ClassPathResourceMetadataLoader;
import com.google.i18n.phonenumbers.metadata.source.MetadataSourceImpl;
import com.linkplay.medialib.ContentTree;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.sightcall.advancedannotations.domain.parser.ColorParser;
import com.sightcall.advancedannotations.domain.parser.DeleteParser;
import com.sightcall.advancedannotations.domain.parser.PositionParser;
import com.sightcall.advancedannotations.domain.parser.ResourceParser;
import com.sightcall.advancedannotations.domain.parser.ScaleParser;
import com.sightcall.advancedannotations.domain.parser.TextParser;
import defpackage.d21;
import defpackage.fc;
import defpackage.n00;
import defpackage.pq0;
import io.jsonwebtoken.JwtParser;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.bouncycastle.pqc.crypto.crystals.dilithium.DilithiumEngine;
import org.bouncycastle.pqc.legacy.math.linearalgebra.Matrix;

/* JADX INFO: loaded from: classes2.dex */
public class PhoneNumberUtil {
    public static final Pattern A;
    public static final Pattern B;
    public static PhoneNumberUtil C;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Logger f35616h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final Map f35617i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final Set f35618j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final Set f35619k;
    public static final Set l;
    public static final Map m;
    public static final Map n;
    public static final Map o;
    public static final Map p;
    public static final Pattern q;
    public static final Pattern r;
    public static final Pattern s;
    public static final Pattern t;
    public static final Pattern u;
    public static final Pattern v;
    public static final Pattern w;
    public static final Pattern x;
    public static final Pattern y;
    public static final Pattern z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MetadataSourceImpl f35620a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HashMap f35621b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final RegexBasedMatcher f35622c = new RegexBasedMatcher();
    public final HashSet d = new HashSet(35);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final RegexCache f35623e = new RegexCache(100);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final HashSet f35624f = new HashSet(DilithiumEngine.DilithiumPolyT1PackedBytes);
    public final HashSet g = new HashSet();

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class PhoneNumberFormat {
        private static final /* synthetic */ PhoneNumberFormat[] $VALUES;
        public static final PhoneNumberFormat E164;
        public static final PhoneNumberFormat INTERNATIONAL;
        public static final PhoneNumberFormat NATIONAL;
        public static final PhoneNumberFormat RFC3966;

        static {
            PhoneNumberFormat phoneNumberFormat = new PhoneNumberFormat("E164", 0);
            E164 = phoneNumberFormat;
            PhoneNumberFormat phoneNumberFormat2 = new PhoneNumberFormat("INTERNATIONAL", 1);
            INTERNATIONAL = phoneNumberFormat2;
            PhoneNumberFormat phoneNumberFormat3 = new PhoneNumberFormat("NATIONAL", 2);
            NATIONAL = phoneNumberFormat3;
            PhoneNumberFormat phoneNumberFormat4 = new PhoneNumberFormat("RFC3966", 3);
            RFC3966 = phoneNumberFormat4;
            $VALUES = new PhoneNumberFormat[]{phoneNumberFormat, phoneNumberFormat2, phoneNumberFormat3, phoneNumberFormat4};
        }

        public static PhoneNumberFormat valueOf(String str) {
            return (PhoneNumberFormat) Enum.valueOf(PhoneNumberFormat.class, str);
        }

        public static PhoneNumberFormat[] values() {
            return (PhoneNumberFormat[]) $VALUES.clone();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class PhoneNumberType {
        private static final /* synthetic */ PhoneNumberType[] $VALUES;
        public static final PhoneNumberType FIXED_LINE;
        public static final PhoneNumberType FIXED_LINE_OR_MOBILE;
        public static final PhoneNumberType MOBILE;
        public static final PhoneNumberType PAGER;
        public static final PhoneNumberType PERSONAL_NUMBER;
        public static final PhoneNumberType PREMIUM_RATE;
        public static final PhoneNumberType SHARED_COST;
        public static final PhoneNumberType TOLL_FREE;
        public static final PhoneNumberType UAN;
        public static final PhoneNumberType UNKNOWN;
        public static final PhoneNumberType VOICEMAIL;
        public static final PhoneNumberType VOIP;

        static {
            PhoneNumberType phoneNumberType = new PhoneNumberType("FIXED_LINE", 0);
            FIXED_LINE = phoneNumberType;
            PhoneNumberType phoneNumberType2 = new PhoneNumberType("MOBILE", 1);
            MOBILE = phoneNumberType2;
            PhoneNumberType phoneNumberType3 = new PhoneNumberType("FIXED_LINE_OR_MOBILE", 2);
            FIXED_LINE_OR_MOBILE = phoneNumberType3;
            PhoneNumberType phoneNumberType4 = new PhoneNumberType("TOLL_FREE", 3);
            TOLL_FREE = phoneNumberType4;
            PhoneNumberType phoneNumberType5 = new PhoneNumberType("PREMIUM_RATE", 4);
            PREMIUM_RATE = phoneNumberType5;
            PhoneNumberType phoneNumberType6 = new PhoneNumberType("SHARED_COST", 5);
            SHARED_COST = phoneNumberType6;
            PhoneNumberType phoneNumberType7 = new PhoneNumberType("VOIP", 6);
            VOIP = phoneNumberType7;
            PhoneNumberType phoneNumberType8 = new PhoneNumberType("PERSONAL_NUMBER", 7);
            PERSONAL_NUMBER = phoneNumberType8;
            PhoneNumberType phoneNumberType9 = new PhoneNumberType("PAGER", 8);
            PAGER = phoneNumberType9;
            PhoneNumberType phoneNumberType10 = new PhoneNumberType("UAN", 9);
            UAN = phoneNumberType10;
            PhoneNumberType phoneNumberType11 = new PhoneNumberType("VOICEMAIL", 10);
            VOICEMAIL = phoneNumberType11;
            PhoneNumberType phoneNumberType12 = new PhoneNumberType("UNKNOWN", 11);
            UNKNOWN = phoneNumberType12;
            $VALUES = new PhoneNumberType[]{phoneNumberType, phoneNumberType2, phoneNumberType3, phoneNumberType4, phoneNumberType5, phoneNumberType6, phoneNumberType7, phoneNumberType8, phoneNumberType9, phoneNumberType10, phoneNumberType11, phoneNumberType12};
        }

        public static PhoneNumberType valueOf(String str) {
            return (PhoneNumberType) Enum.valueOf(PhoneNumberType.class, str);
        }

        public static PhoneNumberType[] values() {
            return (PhoneNumberType[]) $VALUES.clone();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class ValidationResult {
        private static final /* synthetic */ ValidationResult[] $VALUES;
        public static final ValidationResult INVALID_COUNTRY_CODE;
        public static final ValidationResult INVALID_LENGTH;
        public static final ValidationResult IS_POSSIBLE;
        public static final ValidationResult IS_POSSIBLE_LOCAL_ONLY;
        public static final ValidationResult TOO_LONG;
        public static final ValidationResult TOO_SHORT;

        static {
            ValidationResult validationResult = new ValidationResult("IS_POSSIBLE", 0);
            IS_POSSIBLE = validationResult;
            ValidationResult validationResult2 = new ValidationResult("IS_POSSIBLE_LOCAL_ONLY", 1);
            IS_POSSIBLE_LOCAL_ONLY = validationResult2;
            ValidationResult validationResult3 = new ValidationResult("INVALID_COUNTRY_CODE", 2);
            INVALID_COUNTRY_CODE = validationResult3;
            ValidationResult validationResult4 = new ValidationResult("TOO_SHORT", 3);
            TOO_SHORT = validationResult4;
            ValidationResult validationResult5 = new ValidationResult("INVALID_LENGTH", 4);
            INVALID_LENGTH = validationResult5;
            ValidationResult validationResult6 = new ValidationResult("TOO_LONG", 5);
            TOO_LONG = validationResult6;
            $VALUES = new ValidationResult[]{validationResult, validationResult2, validationResult3, validationResult4, validationResult5, validationResult6};
        }

        public static ValidationResult valueOf(String str) {
            return (ValidationResult) Enum.valueOf(ValidationResult.class, str);
        }

        public static ValidationResult[] values() {
            return (ValidationResult[]) $VALUES.clone();
        }
    }

    static {
        Character chValueOf = Character.valueOf(JwtParser.SEPARATOR_CHAR);
        f35616h = Logger.getLogger(PhoneNumberUtil.class.getName());
        HashMap map = new HashMap();
        map.put(54, DbParams.GZIP_DATA_ENCRYPT);
        f35617i = Collections.unmodifiableMap(map);
        HashSet hashSet = new HashSet();
        hashSet.add(86);
        f35618j = Collections.unmodifiableSet(hashSet);
        HashSet hashSet2 = new HashSet();
        hashSet2.add(52);
        f35619k = Collections.unmodifiableSet(hashSet2);
        HashSet hashSet3 = new HashSet();
        hashSet3.add(52);
        hashSet3.add(54);
        hashSet3.add(55);
        hashSet3.add(62);
        hashSet3.addAll(hashSet);
        l = Collections.unmodifiableSet(hashSet3);
        HashMap map2 = new HashMap();
        map2.put('0', '0');
        map2.put('1', '1');
        map2.put('2', '2');
        map2.put('3', '3');
        map2.put('4', '4');
        map2.put('5', '5');
        map2.put('6', '6');
        map2.put('7', '7');
        map2.put('8', '8');
        map2.put('9', '9');
        HashMap map3 = new HashMap(40);
        map3.put('A', '2');
        map3.put('B', '2');
        map3.put(Character.valueOf(ColorParser.ColorInstruction), '2');
        map3.put(Character.valueOf(DeleteParser.DeleteInstruction), '3');
        map3.put('E', '3');
        map3.put('F', '3');
        map3.put('G', '4');
        map3.put('H', '4');
        map3.put('I', '4');
        map3.put('J', '5');
        map3.put('K', '5');
        map3.put('L', '5');
        map3.put('M', '6');
        map3.put(Character.valueOf(ResourceParser.ResourceInstruction), '6');
        map3.put('O', '6');
        map3.put(Character.valueOf(PositionParser.PositionInstruction), '7');
        map3.put('Q', '7');
        map3.put('R', '7');
        map3.put(Character.valueOf(ScaleParser.ScaleInstruction), '7');
        map3.put(Character.valueOf(TextParser.TextInstruction), '8');
        map3.put(Character.valueOf(Matrix.MATRIX_TYPE_RANDOM_UT), '8');
        map3.put('V', '8');
        map3.put('W', '9');
        map3.put('X', '9');
        map3.put('Y', '9');
        map3.put(Character.valueOf(Matrix.MATRIX_TYPE_ZERO), '9');
        Map mapUnmodifiableMap = Collections.unmodifiableMap(map3);
        n = mapUnmodifiableMap;
        HashMap map4 = new HashMap(100);
        map4.putAll(mapUnmodifiableMap);
        map4.putAll(map2);
        o = Collections.unmodifiableMap(map4);
        HashMap map5 = new HashMap();
        map5.putAll(map2);
        map5.put('+', '+');
        map5.put('*', '*');
        map5.put('#', '#');
        m = Collections.unmodifiableMap(map5);
        HashMap map6 = new HashMap();
        for (Character ch : mapUnmodifiableMap.keySet()) {
            map6.put(Character.valueOf(Character.toLowerCase(ch.charValue())), ch);
            map6.put(ch, ch);
        }
        map6.putAll(map2);
        map6.put('-', '-');
        map6.put((char) 65293, '-');
        map6.put((char) 8208, '-');
        map6.put((char) 8209, '-');
        map6.put((char) 8210, '-');
        map6.put((char) 8211, '-');
        map6.put((char) 8212, '-');
        map6.put((char) 8213, '-');
        map6.put((char) 8722, '-');
        map6.put('/', '/');
        map6.put((char) 65295, '/');
        map6.put(' ', ' ');
        map6.put((char) 12288, ' ');
        map6.put((char) 8288, ' ');
        map6.put(chValueOf, chValueOf);
        map6.put((char) 65294, chValueOf);
        p = Collections.unmodifiableMap(map6);
        Pattern.compile("[\\d]+(?:[~⁓∼～][\\d]+)?");
        StringBuilder sb = new StringBuilder();
        Map map7 = n;
        sb.append(Arrays.toString(map7.keySet().toArray()).replaceAll("[, \\[\\]]", ""));
        sb.append(Arrays.toString(map7.keySet().toArray()).toLowerCase().replaceAll("[, \\[\\]]", ""));
        String string = sb.toString();
        q = Pattern.compile("[+＋]+");
        r = Pattern.compile("[-x‐-―−ー－-／  \u00ad\u200b\u2060\u3000()（）［］.\\[\\]/~⁓∼～]+");
        s = Pattern.compile("(\\p{Nd})");
        t = Pattern.compile("[+＋\\p{Nd}]");
        u = Pattern.compile("[\\\\/] *x");
        v = Pattern.compile("[[\\P{N}&&\\P{L}]&&[^#]]+$");
        w = Pattern.compile("(?:.*?[A-Za-z]){3}.*");
        String strH = fc.h("\\p{Nd}{2}|[+＋]*+(?:[-x‐-―−ー－-／  \u00ad\u200b\u2060\u3000()（）［］.\\[\\]/~⁓∼～*]*\\p{Nd}){3,}[-x‐-―−ー－-／  \u00ad\u200b\u2060\u3000()（）［］.\\[\\]/~⁓∼～*", string, "\\p{Nd}]*");
        String strA = a(true);
        a(false);
        x = Pattern.compile("^\\+(\\p{Nd}|[\\-\\.\\(\\)]?)*\\p{Nd}(\\p{Nd}|[\\-\\.\\(\\)]?)*$");
        String strConcat = string.concat("\\p{Nd}");
        y = Pattern.compile("^(" + d21.l("[", strConcat, "]+((\\-)*[", strConcat, "])*") + "\\.)*" + d21.l("[", string, "]+((\\-)*[", strConcat, "])*") + "\\.?$");
        StringBuilder sb2 = new StringBuilder("(?:");
        sb2.append(strA);
        sb2.append(")$");
        z = Pattern.compile(sb2.toString(), 66);
        A = Pattern.compile(strH + "(?:" + strA + ")?", 66);
        Pattern.compile("(\\D+)");
        B = Pattern.compile("(\\$\\d)");
        Pattern.compile("\\(?\\$1\\)?");
        C = null;
    }

    public PhoneNumberUtil(MetadataSourceImpl metadataSourceImpl, HashMap map) {
        this.f35620a = metadataSourceImpl;
        this.f35621b = map;
        for (Map.Entry entry : map.entrySet()) {
            List list = (List) entry.getValue();
            if (list.size() == 1 && "001".equals(list.get(0))) {
                this.g.add((Integer) entry.getKey());
            } else {
                this.f35624f.addAll(list);
            }
        }
        if (this.f35624f.remove("001")) {
            f35616h.log(Level.WARNING, "invalid metadata (country calling code was mapped to the non-geo entity as well as specific region(s))");
        }
        this.d.addAll((Collection) map.get(1));
    }

    public static String a(boolean z2) {
        String strConcat = ";ext=".concat(b(20));
        String str = "[  \\t,]*(?:e?xt(?:ensi(?:ó?|ó))?n?|ｅ?ｘｔｎ?|доб|anexo)[:\\.．]?[  \\t,-]*" + b(20) + "#?";
        String str2 = "[  \\t,]*(?:[xｘ#＃~～]|int|ｉｎｔ)[:\\.．]?[  \\t,-]*" + b(9) + "#?";
        String str3 = "[- ]+" + b(6) + "#";
        StringBuilder sb = new StringBuilder();
        sb.append(strConcat);
        sb.append("|");
        sb.append(str);
        sb.append("|");
        sb.append(str2);
        String strR = n00.r("|", str3, sb);
        if (!z2) {
            return strR;
        }
        return strR + "|" + ("[  \\t]*(?:,{2}|;)[:\\.．]?[  \\t,-]*" + b(15) + "#?") + "|" + ("[  \\t]*(?:,)+[:\\.．]?[  \\t,-]*" + b(9) + "#?");
    }

    public static String b(int i2) {
        return n00.m(i2, "(\\p{Nd}{1,", "})");
    }

    public static synchronized PhoneNumberUtil d() {
        try {
            if (C == null) {
                DefaultMetadataDependenciesProvider defaultMetadataDependenciesProvider = DefaultMetadataDependenciesProvider.d;
                ClassPathResourceMetadataLoader classPathResourceMetadataLoader = defaultMetadataDependenciesProvider.f35658b;
                if (classPathResourceMetadataLoader == null) {
                    throw new IllegalArgumentException("metadataLoader could not be null.");
                }
                PhoneNumberUtil phoneNumberUtil = new PhoneNumberUtil(new MetadataSourceImpl(defaultMetadataDependenciesProvider.f35659c, classPathResourceMetadataLoader, defaultMetadataDependenciesProvider.f35657a), CountryCodeToRegionCodeMap.a());
                synchronized (PhoneNumberUtil.class) {
                    C = phoneNumberUtil;
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return C;
    }

    public static String g(Phonenumber$PhoneNumber phonenumber$PhoneNumber) {
        int i2;
        StringBuilder sb = new StringBuilder();
        if (phonenumber$PhoneNumber.f35648h && (i2 = phonenumber$PhoneNumber.f35650j) > 0) {
            char[] cArr = new char[Math.min(i2, 10)];
            Arrays.fill(cArr, '0');
            sb.append(new String(cArr));
        }
        sb.append(phonenumber$PhoneNumber.d);
        return sb.toString();
    }

    public static Phonemetadata$PhoneNumberDesc h(Phonemetadata$PhoneMetadata phonemetadata$PhoneMetadata, PhoneNumberType phoneNumberType) {
        switch (phoneNumberType.ordinal()) {
            case 0:
            case 2:
                return phonemetadata$PhoneMetadata.f35633e;
            case 1:
                return phonemetadata$PhoneMetadata.g;
            case 3:
                return phonemetadata$PhoneMetadata.f35636i;
            case 4:
                return phonemetadata$PhoneMetadata.f35638k;
            case 5:
                return phonemetadata$PhoneMetadata.m;
            case 6:
                return phonemetadata$PhoneMetadata.q;
            case 7:
                return phonemetadata$PhoneMetadata.o;
            case 8:
                return phonemetadata$PhoneMetadata.s;
            case 9:
                return phonemetadata$PhoneMetadata.u;
            case 10:
                return phonemetadata$PhoneMetadata.y;
            default:
                return phonemetadata$PhoneMetadata.f35632c;
        }
    }

    public static void n(StringBuilder sb) {
        if (!w.matcher(sb).matches()) {
            sb.replace(0, sb.length(), o(sb));
            return;
        }
        int length = sb.length();
        StringBuilder sb2 = new StringBuilder(sb.length());
        for (int i2 = 0; i2 < sb.length(); i2++) {
            Character ch = (Character) o.get(Character.valueOf(Character.toUpperCase(sb.charAt(i2))));
            if (ch != null) {
                sb2.append(ch);
            }
        }
        sb.replace(0, length, sb2.toString());
    }

    public static String o(CharSequence charSequence) {
        StringBuilder sb = new StringBuilder(charSequence.length());
        for (int i2 = 0; i2 < charSequence.length(); i2++) {
            int iDigit = Character.digit(charSequence.charAt(i2), 10);
            if (iDigit != -1) {
                sb.append(iDigit);
            }
        }
        return sb.toString();
    }

    public static void q(int i2, PhoneNumberFormat phoneNumberFormat, StringBuilder sb) {
        int iOrdinal = phoneNumberFormat.ordinal();
        if (iOrdinal == 0) {
            sb.insert(0, i2).insert(0, '+');
        } else if (iOrdinal == 1) {
            sb.insert(0, " ").insert(0, i2).insert(0, '+');
        } else {
            if (iOrdinal != 3) {
                return;
            }
            sb.insert(0, "-").insert(0, i2).insert(0, '+').insert(0, "tel:");
        }
    }

    public static ValidationResult r(StringBuilder sb, Phonemetadata$PhoneMetadata phonemetadata$PhoneMetadata, PhoneNumberType phoneNumberType) {
        Phonemetadata$PhoneNumberDesc phonemetadata$PhoneNumberDescH = h(phonemetadata$PhoneMetadata, phoneNumberType);
        ArrayList arrayList = phonemetadata$PhoneNumberDescH.d.isEmpty() ? phonemetadata$PhoneMetadata.f35632c.d : phonemetadata$PhoneNumberDescH.d;
        ArrayList arrayList2 = phonemetadata$PhoneNumberDescH.f35642e;
        if (phoneNumberType == PhoneNumberType.FIXED_LINE_OR_MOBILE) {
            Phonemetadata$PhoneNumberDesc phonemetadata$PhoneNumberDescH2 = h(phonemetadata$PhoneMetadata, PhoneNumberType.FIXED_LINE);
            if (phonemetadata$PhoneNumberDescH2.d.size() == 1 && ((Integer) phonemetadata$PhoneNumberDescH2.d.get(0)).intValue() == -1) {
                return r(sb, phonemetadata$PhoneMetadata, PhoneNumberType.MOBILE);
            }
            Phonemetadata$PhoneNumberDesc phonemetadata$PhoneNumberDescH3 = h(phonemetadata$PhoneMetadata, PhoneNumberType.MOBILE);
            ArrayList arrayList3 = phonemetadata$PhoneNumberDescH3.d;
            ArrayList arrayList4 = phonemetadata$PhoneNumberDescH3.d;
            boolean z2 = (arrayList3.size() == 1 && ((Integer) arrayList4.get(0)).intValue() == -1) ? false : true;
            ArrayList arrayList5 = phonemetadata$PhoneNumberDescH3.f35642e;
            if (z2) {
                ArrayList arrayList6 = new ArrayList(arrayList);
                if (arrayList4.size() == 0) {
                    arrayList4 = phonemetadata$PhoneMetadata.f35632c.d;
                }
                arrayList6.addAll(arrayList4);
                Collections.sort(arrayList6);
                if (arrayList2.isEmpty()) {
                    arrayList2 = arrayList5;
                } else {
                    ArrayList arrayList7 = new ArrayList(arrayList2);
                    arrayList7.addAll(arrayList5);
                    Collections.sort(arrayList7);
                    arrayList2 = arrayList7;
                }
                arrayList = arrayList6;
            }
        }
        if (((Integer) arrayList.get(0)).intValue() == -1) {
            return ValidationResult.INVALID_LENGTH;
        }
        int length = sb.length();
        if (arrayList2.contains(Integer.valueOf(length))) {
            return ValidationResult.IS_POSSIBLE_LOCAL_ONLY;
        }
        int iIntValue = ((Integer) arrayList.get(0)).intValue();
        if (iIntValue == length) {
            return ValidationResult.IS_POSSIBLE;
        }
        if (iIntValue > length) {
            return ValidationResult.TOO_SHORT;
        }
        if (((Integer) arrayList.get(arrayList.size() - 1)).intValue() < length) {
            return ValidationResult.TOO_LONG;
        }
        return arrayList.subList(1, arrayList.size()).contains(Integer.valueOf(length)) ? ValidationResult.IS_POSSIBLE : ValidationResult.INVALID_LENGTH;
    }

    public final String c(Phonenumber$PhoneNumber phonenumber$PhoneNumber, PhoneNumberFormat phoneNumberFormat) {
        RegexCache regexCache;
        Phonemetadata$NumberFormat phonemetadata$NumberFormat;
        if (phonenumber$PhoneNumber.d == 0) {
            String str = phonenumber$PhoneNumber.f35651k;
            if (str.length() > 0 && phonenumber$PhoneNumber.f35644b && phonenumber$PhoneNumber.l == Phonenumber$PhoneNumber.CountryCodeSource.FROM_DEFAULT_COUNTRY && phoneNumberFormat == PhoneNumberFormat.E164) {
                int i2 = phonenumber$PhoneNumber.f35645c;
                StringBuilder sb = new StringBuilder(str);
                q(i2, phoneNumberFormat, sb);
                return sb.toString();
            }
            if (str.length() > 0 || !phonenumber$PhoneNumber.f35644b) {
                return str;
            }
        }
        StringBuilder sb2 = new StringBuilder(20);
        sb2.setLength(0);
        int i3 = phonenumber$PhoneNumber.f35645c;
        String strG = g(phonenumber$PhoneNumber);
        PhoneNumberFormat phoneNumberFormat2 = PhoneNumberFormat.E164;
        if (phoneNumberFormat == phoneNumberFormat2) {
            sb2.append(strG);
            q(i3, phoneNumberFormat2, sb2);
        } else {
            Integer numValueOf = Integer.valueOf(i3);
            HashMap map = this.f35621b;
            if (map.containsKey(numValueOf)) {
                List list = (List) map.get(Integer.valueOf(i3));
                Phonemetadata$PhoneMetadata phonemetadata$PhoneMetadataF = f(i3, list == null ? "ZZ" : (String) list.get(0));
                Iterator it = ((phonemetadata$PhoneMetadataF.Z.size() == 0 || phoneNumberFormat == PhoneNumberFormat.NATIONAL) ? phonemetadata$PhoneMetadataF.Y : phonemetadata$PhoneMetadataF.Z).iterator();
                while (true) {
                    boolean zHasNext = it.hasNext();
                    regexCache = this.f35623e;
                    if (!zHasNext) {
                        phonemetadata$NumberFormat = null;
                        break;
                    }
                    phonemetadata$NumberFormat = (Phonemetadata$NumberFormat) it.next();
                    int size = phonemetadata$NumberFormat.d.size();
                    if (size != 0) {
                        if (!regexCache.a((String) phonemetadata$NumberFormat.d.get(size - 1)).matcher(strG).lookingAt()) {
                            continue;
                        }
                    }
                    if (regexCache.a(phonemetadata$NumberFormat.f35625b).matcher(strG).matches()) {
                        break;
                    }
                }
                if (phonemetadata$NumberFormat != null) {
                    String str2 = phonemetadata$NumberFormat.f35626c;
                    Matcher matcher = regexCache.a(phonemetadata$NumberFormat.f35625b).matcher(strG);
                    PhoneNumberFormat phoneNumberFormat3 = PhoneNumberFormat.NATIONAL;
                    String str3 = phonemetadata$NumberFormat.f35628f;
                    strG = (phoneNumberFormat != phoneNumberFormat3 || str3 == null || str3.length() <= 0) ? matcher.replaceAll(str2) : matcher.replaceAll(B.matcher(str2).replaceFirst(str3));
                    if (phoneNumberFormat == PhoneNumberFormat.RFC3966) {
                        Matcher matcher2 = r.matcher(strG);
                        if (matcher2.lookingAt()) {
                            strG = matcher2.replaceFirst("");
                        }
                        strG = matcher2.reset(strG).replaceAll("-");
                    }
                }
                sb2.append(strG);
                if (phonenumber$PhoneNumber.f35646e && phonenumber$PhoneNumber.f35647f.length() > 0) {
                    if (phoneNumberFormat == PhoneNumberFormat.RFC3966) {
                        sb2.append(";ext=");
                        sb2.append(phonenumber$PhoneNumber.f35647f);
                    } else if (phonemetadata$PhoneMetadataF.Q) {
                        sb2.append(phonemetadata$PhoneMetadataF.R);
                        sb2.append(phonenumber$PhoneNumber.f35647f);
                    } else {
                        sb2.append(" ext. ");
                        sb2.append(phonenumber$PhoneNumber.f35647f);
                    }
                }
                q(i3, phoneNumberFormat, sb2);
            } else {
                sb2.append(strG);
            }
        }
        return sb2.toString();
    }

    public final Phonemetadata$PhoneMetadata e(String str) {
        if (str == null || !this.f35624f.contains(str)) {
            return null;
        }
        Phonemetadata$PhoneMetadata phonemetadata$PhoneMetadataB = this.f35620a.b(str);
        String strConcat = "Missing metadata for region code ".concat(str);
        if (phonemetadata$PhoneMetadataB != null) {
            return phonemetadata$PhoneMetadataB;
        }
        throw new MissingMetadataException(strConcat);
    }

    public final Phonemetadata$PhoneMetadata f(int i2, String str) {
        if (!"001".equals(str)) {
            return e(str);
        }
        if (!this.g.contains(Integer.valueOf(i2))) {
            return null;
        }
        Phonemetadata$PhoneMetadata phonemetadata$PhoneMetadataA = this.f35620a.a(i2);
        String strK = pq0.k(i2, "Missing metadata for country code ");
        if (phonemetadata$PhoneMetadataA != null) {
            return phonemetadata$PhoneMetadataA;
        }
        throw new MissingMetadataException(strK);
    }

    public final PhoneNumberType i(String str, Phonemetadata$PhoneMetadata phonemetadata$PhoneMetadata) {
        if (!k(str, phonemetadata$PhoneMetadata.f35632c)) {
            return PhoneNumberType.UNKNOWN;
        }
        if (k(str, phonemetadata$PhoneMetadata.f35638k)) {
            return PhoneNumberType.PREMIUM_RATE;
        }
        if (k(str, phonemetadata$PhoneMetadata.f35636i)) {
            return PhoneNumberType.TOLL_FREE;
        }
        if (k(str, phonemetadata$PhoneMetadata.m)) {
            return PhoneNumberType.SHARED_COST;
        }
        if (k(str, phonemetadata$PhoneMetadata.q)) {
            return PhoneNumberType.VOIP;
        }
        if (k(str, phonemetadata$PhoneMetadata.o)) {
            return PhoneNumberType.PERSONAL_NUMBER;
        }
        if (k(str, phonemetadata$PhoneMetadata.s)) {
            return PhoneNumberType.PAGER;
        }
        if (k(str, phonemetadata$PhoneMetadata.u)) {
            return PhoneNumberType.UAN;
        }
        if (k(str, phonemetadata$PhoneMetadata.y)) {
            return PhoneNumberType.VOICEMAIL;
        }
        boolean zK = k(str, phonemetadata$PhoneMetadata.f35633e);
        boolean z2 = phonemetadata$PhoneMetadata.X;
        if (!zK) {
            return (z2 || !k(str, phonemetadata$PhoneMetadata.g)) ? PhoneNumberType.UNKNOWN : PhoneNumberType.MOBILE;
        }
        if (!z2 && !k(str, phonemetadata$PhoneMetadata.g)) {
            return PhoneNumberType.FIXED_LINE;
        }
        return PhoneNumberType.FIXED_LINE_OR_MOBILE;
    }

    public final String j(Phonenumber$PhoneNumber phonenumber$PhoneNumber) {
        int i2 = phonenumber$PhoneNumber.f35645c;
        List<String> list = (List) this.f35621b.get(Integer.valueOf(i2));
        if (list == null) {
            f35616h.log(Level.INFO, "Missing/invalid country_code (" + i2 + ")");
            return null;
        }
        if (list.size() == 1) {
            return (String) list.get(0);
        }
        String strG = g(phonenumber$PhoneNumber);
        for (String str : list) {
            Phonemetadata$PhoneMetadata phonemetadata$PhoneMetadataE = e(str);
            if (phonemetadata$PhoneMetadataE.t0) {
                if (this.f35623e.a(phonemetadata$PhoneMetadataE.b1).matcher(strG).lookingAt()) {
                    return str;
                }
            } else if (i(strG, phonemetadata$PhoneMetadataE) != PhoneNumberType.UNKNOWN) {
                return str;
            }
        }
        return null;
    }

    public final boolean k(String str, Phonemetadata$PhoneNumberDesc phonemetadata$PhoneNumberDesc) {
        int length = str.length();
        ArrayList arrayList = phonemetadata$PhoneNumberDesc.d;
        if (arrayList.size() <= 0 || arrayList.contains(Integer.valueOf(length))) {
            return this.f35622c.a(str, phonemetadata$PhoneNumberDesc);
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0075  */
    public final int l(CharSequence charSequence, Phonemetadata$PhoneMetadata phonemetadata$PhoneMetadata, StringBuilder sb, Phonenumber$PhoneNumber phonenumber$PhoneNumber) throws NumberParseException {
        Phonenumber$PhoneNumber.CountryCodeSource countryCodeSource;
        int i2 = 0;
        if (charSequence.length() == 0) {
            return 0;
        }
        StringBuilder sb2 = new StringBuilder(charSequence);
        String str = phonemetadata$PhoneMetadata != null ? phonemetadata$PhoneMetadata.L : "NonMatch";
        if (sb2.length() == 0) {
            countryCodeSource = Phonenumber$PhoneNumber.CountryCodeSource.FROM_DEFAULT_COUNTRY;
        } else {
            Matcher matcher = q.matcher(sb2);
            if (matcher.lookingAt()) {
                sb2.delete(0, matcher.end());
                n(sb2);
                countryCodeSource = Phonenumber$PhoneNumber.CountryCodeSource.FROM_NUMBER_WITH_PLUS_SIGN;
            } else {
                Pattern patternA = this.f35623e.a(str);
                n(sb2);
                Matcher matcher2 = patternA.matcher(sb2);
                if (matcher2.lookingAt()) {
                    int iEnd = matcher2.end();
                    Matcher matcher3 = s.matcher(sb2.substring(iEnd));
                    if (matcher3.find() && o(matcher3.group(1)).equals(ContentTree.ROOT_ID)) {
                        countryCodeSource = Phonenumber$PhoneNumber.CountryCodeSource.FROM_DEFAULT_COUNTRY;
                    } else {
                        sb2.delete(0, iEnd);
                        countryCodeSource = Phonenumber$PhoneNumber.CountryCodeSource.FROM_NUMBER_WITH_IDD;
                    }
                } else {
                    countryCodeSource = Phonenumber$PhoneNumber.CountryCodeSource.FROM_DEFAULT_COUNTRY;
                }
            }
        }
        if (countryCodeSource != Phonenumber$PhoneNumber.CountryCodeSource.FROM_DEFAULT_COUNTRY) {
            if (sb2.length() <= 2) {
                throw new NumberParseException(NumberParseException.ErrorType.TOO_SHORT_AFTER_IDD, "Phone number had an IDD, but after this was not long enough to be a viable phone number.");
            }
            if (sb2.length() != 0 && sb2.charAt(0) != '0') {
                int length = sb2.length();
                for (int i3 = 1; i3 <= 3 && i3 <= length; i3++) {
                    int i4 = Integer.parseInt(sb2.substring(0, i3));
                    if (this.f35621b.containsKey(Integer.valueOf(i4))) {
                        sb.append(sb2.substring(i3));
                        i2 = i4;
                        break;
                    }
                }
            }
            if (i2 == 0) {
                throw new NumberParseException(NumberParseException.ErrorType.INVALID_COUNTRY_CODE, "Country calling code supplied was not recognised.");
            }
            phonenumber$PhoneNumber.f35644b = true;
            phonenumber$PhoneNumber.f35645c = i2;
            return i2;
        }
        if (phonemetadata$PhoneMetadata != null) {
            int i5 = phonemetadata$PhoneMetadata.K;
            String strValueOf = String.valueOf(i5);
            String string = sb2.toString();
            if (string.startsWith(strValueOf)) {
                StringBuilder sb3 = new StringBuilder(string.substring(strValueOf.length()));
                Phonemetadata$PhoneNumberDesc phonemetadata$PhoneNumberDesc = phonemetadata$PhoneMetadata.f35632c;
                m(sb3, phonemetadata$PhoneMetadata, null);
                RegexBasedMatcher regexBasedMatcher = this.f35622c;
                if ((!regexBasedMatcher.a(sb2, phonemetadata$PhoneNumberDesc) && regexBasedMatcher.a(sb3, phonemetadata$PhoneNumberDesc)) || r(sb2, phonemetadata$PhoneMetadata, PhoneNumberType.UNKNOWN) == ValidationResult.TOO_LONG) {
                    sb.append((CharSequence) sb3);
                    phonenumber$PhoneNumber.f35644b = true;
                    phonenumber$PhoneNumber.f35645c = i5;
                    return i5;
                }
            }
        }
        phonenumber$PhoneNumber.f35644b = true;
        phonenumber$PhoneNumber.f35645c = 0;
        return 0;
    }

    public final void m(StringBuilder sb, Phonemetadata$PhoneMetadata phonemetadata$PhoneMetadata, StringBuilder sb2) {
        int length = sb.length();
        String str = phonemetadata$PhoneMetadata.T;
        if (length == 0 || str.length() == 0) {
            return;
        }
        Matcher matcher = this.f35623e.a(str).matcher(sb);
        if (matcher.lookingAt()) {
            Phonemetadata$PhoneNumberDesc phonemetadata$PhoneNumberDesc = phonemetadata$PhoneMetadata.f35632c;
            RegexBasedMatcher regexBasedMatcher = this.f35622c;
            boolean zA = regexBasedMatcher.a(sb, phonemetadata$PhoneNumberDesc);
            int iGroupCount = matcher.groupCount();
            String str2 = phonemetadata$PhoneMetadata.W;
            if (str2 == null || str2.length() == 0 || matcher.group(iGroupCount) == null) {
                if (!zA || regexBasedMatcher.a(sb.substring(matcher.end()), phonemetadata$PhoneNumberDesc)) {
                    if (sb2 != null && iGroupCount > 0 && matcher.group(iGroupCount) != null) {
                        sb2.append(matcher.group(1));
                    }
                    sb.delete(0, matcher.end());
                    return;
                }
                return;
            }
            StringBuilder sb3 = new StringBuilder(sb);
            sb3.replace(0, length, matcher.replaceFirst(str2));
            if (!zA || regexBasedMatcher.a(sb3.toString(), phonemetadata$PhoneNumberDesc)) {
                if (sb2 != null && iGroupCount > 1) {
                    sb2.append(matcher.group(1));
                }
                sb.replace(0, sb.length(), sb3.toString());
            }
        }
    }

    public final Phonenumber$PhoneNumber p(CharSequence charSequence, String str) throws NumberParseException {
        String strSubstring;
        CharSequence charSequenceSubSequence;
        int iL;
        Phonenumber$PhoneNumber phonenumber$PhoneNumber = new Phonenumber$PhoneNumber();
        if (charSequence == null) {
            throw new NumberParseException(NumberParseException.ErrorType.NOT_A_NUMBER, "The phone number supplied was null.");
        }
        if (charSequence.length() > 250) {
            throw new NumberParseException(NumberParseException.ErrorType.TOO_LONG, "The string supplied was too long to parse.");
        }
        StringBuilder sb = new StringBuilder();
        String string = charSequence.toString();
        int iIndexOf = string.indexOf(";phone-context=");
        String strGroup = "";
        if (iIndexOf == -1) {
            strSubstring = null;
        } else {
            int i2 = iIndexOf + 15;
            if (i2 >= string.length()) {
                strSubstring = "";
            } else {
                int iIndexOf2 = string.indexOf(59, i2);
                strSubstring = iIndexOf2 != -1 ? string.substring(i2, iIndexOf2) : string.substring(i2);
            }
        }
        if (strSubstring != null && (strSubstring.length() == 0 || !(x.matcher(strSubstring).matches() || y.matcher(strSubstring).matches()))) {
            throw new NumberParseException(NumberParseException.ErrorType.NOT_A_NUMBER, "The phone-context value is invalid.");
        }
        if (strSubstring != null) {
            if (strSubstring.charAt(0) == '+') {
                sb.append(strSubstring);
            }
            int iIndexOf3 = string.indexOf("tel:");
            sb.append(string.substring(iIndexOf3 >= 0 ? iIndexOf3 + 4 : 0, iIndexOf));
        } else {
            Matcher matcher = t.matcher(string);
            if (matcher.find()) {
                charSequenceSubSequence = string.subSequence(matcher.start(), string.length());
                Matcher matcher2 = v.matcher(charSequenceSubSequence);
                if (matcher2.find()) {
                    charSequenceSubSequence = charSequenceSubSequence.subSequence(0, matcher2.start());
                }
                Matcher matcher3 = u.matcher(charSequenceSubSequence);
                if (matcher3.find()) {
                    charSequenceSubSequence = charSequenceSubSequence.subSequence(0, matcher3.start());
                }
            } else {
                charSequenceSubSequence = "";
            }
            sb.append(charSequenceSubSequence);
        }
        int iIndexOf4 = sb.indexOf(";isub=");
        if (iIndexOf4 > 0) {
            sb.delete(iIndexOf4, sb.length());
        }
        int length = sb.length();
        Pattern pattern = A;
        if (!(length < 2 ? false : pattern.matcher(sb).matches())) {
            throw new NumberParseException(NumberParseException.ErrorType.NOT_A_NUMBER, "The string supplied did not seem to be a phone number.");
        }
        Pattern pattern2 = q;
        if ((str == null || !this.f35624f.contains(str)) && (sb.length() == 0 || !pattern2.matcher(sb).lookingAt())) {
            throw new NumberParseException(NumberParseException.ErrorType.INVALID_COUNTRY_CODE, "Missing or invalid default region.");
        }
        Matcher matcher4 = z.matcher(sb);
        if (matcher4.find()) {
            String strSubstring2 = sb.substring(0, matcher4.start());
            if (strSubstring2.length() < 2 ? false : pattern.matcher(strSubstring2).matches()) {
                int iGroupCount = matcher4.groupCount();
                for (int i3 = 1; i3 <= iGroupCount; i3++) {
                    if (matcher4.group(i3) != null) {
                        strGroup = matcher4.group(i3);
                        sb.delete(matcher4.start(), sb.length());
                        break;
                    }
                }
            }
        }
        if (strGroup.length() > 0) {
            phonenumber$PhoneNumber.f35646e = true;
            phonenumber$PhoneNumber.f35647f = strGroup;
        }
        Phonemetadata$PhoneMetadata phonemetadata$PhoneMetadataE = e(str);
        StringBuilder sb2 = new StringBuilder();
        try {
            iL = l(sb, phonemetadata$PhoneMetadataE, sb2, phonenumber$PhoneNumber);
        } catch (NumberParseException e2) {
            Matcher matcher5 = pattern2.matcher(sb);
            NumberParseException.ErrorType errorType = NumberParseException.ErrorType.INVALID_COUNTRY_CODE;
            NumberParseException.ErrorType errorType2 = e2.f35614b;
            if (errorType2 != errorType || !matcher5.lookingAt()) {
                throw new NumberParseException(errorType2, e2.getMessage());
            }
            iL = l(sb.substring(matcher5.end()), phonemetadata$PhoneMetadataE, sb2, phonenumber$PhoneNumber);
            if (iL == 0) {
                throw new NumberParseException(NumberParseException.ErrorType.INVALID_COUNTRY_CODE, "Could not interpret numbers after plus-sign.");
            }
        }
        if (iL != 0) {
            List list = (List) this.f35621b.get(Integer.valueOf(iL));
            String str2 = list == null ? "ZZ" : (String) list.get(0);
            if (!str2.equals(str)) {
                phonemetadata$PhoneMetadataE = f(iL, str2);
            }
        } else {
            n(sb);
            sb2.append((CharSequence) sb);
            if (str != null) {
                int i4 = phonemetadata$PhoneMetadataE.K;
                phonenumber$PhoneNumber.f35644b = true;
                phonenumber$PhoneNumber.f35645c = i4;
            }
        }
        if (sb2.length() < 2) {
            throw new NumberParseException(NumberParseException.ErrorType.TOO_SHORT_NSN, "The string supplied is too short to be a phone number.");
        }
        if (phonemetadata$PhoneMetadataE != null) {
            StringBuilder sb3 = new StringBuilder();
            StringBuilder sb4 = new StringBuilder(sb2);
            m(sb4, phonemetadata$PhoneMetadataE, sb3);
            ValidationResult validationResultR = r(sb4, phonemetadata$PhoneMetadataE, PhoneNumberType.UNKNOWN);
            if (validationResultR != ValidationResult.TOO_SHORT && validationResultR != ValidationResult.IS_POSSIBLE_LOCAL_ONLY && validationResultR != ValidationResult.INVALID_LENGTH) {
                sb2 = sb4;
            }
        }
        int length2 = sb2.length();
        if (length2 < 2) {
            throw new NumberParseException(NumberParseException.ErrorType.TOO_SHORT_NSN, "The string supplied is too short to be a phone number.");
        }
        if (length2 > 17) {
            throw new NumberParseException(NumberParseException.ErrorType.TOO_LONG, "The string supplied is too long to be a phone number.");
        }
        if (sb2.length() > 1 && sb2.charAt(0) == '0') {
            phonenumber$PhoneNumber.g = true;
            phonenumber$PhoneNumber.f35648h = true;
            int i5 = 1;
            while (i5 < sb2.length() - 1 && sb2.charAt(i5) == '0') {
                i5++;
            }
            if (i5 != 1) {
                phonenumber$PhoneNumber.f35649i = true;
                phonenumber$PhoneNumber.f35650j = i5;
            }
        }
        phonenumber$PhoneNumber.d = Long.parseLong(sb2.toString());
        return phonenumber$PhoneNumber;
    }
}
