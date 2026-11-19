package defpackage;

import com.vuitton.android.presentation.screen.audioguide.components.bottomsheets.AudioGuideTrackDetailBottomSheetKt;
import com.vuitton.android.presentation.screen.authentication.welcome.components.WelcomeScreenKt;
import com.vuitton.android.presentation.screen.storemode.components.StoreModeHomeSlideshowKt;
import java.util.List;
import kotlin.jvm.functions.Function0;
import kotlin.reflect.KType;
import kotlinx.serialization.SerializersCacheKt;
import kotlinx.serialization.internal.SerializerCache;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class db implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f68533b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ List f68534c;

    public /* synthetic */ db(List list, int i2) {
        this.f68533b = i2;
        this.f68534c = list;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f68533b;
        List list = this.f68534c;
        switch (i2) {
            case 0:
                float f2 = AudioGuideTrackDetailBottomSheetKt.f53032a;
                return Integer.valueOf(list.size());
            case 1:
                return Integer.valueOf(list.size());
            case 2:
                return Integer.valueOf(list.size());
            case 3:
                return Integer.valueOf(list.size());
            case 4:
                return list;
            case 5:
                return Integer.valueOf(list.size());
            case 6:
                return Integer.valueOf(list.size());
            case 7:
                return Integer.valueOf(list.size());
            case 8:
                return Integer.valueOf(list.size());
            case 9:
                return Integer.valueOf(list.size());
            case 10:
                return Integer.valueOf(list.size());
            case 11:
                return Integer.valueOf(list.size());
            case 12:
                SerializerCache serializerCache = SerializersCacheKt.f75525a;
                return ((KType) list.get(0)).getF74442c();
            case 13:
                SerializerCache serializerCache2 = SerializersCacheKt.f75525a;
                return ((KType) list.get(0)).getF74442c();
            case 14:
                return Integer.valueOf(list.size());
            case 15:
                return Integer.valueOf(list.size());
            case 16:
                return Integer.valueOf(list.size());
            case 17:
                float f3 = StoreModeHomeSlideshowKt.f64837a;
                return Integer.valueOf(list.size());
            case 18:
                return Integer.valueOf(list.size());
            default:
                float f4 = WelcomeScreenKt.f54272a;
                return Integer.valueOf(list.size());
        }
    }
}
