package retrofit2.converter.scalars;

import okhttp3.ResponseBody;
import retrofit2.Converter;

/* JADX INFO: loaded from: classes5.dex */
final class ScalarResponseBodyConverters$ByteResponseBodyConverter implements Converter<ResponseBody, Byte> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ScalarResponseBodyConverters$ByteResponseBodyConverter f79508b = new ScalarResponseBodyConverters$ByteResponseBodyConverter();

    @Override // retrofit2.Converter
    public final Object f(Object obj) {
        return Byte.valueOf(((ResponseBody) obj).string());
    }
}
