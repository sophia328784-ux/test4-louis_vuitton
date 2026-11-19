package retrofit2.converter.scalars;

import defpackage.mt;
import java.io.IOException;
import okhttp3.ResponseBody;
import retrofit2.Converter;

/* JADX INFO: loaded from: classes5.dex */
final class ScalarResponseBodyConverters$CharacterResponseBodyConverter implements Converter<ResponseBody, Character> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ScalarResponseBodyConverters$CharacterResponseBodyConverter f79509b = new ScalarResponseBodyConverters$CharacterResponseBodyConverter();

    @Override // retrofit2.Converter
    public final Object f(Object obj) throws IOException {
        String strString = ((ResponseBody) obj).string();
        if (strString.length() == 1) {
            return Character.valueOf(strString.charAt(0));
        }
        mt.e(strString.length(), "Expected body of length 1 for Character conversion but was ");
        return null;
    }
}
