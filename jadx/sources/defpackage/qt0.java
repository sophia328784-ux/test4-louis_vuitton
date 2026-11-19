package defpackage;

import android.text.InputFilter;
import android.text.Spanned;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.RoomDetailFragment;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.detail.WifiDeviceDetailFragment;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.manager.TrunkGeneralHelper;
import com.vuitton.foundation.model.domain.extensions.StringKtExtKt;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class qt0 implements InputFilter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f79159a;

    public /* synthetic */ qt0(int i2) {
        this.f79159a = i2;
    }

    @Override // android.text.InputFilter
    public final CharSequence filter(CharSequence charSequence, int i2, int i3, Spanned spanned, int i4, int i5) {
        switch (this.f79159a) {
            case 0:
                RoomDetailFragment.Companion companion = RoomDetailFragment.L;
                if (!StringKtExtKt.e(charSequence.toString())) {
                    return charSequence;
                }
                return TrunkGeneralHelper.f56578b.replace(charSequence.toString(), "");
            default:
                WifiDeviceDetailFragment.Companion companion2 = WifiDeviceDetailFragment.N;
                if (!StringKtExtKt.e(charSequence.toString())) {
                    return charSequence;
                }
                return TrunkGeneralHelper.f56578b.replace(charSequence.toString(), "");
        }
    }
}
