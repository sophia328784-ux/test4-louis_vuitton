package com.vuitton.android.presentation.screen.repairs;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Parcelable;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.android.presentation.chat.ChatHostActivity;
import com.vuitton.android.presentation.chat.ChatLifecycleObserver;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceIdUiModel;
import dagger.hilt.android.AndroidEntryPoint;
import defpackage.xn0;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u0005B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/repairs/RepairActivity;", "Lcom/vuitton/android/presentation/screen/base/BaseActivity;", "Lcom/vuitton/android/presentation/chat/ChatHostActivity;", "<init>", "()V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class RepairActivity extends Hilt_RepairActivity implements ChatHostActivity {
    public static final Companion t = new Companion(null);
    public IsFeatureAvailableUseCase p;
    public ChatLifecycleObserver q;
    public final Lazy r = LazyKt.b(new xn0(this, 11));
    public final Lazy s = LazyKt.b(new Function0<CareServiceIdUiModel>() { // from class: com.vuitton.android.presentation.screen.repairs.RepairActivity$repairId$2
        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: invoke */
        public final Object mo47invoke() {
            Parcelable parcelable;
            Intent intent = this.f63442b.getIntent();
            intent.getClass();
            if (Build.VERSION.SDK_INT >= 33) {
                parcelable = (Parcelable) intent.getParcelableExtra("repair_id", CareServiceIdUiModel.class);
            } else {
                Parcelable parcelableExtra = intent.getParcelableExtra("repair_id");
                if (!(parcelableExtra instanceof CareServiceIdUiModel)) {
                    parcelableExtra = null;
                }
                parcelable = (CareServiceIdUiModel) parcelableExtra;
            }
            CareServiceIdUiModel careServiceIdUiModel = (CareServiceIdUiModel) parcelable;
            String str = careServiceIdUiModel != null ? careServiceIdUiModel.f64060b : null;
            if (str != null) {
                return new CareServiceIdUiModel(str);
            }
            return null;
        }
    });

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/repairs/RepairActivity$Companion;", "", "", "REPAIR_ROUTE", "Ljava/lang/String;", "REPAIR_ID", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static Intent a(Context context, String str, String str2) {
            context.getClass();
            Intent intentPutExtra = new Intent(context, (Class<?>) RepairActivity.class).putExtra("repair_route", str).putExtra("repair_id", str2 != null ? new CareServiceIdUiModel(str2) : null);
            intentPutExtra.getClass();
            return intentPutExtra;
        }

        public static /* synthetic */ Intent b(Companion companion, Context context, int i2) {
            String str = (i2 & 2) != 0 ? null : "REPAIR_CREATE";
            companion.getClass();
            return a(context, str, null);
        }
    }

    public final String H() {
        CareServiceIdUiModel careServiceIdUiModel = (CareServiceIdUiModel) this.s.getF71699b();
        if (careServiceIdUiModel != null) {
            return careServiceIdUiModel.f64060b;
        }
        return null;
    }

    public final IsFeatureAvailableUseCase I() {
        IsFeatureAvailableUseCase isFeatureAvailableUseCase = this.p;
        if (isFeatureAvailableUseCase != null) {
            return isFeatureAvailableUseCase;
        }
        Intrinsics.h("isFeatureAvailableUseCase");
        throw null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00c2, code lost:
    
        if (r6.equals("ADDRESS_CONFIRMATION") == false) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00cc, code lost:
    
        if (r6.equals("PAYMENT_CONFIRMATION") == false) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00de, code lost:
    
        if (I().b(new com.vuitton.foundation.model.domain.model.sync.Feature[]{com.vuitton.foundation.model.domain.model.sync.Feature.CARE_SERVICES_MIGRATION}) == false) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00e0, code lost:
    
        r6 = H();
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00e4, code lost:
    
        if (r6 == null) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00e6, code lost:
    
        r5 = getSupportFragmentManager().d();
        com.vuitton.android.presentation.screen.repairs.detail.RepairConfirmAddressBffFragment.M.getClass();
        r1 = new com.vuitton.android.presentation.screen.repairs.detail.RepairConfirmAddressBffFragment();
        r3 = new android.os.Bundle();
        r3.putParcelable("CARE_SERVICE_ID", new com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceIdUiModel(r6));
        r1.setArguments(r3);
        r5.m(com.vuitton.android.R.id.fragment_container, r1, com.vuitton.android.presentation.screen.repairs.detail.RepairConfirmAddressBffFragment.N);
        r5.e();
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0110, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0111, code lost:
    
        r6 = H();
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0115, code lost:
    
        if (r6 == null) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0117, code lost:
    
        r5 = getSupportFragmentManager().d();
        com.vuitton.android.presentation.screen.repairs.detail.RepairConfirmAddressFragment.M.getClass();
        r1 = new com.vuitton.android.presentation.screen.repairs.detail.RepairConfirmAddressFragment();
        r3 = new android.os.Bundle();
        r3.putParcelable("CARE_SERVICE_ID", new com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceIdUiModel(r6));
        r1.setArguments(r3);
        r5.m(com.vuitton.android.R.id.fragment_container, r1, com.vuitton.android.presentation.screen.repairs.detail.RepairConfirmAddressFragment.N);
        r5.e();
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0141, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:?, code lost:
    
        return;
     */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // com.vuitton.android.presentation.screen.base.BaseActivity, com.vuitton.android.presentation.screen.base.Hilt_BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onCreate(android.os.Bundle r6) {
        /*
            Method dump skipped, instruction units count: 638
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.repairs.RepairActivity.onCreate(android.os.Bundle):void");
    }
}
