package org.squirrelframework.foundation.fsm;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Date;

/* JADX INFO: loaded from: classes5.dex */
public class GeneralConverter<T> implements Converter<T> {
    private Class<T> type;

    public GeneralConverter(Class<T> cls) {
        this.type = cls;
    }

    @Override // org.squirrelframework.foundation.fsm.Converter
    public T convertFromString(String str) {
        if (str == null) {
            return null;
        }
        if (this.type.equals(Boolean.TYPE) || this.type.equals(Boolean.class)) {
            if (str.isEmpty()) {
                return null;
            }
            boolean zEqualsIgnoreCase = str.equalsIgnoreCase("true");
            Class<T> cls = this.type;
            return zEqualsIgnoreCase ? cls.cast(Boolean.TRUE) : cls.cast(Boolean.FALSE);
        }
        boolean zIsAssignableFrom = Number.class.isAssignableFrom(this.type);
        Class cls2 = Short.TYPE;
        Class cls3 = Byte.TYPE;
        Class cls4 = Float.TYPE;
        Class cls5 = Double.TYPE;
        Class cls6 = Long.TYPE;
        Class cls7 = Integer.TYPE;
        if (zIsAssignableFrom || cls7.isAssignableFrom(this.type) || cls6.isAssignableFrom(this.type) || cls5.isAssignableFrom(this.type) || cls4.isAssignableFrom(this.type) || cls3.isAssignableFrom(this.type) || cls2.isAssignableFrom(this.type)) {
            BigDecimal bigDecimal = new BigDecimal(str);
            if (Integer.class.equals(this.type) || cls7.equals(this.type)) {
                return this.type.cast(Integer.valueOf(bigDecimal.intValue()));
            }
            if (Long.class.equals(this.type) || cls6.equals(this.type)) {
                return this.type.cast(Long.valueOf(bigDecimal.longValue()));
            }
            if (Double.class.equals(this.type) || cls5.equals(this.type)) {
                return this.type.cast(Double.valueOf(bigDecimal.doubleValue()));
            }
            if (Float.class.equals(this.type) || cls4.equals(this.type)) {
                return this.type.cast(Float.valueOf(bigDecimal.floatValue()));
            }
            boolean zEquals = BigInteger.class.equals(this.type);
            Class<T> cls8 = this.type;
            if (zEquals) {
                return cls8.cast(bigDecimal.toBigInteger());
            }
            boolean zEquals2 = BigDecimal.class.equals(cls8);
            Class<T> cls9 = this.type;
            if (zEquals2) {
                return cls9.cast(bigDecimal);
            }
            if (Short.class.equals(cls9) || cls2.equals(this.type)) {
                return this.type.cast(Short.valueOf(bigDecimal.shortValue()));
            }
            if (Byte.class.equals(this.type) || cls3.equals(this.type)) {
                return this.type.cast(Byte.valueOf(bigDecimal.byteValue()));
            }
        } else {
            boolean zIsAssignableFrom2 = Enum.class.isAssignableFrom(this.type);
            Class<T> cls10 = this.type;
            if (zIsAssignableFrom2) {
                return cls10.cast(Enum.valueOf(cls10, str));
            }
            boolean zEquals3 = String.class.equals(cls10);
            Class<T> cls11 = this.type;
            if (zEquals3) {
                return cls11.cast(str);
            }
            boolean zIsAssignableFrom3 = Date.class.isAssignableFrom(cls11);
            Class<T> cls12 = this.type;
            if (zIsAssignableFrom3) {
                return cls12.cast(new Date(Long.parseLong(str)));
            }
            if (Character.class.equals(cls12) || Character.TYPE.equals(this.type)) {
                return this.type.cast(Character.valueOf(str.charAt(0)));
            }
        }
        throw new IllegalStateException("Unable to convert type: '" + this.type.getName() + "' with value '" + str.toString() + "'.");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.squirrelframework.foundation.fsm.Converter
    public String convertToString(T t) {
        if (Enum.class.isAssignableFrom(this.type)) {
            return ((Enum) t).name();
        }
        if (Date.class.isAssignableFrom(this.type)) {
            return Long.toString(((Date) t).getTime());
        }
        return t != 0 ? t.toString() : "";
    }
}
