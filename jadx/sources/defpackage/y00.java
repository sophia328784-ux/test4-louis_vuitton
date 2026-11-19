package defpackage;

import androidx.compose.runtime.SnapshotMutableStateImpl;
import com.vuitton.android.R;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.screen.authentication.common.validation.FieldErrorUiModel;
import com.vuitton.foundation.model.domain.extensions.StringKtExtKt;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class y00 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81239b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ FieldErrorUiModel f81240c;

    public /* synthetic */ y00(FieldErrorUiModel fieldErrorUiModel, int i2) {
        this.f81239b = i2;
        this.f81240c = fieldErrorUiModel;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        String str;
        int i2 = this.f81239b;
        FieldErrorUiModel fieldErrorUiModel = this.f81240c;
        switch (i2) {
            case 0:
                String str2 = (String) ((SnapshotMutableStateImpl) fieldErrorUiModel.f53489a).getF10755b();
                if (str2 != null) {
                    str = StringKtExtKt.g(str2) ? str2 : null;
                    if (str != null) {
                        return new StringResourceUiModel.Text(str);
                    }
                }
                return StringResourceUiModel.Empty.f51825b;
            case 1:
                if (((Boolean) ((SnapshotMutableStateImpl) fieldErrorUiModel.f53490b).getF10755b()).booleanValue()) {
                    return new StringResourceUiModel.ResId(R.string.mylv_lva_sms_phone_number_mandatory_account_creation_error_message, null, 2, null);
                }
                String str3 = (String) ((SnapshotMutableStateImpl) fieldErrorUiModel.f53489a).getF10755b();
                if (str3 != null) {
                    str = StringKtExtKt.g(str3) ? str3 : null;
                    if (str != null) {
                        return new StringResourceUiModel.Text(str);
                    }
                }
                return StringResourceUiModel.Empty.f51825b;
            default:
                Boolean bool = (Boolean) ((SnapshotMutableStateImpl) fieldErrorUiModel.f53490b).getF10755b();
                bool.booleanValue();
                return bool;
        }
    }
}
