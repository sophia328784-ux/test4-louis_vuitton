package defpackage;

import androidx.compose.runtime.SnapshotMutableStateImpl;
import com.vuitton.android.designkit.ui.theme.atoms.DropdownState;
import com.vuitton.android.presentation.common.editorial.models.ProductCarouselItemUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ProductsArticleSectionUiModel;
import com.vuitton.android.presentation.screen.spotlight.components.SpotlightSkuPagerKt;
import com.vuitton.android.presentation.screen.spotlight.models.SpotlightHotspotUiModel;
import com.vuitton.android.presentation.screen.thankyou.models.ThankYouFeedbackUiModel;
import io.jsonwebtoken.JwtParser;
import java.io.IOException;
import java.util.List;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.descriptors.StructureKind;
import kotlinx.serialization.internal.EnumDescriptor;
import okhttp3.internal.http2.ErrorCode;
import okhttp3.internal.http2.Http2Connection;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ou implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f78662b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f78663c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f78664e;

    public /* synthetic */ ou(int i2, String str, EnumDescriptor enumDescriptor) {
        this.f78662b = 1;
        this.f78663c = i2;
        this.d = str;
        this.f78664e = enumDescriptor;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f78662b;
        int i3 = this.f78663c;
        Object obj = this.f78664e;
        Object obj2 = this.d;
        switch (i2) {
            case 0:
                ((Function1) obj2).invoke(Integer.valueOf(i3));
                ((Function0) obj).mo47invoke();
                return Unit.f71739a;
            case 1:
                String str = (String) obj2;
                EnumDescriptor enumDescriptor = (EnumDescriptor) obj;
                SerialDescriptor[] serialDescriptorArr = new SerialDescriptor[i3];
                for (int i4 = 0; i4 < i3; i4++) {
                    serialDescriptorArr[i4] = SerialDescriptorsKt.f(str + JwtParser.SEPARATOR_CHAR + enumDescriptor.f75662e[i4], StructureKind.OBJECT.f75567a, new SerialDescriptor[0]);
                }
                return serialDescriptorArr;
            case 2:
                Http2Connection http2Connection = (Http2Connection) obj2;
                ErrorCode errorCode = (ErrorCode) obj;
                Http2Connection.Companion companion = Http2Connection.C;
                try {
                    errorCode.getClass();
                    http2Connection.z.k(i3, errorCode);
                    break;
                } catch (IOException e2) {
                    ErrorCode errorCode2 = ErrorCode.PROTOCOL_ERROR;
                    http2Connection.c(errorCode2, errorCode2, e2);
                }
                return Unit.f71739a;
            case 3:
                Function1 function1 = (Function1) obj2;
                if (!((ProductsArticleSectionUiModel.ImmersiveProductUiModel) obj).f58819c.f58823e) {
                    function1.invoke(Integer.valueOf(i3));
                }
                return Unit.f71739a;
            case 4:
                ((SnapshotMutableStateImpl) ((DropdownState) obj).f48445c).setValue(Boolean.FALSE);
                ((Function1) obj2).invoke(Integer.valueOf(i3));
                return Unit.f71739a;
            case 5:
                ((Function2) obj2).invoke((ProductCarouselItemUiModel) obj, Integer.valueOf(i3));
                return Unit.f71739a;
            case 6:
                float f2 = SpotlightSkuPagerKt.f64617a;
                ((Function1) obj2).invoke(((SpotlightHotspotUiModel) ((List) obj).get(i3)).d);
                return Unit.f71739a;
            default:
                ((Function1) obj2).invoke(ThankYouFeedbackUiModel.a((ThankYouFeedbackUiModel) obj, Integer.valueOf(i3), null, 0, false, 14));
                return Unit.f71739a;
        }
    }

    public /* synthetic */ ou(Object obj, int i2, Object obj2, int i3) {
        this.f78662b = i3;
        this.d = obj;
        this.f78663c = i2;
        this.f78664e = obj2;
    }

    public /* synthetic */ ou(Object obj, Function1 function1, int i2, int i3) {
        this.f78662b = i3;
        this.f78664e = obj;
        this.d = function1;
        this.f78663c = i2;
    }

    public /* synthetic */ ou(Function function, Object obj, int i2, int i3) {
        this.f78662b = i3;
        this.d = function;
        this.f78664e = obj;
        this.f78663c = i2;
    }
}
