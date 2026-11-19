package com.sightcall.universal.model;

import defpackage.n00;
import java.util.EnumSet;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Validator {

    /* JADX INFO: renamed from: com.sightcall.universal.model.Validator$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$sightcall$universal$model$Validator$JsonValidator$Type;

        static {
            int[] iArr = new int[JsonValidator.Type.values().length];
            $SwitchMap$com$sightcall$universal$model$Validator$JsonValidator$Type = iArr;
            try {
                iArr[JsonValidator.Type.OBJECT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sightcall$universal$model$Validator$JsonValidator$Type[JsonValidator.Type.ARRAY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static class BooleanValidator extends Validator {
        @Override // com.sightcall.universal.model.Validator
        public boolean isValid(Object obj) {
            return obj instanceof Boolean;
        }

        @Override // com.sightcall.universal.model.Validator
        public String toString() {
            return "BooleanValidator{}";
        }
    }

    public static class EnumValidator extends Validator {
        private final EnumSet<?> values;

        public EnumValidator(EnumSet<?> enumSet) {
            this.values = enumSet;
        }

        @Override // com.sightcall.universal.model.Validator
        public boolean isValid(Object obj) {
            return this.values.contains(obj);
        }

        @Override // com.sightcall.universal.model.Validator
        public String toString() {
            return "EnumValidator{values=" + this.values + '}';
        }

        public EnumSet<?> values() {
            return EnumSet.copyOf((EnumSet) this.values);
        }
    }

    public static class IgnoreValidator extends Validator {
        @Override // com.sightcall.universal.model.Validator
        public boolean isValid(Object obj) {
            return true;
        }

        @Override // com.sightcall.universal.model.Validator
        public String toString() {
            return "IgnoreValidator{}";
        }
    }

    public static class IntegerValidator extends Validator {
        @Override // com.sightcall.universal.model.Validator
        public boolean isValid(Object obj) {
            return obj instanceof Integer;
        }

        @Override // com.sightcall.universal.model.Validator
        public String toString() {
            return "IntegerValidator{}";
        }
    }

    public static class JsonValidator extends Validator {
        private final Type type;

        public enum Type {
            OBJECT,
            ARRAY
        }

        public JsonValidator(Type type) {
            this.type = type;
        }

        @Override // com.sightcall.universal.model.Validator
        public boolean isValid(Object obj) {
            if (obj != null && !((String) obj).isEmpty()) {
                try {
                    int i2 = AnonymousClass1.$SwitchMap$com$sightcall$universal$model$Validator$JsonValidator$Type[this.type.ordinal()];
                    if (i2 == 1) {
                        new JSONObject((String) obj);
                    } else if (i2 == 2) {
                        new JSONArray((String) obj);
                    }
                    return true;
                } catch (JSONException unused) {
                }
            }
            return false;
        }

        @Override // com.sightcall.universal.model.Validator
        public String toString() {
            return "JsonValidator{}";
        }

        public Type type() {
            return this.type;
        }
    }

    public static class LongValidator extends Validator {
        @Override // com.sightcall.universal.model.Validator
        public boolean isValid(Object obj) {
            return obj instanceof Long;
        }

        @Override // com.sightcall.universal.model.Validator
        public String toString() {
            return "IntegerValidator{}";
        }
    }

    public static class RegexValidator extends Validator {
        private final String regex;

        public RegexValidator(String str) {
            this.regex = str;
        }

        @Override // com.sightcall.universal.model.Validator
        public boolean isValid(Object obj) {
            return Pattern.matches(this.regex, (String) obj);
        }

        public String regex() {
            return this.regex;
        }

        @Override // com.sightcall.universal.model.Validator
        public String toString() {
            return n00.r(this.regex, "'}", new StringBuilder("RegexValidator{regex='"));
        }
    }

    public static Validator ignore() {
        return new IgnoreValidator();
    }

    public static Validator ofBoolean() {
        return new BooleanValidator();
    }

    public static Validator ofEnum(EnumSet<?> enumSet) {
        return new EnumValidator(enumSet);
    }

    public static Validator ofInteger() {
        return new IntegerValidator();
    }

    public static Validator ofJson(JsonValidator.Type type) {
        return new JsonValidator(type);
    }

    public static Validator ofLong() {
        return new LongValidator();
    }

    public static Validator ofRegex(String str) {
        return new RegexValidator(str);
    }

    public abstract boolean isValid(Object obj);

    public abstract String toString();
}
