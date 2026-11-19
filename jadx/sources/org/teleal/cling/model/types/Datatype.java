package org.teleal.cling.model.types;

import com.sightcall.universal.util.DateTimeUtilKt;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public interface Datatype<V> {

    public enum Builtin {
        UI1("ui1", new UnsignedIntegerOneByteDatatype()),
        UI2("ui2", new UnsignedIntegerTwoBytesDatatype()),
        UI4("ui4", new UnsignedIntegerFourBytesDatatype()),
        I1("i1", new IntegerDatatype(1)),
        I2("i2", new IntegerDatatype(2)),
        I2_SHORT("i2", new ShortDatatype()),
        I4("i4", new IntegerDatatype(4)),
        INT("int", new IntegerDatatype(4)),
        R4("r4", new FloatDatatype()),
        R8("r8", new DoubleDatatype()),
        NUMBER("number", new DoubleDatatype()),
        FIXED144("fixed.14.4", new DoubleDatatype()),
        FLOAT("float", new DoubleDatatype()),
        CHAR("char", new CharacterDatatype()),
        STRING("string", new StringDatatype()),
        DATE("date", new DateTimeDatatype(new String[]{"yyyy-MM-dd"}, "yyyy-MM-dd")),
        DATETIME("dateTime", new DateTimeDatatype(new String[]{"yyyy-MM-dd", "yyyy-MM-dd'T'HH:mm:ss"}, "yyyy-MM-dd'T'HH:mm:ss")),
        DATETIME_TZ("dateTime.tz", new DateTimeDatatype(new String[]{"yyyy-MM-dd", "yyyy-MM-dd'T'HH:mm:ss", DateTimeUtilKt.FORMAT}, DateTimeUtilKt.FORMAT)),
        TIME("time", new DateTimeDatatype(new String[]{"HH:mm:ss"}, "HH:mm:ss")),
        TIME_TZ("time.tz", new DateTimeDatatype(new String[]{"HH:mm:ssZ", "HH:mm:ss"}, "HH:mm:ssZ")),
        BOOLEAN("boolean", new BooleanDatatype()),
        BIN_BASE64("bin.base64", new Base64Datatype()),
        BIN_HEX("bin.hex", new BinHexDatatype()),
        URI("uri", new URIDatatype()),
        UUID("uuid", new StringDatatype());

        private static Map<String, Builtin> byName;
        private Datatype datatype;
        private String descriptorName;

        /* JADX INFO: renamed from: org.teleal.cling.model.types.Datatype$Builtin$1, reason: invalid class name */
        public class AnonymousClass1 extends HashMap<String, Builtin> {
        }

        static {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1();
            for (Builtin builtin : values()) {
                if (!anonymousClass1.containsKey(builtin.c().toLowerCase())) {
                    anonymousClass1.put(builtin.c().toLowerCase(), builtin);
                }
            }
            byName = anonymousClass1;
        }

        Builtin(String str, AbstractDatatype abstractDatatype) {
            abstractDatatype.f78500a = this;
            this.descriptorName = str;
            this.datatype = abstractDatatype;
        }

        public static Builtin a(String str) {
            if (str == null) {
                return null;
            }
            return byName.get(str.toLowerCase());
        }

        public final Datatype b() {
            return this.datatype;
        }

        public final String c() {
            return this.descriptorName;
        }
    }

    String a(Object obj);

    boolean b(Object obj);

    String c();

    Builtin d();

    Object e(String str);
}
