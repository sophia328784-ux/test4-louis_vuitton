package kotlinx.datetime.serializers;

import defpackage.pq0;
import kotlin.Metadata;
import kotlinx.serialization.SerializationException;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlinx-datetime"}, k = 2, mv = {1, 9, 0}, xi = 48)
public abstract class DateTimeUnitSerializersKt {
    public static final void a(int i2) {
        throw new SerializationException(pq0.k(i2, "An unknown field for index "));
    }
}
