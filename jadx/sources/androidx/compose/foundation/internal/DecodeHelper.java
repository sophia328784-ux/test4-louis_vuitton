package androidx.compose.foundation.internal;

import android.os.Parcel;
import android.util.Base64;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitKt;
import androidx.compose.ui.unit.TextUnitType;
import kotlin.Metadata;
import kotlin.ULong;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/foundation/internal/DecodeHelper;", "", "", "string", "<init>", "(Ljava/lang/String;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class DecodeHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Parcel f4899a;

    public DecodeHelper(String str) {
        Parcel parcelObtain = Parcel.obtain();
        this.f4899a = parcelObtain;
        byte[] bArrDecode = Base64.decode(str, 0);
        parcelObtain.unmarshall(bArrDecode, 0, bArrDecode.length);
        parcelObtain.setDataPosition(0);
    }

    public final long a() {
        Color.Companion companion = Color.f8866b;
        long j2 = this.f4899a.readLong();
        long j3 = 63 & j2;
        if (j3 >= 16) {
            j2 = (j2 & (-64)) | (j3 + 1);
        }
        ULong.Companion companion2 = ULong.INSTANCE;
        return j2;
    }

    public final long b() {
        long j2;
        Parcel parcel = this.f4899a;
        byte b2 = parcel.readByte();
        if (b2 == 1) {
            TextUnitType.f11026b.getClass();
            j2 = TextUnitType.f11027c;
        } else if (b2 == 2) {
            TextUnitType.f11026b.getClass();
            j2 = TextUnitType.d;
        } else {
            TextUnitType.f11026b.getClass();
            j2 = 0;
        }
        TextUnitType.f11026b.getClass();
        if (!TextUnitType.a(j2, 0L)) {
            return TextUnitKt.d(parcel.readFloat(), j2);
        }
        TextUnit.f11023b.getClass();
        return TextUnit.d;
    }
}
