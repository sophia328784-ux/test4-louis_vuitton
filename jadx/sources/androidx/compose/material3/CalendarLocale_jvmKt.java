package androidx.compose.material3;

import io.jsonwebtoken.JwtParser;
import java.text.NumberFormat;
import java.util.Locale;
import java.util.WeakHashMap;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002*\n\u0010\u0001\"\u00020\u00002\u00020\u0000¨\u0006\u0002"}, d2 = {"Ljava/util/Locale;", "CalendarLocale", "material3"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class CalendarLocale_jvmKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final WeakHashMap f6653a = new WeakHashMap();

    public static String a(int i2, Locale locale) {
        if (locale == null) {
            locale = Locale.getDefault();
        }
        String str = 1 + JwtParser.SEPARATOR_CHAR + 40 + JwtParser.SEPARATOR_CHAR + false + JwtParser.SEPARATOR_CHAR + locale.toLanguageTag();
        WeakHashMap weakHashMap = f6653a;
        Object obj = weakHashMap.get(str);
        Object obj2 = obj;
        if (obj == null) {
            NumberFormat integerInstance = NumberFormat.getIntegerInstance(locale);
            integerInstance.setGroupingUsed(false);
            integerInstance.setMinimumIntegerDigits(1);
            integerInstance.setMaximumIntegerDigits(40);
            weakHashMap.put(str, integerInstance);
            obj2 = integerInstance;
        }
        return ((NumberFormat) obj2).format(Integer.valueOf(i2));
    }
}
